@interface VMSilenceRemover
- (VMAudioProvider)inputProvider;
- (VMSilenceRemover)initWithSampleRate:(double)a3 channelCount:(int)a4 error:(id *)a5;
- (float)_getInput:(int *)a3;
- (float)saved;
- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4;
- (int)readFromInternalBuffer:(AudioBufferList *)a3 frameCount:(int)a4 offset:(int)a5;
- (void)_advanceToOverThresholdState;
- (void)_discardSilenceFrames;
- (void)_makeCutAndStartFlush;
- (void)dealloc;
- (void)flush;
- (void)reset;
- (void)setCutPadding:(float)a3;
- (void)setFadeDuration:(float)a3;
@end

@implementation VMSilenceRemover

- (void)setCutPadding:(float)a3
{
  [(VMSilenceRemover *)self flush];
  self->_cutPadding = a3;
  self->_cutPaddingInSamples = (self->_sampleRate * a3);
  [(VMSilenceRemover *)self updateContiguousThreshold];

  [(VMSilenceRemover *)self resetCounter];
}

- (void)setFadeDuration:(float)a3
{
  [(VMSilenceRemover *)self flush];
  self->_fadeDuration = a3;
  self->_crossfadeDurationInSamples = (self->_sampleRate * a3);
  [(VMSilenceRemover *)self updateContiguousThreshold];

  [(VMSilenceRemover *)self resetCounter];
}

- (void)reset
{
  p_mFill = &self->_inputBuffer.mFill;
  v4 = atomic_load(&self->_inputBuffer.mFill);
  sub_100040168(&self->_inputBuffer, v4);
  v5 = atomic_load(p_mFill);
  sub_100040168(&self->_processingBuffer, v5);

  [(VMSilenceRemover *)self resetCounter];
}

- (VMSilenceRemover)initWithSampleRate:(double)a3 channelCount:(int)a4 error:(id *)a5
{
  v12.receiver = self;
  v12.super_class = VMSilenceRemover;
  v7 = [(VMSilenceRemover *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_sampleRate = a3;
    v7->_channelCount = a4;
    v7->_fadeDuration = 0.0025;
    *&v7->_cutPadding = 0x3C03126F3D4CCCCDLL;
    *&v7->_crossfadeDurationInSamples = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(xmmword_100240500, a3)));
    v7->_maxSilenceFramesToRender = (a3 * 0.699999988);
    v7->_silenceRemovalRatio = 0.7;
    [(VMSilenceRemover *)v7 updateContiguousThreshold];
    if (sub_100057FF0(&v8->_processingBuffer, (v8->_sampleRate * 40.0), v8->_channelCount, a5) && sub_100057FF0(&v8->_inputBuffer, 0x8000, v8->_channelCount, a5))
    {
      v8->_preCutBuffer = sub_100067480(v8->_channelCount, v8->_sampleRate, 4);
      operator new();
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  sub_10003FB5C(&self->_processingBuffer);
  sub_10003FB5C(&self->_inputBuffer);
  free(self->_preCutBuffer);
  rmsBuffer = self->_rmsBuffer;
  if (rmsBuffer)
  {
    v4 = *rmsBuffer;
    if (*rmsBuffer)
    {
      rmsBuffer[1] = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5.receiver = self;
  v5.super_class = VMSilenceRemover;
  [(VMSilenceRemover *)&v5 dealloc];
}

- (int)fillNextBuffer:(AudioBufferList *)a3 frameCount:(int)a4
{
  v4 = *&a4;
  v7 = [(VMSilenceRemover *)self inputProvider];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_77;
  }

  if (!self->_enabled)
  {
    v62 = atomic_load(&self->_processingBuffer.mFill);
    if (v62 < 1)
    {
      LODWORD(v9) = [v7 fillNextBuffer:a3 frameCount:v4];
    }

    else
    {
      if (self->_state == 1)
      {
        [(VMSilenceRemover *)self _makeCutAndStartFlush];
      }

      LODWORD(v9) = [(VMSilenceRemover *)self readFromInternalBuffer:a3 frameCount:v4 offset:0];
      if (v4 - v9 >= 1)
      {
        mReadBufferlist = self->_inputBuffer.mReadBufferlist;
        mReadPointers = self->_inputBuffer.mReadPointers;
        mNumberBuffers = self->_inputBuffer.mNumberBuffers;
        mReadBufferlist->mNumberBuffers = mNumberBuffers;
        if (mNumberBuffers)
        {
          p_mData = &mReadBufferlist->mBuffers[0].mData;
          do
          {
            *(p_mData - 1) = 1;
            v67 = *mReadPointers++;
            *p_mData = v67;
            p_mData += 2;
            --mNumberBuffers;
          }

          while (mNumberBuffers);
        }

        if (self->_channelCount)
        {
          v68 = 0;
          v69 = &mReadBufferlist->mBuffers[0].mData;
          v70 = &a3->mBuffers[0].mData;
          do
          {
            v71 = *v70;
            v70 += 2;
            *v69 = &v71[4 * v9];
            *(v69 - 1) = 4 * (v4 - v9);
            ++v68;
            v69 += 2;
          }

          while (v68 < self->_channelCount);
        }

        LODWORD(v9) = [v8 fillNextBuffer:? frameCount:?] + v9;
      }
    }

    goto LABEL_78;
  }

  if (v4 < 1)
  {
LABEL_77:
    LODWORD(v9) = 0;
    goto LABEL_78;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (self->_state == 2)
    {
      LODWORD(v9) = [(VMSilenceRemover *)self readFromInternalBuffer:a3 frameCount:(v4 - v9) offset:v9]+ v9;
      goto LABEL_7;
    }

    v73 = 0;
    v11 = [(VMSilenceRemover *)self _getInput:&v73];
    v12 = v73;
    v10 += v73;
    v13 = atomic_load(&self->_processingBuffer.mFill);
    if (v12)
    {
      break;
    }

    if (!v13)
    {
      goto LABEL_78;
    }

    state = self->_state;
    if (state == 1)
    {
      [(VMSilenceRemover *)self _makeCutAndStartFlush];
    }

    else if (!state)
    {
      self->_state = 2;
    }

LABEL_7:
    if (v9 >= v4)
    {
      goto LABEL_78;
    }
  }

  v14 = v11;
  if (v13 < 1)
  {
    if (v73 >= v4 - v9)
    {
      v36 = (v4 - v9);
    }

    else
    {
      v36 = v73;
    }

    if (v36 < 1)
    {
      v15 = 0;
    }

    else
    {
      v37 = 0;
      do
      {
        channelCount = self->_channelCount;
        v39 = 0.0;
        v40 = 0.0;
        if (channelCount >= 1)
        {
          v41 = v14;
          v42 = self->_channelCount;
          do
          {
            v43 = *v41++;
            v40 = v40 + *(v43 + 4 * v37);
            --v42;
          }

          while (v42);
        }

        sub_10003FECC(self->_rmsBuffer, (v40 / channelCount) * (v40 / channelCount));
        rmsBuffer = self->_rmsBuffer;
        v45 = rmsBuffer[5];
        if (v45 > 0.0)
        {
          v39 = sqrtf(v45 / *(rmsBuffer + 7));
        }

        silenceThreshold = self->_silenceThreshold;
        if (v39 < silenceThreshold)
        {
          v53 = self->_channelCount;
          if (v53)
          {
            mWritePointers = self->_processingBuffer.mWritePointers;
            v55 = v14;
            do
            {
              v56 = *v55++;
              v57 = *(v56 + 4 * v37);
              v58 = *mWritePointers++;
              *v58 = v57;
              --v53;
            }

            while (v53);
          }

          sub_10003FE04(&self->_processingBuffer, 1u);
          self->_state = 0;
        }

        else
        {
          v47 = self->_channelCount;
          if (v47)
          {
            v48 = &a3->mBuffers[0].mData;
            v49 = v14;
            do
            {
              v50 = *v49++;
              v51 = *(v50 + 4 * v37);
              v52 = *v48;
              v48 += 2;
              v52[v9] = v51;
              --v47;
            }

            while (v47);
          }

          v9 = (v9 + 1);
        }

        ++v37;
      }

      while (v39 >= silenceThreshold && v37 < v36);
      v15 = v37;
    }

    goto LABEL_74;
  }

  if (v73 < 1)
  {
    v15 = 0;
    v60 = 0;
    goto LABEL_66;
  }

  v72 = v10;
  v15 = 0;
  v16 = self->_processingBuffer.mWritePointers;
  while (2)
  {
    v17 = v15;
    v18 = self->_channelCount;
    v19 = v18;
    v20 = v14;
    v21 = v16;
    if (!v18)
    {
      v25 = self->_rmsBuffer;
LABEL_20:
      v26 = 0.0;
      goto LABEL_21;
    }

    do
    {
      v22 = *v20++;
      v23 = *(v22 + 4 * v15);
      v24 = *v21++;
      *(v24 + 4 * v15) = v23;
      --v19;
    }

    while (v19);
    v25 = self->_rmsBuffer;
    if (v18 < 1)
    {
      goto LABEL_20;
    }

    v26 = 0.0;
    v27 = v14;
    v28 = v18;
    do
    {
      v29 = *v27++;
      v26 = v26 + *(v29 + 4 * v15);
      --v28;
    }

    while (v28);
LABEL_21:
    sub_10003FECC(v25, (v26 / v18) * (v26 / v18));
    v30 = self->_rmsBuffer;
    v31 = v30[5];
    v32 = 0.0;
    if (v31 > 0.0)
    {
      v32 = sqrtf(v31 / *(v30 + 7));
    }

    ++v15;
    v33 = self->_silenceThreshold;
    v34 = self->_state;
    if (v34 != 1)
    {
      if (!v34)
      {
        if (v32 >= v33)
        {
          v60 = 3;
          goto LABEL_65;
        }

        if (v13 + v17 >= self->_contiguousSilenceThresholdInSamples)
        {
          v60 = 1;
          goto LABEL_65;
        }
      }

      goto LABEL_29;
    }

    if (v32 < v33)
    {
LABEL_29:
      if (v15 >= v73)
      {
        v60 = 0;
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  v60 = 2;
LABEL_65:
  v10 = v72;
LABEL_66:
  sub_10003FE04(&self->_processingBuffer, v15);
  if (self->_state == 1)
  {
    [(VMSilenceRemover *)self _discardSilenceFrames];
  }

  if (v60 > 1)
  {
    if (v60 == 2)
    {
      [(VMSilenceRemover *)self _makeCutAndStartFlush];
    }

    else
    {
      self->_state = 2;
    }
  }

  else if (v60)
  {
    [(VMSilenceRemover *)self _advanceToOverThresholdState];
  }

LABEL_74:
  [(VMSilenceRemover *)self consumeInput:v15];
  if (v10 <= self->_singleReadLimitInSamples || self->_state != 1)
  {
    goto LABEL_7;
  }

LABEL_78:

  return v9;
}

- (int)readFromInternalBuffer:(AudioBufferList *)a3 frameCount:(int)a4 offset:(int)a5
{
  v6 = atomic_load(&self->_processingBuffer.mFill);
  v7 = v6 > a4;
  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  sub_100059444(&self->_processingBuffer, a3, v8, a5);
  self->_state = 2 * v7;
  return v8;
}

- (void)_advanceToOverThresholdState
{
  sub_100095E54(self->_processingBuffer.mReadPointers, 0, self->_preCutBuffer, 0, self->_channelCount, self->_cutPaddingInSamples + self->_crossfadeDurationInSamples);
  self->_state = 1;
  self->_currentSilenceRemovedCounter = 0;
}

- (void)_discardSilenceFrames
{
  v2 = self->_crossfadeDurationInSamples + self->_cutPaddingInSamples;
  v3 = self->_currentSilenceRemovedCounter + v2;
  v4 = atomic_load(&self->_processingBuffer.mFill);
  maxSilenceFramesToRender = self->_maxSilenceFramesToRender;
  v6 = (1.0 - self->_silenceRemovalRatio) * (v3 + v4);
  if (v6 > maxSilenceFramesToRender)
  {
    v6 = maxSilenceFramesToRender;
  }

  if (v2 <= v6 - self->_cutPaddingInSamples)
  {
    LODWORD(v2) = v6 - self->_cutPaddingInSamples;
  }

  v7 = atomic_load(&self->_processingBuffer.mFill);
  v8 = v7 - v2;
  if (v8 >= 1)
  {
    sub_100040168(&self->_processingBuffer, v7 - v2);
    *&self->removedCounter = vaddq_s64(*&self->removedCounter, vdupq_n_s64(v8));
  }
}

- (void)_makeCutAndStartFlush
{
  mReadPointers = self->_processingBuffer.mReadPointers;
  sub_100095E54(self->_preCutBuffer, 0, mReadPointers, 0, self->_channelCount, self->_cutPaddingInSamples);
  channelCount = self->_channelCount;
  if (channelCount)
  {
    v5 = 0;
    preCutBuffer = self->_preCutBuffer;
    crossfadeDurationInSamples = self->_crossfadeDurationInSamples;
    cutPaddingInSamples = self->_cutPaddingInSamples;
    do
    {
      if (crossfadeDurationInSamples >= 1)
      {
        v9 = 0;
        v10 = mReadPointers[v5] + 4 * cutPaddingInSamples;
        v11 = &preCutBuffer[v5][cutPaddingInSamples];
        do
        {
          *(v10 + 4 * v9) = (*(v10 + 4 * v9) * (v9 / crossfadeDurationInSamples)) + (*(v11 + 4 * v9) * (1.0 - (v9 / crossfadeDurationInSamples)));
          ++v9;
        }

        while (crossfadeDurationInSamples != v9);
      }

      ++v5;
    }

    while (v5 != channelCount);
  }

  self->_state = 2;
}

- (void)flush
{
  if (self->_state == 1)
  {
    [(VMSilenceRemover *)self _makeCutAndStartFlush];
  }

  self->_state = 2;
}

- (float)_getInput:(int *)a3
{
  v5 = [(VMSilenceRemover *)self inputProvider];
  v6 = v5;
  if (v5)
  {
    v7 = atomic_load(&self->_inputBuffer.mFill);
    if (v7 <= 2047)
    {
      mWriteBufferlist = self->_inputBuffer.mWriteBufferlist;
      mWritePointers = self->_inputBuffer.mWritePointers;
      mNumberBuffers = self->_inputBuffer.mNumberBuffers;
      mWriteBufferlist->mNumberBuffers = mNumberBuffers;
      if (mNumberBuffers)
      {
        p_mData = &mWriteBufferlist->mBuffers[0].mData;
        do
        {
          *(p_mData - 1) = 0x400000000001;
          v12 = *mWritePointers++;
          *p_mData = v12;
          p_mData += 2;
          --mNumberBuffers;
        }

        while (mNumberBuffers);
      }

      v13 = [v5 fillNextBuffer:? frameCount:?];
      self->counter += v13;
      sub_10003FE04(&self->_inputBuffer, v13);
    }

    v14 = atomic_load(&self->_inputBuffer.mFill);
    *a3 = v14;
    mReadPointers = self->_inputBuffer.mReadPointers;
  }

  else
  {
    mReadPointers = 0;
  }

  return mReadPointers;
}

- (float)saved
{
  result = self->removedCounter / self->counter;
  if (fabsf(result) == INFINITY)
  {
    return 0.0;
  }

  return result;
}

- (VMAudioProvider)inputProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_inputProvider);

  return WeakRetained;
}

@end