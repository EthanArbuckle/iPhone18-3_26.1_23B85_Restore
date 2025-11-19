void AudioRingBuffer::AudioRingBuffer(AudioRingBuffer *this)
{
  *this = &unk_285344990;
  CAStreamBasicDescription::CAStreamBasicDescription((this + 8));
  CAStreamBasicDescription::CAStreamBasicDescription((this + 48));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 13) = 0;
  bzero(this + 120, 0x314uLL);
  *(this + 454) = 1;
}

{
  *this = &unk_285344990;
  CAStreamBasicDescription::CAStreamBasicDescription((this + 8));
  CAStreamBasicDescription::CAStreamBasicDescription((this + 48));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 28) = 0;
  *(this + 13) = 0;
  bzero(this + 120, 0x314uLL);
  *(this + 454) = 1;
}

void AudioRingBuffer::~AudioRingBuffer(AudioRingBuffer *this)
{
  *this = &unk_285344990;
  AudioRingBuffer::Deallocate(this);
  v2 = *(this + 12);
  if (v2)
  {
    free(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    free(v3);
    *(this + 11) = 0;
  }
}

{
  AudioRingBuffer::~AudioRingBuffer(this);

  JUMPOUT(0x245CEB8C0);
}

OpaqueAudioConverter *AudioRingBuffer::Deallocate(AudioRingBuffer *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 28) = 0;
  *(this + 15) = 0;
  CAStreamBasicDescription::CAStreamBasicDescription(v7);
  v3 = v7[1];
  *(this + 8) = v7[0];
  *(this + 24) = v3;
  v4 = v8;
  *(this + 5) = v8;
  v5 = *(this + 24);
  *(this + 3) = *(this + 8);
  *(this + 4) = v5;
  *(this + 10) = v4;
  result = *(this + 16);
  if (result)
  {
    result = AudioConverterDispose(result);
    *(this + 16) = 0;
  }

  return result;
}

void AudioRingBuffer::Allocate(AudioRingBuffer *this, int a2, int a3, int a4)
{
  AudioRingBuffer::Deallocate(this);
  *(this + 28) = a2;
  *(this + 29) = a3;
  *(this + 30) = a4;
  *(this + 31) = a4 * a3;
  v8 = ((a4 * a3 + 8) * a2);
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v18 = std::bad_alloc::bad_alloc(exception);
  }

  v11 = v9;
  bzero(v9, v8);
  *(this + 13) = v11;
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = *(this + 31);
    v14 = &v11[8 * a2];
    do
    {
      *(*(this + 13) + 8 * v12) = v14;
      v14 += v13;
      ++v12;
    }

    while (a2 != v12);
  }

  v15 = (this + 152);
  v16 = 32;
  do
  {
    *(v15 - 2) = 0;
    *(v15 - 1) = 0;
    *v15 = 0;
    v15 += 6;
    --v16;
  }

  while (v16);
  *(this + 226) = 0;
  *(this + 908) = 1;
}

AudioRingBuffer *AudioRingBuffer::Clear(AudioRingBuffer *this)
{
  v1 = (this + 152);
  v2 = 32;
  do
  {
    *(v1 - 2) = 0;
    *(v1 - 1) = 0;
    *v1 = 0;
    v1 += 6;
    --v2;
  }

  while (v2);
  *(this + 226) = 0;
  *(this + 908) = 1;
  return this;
}

void AudioRingBuffer::Allocate(AudioRingBuffer *this, const CAStreamBasicDescription *a2, int a3)
{
  v6 = *(a2 + 6);
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v7 = *(a2 + 7);
  }

  else
  {
    v7 = 1;
  }

  AudioRingBuffer::Allocate(this, v7, v6, a3);
  v8 = *a2;
  v9 = *(a2 + 1);
  *(this + 5) = *(a2 + 4);
  *(this + 24) = v9;
  *(this + 8) = v8;
  v10 = *(a2 + 3);
  v11 = *(a2 + 7);
  if ((v10 & 0x20) != 0)
  {
    v12 = *(a2 + 7);
  }

  else
  {
    v12 = 1;
  }

  if ((v10 & 0x20) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a2 + 7);
  }

  v14 = AllocABL(v12, v13);
  v15 = *(this + 11);
  if (v15 != v14)
  {
    free(v15);
    *(this + 11) = v14;
  }
}

_DWORD *AllocABL(unsigned int a1, int a2)
{
  result = malloc_type_malloc(16 * (a1 - 1) + 24, 0x10800404ACF7207uLL);
  *result = a1;
  if (a1)
  {
    v5 = a1;
    v6 = result + 4;
    do
    {
      *(v6 - 2) = a2;
      *(v6 - 1) = 0;
      *v6 = 0;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t AudioRingBuffer::SetInputFormat(AudioRingBuffer *this, AudioStreamBasicDescription *inSourceFormat)
{
  v4 = AudioConverterNew(inSourceFormat, (this + 8), this + 16);
  if (!v4)
  {
    v5 = *&inSourceFormat->mSampleRate;
    v6 = *&inSourceFormat->mBytesPerPacket;
    *(this + 10) = *&inSourceFormat->mBitsPerChannel;
    *(this + 3) = v5;
    *(this + 4) = v6;
    mFormatFlags = inSourceFormat->mFormatFlags;
    mChannelsPerFrame = inSourceFormat->mChannelsPerFrame;
    if ((mFormatFlags & 0x20) != 0)
    {
      v9 = inSourceFormat->mChannelsPerFrame;
    }

    else
    {
      v9 = 1;
    }

    if ((mFormatFlags & 0x20) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = inSourceFormat->mChannelsPerFrame;
    }

    v11 = AllocABL(v9, v10);
    v12 = *(this + 12);
    if (v12 != v11)
    {
      free(v12);
      *(this + 12) = v11;
    }
  }

  return v4;
}

AudioRingBuffer *AudioRingBuffer::ConvertAndStore(AudioRingBuffer *this, int a2, const AudioBufferList *a3, int a4, UInt32 inNumberPCMFrames)
{
  if (inNumberPCMFrames)
  {
    v6 = *(this + 12);
    mNumberBuffers = v6->mNumberBuffers;
    if (mNumberBuffers)
    {
      v8 = *(this + 18) * inNumberPCMFrames;
      p_mData = &v6->mBuffers[0].mData;
      v10 = &a3->mBuffers[0].mData;
      do
      {
        v11 = *v10;
        v10 += 2;
        *p_mData = &v11[a4];
        *(p_mData - 1) = v8;
        p_mData += 2;
        --mNumberBuffers;
      }

      while (mNumberBuffers);
    }

    v12 = *(this + 11);
    v13 = v12->mNumberBuffers;
    if (v13)
    {
      v14 = *(this + 8) * inNumberPCMFrames;
      v15 = *(this + 13);
      v16 = &v12->mBuffers[0].mData;
      do
      {
        v17 = *v15++;
        *v16 = (v17 + a2);
        *(v16 - 1) = v14;
        v16 += 2;
        --v13;
      }

      while (v13);
    }

    return AudioConverterConvertComplexBuffer(*(this + 16), inNumberPCMFrames, v6, v12);
  }

  return this;
}

uint64_t AudioRingBuffer::Store(AudioRingBuffer *this, const AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = this;
  v6 = *(this + 30);
  if (v6 < a3)
  {
    return 3;
  }

  v10 = a4 + a3;
  v11 = this + 136;
  v12 = *(this + 226);
  v13 = this + 24 * (v12 & 0x1F) + 136;
  v15 = *(v13 + 1);
  v14 = (v13 + 8);
  if (v15 > a4 || *(this + 908) == 1 && *(this + 909) == 1)
  {
    v16 = &v11[24 * ((v12 + 1) & 0x1F)];
    *v16 = a4;
    *(v16 + 1) = a4;
    *(v16 + 4) = v12 + 1;
    atomic_compare_exchange_strong(this + 226, &v17, v12 + 1);
    *(this + 908) = 0;
  }

  else if (v10 - *&v11[24 * (v12 & 0x1F)] > v6)
  {
    v18 = v10 - v6;
    v19 = *v14;
    if (v18 > v19)
    {
      v19 = v18;
    }

    v20 = &v11[24 * ((v12 + 1) & 0x1F)];
    *v20 = v18;
    *(v20 + 1) = v19;
    *(v20 + 4) = v12 + 1;
    atomic_compare_exchange_strong(this + 226, &v21, v12 + 1);
  }

  v22 = *(this + 13);
  v23 = *&v11[24 * (*(this + 226) & 0x1F) + 8];
  v24 = *(this + 30);
  v26 = *(this + 28);
  v25 = *(this + 29);
  if (v23 >= a4)
  {
    v28 = ((((a4 % v24) >> 63) & v24) + a4 % v24) * v25;
  }

  else
  {
    v27 = ((((v23 % v24) >> 63) & v24) + v23 % v24) * v25;
    v28 = ((((a4 % v24) >> 63) & v24) + a4 % v24) * v25;
    if (v28 <= v27)
    {
      if (v26 >= 1)
      {
        v74 = this + 136;
        v76 = a4 + a3;
        v34 = v27;
        v35 = *(this + 31) - v27;
        v36 = v26 + 1;
        v37 = *(this + 13);
        do
        {
          v38 = *v37++;
          bzero((v38 + v34), v35);
          --v36;
        }

        while (v36 > 1);
        v39 = v26 + 1;
        v40 = v22;
        v11 = v74;
        do
        {
          v41 = *v40++;
          bzero(v41, v28);
          --v39;
        }

        while (v39 > 1);
        v10 = v76;
        v5 = this;
      }
    }

    else if (v26 >= 1)
    {
      v75 = a4 + a3;
      v73 = this + 136;
      v29 = v27;
      v30 = v28 - v27;
      v31 = v26 + 1;
      v32 = *(this + 13);
      do
      {
        v33 = *v32++;
        bzero((v33 + v29), v30);
        --v31;
      }

      while (v31 > 1);
      v11 = v73;
      v10 = v75;
      v5 = this;
    }
  }

  v42 = *(v5 + 30);
  v43 = ((((v10 % v42) >> 63) & v42) + v10 % v42) * *(v5 + 29);
  v44 = *(v5 + 16);
  if (v43 <= v28)
  {
    if (!v44)
    {
      if (a2->mNumberBuffers >= 1)
      {
        v79 = v5;
        v61 = v28;
        v62 = *(v5 + 31) - v28;
        v63 = a2->mNumberBuffers + 1;
        v64 = 16;
        v65 = v22;
        do
        {
          v66 = *v65++;
          memcpy((v66 + v61), *(&a2->mNumberBuffers + v64), v62);
          v64 += 16;
          --v63;
        }

        while (v63 > 1);
        mNumberBuffers = a2->mNumberBuffers;
        v5 = v79;
        if (a2->mNumberBuffers >= 1)
        {
          p_mData = &a2->mBuffers[0].mData;
          v69 = mNumberBuffers + 1;
          do
          {
            v71 = *v22++;
            v70 = v71;
            v72 = *p_mData;
            p_mData += 2;
            memcpy(v70, &v72[v62], v43);
            --v69;
          }

          while (v69 > 1);
        }
      }

      goto LABEL_32;
    }

    v50 = v42 - a4 % v42 - (((a4 % v42) >> 63) & v42);
    AudioRingBuffer::ConvertAndStore(v5, v28, a2, 0, v50);
    v48 = v50 * *(v5 + 18);
    v49 = (((v10 % *(v5 + 30)) >> 63) & *(v5 + 30)) + v10 % *(v5 + 30);
    v45 = v5;
    v46 = 0;
    v47 = a2;
  }

  else
  {
    if (!v44)
    {
      v53 = a2->mNumberBuffers;
      if (a2->mNumberBuffers >= 1)
      {
        v54 = v28;
        v55 = v43 - v28;
        v56 = &a2->mBuffers[0].mData;
        v57 = v53 + 1;
        do
        {
          v59 = *v22++;
          v58 = v59;
          v60 = *v56;
          v56 += 2;
          memcpy((v58 + v54), v60, v55);
          --v57;
        }

        while (v57 > 1);
      }

      goto LABEL_32;
    }

    v45 = v5;
    v46 = v28;
    v47 = a2;
    v48 = 0;
    v49 = a3;
  }

  AudioRingBuffer::ConvertAndStore(v45, v46, v47, v48, v49);
LABEL_32:
  result = 0;
  v51 = *(v5 + 226);
  v52 = &v11[24 * ((v51 + 1) & 0x1F)];
  *v52 = *&v11[24 * (v51 & 0x1F)];
  *(v52 + 1) = v10;
  *(v52 + 4) = v51 + 1;
  atomic_compare_exchange_strong(v5 + 226, &v51, v51 + 1);
  return result;
}

void AudioRingBuffer::SetTimeBounds(AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * ((v3 + 1) & 0x1F);
  *(v4 + 17) = a2;
  *(v4 + 18) = a3;
  *(v4 + 38) = v3 + 1;
  atomic_compare_exchange_strong(this + 226, &v3, v3 + 1);
}

uint64_t AudioRingBuffer::GetTimeBounds(AudioRingBuffer *this, uint64_t *a2, uint64_t *a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    *a2 = *(v4 + 17);
    *a3 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  return 0;
}

uint64_t AudioRingBuffer::CheckTimeBounds(AudioRingBuffer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 226);
  v4 = this + 24 * (v3 & 0x1F);
  v5 = 8;
  while (1)
  {
    v6 = *(v4 + 17);
    v7 = *(v4 + 18);
    if (*(v4 + 38) == v3)
    {
      break;
    }

    if (!--v5)
    {
      return 4;
    }
  }

  if (v7 > a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (v7 >= a3)
  {
    v9 = 0;
  }

  if (v6 >= a3)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (v7 >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 3;
  }

  if (v6 > a2)
  {
    return v11;
  }

  else
  {
    return v9;
  }
}

uint64_t AudioRingBuffer::CheckTimeBounds2(AudioRingBuffer *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a2)
  {
    return 4294967246;
  }

  v6 = *(this + 226);
  v7 = this + 24 * (v6 & 0x1F);
  v8 = 8;
  while (1)
  {
    v9 = *(v7 + 17);
    v10 = *(v7 + 18);
    if (*(v7 + 38) == v6)
    {
      break;
    }

    if (!--v8)
    {
      return 4;
    }
  }

  *a4 = a2;
  *a5 = a3;
  if (v9 <= a2)
  {
    if (v10 >= a3)
    {
      return 0;
    }

    else
    {
      *a5 = v10;
      if (v10 <= a2)
      {
        *a4 = v10;
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    *a4 = v9;
    if (v10 >= a3)
    {
      if (v9 >= a3)
      {
        *a5 = v9;
        return 4294967294;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *a5 = v10;
      return 3;
    }
  }
}

uint64_t AudioRingBuffer::touchRingBufferMemory(AudioRingBuffer *this)
{
  v1 = *(this + 28);
  if (v1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 31);
    do
    {
      if (v4)
      {
        for (i = 0; i < v4; i += 4096)
        {
          v3 += *(*(*(this + 13) + 8 * v2) + i);
        }
      }

      ++v2;
    }

    while (v2 != v1);
  }

  result = (AudioRingBuffer::touchRingBufferMemory(void)::gTempValue + v3);
  AudioRingBuffer::touchRingBufferMemory(void)::gTempValue += v3;
  return result;
}

uint64_t AudioRingBuffer::Fetch(AudioRingBuffer *this, AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  v8 = a4 + a3;
  result = AudioRingBuffer::CheckTimeBounds(this, a4, v8);
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v10 = *(this + 13);
  v11 = *(this + 29);
  v12 = *(this + 30);
  v13 = ((((a4 % v12) >> 63) & v12) + a4 % v12) * v11;
  v14 = ((((v8 % v12) >> 63) & v12) + v8 % v12) * v11;
  v15 = v14 - v13;
  if (v14 <= v13)
  {
    v40 = *(this + 31) - v13;
    if (a2->mNumberBuffers >= 1)
    {
      v39 = v8;
      v22 = v13;
      v23 = a2->mNumberBuffers + 1;
      v24 = 16;
      v25 = *(this + 13);
      do
      {
        v26 = *v25++;
        memcpy(*(&a2->mNumberBuffers + v24), (v26 + v22), v40);
        v24 += 16;
        --v23;
      }

      while (v23 > 1);
      v8 = v39;
      if (a2->mNumberBuffers >= 1)
      {
        p_mData = &a2->mBuffers[0].mData;
        v28 = a2->mNumberBuffers + 1;
        do
        {
          v30 = *p_mData;
          p_mData += 2;
          v29 = v30;
          v31 = *v10++;
          memcpy(&v29[v40], v31, v14);
          --v28;
        }

        while (v28 > 1);
      }
    }

    v15 = v40 + v14;
    goto LABEL_16;
  }

  if (a2->mNumberBuffers >= 1)
  {
    v16 = v13;
    v17 = &a2->mBuffers[0].mData;
    v18 = a2->mNumberBuffers + 1;
    do
    {
      v20 = *v17;
      v17 += 2;
      v19 = v20;
      v21 = *v10++;
      memcpy(v19, (v21 + v16), v15);
      --v18;
    }

    while (v18 > 1);
LABEL_16:
    mNumberBuffers = a2->mNumberBuffers;
    if (mNumberBuffers >= 1)
    {
      v33 = 0;
      v34 = vdupq_n_s64(mNumberBuffers - 1);
      v35 = (mNumberBuffers + 3) & 0xFFFFFFFC;
      v36 = &a2[1].mBuffers[0].mData + 1;
      do
      {
        v37 = vdupq_n_s64(v33);
        v38 = vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_241642DF0)));
        if (vuzp1_s16(v38, *v34.i8).u8[0])
        {
          *(v36 - 8) = v15;
        }

        if (vuzp1_s16(v38, *&v34).i8[2])
        {
          *(v36 - 4) = v15;
        }

        if (vuzp1_s16(*&v34, vmovn_s64(vcgeq_u64(v34, vorrq_s8(v37, xmmword_241642DE0)))).i32[1])
        {
          *v36 = v15;
          v36[4] = v15;
        }

        v33 += 4;
        v36 += 16;
      }

      while (v35 != v33);
    }
  }

  return AudioRingBuffer::CheckTimeBounds(this, a4, v8);
}

uint64_t AudioRingBuffer::FetchAllWithZeroes(AudioRingBuffer *this, AudioBufferList *a2, signed int a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v14 = *(this + 29) * a3;
  v15 = a4 + a3;
  v81 = 0;
  v82 = 0;
  if (AudioRingBuffer::CheckTimeBounds2(this, a4, v15, &v82, &v81) == 4)
  {
    *a5 = a3;
    *a7 = 0;
    *a6 = 0;
    mNumberBuffers = a2->mNumberBuffers;
    if (a2->mNumberBuffers >= 1)
    {
      p_mData = &a2->mBuffers[0].mData;
      v18 = mNumberBuffers + 1;
      do
      {
        v19 = *p_mData;
        p_mData += 2;
        bzero(v19, v14);
        --v18;
      }

      while (v18 > 1);
    }

    return 4;
  }

  else
  {
    v75 = a5;
    v76 = a7;
    v77 = a6;
    v78 = this;
    v21 = v81;
    v72 = v15;
    v73 = a4;
    v22 = (v82 - a4) & ~((v82 - a4) >> 31);
    if (v22 >= a3)
    {
      v22 = a3;
    }

    v23 = (v15 - v81) & ~((v15 - v81) >> 31);
    if (v23 >= a3)
    {
      v23 = a3;
    }

    v74 = v23;
    v24 = *(this + 29);
    v71 = v24;
    if (v81 != v82)
    {
      v25 = *(this + 13);
      v26 = v22 * v24;
      v27 = *(v78 + 30);
      v28 = ((((v82 % v27) >> 63) & v27) + v82 % v27) * v24;
      v29 = ((((v81 % v27) >> 63) & v27) + v81 % v27) * v24;
      if (v29 <= v28)
      {
        if (a2->mNumberBuffers >= 1)
        {
          v69 = ((((v81 % v27) >> 63) & v27) + v81 % v27) * v24;
          v70 = v81;
          v38 = v26;
          v39 = v28;
          v68 = *(v78 + 31) - v28;
          v40 = a2->mNumberBuffers + 1;
          v41 = 16;
          v42 = *(v78 + 13);
          do
          {
            v43 = *v42++;
            memcpy((*(&a2->mNumberBuffers + v41) + v38), (v43 + v39), v68);
            v41 += 16;
            --v40;
          }

          while (v40 > 1);
          v21 = v70;
          if (a2->mNumberBuffers >= 1)
          {
            v44 = &a2->mBuffers[0].mData;
            v45 = a2->mNumberBuffers + 1;
            v46 = v38 + v68;
            do
            {
              v48 = *v44;
              v44 += 2;
              v47 = v48;
              v49 = *v25++;
              memcpy(&v47[v46], v49, v69);
              --v45;
            }

            while (v45 > 1);
          }
        }
      }

      else if (a2->mNumberBuffers >= 1)
      {
        v30 = v26;
        v31 = v28;
        v32 = &a2->mBuffers[0].mData;
        v33 = a2->mNumberBuffers + 1;
        v34 = v29 - v28;
        do
        {
          v36 = *v32;
          v32 += 2;
          v35 = v36;
          v37 = *v25++;
          memcpy(&v35[v30], (v37 + v31), v34);
          --v33;
        }

        while (v33 > 1);
      }
    }

    v80 = 0;
    v20 = AudioRingBuffer::CheckTimeBounds2(v78, v73, v72, &v80, &v79);
    v50 = v80;
    if (v21 < v80)
    {
      v50 = v21;
    }

    v51 = (v50 - v73) & ~((v50 - v73) >> 31);
    if (v51 >= a3)
    {
      v52 = a3;
    }

    else
    {
      v52 = v51;
    }

    if (v52 && a2->mNumberBuffers >= 1)
    {
      v53 = (*(v78 + 29) * v52);
      v54 = &a2->mBuffers[0].mData;
      v55 = a2->mNumberBuffers + 1;
      do
      {
        v56 = *v54;
        v54 += 2;
        bzero(v56, v53);
        --v55;
      }

      while (v55 > 1);
    }

    if (v74 && a2->mNumberBuffers >= 1)
    {
      v57 = &a2->mBuffers[0].mData;
      v58 = a2->mNumberBuffers + 1;
      do
      {
        v59 = *v57;
        v57 += 2;
        bzero(&v59[v14 - v74 * v71], (v74 * v71));
        --v58;
      }

      while (v58 > 1);
    }

    *v75 = v52;
    *v76 = v74;
    *v77 = a3 - (v74 + v52);
    v60 = a2->mNumberBuffers;
    if (v60 >= 1)
    {
      v61 = 0;
      v62 = vdupq_n_s64(v60 - 1);
      v63 = (v60 + 3) & 0xFFFFFFFC;
      v64 = &a2[1].mBuffers[0].mData + 1;
      do
      {
        v65 = vdupq_n_s64(v61);
        v66 = vmovn_s64(vcgeq_u64(v62, vorrq_s8(v65, xmmword_241642DF0)));
        if (vuzp1_s16(v66, *v62.i8).u8[0])
        {
          *(v64 - 8) = v14;
        }

        if (vuzp1_s16(v66, *&v62).i8[2])
        {
          *(v64 - 4) = v14;
        }

        if (vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v62, vorrq_s8(v65, xmmword_241642DE0)))).i32[1])
        {
          *v64 = v14;
          v64[4] = v14;
        }

        v61 += 4;
        v64 += 16;
      }

      while (v63 != v61);
    }
  }

  return v20;
}

void sub_24160083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241600A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2416049E4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x488], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241608BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241608EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float *OUTLINED_FUNCTION_3_1(float *result, uint64_t a2, void *a3, float a4)
{
  *result = a4;
  *a3 = a2;
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void LogError(const char *a1, ...)
{
  va_start(va, a1);
  vprintf(a1, va);
  vsyslog(3, a1, va);
}

void LogWarning(const char *a1, ...)
{
  va_start(va, a1);
  vprintf(a1, va);
  vsyslog(4, a1, va);
}

uint64_t CAIsDebuggerAttached(void)
{
  v8 = *MEMORY[0x277D85DE8];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  v2 = 648;
  v4 = 0;
  sysctl(v5, 4u, v3, &v2, 0, 0);
  v0 = *MEMORY[0x277D85DE8];
  return (v4 >> 11) & 1;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24160EC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_24160F004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_24160F1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24160F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_24160F580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24160F764(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v1);

  _Unwind_Resume(a1);
}

void sub_24160F908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

DSPGraph::Interpreter *DSPGraph::Interpreter::Interpreter(DSPGraph::Interpreter *this)
{
  *this = MEMORY[0x277CEFD78] + 16;
  *(this + 1) = 0;
  MEMORY[0x245CEB550](this + 16);
  *(this + 20) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 42) = 1;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  return this;
}

void sub_24160F9F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    DSPGraph::Interpreter::Interpreter(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_pointer<DSPGraph::Graph  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CEB8C0);
}

uint64_t std::__shared_ptr_pointer<DSPGraph::Graph  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24160FC54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const*,char const*,0>(_BYTE *a1, char **a2, char **a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, *a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, *a3);
  return a1;
}

void sub_24160FDF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:ne200100]<0>((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void ASDDSPGraphHelper::ASDDSPGraphHelper(void *a1, void *a2)
{
  v2 = a2[1];
  *a1 = *a2;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  operator new();
}

void sub_241610A14(_Unwind_Exception *a1)
{
  MEMORY[0x245CEB8C0](v2, 0xE1C40E9FAB1CALL);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDDSPGraphHelper::allocateStreamingResources(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 8);
  v11 = *a1;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DSPGraph::GraphFactory::createFormatMatchedGraphWithGraph(&v11, a2, a3);
  v5 = v13;
  v13 = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = v13;
    v13 = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = *(a1 + 16);
  v9 = DSPGraph::Graph::in(*a1);
  DSPGraph::Box::sampleRate(v9);
  DSPGraph::Graph::setSliceDuration();
  DSPGraph::Graph::configure(*(a1 + 16));
  return DSPGraph::Graph::initialize(*(a1 + 16));
}

void sub_241610B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Graph *ASDDSPGraphHelper::deallocateStreamingResources(DSPGraph::Graph **this)
{
  DSPGraph::Graph::uninitialize(this[2]);
  DSPGraph::Graph::unconfigure(this[2]);
  result = this[2];
  this[2] = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2416144A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t CABufferList::AllocateBuffers(uint64_t this, unsigned int a2)
{
  if (*(this + 36) < a2)
  {
    *(this + 24);
    operator new[]();
  }

  return this;
}

char *CABufferList::AllocateBuffersAndCopyFrom(char *this, unsigned int a2, CABufferList *a3, CABufferList *a4)
{
  v4 = *(this + 6);
  if (v4 == *(a3 + 6) && v4 == *(a4 + 6))
  {
    if (*(this + 9) >= a2)
    {
      v5 = a3;
      v6 = a4;
    }

    else
    {
      if (!*(a4 + 1))
      {
        v7 = *(a3 + 9);
        operator new[]();
      }

      this = CABufferList::AllocateBuffersAndCopyFrom();
    }

    return CABufferList::CopyAllFrom(this, v5, v6);
  }

  return this;
}

char *CABufferList::CopyAllFrom(char *this, CABufferList *a2, CABufferList *a3)
{
  if (*(a3 + 1))
  {
    BuffersAndCopyFrom = CABufferList::AllocateBuffersAndCopyFrom();
    return CABufferList::BytesConsumed(BuffersAndCopyFrom, v12);
  }

  v5 = *(a2 + 9);
  v6 = *(this + 6);
  if (v6)
  {
    v7 = (a3 + 40);
    v8 = (a2 + 36);
    v9 = (this + 40);
    do
    {
      --v6;
      this = memmove(*v9, *(v8 + 1), *v8);
      v10 = *v9;
      v9 += 2;
      *v7 = v10;
      LODWORD(v10) = *v8;
      v8 += 4;
      *(v7 - 1) = v10;
      v7 += 2;
    }

    while (v6);
  }

  if (a2 != a3)
  {
    BuffersAndCopyFrom = a2;
    v12 = v5;

    return CABufferList::BytesConsumed(BuffersAndCopyFrom, v12);
  }

  return this;
}

uint64_t CABufferList::BytesConsumed(uint64_t this, unsigned int a2)
{
  if (*(this + 8))
  {
LABEL_8:
    BuffersAndCopyFrom = CABufferList::AllocateBuffersAndCopyFrom();
    return CABufferList::DeallocateBuffers(BuffersAndCopyFrom);
  }

  v2 = *(this + 24);
  if (v2)
  {
    for (i = (this + 40); ; i += 2)
    {
      v4 = *(i - 1);
      v5 = v4 >= a2;
      v6 = v4 - a2;
      if (!v5)
      {
        break;
      }

      *i += a2;
      *(i - 1) = v6;
      if (!--v2)
      {
        return this;
      }
    }

    CABufferList::BytesConsumed();
    goto LABEL_8;
  }

  return this;
}

uint64_t CABufferList::DeallocateBuffers(CABufferList *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = (this + 40);
    do
    {
      *v3 = 0;
      *(v3 - 1) = 0;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x245CEB8A0](result, 0x1000C8077774924);
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t CAShowAudioBufferList(const AudioBufferList *a1, int a2, const AudioStreamBasicDescription *a3, const char *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  CAStreamBasicDescription::CAStreamBasicDescription(v15, a3);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__str = 0u;
  if (v16 != 1819304813)
  {
    goto LABEL_10;
  }

  if (v17)
  {
    if (v20 == 32)
    {
      if ((v17 & 2) != 0)
      {
        strcpy(__str, ", BEF");
        v9 = 10;
      }

      else
      {
        strcpy(__str, ", LEF");
        v9 = -10;
      }

      goto LABEL_11;
    }

LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (!v18)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_11;
  }

  if ((v17 & 0x20) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v19;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  v9 = v18 / v8;
  if ((v18 / v8) >= 1)
  {
    mBitsPerChannel = a3->mBitsPerChannel;
    if (((a3->mFormatFlags >> 7) & 0x3F) != 0)
    {
      snprintf(__str, 0x50uLL, ", %d.%d-bit");
    }

    else
    {
      v14 = a3->mBitsPerChannel;
      snprintf(__str, 0x50uLL, ", %d-bit");
    }

    if ((v17 & 2) != 0)
    {
      v13 = " BEI";
    }

    else
    {
      v9 = -v9;
      v13 = " LEI";
    }

    strlcat(__str, v13, 0x50uLL);
  }

LABEL_11:
  result = show(a1, a2, v9, a4, __str);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t show(const AudioBufferList *a1, int a2, int a3, const char *a4, const char *a5)
{
  v8 = "AudioBufferList";
  if (a4)
  {
    v8 = a4;
  }

  v9 = "";
  if (a5)
  {
    v9 = a5;
  }

  result = printf("%s %p (%d fr%s):\n", v8, a1, a2, v9);
  if (a1->mNumberBuffers)
  {
    v11 = 0;
    for (i = a1->mBuffers; ; ++i)
    {
      printf("    [%2d] %5dbytes %dch @ %p", v11, i->mDataByteSize, i->mNumberChannels, i->mData);
      if (a2)
      {
        if (i->mData)
        {
          putchar(58);
          v13 = i->mNumberChannels * a2;
          if (v13 >= 1)
          {
            break;
          }
        }
      }

LABEL_40:
      result = putchar(10);
      if (++v11 >= a1->mNumberBuffers)
      {
        return result;
      }
    }

    mData = i->mData;
    v15 = v13 + 1;
    while (1)
    {
      if (a3 < 0)
      {
        if (a3 <= -4)
        {
          if (a3 == -10)
          {
LABEL_29:
            v20 = *mData;
            mData += 4;
            goto LABEL_30;
          }

          if (a3 == -4)
          {
            v19 = *mData;
            mData += 4;
LABEL_34:
            printf(" %08X");
          }
        }

        else
        {
          switch(a3)
          {
            case -3:
              v23 = (mData[2] << 16) | (mData[1] << 8);
              v24 = *mData;
LABEL_39:
              printf(" %06X", v23 | v24);
              mData += 3;
              break;
            case -2:
              v21 = *mData;
              mData += 2;
              goto LABEL_32;
            case -1:
              goto LABEL_21;
          }
        }
      }

      else if (a3 > 2)
      {
        switch(a3)
        {
          case 3:
            v23 = (*mData << 16) | (mData[1] << 8);
            v24 = mData[2];
            goto LABEL_39;
          case 4:
            v22 = *mData;
            mData += 4;
            goto LABEL_34;
          case 10:
            v18 = *mData;
            mData += 4;
LABEL_30:
            printf(" %6.3f");
            break;
        }
      }

      else
      {
        switch(a3)
        {
          case 0:
            goto LABEL_29;
          case 1:
LABEL_21:
            v17 = *mData++;
            printf(" %02X");
            break;
          case 2:
            v16 = *mData;
            mData += 2;
LABEL_32:
            printf(" %04X");
            break;
        }
      }

      if (--v15 <= 1)
      {
        goto LABEL_40;
      }
    }
  }

  return result;
}

unsigned int *CrashIfClientProvidedBogusAudioBufferList(unsigned int *result, char a2)
{
  v2 = *result;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = &result[4 * v2 + 2];
  v6 = result + 2;
  while (1)
  {
    v7 = *(v6 + 1);
    if (v7)
    {
      v8 = v6[1];
      if (v8 >= 4)
      {
        v3 += *v7 + *(v7 + (v8 & 0xFFFFFFFC) - 4);
      }

      goto LABEL_8;
    }

    if ((a2 & 1) == 0)
    {
      break;
    }

    v4 = 1;
LABEL_8:
    v6 += 4;
    if (v6 >= v5)
    {
      return (v3 & 0xFFFFFFFE | v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t DSPGraph::GraphBox::GraphBox(uint64_t a1, uint64_t a2, char a3)
{
  DSPGraph::Graph::numInputs(*a2);
  DSPGraph::Graph::numOutputs(*a2);
  DSPGraph::Box::Box(a1);
  *a1 = &unk_285344630;
  v6 = *a2;
  *(a1 + 776) = *a2;
  v7 = *(a2 + 8);
  *(a1 + 784) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  v8 = DSPGraph::Graph::numInputs(v6);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100]((a1 + 792), v8);
  v9 = DSPGraph::Graph::numOutputs(*a2);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100]((a1 + 816), v9);
  *(a1 + 840) = a3;
  if (!*a2)
  {
    __assert_rtn("GraphBox", "DSPGraph_GraphBox.cpp", 26, "inGraph");
  }

  v10 = *(a1 + 776);
  v11 = *(v10 + 761);
  if (*(v10 + 760) != 1 || (*(v10 + 761) & 1) == 0)
  {
    v12 = *(v10 + 762);
    DSPGraph::Graph::uninitialize(v10);
    DSPGraph::Graph::unconfigure(*(a1 + 776));
    *(*(a1 + 776) + 688);
    v13 = DSPGraph::Graph::in(*(a1 + 776));
    DSPGraph::Box::sampleRate(v13);
    DSPGraph::Graph::setSliceDuration();
    if (v11)
    {
      DSPGraph::Graph::configure(*(a1 + 776));
    }

    if (v12)
    {
      DSPGraph::Graph::initialize(*(a1 + 776));
    }
  }

  if (DSPGraph::Graph::numInputs(*a2) && DSPGraph::Graph::numOutputs(*a2))
  {
    v14 = DSPGraph::Graph::in(*(a1 + 776));
    v15 = *(v14 + 88);
    if (*(v14 + 96) == v15)
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v38, "out");
      v27 = (v14 + 32);
      if (*(v14 + 55) < 0)
      {
        v27 = *v27;
      }

      DSPGraph::strprintf(v37, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v26, v27, (*(v14 + 96) - *(v14 + 88)) >> 5, 0);
      result = DSPGraph::ThrowException();
    }

    else
    {
      v16 = 0;
      v17 = **((*(*v15 + 40))(v15) + 120);
      while (v16 < DSPGraph::Graph::numInputs(*a2))
      {
        v18 = DSPGraph::Graph::in(*a2);
        ++v16;
        if (DSPGraph::Box::sampleRate(v18) != v17)
        {
          std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(v38, "GraphBox");
          v19 = *a2;
          v20 = (*a2 + 408);
          if (*(v19 + 431) < 0)
          {
            v20 = *v20;
          }

          goto LABEL_18;
        }
      }

      v24 = 0;
      do
      {
        if (v24 >= DSPGraph::Graph::numOutputs(*a2))
        {
          return a1;
        }

        v25 = DSPGraph::Graph::out(*a2);
        ++v24;
      }

      while (DSPGraph::Box::sampleRate(v25) == v17);
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(v38, "GraphBox");
      v19 = *a2;
      v20 = (*a2 + 408);
      if (*(v19 + 431) < 0)
      {
        v20 = *v20;
      }

LABEL_18:
      v21 = (*(*v19 + 16))(v19);
      DSPGraph::strprintf(v37, "%s %s graph must have the same sample rate for all input and output busses to be used in a GraphBox", v22, v20, v21);
      result = DSPGraph::ThrowException();
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(v38, "GraphBox");
    v28 = *a2;
    v29 = (*a2 + 408);
    if (*(v28 + 431) < 0)
    {
      v29 = *v29;
    }

    v30 = (*(*v28 + 16))(v28);
    DSPGraph::strprintf(v37, "%s %s graph must have at least one input and output bus.", v31, v29, v30);
    result = DSPGraph::ThrowException();
  }

  __break(1u);
  return result;
}

void sub_2416162CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  v36 = *v33;
  if (*v33)
  {
    *(v31 + 103) = v36;
    operator delete(v36);
  }

  v37 = *v32;
  if (*v32)
  {
    *(v31 + 100) = v37;
    operator delete(v37);
  }

  v38 = *(v31 + 98);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  DSPGraph::Box::~Box(v31);
  _Unwind_Resume(a1);
}

void DSPGraph::GraphBox::~GraphBox(DSPGraph::Graph **this)
{
  *this = &unk_285344630;
  if ((this[105] & 1) == 0)
  {
    DSPGraph::Graph::uninitialize(this[97]);
  }

  v2 = this[102];
  if (v2)
  {
    this[103] = v2;
    operator delete(v2);
  }

  v3 = this[99];
  if (v3)
  {
    this[100] = v3;
    operator delete(v3);
  }

  v4 = this[98];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  DSPGraph::Box::~Box(this);
}

{
  DSPGraph::GraphBox::~GraphBox(this);

  JUMPOUT(0x245CEB8C0);
}

uint64_t DSPGraph::GraphBox::initialize(DSPGraph::Graph **this)
{
  DSPGraph::Box::initialize(this);
  v2 = this[97];

  return DSPGraph::Graph::initialize(v2);
}

uint64_t DSPGraph::GraphBox::uninitialize(DSPGraph::Graph **this)
{
  result = DSPGraph::Box::uninitialize(this);
  if ((this[105] & 1) == 0)
  {
    v3 = this[97];

    return DSPGraph::Graph::uninitialize(v3);
  }

  return result;
}

uint64_t DSPGraph::GraphBox::prepareGraphIOData(DSPGraph::GraphBox *this, int a2)
{
  if (DSPGraph::Graph::numInputs(*(this + 97)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *(this + 8);
      if (v6 >= (*(this + 9) - v7) >> 5)
      {
        break;
      }

      v8 = *((*(*(v7 + v5) + 40))() + 56);
      v9 = *(v8 + 80);
      *(v8 + 8) = *(*(this + 2) + 256);
      v10 = *(v8 + 72);
      v28 = *(v8 + 8);
      v29 = *(v8 + 24);
      v30 = *(v8 + 40);
      v31 = *(v8 + 56);
      v11 = *(this + 99);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 100) - v11) >> 4) <= v6)
      {
        goto LABEL_26;
      }

      v12 = v11 + v4;
      *v12 = a2;
      *(v12 + 4) = v10;
      *(v12 + 8) = v28;
      *(v12 + 24) = v29;
      *(v12 + 40) = v30;
      *(v12 + 56) = v31;
      *(v12 + 72) = v9;
      ++v6;
      v5 += 32;
      v4 += 80;
      if (v6 >= DSPGraph::Graph::numInputs(*(this + 97)))
      {
        goto LABEL_6;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v28, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v33, "in");
    v27 = (this + 32);
    if (*(this + 55) < 0)
    {
      v27 = *v27;
    }

    DSPGraph::strprintf(v32, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v26, v27, (*(this + 9) - *(this + 8)) >> 5, v6);
    DSPGraph::ThrowException();
LABEL_25:
    __break(1u);
LABEL_26:
    std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
  }

LABEL_6:
  result = DSPGraph::Graph::numOutputs(*(this + 97));
  if (result)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(this + 11);
      if (v14 >= ((*(this + 12) - v15) >> 5))
      {
        std::string::basic_string[abi:ne200100]<0>(&v28, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v33, "out");
        v25 = (this + 32);
        if (*(this + 55) < 0)
        {
          v25 = *v25;
        }

        goto LABEL_24;
      }

      v16 = *((*(*(v15 + 32 * v14) + 40))(v15 + 32 * v14) + 56);
      v17 = *(v16 + 80);
      if (*v17)
      {
        break;
      }

LABEL_13:
      *(v16 + 8) = *(*(this + 2) + 256);
      v21 = *(v16 + 72);
      v28 = *(v16 + 8);
      v29 = *(v16 + 24);
      v30 = *(v16 + 40);
      v31 = *(v16 + 56);
      v22 = *(this + 102);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 103) - v22) >> 4) <= v14)
      {
        goto LABEL_26;
      }

      v23 = v22 + 80 * v14;
      *v23 = a2;
      *(v23 + 4) = v21;
      *(v23 + 8) = v28;
      *(v23 + 24) = v29;
      *(v23 + 40) = v30;
      *(v23 + 56) = v31;
      *(v23 + 72) = v17;
      ++v14;
      result = DSPGraph::Graph::numOutputs(*(this + 97));
      if (v14 >= result)
      {
        return result;
      }
    }

    v18 = 0;
    v19 = 3;
    while (1)
    {
      v20 = *(this + 11);
      if (v14 >= ((*(this + 12) - v20) >> 5))
      {
        break;
      }

      v17[v19] = *(*((*(*(v20 + 32 * v14) + 40))(v20 + 32 * v14) + 120) + 24) * a2;
      ++v18;
      v19 += 4;
      if (v18 >= *v17)
      {
        goto LABEL_13;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v28, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v33, "out");
    v25 = (this + 32);
    if (*(this + 55) < 0)
    {
      v25 = *v25;
    }

LABEL_24:
    DSPGraph::strprintf(v32, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(this + 12) - *(this + 11)) >> 5, v14);
    DSPGraph::ThrowException();
    goto LABEL_25;
  }

  return result;
}

void sub_241616900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphBox::process(DSPGraph::GraphBox *this, int a2)
{
  if ((*(*this + 64))(this))
  {
    v4 = *(this + 8);
    if (*(this + 9) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v26, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v25, "in");
      v20 = (this + 32);
      if (*(this + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf(v24, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(this + 9) - *(this + 8)) >> 5, 0);
      DSPGraph::ThrowException();
    }

    else
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = *(this + 11);
      if (*(this + 12) != v6)
      {
        v7 = *(v5 + 56);
        v8 = (*(*v6 + 40))(v6);
        if (*(v8 + 56) != v7)
        {
          v9 = *(v8 + 56);
          DSPGraph::Buffer::copyFrom();
          DSPGraph::Buffer::copyTimeFrom();
        }

        DSPGraph::GraphBox::prepareGraphIOData(this, a2);
        if (*(this + 103) != *(this + 102))
        {
          v10 = *(this + 97);

          return MEMORY[0x282143068](v10);
        }

LABEL_21:
        std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
      }

      std::string::basic_string[abi:ne200100]<0>(v26, "/AppleInternal/Library/BuildRoots/4~B_v4ugBrk2VtsmME3o9-eotLpphjaV7WfgvGsVo/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v25, "out");
      v22 = (this + 32);
      if (*(this + 55) < 0)
      {
        v22 = *v22;
      }

      DSPGraph::strprintf(v24, "Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v21, v22, (*(this + 12) - *(this + 11)) >> 5, 0);
      DSPGraph::ThrowException();
    }

    __break(1u);
    goto LABEL_21;
  }

  DSPGraph::GraphBox::prepareGraphIOData(this, a2);
  v11 = *(this + 99);
  v12 = *(this + 102);
  v13 = DSPGraph::Graph::in(*(this + 97));
  DSPGraph::Box::sampleRate(v13);
  DSPGraph::Graph::preflight();
  v14 = *(this + 97);
  v15 = *(this + 99);
  v16 = *(this + 102);
  DSPGraph::Graph::processMultiple();
  v17 = *(this + 99);
  if (*(this + 100) == v17)
  {
    goto LABEL_21;
  }

  v18 = *(v17 + 4);

  return MEMORY[0x282143030](this, v18, v17 + 8);
}

void sub_241616C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphBox::setParameter(DSPGraph::GraphBox *this, unsigned int a2, int a3, int a4, __n128 a5)
{
  if (a4 | a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(v8, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(v7, "DSPGraph parameters must have global scope and main element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v5 = *(**(this + 97) + 40);

    return v5(a5);
  }

  return result;
}

void sub_241616D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphBox::getParameter(DSPGraph::GraphBox *this, unsigned int a2, int a3, int a4)
{
  if (a4 | a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(v6, "DSPGraph parameters must have global scope and main element.");
    result = DSPGraph::ThrowException();
    __break(1u);
  }

  else
  {
    v4 = *(**(this + 97) + 48);

    return v4();
  }

  return result;
}

void sub_241616E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GraphBox::getParameterList@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (!a2)
  {
    return MEMORY[0x282143108](*(this + 776));
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return this;
}

void DSPGraph::GraphBox::getParameterInfo(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = 0;
    *a2 = 1852204065;
  }

  else
  {
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    v3 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  *(a2 + 104) = v3;
}

unint64_t DSPGraph::GraphBox::selfLatencyInTicks(DSPGraph::Graph **this)
{
  if (!DSPGraph::Graph::numOutputs(this[97]))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = DSPGraph::Graph::out(this[97]);
    v5 = DSPGraph::Box::totalLatencyInTicks(v4);
    if (v3 <= v5)
    {
      v3 = v5;
    }

    ++v2;
  }

  while (v2 < DSPGraph::Graph::numOutputs(this[97]));
  return v3;
}

uint64_t DSPGraph::GraphBox::setMaxFrames(DSPGraph::GraphBox *this, int a2)
{
  result = *(this + 97);
  if (*(result + 688) != a2)
  {
    v4 = *(result + 762);
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = *(this + 97);
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = DSPGraph::Graph::out(*(this + 97));
    DSPGraph::Box::sampleRate(v5);
    v6 = *(this + 97);
    (*(*this + 128))(this);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(*(this + 97));
    if (v4)
    {
      v7 = *(this + 97);

      return DSPGraph::Graph::initialize(v7);
    }
  }

  return result;
}

unsigned __int8 *DSPGraph::GraphBox::setUsesFixedBlockSize(DSPGraph::GraphBox *this, int a2)
{
  result = *(this + 97);
  if (result[760] == a2)
  {
    v4 = result[762];
    if (v4 == 1)
    {
      DSPGraph::Graph::uninitialize(result);
      result = *(this + 97);
    }

    DSPGraph::Graph::unconfigure(result);
    v5 = *(this + 97);
    v6 = v5[172];
    v7 = DSPGraph::Graph::out(v5);
    DSPGraph::Box::sampleRate(v7);
    v8 = *(this + 97);
    DSPGraph::Graph::setSliceDuration();
    result = DSPGraph::Graph::configure(*(this + 97));
    if (v4)
    {
      v9 = *(this + 97);

      return DSPGraph::Graph::initialize(v9);
    }
  }

  return result;
}

double DSPGraph::GraphBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 2.04737529e190;
  *a1 = xmmword_241642F00;
  *(a1 + 16) = 0;
  return result;
}

void *std::vector<DSPGraph::GraphIOData>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<DSPGraph::GraphIOData>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_241617208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<DSPGraph::GraphIOData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(a1, a2);
  }

  std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DSPGraph::GraphIOData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t CATimeUtilities::GetCurrentGregorianDate(CATimeUtilities *this)
{
  Current = CFAbsoluteTimeGetCurrent();

  return CATimeUtilities::GregorianDateFromAbsoluteTime(v1, Current);
}

uint64_t CATimeUtilities::GregorianDateFromAbsoluteTime(CATimeUtilities *this, CFAbsoluteTime a2)
{
  {
    CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz = CFTimeZoneCopySystem();
  }

  v3 = CATimeUtilities::GregorianDateFromAbsoluteTime(double)::tz;

  return *&CFAbsoluteTimeGetGregorianDate(a2, v3);
}

uint64_t RamstadKernelFactory::ReferenceRamstadKernel(uint64_t **this, int a2, int a3, double a4, int a5)
{
  for (i = *this; ; ++i)
  {
    if (i == this[1])
    {
      operator new();
    }

    v6 = *i;
    if (*(*i + 16) == a3 && *v6 == a4 && *(v6 + 12) == a2 && *(v6 + 20) == a5)
    {
      break;
    }
  }

  ++*(v6 + 8);
  return v6;
}

uint64_t RamstadKernelFactory::ReleaseRamstadKernel(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8) - 1;
    *(a2 + 8) = v3;
    if (!v3)
    {
      v4 = result;
      v6 = *result;
      v5 = *(result + 8);
      v7 = v5 - *result;
      if (v5 != *result)
      {
        v8 = v7 >> 3;
        if ((v7 >> 3) <= 1)
        {
          v8 = 1;
        }

        v9 = v7 - 8;
        do
        {
          if (*v6 == a2)
          {
            if (v6 + 1 != v5)
            {
              memmove(v6, v6 + 1, v9);
            }

            *(v4 + 8) = v6 + v9;
            v10 = *(a2 + 48);
            if (v10)
            {
              *(a2 + 56) = v10;
              operator delete(v10);
            }

            v11 = *(a2 + 24);
            if (v11)
            {
              *(a2 + 32) = v11;
              operator delete(v11);
            }

            JUMPOUT(0x245CEB8C0);
          }

          ++v6;
          v9 -= 8;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t RamstadKernelFactoryD::ReferenceRamstadKernel(uint64_t **this, int a2, int a3, double a4, int a5)
{
  for (i = *this; ; ++i)
  {
    if (i == this[1])
    {
      operator new();
    }

    v6 = *i;
    if (*(*i + 16) == a3 && *v6 == a4 && *(v6 + 12) == a2 && *(v6 + 20) == a5)
    {
      break;
    }
  }

  ++*(v6 + 8);
  return v6;
}

uint64_t RamstadKernelFactoryD::ReleaseRamstadKernel(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8) - 1;
    *(a2 + 8) = v3;
    if (!v3)
    {
      v4 = result;
      v6 = *result;
      v5 = *(result + 8);
      v7 = v5 - *result;
      if (v5 != *result)
      {
        v8 = v7 >> 3;
        if ((v7 >> 3) <= 1)
        {
          v8 = 1;
        }

        v9 = v7 - 8;
        do
        {
          if (*v6 == a2)
          {
            if (v6 + 1 != v5)
            {
              memmove(v6, v6 + 1, v9);
            }

            *(v4 + 8) = v6 + v9;
            v10 = *(a2 + 48);
            if (v10)
            {
              *(a2 + 56) = v10;
              operator delete(v10);
            }

            v11 = *(a2 + 24);
            if (v11)
            {
              *(a2 + 32) = v11;
              operator delete(v11);
            }

            JUMPOUT(0x245CEB8C0);
          }

          ++v6;
          v9 -= 8;
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

void RamstadKernel::RamstadKernel(RamstadKernel *this, int a2, int a3, double a4, int a5)
{
  *this = a4;
  *(this + 3) = a2;
  *(this + 4) = a3;
  v6 = 1.0 / a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0;
  v7 = a5 + a3;
  memset(v13, 0, sizeof(v13));
  if (a2 > 10)
  {
    *(this + 3) = 11;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 3, 0, 4uLL, v15);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 6, *(this + 6), 4 * v7, v15);
    v10 = *(this + 3);
    ramstadPrecalculateCoeffs<float>(*(this + 3), &kRamstadASRCPoles22, &kRamstadASRCResidues22, v13, v10, (v10 + 64), *this);
    *(v10 + 48) = *(v10 + 32);
    *(v10 + 112) = *(v10 + 96);
    if (v7 >= 1)
    {
      v11 = *(this + 6) + 64;
      v12 = 0.0;
      do
      {
        ramstadBackEndCoeffs<float>(*(this + 3), v13, (v11 - 64), v11, v12);
        *(v11 - 16) = *(v11 - 32);
        *(v11 + 48) = *(v11 + 32);
        v11 += 128;
        v12 = v6 + v12;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    *(this + 3) = 8;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 3, 0, 2uLL, v15);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 6, *(this + 6), 2 * v7, v15);
    ramstadPrecalculateCoeffs<float>(*(this + 3), &kRamstadASRCPoles16, &kRamstadASRCResidues16, v13, *(this + 3), (*(this + 3) + 32), *this);
    if (v7 >= 1)
    {
      v8 = *(this + 6);
      v9 = 0.0;
      do
      {
        ramstadBackEndCoeffs<float>(*(this + 3), v13, v8, (v8 + 32), v9);
        v9 = v6 + v9;
        v8 += 64;
        --v7;
      }

      while (v7);
    }
  }
}

void sub_241618DC0(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

char *_ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 5)
  {
    v15 = v8 - __src;
    v16 = a1[1];
    v17 = a3;
    if (a3 <= (v8 - __src) >> 5)
    {
      goto LABEL_15;
    }

    v18 = 0;
    v17 = v15 >> 5;
    v16 = &v8[32 * (a3 - (v15 >> 5))];
    v19 = 32 * a3 - 32 * (v15 >> 5);
    do
    {
      v20 = &v8[v18];
      v21 = *(a4 + 1);
      *v20 = *a4;
      *(v20 + 1) = v21;
      v18 += 32;
    }

    while (v19 != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
LABEL_15:
      v22 = &__src[32 * a3];
      v23 = &v16[-32 * a3];
      v24 = v16;
      if (v23 < v8)
      {
        v24 = v16;
        do
        {
          v25 = *v23;
          v26 = *(v23 + 1);
          v23 += 32;
          *v24 = v25;
          *(v24 + 1) = v26;
          v24 += 32;
        }

        while (v23 < v8);
      }

      a1[1] = v24;
      if (v16 != v22)
      {
        memmove(&__src[32 * a3], __src, v16 - v22);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v27 = 0;
        }

        else
        {
          v27 = a3;
        }

        v5 += 32 * v27;
      }

      v28 = __src;
      do
      {
        v29 = *(v5 + 1);
        *v28 = *v5;
        *(v28 + 1) = v29;
        v28 += 32;
        --v17;
      }

      while (v17);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 5);
  if (v11 >> 59)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 4 > v11)
  {
    v11 = v13 >> 4;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFE0)
  {
    v14 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv8_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v14);
  }

  v30 = 32 * (v12 >> 5);
  v31 = 32 * a3;
  v32 = v30;
  do
  {
    v33 = *(a4 + 1);
    *v32 = *a4;
    v32[1] = v33;
    v32 += 2;
    v31 -= 32;
  }

  while (v31);
  memcpy((v30 + 32 * a3), __src, a1[1] - __src);
  v34 = *a1;
  v35 = v30 + 32 * a3 + a1[1] - __src;
  a1[1] = __src;
  v36 = (__src - v34);
  v37 = (v30 - (__src - v34));
  memcpy(v37, v34, v36);
  v38 = *a1;
  *a1 = v37;
  a1[1] = v35;
  a1[2] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  return v30;
}

void ramstadPrecalculateCoeffs<float>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      v17 = (v16 + v16) * cos(v15);
      *a5++ = v17;
      v18 = exp(v14 + v14);
      *a6++ = -v18;
      v19 = v9 * *(v13 - 1);
      v20 = v9 * *v13;
      v21 = hypot(v19, v20);
      *(v10 - 22) = v21 + v21;
      *(v10 - 11) = atan2(v20, v19);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      ++v10;
      v13 += 2;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<float>(int a1, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      v17 = v11 * v14;
      *a3++ = v17;
      *&v16 = v11 * -(v15 * v16);
      *a4++ = LODWORD(v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void RamstadKernelD::RamstadKernelD(RamstadKernelD *this, int a2, int a3, double a4, int a5)
{
  *this = a4;
  *(this + 3) = a2;
  *(this + 4) = a3;
  v6 = 1.0 / a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  v7 = a5 + a3;
  memset(v17, 0, sizeof(v17));
  if (a2 > 10)
  {
    *(this + 3) = 11;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 3, 0, 4uLL, v19);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 6, *(this + 6), 4 * v7, v19);
    v10 = *(this + 3);
    ramstadPrecalculateCoeffs<double>(*(this + 3), &kRamstadASRCPoles22, &kRamstadASRCResidues22, v17, v10, (v10 + 128), *this);
    v11 = *(v10 + 80);
    *(v10 + 96) = *(v10 + 64);
    *(v10 + 112) = v11;
    v12 = *(v10 + 208);
    *(v10 + 224) = *(v10 + 192);
    *(v10 + 240) = v12;
    if (v7 >= 1)
    {
      v13 = *(this + 6) + 128;
      v14 = 0.0;
      do
      {
        ramstadBackEndCoeffs<double>(*(this + 3), v17, (v13 - 128), v13, v14);
        v15 = *(v13 - 48);
        *(v13 - 32) = *(v13 - 64);
        *(v13 - 16) = v15;
        v16 = *(v13 + 80);
        *(v13 + 96) = *(v13 + 64);
        *(v13 + 112) = v16;
        v13 += 256;
        v14 = v6 + v14;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    *(this + 3) = 8;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 3, 0, 2uLL, v19);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 6, *(this + 6), 2 * v7, v19);
    ramstadPrecalculateCoeffs<double>(*(this + 3), &kRamstadASRCPoles16, &kRamstadASRCResidues16, v17, *(this + 3), (*(this + 3) + 64), *this);
    if (v7 >= 1)
    {
      v8 = *(this + 6);
      v9 = 0.0;
      do
      {
        ramstadBackEndCoeffs<double>(*(this + 3), v17, v8, v8 + 8, v9);
        v9 = v6 + v9;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }
}

void sub_2416193A0(_Unwind_Exception *exception_object)
{
  v4 = v1[6];
  if (v4)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[4] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

char *_ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 6)
  {
    v15 = v8 - __src;
    v16 = a1[1];
    v17 = a3;
    if (a3 <= (v8 - __src) >> 6)
    {
      goto LABEL_15;
    }

    v18 = 0;
    v17 = v15 >> 6;
    v16 = &v8[64 * (a3 - (v15 >> 6))];
    v19 = (a3 << 6) - (v15 >> 6 << 6);
    do
    {
      v20 = &v8[v18];
      v22 = *a4;
      v21 = *(a4 + 1);
      v23 = *(a4 + 3);
      *(v20 + 2) = *(a4 + 2);
      *(v20 + 3) = v23;
      *v20 = v22;
      *(v20 + 1) = v21;
      v18 += 64;
    }

    while (v19 != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
LABEL_15:
      v24 = &__src[64 * a3];
      v25 = &v16[-64 * a3];
      v26 = v16;
      if (v25 < v8)
      {
        v26 = v16;
        do
        {
          v28 = *v25;
          v27 = *(v25 + 1);
          v29 = *(v25 + 3);
          *(v26 + 2) = *(v25 + 2);
          *(v26 + 3) = v29;
          *v26 = v28;
          *(v26 + 1) = v27;
          v26 += 64;
          v25 += 64;
        }

        while (v25 < v8);
      }

      a1[1] = v26;
      if (v16 != v24)
      {
        memmove(&__src[64 * a3], __src, v16 - v24);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = a3;
        }

        v5 += 64 * v30;
      }

      v31 = __src;
      do
      {
        v33 = *v5;
        v32 = *(v5 + 1);
        v34 = *(v5 + 3);
        *(v31 + 2) = *(v5 + 2);
        *(v31 + 3) = v34;
        *v31 = v33;
        *(v31 + 1) = v32;
        v31 += 64;
        --v17;
      }

      while (v17);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 6);
  if (v11 >> 58)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 5 > v11)
  {
    v11 = v13 >> 5;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFC0)
  {
    v14 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv8_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v14);
  }

  v35 = v12 >> 6 << 6;
  v36 = a3 << 6;
  v37 = v35;
  do
  {
    v39 = *a4;
    v38 = *(a4 + 1);
    v40 = *(a4 + 3);
    v37[2] = *(a4 + 2);
    v37[3] = v40;
    *v37 = v39;
    v37[1] = v38;
    v37 += 4;
    v36 -= 64;
  }

  while (v36);
  memcpy((v35 + (a3 << 6)), __src, a1[1] - __src);
  v41 = *a1;
  v42 = v35 + (a3 << 6) + a1[1] - __src;
  a1[1] = __src;
  v43 = (__src - v41);
  v44 = (v35 - (__src - v41));
  memcpy(v44, v41, v43);
  v45 = *a1;
  *a1 = v44;
  a1[1] = v42;
  a1[2] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  return v35;
}

void ramstadPrecalculateCoeffs<double>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, long double *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      *a5++ = (v16 + v16) * cos(v15);
      *a6++ = -exp(v14 + v14);
      v17 = v9 * *(v13 - 1);
      v18 = v9 * *v13;
      v19 = hypot(v17, v18);
      *(v10 - 22) = v19 + v19;
      *(v10 - 11) = atan2(v18, v17);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      ++v10;
      v13 += 2;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<double>(int a1, uint64_t a2, double *a3, double *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      *a3++ = v11 * v14;
      *a4++ = v11 * -(v15 * v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, int a4, int a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = a4;
  *(this + 14) = 0;
  *(this + 18) = 1;
  *(this + 76) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = -1;
  *(this + 60) = -1;
  if (a5 > 63)
  {
    *(this + 10) = 11;
    if (a5 > 0x5F)
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    *(this + 10) = 8;
  }

  v5 = 0;
LABEL_6:
  *(this + 77) = v5;
  v6 = floor(a2);
  v7 = v6 == a2;
  v8 = a2 / a3;
  if (!v7)
  {
    goto LABEL_28;
  }

  v9 = floor(a3);
  if (v9 != a3)
  {
    goto LABEL_28;
  }

  v10 = v6;
  v11 = v9;
  v12 = v6 >= 0 ? v6 : -v10;
  v13 = v11 >= 0 ? v9 : -v11;
  if (v12 >= 2 && v13 >= 2)
  {
    do
    {
      if (v12 <= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      if (v12 < v13)
      {
        v13 = v12;
      }

      v12 = v15 % v13;
    }

    while (v15 % v13);
  }

  else
  {
    v13 = 1;
  }

  v16 = v11 / v13;
  if (v16 <= 1280)
  {
    *(this + 76) = 1;
    v17 = v10 / v13;
    *(this + 9) = v16;
    *(this + 11) = v17 / v16;
    *(this + 12) = v17;
    *(this + 13) = v17 % v16;
  }

  else
  {
LABEL_28:
    *(this + 10) = 0x3E80000000000000;
    *(this + 76) = 0;
    *(this + 9) = 256;
    v18 = vcvtmd_s64_f64(v8);
    *(this + 11) = v18;
    v19 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
    *(this + 13) = v19;
    *(this + 8) = (v18 << 32 >> 1) + v19;
    *(this + 29) = -1;
    *(this + 60) = -1;
  }

  *(this + 14) = 0;
  RamstadSRC::initFilter(this, 1.0 / v8);
}

void sub_24161993C(_Unwind_Exception *exception_object)
{
  v4 = v1[26];
  if (v4)
  {
    v1[27] = v4;
    operator delete(v4);
  }

  v5 = v1[23];
  if (v5)
  {
    v1[24] = v5;
    operator delete(v5);
  }

  v6 = v1[20];
  if (v6)
  {
    v1[21] = v6;
    operator delete(v6);
  }

  v7 = v1[17];
  if (v7)
  {
    v1[18] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RamstadSRC::initQuality(uint64_t this, int a2)
{
  if (a2 <= 63)
  {
    *(this + 40) = 8;
LABEL_5:
    v2 = 0;
    goto LABEL_6;
  }

  *(this + 40) = 11;
  if (a2 <= 0x5F)
  {
    goto LABEL_5;
  }

  v2 = 1;
LABEL_6:
  *(this + 77) = v2;
  return this;
}

double RamstadSRC::useInterpolationMethod(RamstadSRC *this, double a2)
{
  *(this + 10) = 0x3E80000000000000;
  *(this + 76) = 0;
  *(this + 9) = 256;
  v2 = vcvtmd_s64_f64(a2);
  *(this + 11) = v2;
  v3 = vcvtmd_s64_f64((a2 - floor(a2)) * 2147483650.0);
  *(this + 8) = (v2 << 32 >> 1) + v3;
  result = NAN;
  *(this + 29) = -1;
  *(this + 60) = -1;
  *(this + 13) = v3;
  *(this + 14) = 0;
  return result;
}

_DWORD *RamstadSRC::initFilter(RamstadSRC *this, double a2)
{
  *(this + 18) = 1;
  v3 = fmin(a2, 1.0) * 0.907029478;
  v4 = (3 * *(this + 8) + 1) / 2;
  if (*(this + 10) == 8)
  {
    v4 = *(this + 8);
  }

  v5 = v4;
  if (*(this + 77) == 1)
  {
    v13 = 0uLL;
    v14 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 17, *(this + 17), v4, &v11);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 20, *(this + 20), v5, &v11);
    {
      RamstadKernelFactoryD::RamstadKernelFactoryD(&GetKernelFactoryD(void)::sFactory);
      __cxa_atexit(RamstadKernelFactoryD::~RamstadKernelFactoryD, &GetKernelFactoryD(void)::sFactory, &dword_2415D8000);
    }

    *(this + 1) = RamstadKernelFactoryD::ReferenceRamstadKernel(&GetKernelFactoryD(void)::sFactory, *(this + 10), *(this + 9), v3, (*(this + 76) & 1) == 0);
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 11, *(this + 11), v4, &v11);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 14, *(this + 14), v5, &v11);
    GetKernelFactory();
    *this = RamstadKernelFactory::ReferenceRamstadKernel(&GetKernelFactory(void)::sFactory, *(this + 10), *(this + 9), v3, (*(this + 76) & 1) == 0);
  }

  v7 = *(this + 8);
  LODWORD(v11) = 0;
  std::vector<float>::assign(this + 23, v7, &v11, v6);
  v8 = *(this + 8);
  LODWORD(v11) = 0;
  return std::vector<float>::assign(this + 26, v8, &v11, v9);
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, int a4, int a5, double a6)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 8) = a4;
  *(this + 14) = 0;
  *(this + 18) = 1;
  *(this + 76) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = -1;
  *(this + 60) = -1;
  if (a5 <= 63)
  {
    *(this + 10) = 8;
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  *(this + 10) = 11;
  if (a5 <= 0x5F)
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_6:
  *(this + 77) = v6;
  v7 = a2 / a3;
  *(this + 10) = 0x3E80000000000000;
  *(this + 76) = 0;
  *(this + 9) = 256;
  v8 = vcvtmd_s64_f64(v7);
  *(this + 11) = v8;
  v9 = vcvtmd_s64_f64((v7 - floor(v7)) * 2147483650.0);
  *(this + 8) = (v8 << 32 >> 1) + v9;
  *(this + 29) = -1;
  *(this + 60) = -1;
  *(this + 13) = v9;
  *(this + 14) = 0;
  RamstadSRC::initFilter(this, (1.0 - a6) / v7);
}

void sub_241619D30(_Unwind_Exception *exception_object)
{
  v4 = v1[26];
  if (v4)
  {
    v1[27] = v4;
    operator delete(v4);
  }

  v5 = v1[23];
  if (v5)
  {
    v1[24] = v5;
    operator delete(v5);
  }

  v6 = v1[20];
  if (v6)
  {
    v1[21] = v6;
    operator delete(v6);
  }

  v7 = v1[17];
  if (v7)
  {
    v1[18] = v7;
    operator delete(v7);
  }

  v8 = v1[14];
  if (v8)
  {
    v1[15] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[12] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

double RamstadSRC::setRate@<D0>(RamstadSRC *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  LODWORD(a3) = vcvtmd_s64_f64(a2);
  *(this + 11) = a3;
  v3 = vcvtmd_s64_f64((a2 - floor(a2)) * 2147483650.0);
  *(this + 13) = v3;
  *(this + 8) = (a3 << 32 >> 1) + v3;
  result = NAN;
  *(this + 29) = -1;
  *(this + 60) = -1;
  return result;
}

void GetKernelFactory(void)
{
  {
    RamstadKernelFactory::RamstadKernelFactory(&GetKernelFactory(void)::sFactory);
    __cxa_atexit(RamstadKernelFactory::~RamstadKernelFactory, &GetKernelFactory(void)::sFactory, &dword_2415D8000);
  }
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_241642DF0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_241642DE0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_241642DF0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_241642DE0)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void RamstadSRC::~RamstadSRC(RamstadSRC *this)
{
  GetKernelFactory();
  RamstadKernelFactory::ReleaseRamstadKernel(&GetKernelFactory(void)::sFactory, *this);
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }
}

void RamstadSRC::reset(RamstadSRC *this)
{
  *(this + 14) = 0;
  *(this + 18) = 1;
  if (*(this + 77) == 1)
  {
    v2 = *(this + 17);
    v3 = *(this + 18) - v2;
    if (v3 >= 1)
    {
      bzero(v2, v3);
    }

    v4 = *(this + 20);
    v5 = *(this + 21);
  }

  else
  {
    v6 = *(this + 11);
    v7 = *(this + 12) - v6;
    if (v7 >= 1)
    {
      bzero(v6, v7);
    }

    v4 = *(this + 14);
    v5 = *(this + 15);
  }

  if (v5 - v4 >= 1)
  {

    bzero(v4, v5 - v4);
  }
}

double RamstadSRC::processMono(RamstadSRC *this, const float *a2, float *a3, int a4, int a5, int a6, int a7)
{
  if (*(this + 8) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEB7A0](exception, "RamstadSRC::processMono, wrong channel count");
  }

  RamstadSRC::checkPreflight(this, a4, a5);
  v14 = *(this + 76);
  if (*(this + 77) == 1)
  {
    if (*(this + 76))
    {
      RamstadSRC::processMonoIntD(this, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      RamstadSRC::processMonoFracD(this, a2, a3, a4, a5, a6, a7);
    }
  }

  else if (*(this + 76))
  {
    RamstadSRC::processMonoInt(this, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    RamstadSRC::processMonoFrac(this, a2, a3, a4, a5, a6, a7);
  }

  result = NAN;
  *(this + 29) = -1;
  *(this + 60) = -1;
  return result;
}

void sub_24161A36C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  *(v1 + 232) = -1;
  *(v1 + 240) = -1;
  _Unwind_Resume(a1);
}

_DWORD *RamstadSRC::checkPreflight(_DWORD *this, int a2, int a3)
{
  v4 = this;
  v5 = this[60];
  if (v5 == -1)
  {
    v7 = 0;
    this = RamstadSRC::outputSamplesForInputSamples(this, a2, &v7);
    if (v4[60] == a3)
    {
      return this;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEB7A0](exception, "RamstadSRC process called without preflight and arguments don't match preflight.");
LABEL_10:
  }

  if (v5 != a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEB7A0](exception, "RamstadSRC process called for different number of output samples than preflight.");
    goto LABEL_10;
  }

  if (this[58] > a2 || this[59] < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEB7A0](exception, "RamstadSRC process called for number of input samples than outside range of preflight.");
    goto LABEL_10;
  }

  return this;
}

uint64_t RamstadSRC::crashIfClientProvidedBogusBuffer(RamstadSRC *this, const float *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  if (a2)
  {
    return (LODWORD(a2[a3 - 1]) + *a2);
  }

  return result;
}

uint64_t RamstadSRC::processMonoIntD(RamstadSRC *this, const float *a2, float *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(this + 1);
  v11 = *(v10 + 24);
  v12 = *(v10 + 48);
  v13 = *(this + 17);
  v14 = *(this + 20);
  v15 = *(this + 9);
  v16 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v17 = 0;
    }

    else
    {
      LODWORD(v17) = 0;
      for (i = 0; i != a5; ++i)
      {
        v20 = v13[2];
        v19 = v13[3];
        v21 = v9;
        v23 = *v13;
        v22 = v13[1];
        if (v9 >= 1)
        {
          do
          {
            v24 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v25 = vmlaq_f64(v24, v20, v11[2]);
            v26 = vmlaq_f64(v24, v19, v11[3]);
            v27 = vmlaq_f64(v24, v23, *v11);
            v28 = vmlaq_f64(vmlaq_f64(v24, v22, v11[1]), v14[1], v11[5]);
            v29 = vmlaq_f64(v27, *v14, v11[4]);
            v30 = vmlaq_f64(v26, v14[3], v11[7]);
            v31 = vmlaq_f64(v25, v14[2], v11[6]);
            *v14 = v23;
            v14[1] = v22;
            v14[2] = v20;
            v14[3] = v19;
            v13[2] = v31;
            v13[3] = v30;
            a2 += a6;
            v23 = v29;
            *v13 = v29;
            v13[1] = v28;
            v22 = v28;
            v20 = v31;
            v19 = v30;
            --v21;
          }

          while (v21);
        }

        v17 = (v17 + v9);
        v32 = (v12 + ((2 * v7) << 6));
        v33 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v32[4], *v14), v23, *v32), vmlaq_f64(vmulq_f64(v32[6], v14[2]), v20, v32[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v32[5], v14[1]), v22, v32[1]), vmlaq_f64(vmulq_f64(v32[7], v14[3]), v19, v32[3]))));
        *a3 = v33;
        a3 += a7;
        v34 = v7 + v8;
        if (v34 < v15)
        {
          v9 = v16;
        }

        else
        {
          v9 = v16 + 1;
        }

        if (v34 < v15)
        {
          v35 = 0;
        }

        else
        {
          v35 = v15;
        }

        v7 = v34 - v35;
      }
    }

    v60 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v60)
      {
        v60 = v9;
      }

      if (v60 >= 1)
      {
        v62 = v13[2];
        v61 = v13[3];
        v63 = *v13;
        v64 = v13[1];
        v65 = v60;
        do
        {
          v66 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
          v67 = vmlaq_f64(v66, v62, v11[2]);
          v68 = vmlaq_f64(v66, v61, v11[3]);
          v69 = vmlaq_f64(v66, v63, *v11);
          v70 = vmlaq_f64(vmlaq_f64(v66, v64, v11[1]), v14[1], v11[5]);
          v71 = vmlaq_f64(v69, *v14, v11[4]);
          v72 = vmlaq_f64(v68, v14[3], v11[7]);
          v73 = vmlaq_f64(v67, v14[2], v11[6]);
          *v14 = v63;
          v14[1] = v64;
          v14[2] = v62;
          v14[3] = v61;
          v13[2] = v73;
          v13[3] = v72;
          a2 += a6;
          v63 = v71;
          *v13 = v71;
          v13[1] = v70;
          v64 = v70;
          v62 = v73;
          v61 = v72;
          --v65;
        }

        while (v65);
      }

LABEL_44:
      v9 -= v60;
      v17 = (v60 + v17);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v17 = 0;
    }

    else
    {
      v36 = 0;
      LODWORD(v17) = 0;
      do
      {
        if (v9 < 1)
        {
          v53 = v13[6];
          v52 = v13[7];
          v55 = v13[4];
          v54 = v13[5];
        }

        else
        {
          v37 = v9;
          do
          {
            v38 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v39 = *v13;
            v40 = v13[1];
            v41 = v13[2];
            v42 = v13[3];
            v43 = vmlaq_f64(vmlaq_f64(v38, *v13, *v11), *v14, v11[8]);
            v44 = vmlaq_f64(vmlaq_f64(v38, v40, v11[1]), v14[1], v11[9]);
            v45 = vmlaq_f64(vmlaq_f64(v38, v41, v11[2]), v14[2], v11[10]);
            v46 = vmlaq_f64(vmlaq_f64(v38, v42, v11[3]), v14[3], v11[11]);
            v14[2] = v41;
            v14[3] = v42;
            *v14 = v39;
            v14[1] = v40;
            v13[2] = v45;
            v13[3] = v46;
            *v13 = v43;
            v13[1] = v44;
            v48 = v13[4];
            v47 = v13[5];
            v50 = v13[6];
            v49 = v13[7];
            v51 = vmlaq_f64(v38, v48, v11[4]);
            v52 = vmlaq_f64(vmlaq_f64(0, v49, v11[7]), v14[7], v11[15]);
            v53 = vmlaq_f64(vmlaq_f64(0, v50, v11[6]), v14[6], v11[14]);
            v54 = vmlaq_f64(vmlaq_f64(v38, v47, v11[5]), v14[5], v11[13]);
            v55 = vmlaq_f64(v51, v14[4], v11[12]);
            v14[4] = v48;
            v14[5] = v47;
            v14[6] = v50;
            v14[7] = v49;
            v13[6] = v53;
            v13[7] = v52;
            v13[4] = v55;
            v13[5] = v54;
            a2 += a6;
            --v37;
          }

          while (v37);
        }

        v17 = (v17 + v9);
        v56 = (v12 + ((4 * v7) << 6));
        v57 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v56[8], *v14), *v13, *v56), vmlaq_f64(vmulq_f64(v56[10], v14[2]), v13[2], v56[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v56[9], v14[1]), v13[1], v56[1]), vmlaq_f64(vmulq_f64(v56[11], v14[3]), v13[3], v56[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v56[12], v14[4]), v55, v56[4]), vmlaq_f64(vmulq_f64(v56[14], v14[6]), v53, v56[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v56[13], v14[5]), v54, v56[5]), vmlaq_f64(vmulq_f64(v56[15], v14[7]), v52, v56[7])))));
        *a3 = v57;
        a3 += a7;
        v58 = v7 + v8;
        if (v58 < v15)
        {
          v9 = v16;
        }

        else
        {
          v9 = v16 + 1;
        }

        if (v58 < v15)
        {
          v59 = 0;
        }

        else
        {
          v59 = v15;
        }

        v7 = v58 - v59;
        ++v36;
      }

      while (v36 != a5);
    }

    v60 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v60)
      {
        v60 = v9;
      }

      if (v60 >= 1)
      {
        v74 = v60;
        do
        {
          v75 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
          v76 = *v13;
          v77 = v13[1];
          v78 = v13[2];
          v79 = v13[3];
          v80 = vmlaq_f64(vmlaq_f64(v75, *v13, *v11), *v14, v11[8]);
          v81 = vmlaq_f64(vmlaq_f64(v75, v77, v11[1]), v14[1], v11[9]);
          v82 = vmlaq_f64(vmlaq_f64(v75, v78, v11[2]), v14[2], v11[10]);
          v83 = vmlaq_f64(vmlaq_f64(v75, v79, v11[3]), v14[3], v11[11]);
          v14[2] = v78;
          v14[3] = v79;
          *v14 = v76;
          v14[1] = v77;
          v13[2] = v82;
          v13[3] = v83;
          *v13 = v80;
          v13[1] = v81;
          v85 = v13[4];
          v84 = v13[5];
          v87 = v13[6];
          v86 = v13[7];
          v88 = vmlaq_f64(v75, v85, v11[4]);
          v89 = vmlaq_f64(vmlaq_f64(0, v86, v11[7]), v14[7], v11[15]);
          v90 = vmlaq_f64(vmlaq_f64(0, v87, v11[6]), v14[6], v11[14]);
          v91 = vmlaq_f64(vmlaq_f64(v75, v84, v11[5]), v14[5], v11[13]);
          v92 = vmlaq_f64(v88, v14[4], v11[12]);
          v14[4] = v85;
          v14[5] = v84;
          v14[6] = v87;
          v14[7] = v86;
          v13[6] = v90;
          v13[7] = v89;
          v13[4] = v92;
          v13[5] = v91;
          a2 += a6;
          --v74;
        }

        while (v74);
      }

      goto LABEL_44;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v17;
}

uint64_t RamstadSRC::processMonoFracD(RamstadSRC *this, const float *a2, float *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(this + 1);
  v11 = *(v10 + 24);
  v12 = *(v10 + 48);
  v13 = *(this + 17);
  v14 = *(this + 20);
  v15 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v16 = 0;
    }

    else
    {
      LODWORD(v16) = 0;
      for (i = 0; i != a5; ++i)
      {
        v19 = v13[2];
        v18 = v13[3];
        v20 = v9;
        v22 = *v13;
        v21 = v13[1];
        if (v9 >= 1)
        {
          do
          {
            v23 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v24 = vmlaq_f64(v23, v19, v11[2]);
            v25 = vmlaq_f64(v23, v18, v11[3]);
            v26 = vmlaq_f64(v23, v22, *v11);
            v27 = vmlaq_f64(vmlaq_f64(v23, v21, v11[1]), v14[1], v11[5]);
            v28 = vmlaq_f64(v26, *v14, v11[4]);
            v29 = vmlaq_f64(v25, v14[3], v11[7]);
            v30 = vmlaq_f64(v24, v14[2], v11[6]);
            *v14 = v22;
            v14[1] = v21;
            v14[2] = v19;
            v14[3] = v18;
            v13[2] = v30;
            v13[3] = v29;
            a2 += a6;
            v22 = v28;
            *v13 = v28;
            v13[1] = v27;
            v21 = v27;
            v19 = v30;
            v18 = v29;
            --v20;
          }

          while (v20);
        }

        v16 = (v16 + v9);
        v31 = (v12 + (((v7 >> 22) & 0x1FE) << 6));
        v32 = v14[2];
        v33 = v14[3];
        v34 = vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v14, v31[12]), v22, v31[8]), vmlaq_f64(vmulq_f64(v32, v31[14]), v19, v31[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v14[1], v31[13]), v21, v31[9]), vmlaq_f64(vmulq_f64(v33, v31[15]), v18, v31[11]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v31[4], *v14), v22, *v31), vmlaq_f64(vmulq_f64(v31[6], v32), v19, v31[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v31[5], v14[1]), v21, v31[1]), vmlaq_f64(vmulq_f64(v31[7], v33), v18, v31[3]))));
        *v34.f64 = v34.f64[1] + *(this + 10) * (v7 & 0x7FFFFF) * (v34.f64[0] - v34.f64[1]);
        *a3 = *v34.f64;
        a3 += a7;
        LODWORD(v31) = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v15 + (v31 >> 31);
      }
    }

    v66 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v66)
      {
        v66 = v9;
      }

      if (v66 >= 1)
      {
        v68 = v13[2];
        v67 = v13[3];
        v69 = *v13;
        v70 = v13[1];
        v71 = v66;
        do
        {
          v72 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
          v73 = vmlaq_f64(v72, v68, v11[2]);
          v74 = vmlaq_f64(v72, v67, v11[3]);
          v75 = vmlaq_f64(v72, v69, *v11);
          v76 = vmlaq_f64(vmlaq_f64(v72, v70, v11[1]), v14[1], v11[5]);
          v77 = vmlaq_f64(v75, *v14, v11[4]);
          v78 = vmlaq_f64(v74, v14[3], v11[7]);
          v79 = vmlaq_f64(v73, v14[2], v11[6]);
          *v14 = v69;
          v14[1] = v70;
          v14[2] = v68;
          v14[3] = v67;
          v13[2] = v79;
          v13[3] = v78;
          a2 += a6;
          v69 = v77;
          *v13 = v77;
          v13[1] = v76;
          v70 = v76;
          v68 = v79;
          v67 = v78;
          --v71;
        }

        while (v71);
      }

LABEL_32:
      v9 -= v66;
      v16 = (v66 + v16);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v16 = 0;
    }

    else
    {
      LODWORD(v16) = 0;
      for (j = 0; j != a5; ++j)
      {
        if (v9 < 1)
        {
          v52 = v13[6];
          v51 = v13[7];
          v54 = v13[4];
          v53 = v13[5];
        }

        else
        {
          v36 = v9;
          do
          {
            v37 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v38 = *v13;
            v39 = v13[1];
            v40 = v13[2];
            v41 = v13[3];
            v42 = vmlaq_f64(vmlaq_f64(v37, *v13, *v11), *v14, v11[8]);
            v43 = vmlaq_f64(vmlaq_f64(v37, v39, v11[1]), v14[1], v11[9]);
            v44 = vmlaq_f64(vmlaq_f64(v37, v40, v11[2]), v14[2], v11[10]);
            v45 = vmlaq_f64(vmlaq_f64(v37, v41, v11[3]), v14[3], v11[11]);
            v14[2] = v40;
            v14[3] = v41;
            *v14 = v38;
            v14[1] = v39;
            v13[2] = v44;
            v13[3] = v45;
            *v13 = v42;
            v13[1] = v43;
            v47 = v13[4];
            v46 = v13[5];
            v49 = v13[6];
            v48 = v13[7];
            v50 = vmlaq_f64(v37, v47, v11[4]);
            v51 = vmlaq_f64(vmlaq_f64(0, v48, v11[7]), v14[7], v11[15]);
            v52 = vmlaq_f64(vmlaq_f64(0, v49, v11[6]), v14[6], v11[14]);
            v53 = vmlaq_f64(vmlaq_f64(v37, v46, v11[5]), v14[5], v11[13]);
            v54 = vmlaq_f64(v50, v14[4], v11[12]);
            v14[4] = v47;
            v14[5] = v46;
            v14[6] = v49;
            v14[7] = v48;
            v13[6] = v52;
            v13[7] = v51;
            v13[4] = v54;
            v13[5] = v53;
            a2 += a6;
            --v36;
          }

          while (v36);
        }

        v16 = (v16 + v9);
        v55 = (v12 + (((v7 >> 21) & 0x3FC) << 6));
        v56 = v13[1];
        v58 = v13[2];
        v57 = v13[3];
        v59 = v14[2];
        v60 = v14[3];
        v61 = v14[6];
        v62 = v14[7];
        v63 = v14[4];
        v64 = v14[5];
        v65 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v14, v55[24]), *v13, v55[16]), vmlaq_f64(vmulq_f64(v59, v55[26]), v58, v55[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v14[1], v55[25]), v56, v55[17]), vmlaq_f64(vmulq_f64(v60, v55[27]), v57, v55[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v55[8], *v14), *v13, *v55), vmlaq_f64(vmulq_f64(v55[10], v59), v58, v55[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v55[9], v14[1]), v56, v55[1]), vmlaq_f64(vmulq_f64(v55[11], v60), v57, v55[3])))), vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v63, v55[28]), v54, v55[20]), vmlaq_f64(vmulq_f64(v61, v55[30]), v52, v55[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v64, v55[29]), v53, v55[21]), vmlaq_f64(vmulq_f64(v62, v55[31]), v51, v55[23]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v55[12], v63), v54, v55[4]), vmlaq_f64(vmulq_f64(v55[14], v61), v52, v55[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v55[13], v64), v53, v55[5]), vmlaq_f64(vmulq_f64(v55[15], v62), v51, v55[7])))));
        *v65.f64 = v65.f64[1] + *(this + 10) * (v7 & 0x7FFFFF) * (v65.f64[0] - v65.f64[1]);
        *a3 = *v65.f64;
        a3 += a7;
        LODWORD(v55) = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v15 + (v55 >> 31);
      }
    }

    v66 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v66)
      {
        v66 = v9;
      }

      if (v66 >= 1)
      {
        v80 = v66;
        do
        {
          v81 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
          v82 = *v13;
          v83 = v13[1];
          v84 = v13[2];
          v85 = v13[3];
          v86 = vmlaq_f64(vmlaq_f64(v81, *v13, *v11), *v14, v11[8]);
          v87 = vmlaq_f64(vmlaq_f64(v81, v83, v11[1]), v14[1], v11[9]);
          v88 = vmlaq_f64(vmlaq_f64(v81, v84, v11[2]), v14[2], v11[10]);
          v89 = vmlaq_f64(vmlaq_f64(v81, v85, v11[3]), v14[3], v11[11]);
          v14[2] = v84;
          v14[3] = v85;
          *v14 = v82;
          v14[1] = v83;
          v13[2] = v88;
          v13[3] = v89;
          *v13 = v86;
          v13[1] = v87;
          v91 = v13[4];
          v90 = v13[5];
          v93 = v13[6];
          v92 = v13[7];
          v94 = vmlaq_f64(v81, v91, v11[4]);
          v95 = vmlaq_f64(vmlaq_f64(0, v92, v11[7]), v14[7], v11[15]);
          v96 = vmlaq_f64(vmlaq_f64(0, v93, v11[6]), v14[6], v11[14]);
          v97 = vmlaq_f64(vmlaq_f64(v81, v90, v11[5]), v14[5], v11[13]);
          v98 = vmlaq_f64(v94, v14[4], v11[12]);
          v14[4] = v91;
          v14[5] = v90;
          v14[6] = v93;
          v14[7] = v92;
          v13[6] = v96;
          v13[7] = v95;
          v13[4] = v98;
          v13[5] = v97;
          a2 += a6;
          --v80;
        }

        while (v80);
      }

      goto LABEL_32;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v16;
}

uint64_t RamstadSRC::processMonoInt(RamstadSRC *this, const float *a2, float *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(*this + 24);
  v11 = *(*this + 48);
  v12 = *(this + 11);
  v13 = *(this + 14);
  v14 = *(this + 9);
  v15 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v16 = 0;
    }

    else
    {
      LODWORD(v16) = 0;
      for (i = 0; i != a5; ++i)
      {
        v19 = *v12;
        v20 = v12[1];
        v21 = v9;
        if (v9 >= 1)
        {
          do
          {
            v22 = vld1q_dup_f32(a2);
            v18 = 4 * a6;
            a2 = (a2 + v18);
            v23 = vmlaq_f32(v22, v20, v10[1]);
            v24 = vmlaq_f32(vmlaq_f32(v22, v19, *v10), *v13, v10[2]);
            v25 = vmlaq_f32(v23, v13[1], v10[3]);
            *v13 = v19;
            v13[1] = v20;
            *v12 = v24;
            v12[1] = v25;
            v19 = v24;
            v20 = v25;
            --v21;
          }

          while (v21);
        }

        v16 = (v16 + v9);
        v26 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v11 + 64 * v7 + 32), *v13), v19, *(v11 + 64 * v7)), vmlaq_f32(vmulq_f32(*(v11 + 64 * v7 + 48), v13[1]), v20, *(v11 + 64 * v7 + 16)));
        *a3 = vaddv_f32(vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)));
        a3 += a7;
        v27 = v7 + v8;
        if (v27 < v14)
        {
          v9 = v15;
        }

        else
        {
          v9 = v15 + 1;
        }

        if (v27 < v14)
        {
          v28 = 0;
        }

        else
        {
          v28 = v14;
        }

        v7 = v27 - v28;
      }
    }

    v46 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v46)
      {
        v46 = v9;
      }

      if (v46 >= 1)
      {
        v48 = *v12;
        v47 = v12[1];
        v50 = v46;
        do
        {
          v51 = vld1q_dup_f32(a2);
          v49 = 4 * a6;
          a2 = (a2 + v49);
          v52 = vmlaq_f32(v51, v47, v10[1]);
          v53 = vmlaq_f32(vmlaq_f32(v51, v48, *v10), *v13, v10[2]);
          v54 = vmlaq_f32(v52, v13[1], v10[3]);
          *v13 = v48;
          v13[1] = v47;
          *v12 = v53;
          v12[1] = v54;
          v48 = v53;
          v47 = v54;
          --v50;
        }

        while (v50);
      }

LABEL_44:
      v9 -= v46;
      v16 = (v46 + v16);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v16 = 0;
    }

    else
    {
      v29 = 0;
      LODWORD(v16) = 0;
      do
      {
        if (v9 < 1)
        {
          v39 = v12[2];
          v38 = v12[3];
        }

        else
        {
          v31 = v9;
          do
          {
            v32 = vld1q_dup_f32(a2);
            v30 = 4 * a6;
            a2 = (a2 + v30);
            v33 = v12[1];
            v34 = vmlaq_f32(vmlaq_f32(v32, *v12, *v10), *v13, v10[4]);
            v35 = vmlaq_f32(vmlaq_f32(v32, v33, v10[1]), v13[1], v10[5]);
            *v13 = *v12;
            v13[1] = v33;
            *v12 = v34;
            v12[1] = v35;
            v36 = v12[2];
            v37 = v12[3];
            v38 = vmlaq_f32(vmlaq_f32(0, v37, v10[3]), v13[3], v10[7]);
            v39 = vmlaq_f32(vmlaq_f32(v32, v36, v10[2]), v13[2], v10[6]);
            v13[2] = v36;
            v13[3] = v37;
            v12[2] = v39;
            v12[3] = v38;
            --v31;
          }

          while (v31);
        }

        v16 = (v16 + v9);
        v40 = (v11 + 128 * v7);
        v41 = vmlaq_f32(vmulq_f32(v40[6], v13[2]), v39, v40[2]);
        v42 = vaddq_f32(vmlaq_f32(vmulq_f32(v40[4], *v13), *v12, *v40), vmlaq_f32(vmulq_f32(v40[5], v13[1]), v12[1], v40[1]));
        *v42.i8 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
        v43 = vaddq_f32(v41, vmlaq_f32(vmulq_f32(v40[7], v13[3]), v38, v40[3]));
        *v43.i8 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
        *a3 = vaddv_f32(vadd_f32(vzip1_s32(*v42.i8, *v43.i8), vzip2_s32(*v42.i8, *v43.i8)));
        a3 += a7;
        v44 = v7 + v8;
        if (v44 < v14)
        {
          v9 = v15;
        }

        else
        {
          v9 = v15 + 1;
        }

        if (v44 < v14)
        {
          v45 = 0;
        }

        else
        {
          v45 = v14;
        }

        v7 = v44 - v45;
        ++v29;
      }

      while (v29 != a5);
    }

    v46 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v46)
      {
        v46 = v9;
      }

      if (v46 >= 1)
      {
        v56 = v46;
        do
        {
          v57 = vld1q_dup_f32(a2);
          v55 = 4 * a6;
          a2 = (a2 + v55);
          v58 = v12[1];
          v59 = vmlaq_f32(vmlaq_f32(v57, *v12, *v10), *v13, v10[4]);
          v60 = vmlaq_f32(vmlaq_f32(v57, v58, v10[1]), v13[1], v10[5]);
          *v13 = *v12;
          v13[1] = v58;
          *v12 = v59;
          v12[1] = v60;
          v61 = v12[2];
          v62 = v12[3];
          v63 = vmlaq_f32(vmlaq_f32(0, v62, v10[3]), v13[3], v10[7]);
          v64 = vmlaq_f32(vmlaq_f32(v57, v61, v10[2]), v13[2], v10[6]);
          v13[2] = v61;
          v13[3] = v62;
          v12[2] = v64;
          v12[3] = v63;
          --v56;
        }

        while (v56);
      }

      goto LABEL_44;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v16;
}

uint64_t RamstadSRC::processMonoFrac(RamstadSRC *this, const float *a2, float *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(*this + 24);
  v11 = *(*this + 48);
  v12 = *(this + 11);
  v13 = *(this + 14);
  v14 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v15 = 0;
    }

    else
    {
      LODWORD(v15) = 0;
      for (i = 0; i != a5; ++i)
      {
        v18 = *v12;
        v19 = v12[1];
        v20 = v9;
        if (v9 >= 1)
        {
          do
          {
            v21 = vld1q_dup_f32(a2);
            v17 = 4 * a6;
            a2 = (a2 + v17);
            v22 = vmlaq_f32(v21, v19, v10[1]);
            v23 = vmlaq_f32(vmlaq_f32(v21, v18, *v10), *v13, v10[2]);
            v24 = vmlaq_f32(v22, v13[1], v10[3]);
            *v13 = v18;
            v13[1] = v19;
            *v12 = v23;
            v12[1] = v24;
            v18 = v23;
            v19 = v24;
            --v20;
          }

          while (v20);
        }

        v15 = (v15 + v9);
        v25 = *(this + 10) * (v7 & 0x7FFFFF);
        v26 = (v11 + 32 * ((v7 >> 22) & 0x1FE));
        v27 = v13[1];
        v28 = vaddq_f32(vmlaq_f32(vmulq_f32(v26[2], *v13), v18, *v26), vmlaq_f32(vmulq_f32(v26[3], v27), v19, v26[1]));
        *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
        v29 = vaddq_f32(vmlaq_f32(vmulq_f32(*v13, v26[6]), v18, v26[4]), vmlaq_f32(vmulq_f32(v27, v26[7]), v19, v26[5]));
        *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
        *v29.i8 = vadd_f32(vzip1_s32(*v29.i8, *v28.i8), vzip2_s32(*v29.i8, *v28.i8));
        *a3 = *&v29.i32[1] + (v25 * (*v29.i32 - *&v29.i32[1]));
        a3 += a7;
        LODWORD(v26) = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v14 + (v26 >> 31);
      }
    }

    v52 = a4 - v15;
    if (a4 > v15)
    {
      if (v9 < v52)
      {
        v52 = v9;
      }

      if (v52 >= 1)
      {
        v54 = *v12;
        v53 = v12[1];
        v56 = v52;
        do
        {
          v57 = vld1q_dup_f32(a2);
          v55 = 4 * a6;
          a2 = (a2 + v55);
          v58 = vmlaq_f32(v57, v53, v10[1]);
          v59 = vmlaq_f32(vmlaq_f32(v57, v54, *v10), *v13, v10[2]);
          v60 = vmlaq_f32(v58, v13[1], v10[3]);
          *v13 = v54;
          v13[1] = v53;
          *v12 = v59;
          v12[1] = v60;
          v54 = v59;
          v53 = v60;
          --v56;
        }

        while (v56);
      }

LABEL_32:
      v9 -= v52;
      v15 = (v52 + v15);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v15 = 0;
    }

    else
    {
      LODWORD(v15) = 0;
      for (j = 0; j != a5; ++j)
      {
        if (v9 < 1)
        {
          v40 = v12[2];
          v39 = v12[3];
        }

        else
        {
          v32 = v9;
          do
          {
            v33 = vld1q_dup_f32(a2);
            v31 = 4 * a6;
            a2 = (a2 + v31);
            v34 = v12[1];
            v35 = vmlaq_f32(vmlaq_f32(v33, *v12, *v10), *v13, v10[4]);
            v36 = vmlaq_f32(vmlaq_f32(v33, v34, v10[1]), v13[1], v10[5]);
            *v13 = *v12;
            v13[1] = v34;
            *v12 = v35;
            v12[1] = v36;
            v37 = v12[2];
            v38 = v12[3];
            v39 = vmlaq_f32(vmlaq_f32(0, v38, v10[3]), v13[3], v10[7]);
            v40 = vmlaq_f32(vmlaq_f32(v33, v37, v10[2]), v13[2], v10[6]);
            v13[2] = v37;
            v13[3] = v38;
            v12[2] = v40;
            v12[3] = v39;
            --v32;
          }

          while (v32);
        }

        v15 = (v15 + v9);
        v41 = *(this + 10) * (v7 & 0x7FFFFF);
        v42 = (v11 + 32 * ((v7 >> 21) & 0x3FC));
        v43 = v12[1];
        v44 = v13[1];
        v46 = v13[2];
        v45 = v13[3];
        v47 = vaddq_f32(vmlaq_f32(vmulq_f32(v42[4], *v13), *v12, *v42), vmlaq_f32(vmulq_f32(v42[5], v44), v43, v42[1]));
        *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
        v48 = vaddq_f32(vmlaq_f32(vmulq_f32(v42[6], v46), v40, v42[2]), vmlaq_f32(vmulq_f32(v42[7], v45), v39, v42[3]));
        *v48.i8 = vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
        v49 = vmlaq_f32(vmulq_f32(v46, v42[14]), v40, v42[10]);
        v50 = vaddq_f32(vmlaq_f32(vmulq_f32(*v13, v42[12]), *v12, v42[8]), vmlaq_f32(vmulq_f32(v44, v42[13]), v43, v42[9]));
        *v50.i8 = vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
        v51 = vaddq_f32(v49, vmlaq_f32(vmulq_f32(v45, v42[15]), v39, v42[11]));
        *v51.i8 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
        *v50.i8 = vadd_f32(vadd_f32(vzip1_s32(*v50.i8, *v47.i8), vzip2_s32(*v50.i8, *v47.i8)), vadd_f32(vzip1_s32(*v51.i8, *v48.i8), vzip2_s32(*v51.i8, *v48.i8)));
        *a3 = *&v50.i32[1] + (v41 * (*v50.i32 - *&v50.i32[1]));
        a3 += a7;
        LODWORD(v42) = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v14 + (v42 >> 31);
      }
    }

    v52 = a4 - v15;
    if (a4 > v15)
    {
      if (v9 < v52)
      {
        v52 = v9;
      }

      if (v52 >= 1)
      {
        v62 = v52;
        do
        {
          v63 = vld1q_dup_f32(a2);
          v61 = 4 * a6;
          a2 = (a2 + v61);
          v64 = v12[1];
          v65 = vmlaq_f32(vmlaq_f32(v63, *v12, *v10), *v13, v10[4]);
          v66 = vmlaq_f32(vmlaq_f32(v63, v64, v10[1]), v13[1], v10[5]);
          *v13 = *v12;
          v13[1] = v64;
          *v12 = v65;
          v12[1] = v66;
          v67 = v12[2];
          v68 = v12[3];
          v69 = vmlaq_f32(vmlaq_f32(0, v68, v10[3]), v13[3], v10[7]);
          v70 = vmlaq_f32(vmlaq_f32(v63, v67, v10[2]), v13[2], v10[6]);
          v13[2] = v67;
          v13[3] = v68;
          v12[2] = v70;
          v12[3] = v69;
          --v62;
        }

        while (v62);
      }

      goto LABEL_32;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v15;
}

double RamstadSRC::processStereo(RamstadSRC *this, const float *a2, const float *a3, float *a4, float *a5, int a6, int a7, int a8, int a9)
{
  if (*(this + 8) != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CEB7A0](exception, "RamstadSRC::processStereo, wrong channel count");
  }

  RamstadSRC::checkPreflight(this, a6, a7);
  v17 = *(this + 76);
  if (*(this + 77) == 1)
  {
    if (*(this + 76))
    {
      RamstadSRC::processStereoIntD(this, a2, a3, a4, a5, a6, a7, a8, a9);
    }

    else
    {
      RamstadSRC::processStereoFracD(this, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }

  else if (*(this + 76))
  {
    RamstadSRC::processStereoInt(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    RamstadSRC::processStereoFrac(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  result = NAN;
  *(this + 29) = -1;
  *(this + 60) = -1;
  return result;
}

void sub_24161B878(_Unwind_Exception *exception_object)
{
  *(v1 + 232) = -1;
  *(v1 + 240) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t RamstadSRC::processStereoIntD(RamstadSRC *this, const float *a2, const float *a3, float *a4, float *a5, int a6, int a7, int a8, int a9)
{
  v10 = *(this + 13);
  v9 = *(this + 14);
  v11 = *(this + 18);
  v12 = *(this + 1);
  v13 = *(v12 + 24);
  v14 = *(v12 + 48);
  v15 = *(this + 17);
  v16 = *(this + 20);
  v17 = *(this + 9);
  v18 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a7 < 1)
    {
      v19 = 0;
    }

    else
    {
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v46 = v15[6];
          v45 = v15[7];
          v44 = v15[4];
          v43 = v15[5];
        }

        else
        {
          v22 = v11;
          do
          {
            v23 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v24 = *v15;
            v25 = v15[1];
            v26 = v15[2];
            v27 = v15[3];
            v28 = vmlaq_f64(v23, v27, v13[3]);
            v29 = vmlaq_f64(v23, v26, v13[2]);
            v30 = vmlaq_f64(v23, v25, v13[1]);
            v31 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
            v32 = vmlaq_f64(vmlaq_f64(v23, *v15, *v13), *v16, v13[4]);
            v33 = vmlaq_f64(v30, v16[1], v13[5]);
            v34 = vmlaq_f64(v29, v16[2], v13[6]);
            v35 = vmlaq_f64(v28, v16[3], v13[7]);
            v16[2] = v26;
            v16[3] = v27;
            *v16 = v24;
            v16[1] = v25;
            v15[2] = v34;
            v15[3] = v35;
            *v15 = v32;
            v15[1] = v33;
            v37 = v15[4];
            v36 = v15[5];
            v39 = v15[6];
            v38 = v15[7];
            v40 = vmlaq_f64(v31, v39, v13[2]);
            v41 = vmlaq_f64(v31, v38, v13[3]);
            v42 = vmlaq_f64(v31, v37, *v13);
            v43 = vmlaq_f64(vmlaq_f64(v31, v36, v13[1]), v16[5], v13[5]);
            v44 = vmlaq_f64(v42, v16[4], v13[4]);
            v45 = vmlaq_f64(v41, v16[7], v13[7]);
            v46 = vmlaq_f64(v40, v16[6], v13[6]);
            v16[4] = v37;
            v16[5] = v36;
            v16[6] = v39;
            v16[7] = v38;
            v15[6] = v46;
            v15[7] = v45;
            v15[4] = v44;
            v15[5] = v43;
            a2 = (a2 + v21);
            a3 = (a3 + v21);
            --v22;
          }

          while (v22);
        }

        v19 = (v19 + v11);
        v47 = (v14 + ((2 * v9) << 6));
        v48 = v47[1];
        v50 = v47[2];
        v49 = v47[3];
        v51 = v47[6];
        v52 = v47[7];
        v53 = v47[4];
        v54 = v47[5];
        v55 = vmlaq_f64(vmulq_f64(v51, v16[6]), v46, v50);
        v56 = vmlaq_f64(vmulq_f64(v53, v16[4]), v44, *v47);
        v57 = vmlaq_f64(vmulq_f64(v52, v16[7]), v45, v49);
        v58 = vmlaq_f64(vmulq_f64(v54, v16[5]), v43, v48);
        v59 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v53, *v16), *v15, *v47), vmlaq_f64(vmulq_f64(v51, v16[2]), v15[2], v50)), vaddq_f64(vmlaq_f64(vmulq_f64(v54, v16[1]), v15[1], v48), vmlaq_f64(vmulq_f64(v52, v16[3]), v15[3], v49))));
        *a4 = v59;
        v60 = vaddvq_f64(vaddq_f64(vaddq_f64(v56, v55), vaddq_f64(v58, v57)));
        *a5 = v60;
        a4 += a9;
        a5 += a9;
        v61 = v9 + v10;
        if (v61 < v17)
        {
          v11 = v18;
        }

        else
        {
          v11 = v18 + 1;
        }

        if (v61 < v17)
        {
          v62 = 0;
        }

        else
        {
          v62 = v17;
        }

        v9 = v61 - v62;
        ++v20;
      }

      while (v20 != a7);
    }

    v116 = a6 - v19;
    if (a6 > v19)
    {
      if (v11 < v116)
      {
        v116 = v11;
      }

      if (v116 >= 1)
      {
        v117 = 0;
        v118 = v116;
        do
        {
          v119 = vdupq_lane_s64(COERCE__INT64(a2[v117]), 0);
          v120 = *v15;
          v121 = v15[1];
          v122 = v15[2];
          v123 = v15[3];
          v124 = vmlaq_f64(v119, v123, v13[3]);
          v125 = vmlaq_f64(v119, v122, v13[2]);
          v126 = vmlaq_f64(v119, v121, v13[1]);
          v127 = vdupq_lane_s64(COERCE__INT64(a3[v117]), 0);
          v128 = vmlaq_f64(vmlaq_f64(v119, *v15, *v13), *v16, v13[4]);
          v129 = vmlaq_f64(v126, v16[1], v13[5]);
          v130 = vmlaq_f64(v125, v16[2], v13[6]);
          v131 = vmlaq_f64(v124, v16[3], v13[7]);
          v16[2] = v122;
          v16[3] = v123;
          *v16 = v120;
          v16[1] = v121;
          v15[2] = v130;
          v15[3] = v131;
          *v15 = v128;
          v15[1] = v129;
          v133 = v15[4];
          v132 = v15[5];
          v135 = v15[6];
          v134 = v15[7];
          v136 = vmlaq_f64(v127, v135, v13[2]);
          v137 = vmlaq_f64(v127, v134, v13[3]);
          v138 = vmlaq_f64(v127, v133, *v13);
          v139 = vmlaq_f64(vmlaq_f64(v127, v132, v13[1]), v16[5], v13[5]);
          v140 = vmlaq_f64(v138, v16[4], v13[4]);
          v141 = vmlaq_f64(v137, v16[7], v13[7]);
          v142 = vmlaq_f64(v136, v16[6], v13[6]);
          v16[4] = v133;
          v16[5] = v132;
          v16[6] = v135;
          v16[7] = v134;
          v15[6] = v142;
          v15[7] = v141;
          v15[4] = v140;
          v15[5] = v139;
          v117 += a8;
          --v118;
        }

        while (v118);
      }

LABEL_47:
      v11 -= v116;
      v19 = (v116 + v19);
    }
  }

  else
  {
    if (a7 < 1)
    {
      v19 = 0;
    }

    else
    {
      v63 = 0;
      LODWORD(v19) = 0;
      v64 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v93 = v15[10];
          v92 = v15[11];
          v91 = v15[8];
          v90 = v15[9];
        }

        else
        {
          v65 = v11;
          do
          {
            v66 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v67 = *v15;
            v68 = v15[1];
            v69 = v15[2];
            v70 = v15[3];
            v71 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
            v72 = vmlaq_f64(vmlaq_f64(v66, *v15, *v13), *v16, v13[8]);
            v73 = vmlaq_f64(vmlaq_f64(v66, v68, v13[1]), v16[1], v13[9]);
            v74 = vmlaq_f64(vmlaq_f64(v66, v69, v13[2]), v16[2], v13[10]);
            v75 = vmlaq_f64(vmlaq_f64(v66, v70, v13[3]), v16[3], v13[11]);
            v16[2] = v69;
            v16[3] = v70;
            *v16 = v67;
            v16[1] = v68;
            v15[2] = v74;
            v15[3] = v75;
            *v15 = v72;
            v15[1] = v73;
            v76 = v15[4];
            v77 = v15[5];
            v78 = v15[6];
            v79 = v15[7];
            v80 = vmlaq_f64(vmlaq_f64(v71, v76, *v13), v16[4], v13[8]);
            v81 = vmlaq_f64(vmlaq_f64(v71, v77, v13[1]), v16[5], v13[9]);
            v82 = vmlaq_f64(vmlaq_f64(v71, v78, v13[2]), v16[6], v13[10]);
            v83 = vmlaq_f64(vmlaq_f64(v71, v79, v13[3]), v16[7], v13[11]);
            v16[4] = v76;
            v16[5] = v77;
            v16[6] = v78;
            v16[7] = v79;
            v15[6] = v82;
            v15[7] = v83;
            v15[4] = v80;
            v15[5] = v81;
            v85 = v15[8];
            v84 = v15[9];
            v87 = v15[10];
            v86 = v15[11];
            v88 = vmlaq_f64(v71, v87, v13[6]);
            v89 = vmlaq_f64(v66, v85, v13[4]);
            v90 = vmlaq_f64(vmlaq_f64(v66, v84, v13[5]), v16[9], v13[13]);
            v91 = vmlaq_f64(v89, v16[8], v13[12]);
            v92 = vmlaq_f64(vmlaq_f64(v71, v86, v13[7]), v16[11], v13[15]);
            v93 = vmlaq_f64(v88, v16[10], v13[14]);
            v16[8] = v85;
            v16[9] = v84;
            v16[10] = v87;
            v16[11] = v86;
            v15[10] = v93;
            v15[11] = v92;
            v15[8] = v91;
            v15[9] = v90;
            a2 = (a2 + v64);
            a3 = (a3 + v64);
            --v65;
          }

          while (v65);
        }

        v19 = (v19 + v11);
        v94 = (v14 + ((4 * v9) << 6));
        v95 = v94[1];
        v97 = v94[2];
        v96 = v94[3];
        v98 = v94[10];
        v99 = v94[11];
        v100 = v94[8];
        v101 = v94[9];
        v102 = vmlaq_f64(vmulq_f64(v98, v16[2]), v15[2], v97);
        v103 = vmlaq_f64(vmulq_f64(v100, *v16), *v15, *v94);
        v104 = vmlaq_f64(vmulq_f64(v99, v16[3]), v15[3], v96);
        v105 = vmlaq_f64(vmulq_f64(v101, v16[1]), v15[1], v95);
        v106 = vmlaq_f64(vmulq_f64(v98, v16[6]), v15[6], v97);
        v107 = vmlaq_f64(vmulq_f64(v100, v16[4]), v15[4], *v94);
        v108 = vmlaq_f64(vmulq_f64(v99, v16[7]), v15[7], v96);
        v109 = vmlaq_f64(vmulq_f64(v101, v16[5]), v15[5], v95);
        v110 = vmlaq_f64(vmulq_f64(v94[15], v16[11]), v92, v94[7]);
        v111 = vmlaq_f64(vmulq_f64(v94[14], v16[10]), v93, v94[6]);
        v112 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v103, v102), vaddq_f64(v105, v104)), vaddq_f64(vmlaq_f64(vmulq_f64(v94[12], v16[8]), v91, v94[4]), vmlaq_f64(vmulq_f64(v94[13], v16[9]), v90, v94[5]))));
        *a4 = v112;
        v113 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v107, v106), vaddq_f64(v109, v108)), vaddq_f64(v111, v110)));
        *a5 = v113;
        a4 += a9;
        a5 += a9;
        v114 = v9 + v10;
        if (v114 < v17)
        {
          v11 = v18;
        }

        else
        {
          v11 = v18 + 1;
        }

        if (v114 < v17)
        {
          v115 = 0;
        }

        else
        {
          v115 = v17;
        }

        v9 = v114 - v115;
        ++v63;
      }

      while (v63 != a7);
    }

    v116 = a6 - v19;
    if (a6 > v19)
    {
      if (v11 < v116)
      {
        v116 = v11;
      }

      if (v116 >= 1)
      {
        v143 = 0;
        v144 = v116;
        do
        {
          v145 = vdupq_lane_s64(COERCE__INT64(a2[v143]), 0);
          v146 = *v15;
          v147 = v15[1];
          v148 = v15[2];
          v149 = v15[3];
          v150 = vdupq_lane_s64(COERCE__INT64(a3[v143]), 0);
          v151 = vmlaq_f64(vmlaq_f64(v145, *v15, *v13), *v16, v13[8]);
          v152 = vmlaq_f64(vmlaq_f64(v145, v147, v13[1]), v16[1], v13[9]);
          v153 = vmlaq_f64(vmlaq_f64(v145, v148, v13[2]), v16[2], v13[10]);
          v154 = vmlaq_f64(vmlaq_f64(v145, v149, v13[3]), v16[3], v13[11]);
          v16[2] = v148;
          v16[3] = v149;
          *v16 = v146;
          v16[1] = v147;
          v15[2] = v153;
          v15[3] = v154;
          *v15 = v151;
          v15[1] = v152;
          v155 = v15[4];
          v156 = v15[5];
          v157 = v15[6];
          v158 = v15[7];
          v159 = vmlaq_f64(vmlaq_f64(v150, v155, *v13), v16[4], v13[8]);
          v160 = vmlaq_f64(vmlaq_f64(v150, v156, v13[1]), v16[5], v13[9]);
          v161 = vmlaq_f64(vmlaq_f64(v150, v157, v13[2]), v16[6], v13[10]);
          v162 = vmlaq_f64(vmlaq_f64(v150, v158, v13[3]), v16[7], v13[11]);
          v16[4] = v155;
          v16[5] = v156;
          v16[6] = v157;
          v16[7] = v158;
          v15[6] = v161;
          v15[7] = v162;
          v15[4] = v159;
          v15[5] = v160;
          v164 = v15[8];
          v163 = v15[9];
          v166 = v15[10];
          v165 = v15[11];
          v167 = vmlaq_f64(v150, v166, v13[6]);
          v168 = vmlaq_f64(v145, v164, v13[4]);
          v169 = vmlaq_f64(vmlaq_f64(v145, v163, v13[5]), v16[9], v13[13]);
          v170 = vmlaq_f64(v168, v16[8], v13[12]);
          v171 = vmlaq_f64(vmlaq_f64(v150, v165, v13[7]), v16[11], v13[15]);
          v172 = vmlaq_f64(v167, v16[10], v13[14]);
          v16[8] = v164;
          v16[9] = v163;
          v16[10] = v166;
          v16[11] = v165;
          v15[10] = v172;
          v15[11] = v171;
          v15[8] = v170;
          v15[9] = v169;
          v143 += a8;
          --v144;
        }

        while (v144);
      }

      goto LABEL_47;
    }
  }

  *(this + 14) = v9;
  *(this + 18) = v11;
  return v19;
}

uint64_t RamstadSRC::processStereoFracD(RamstadSRC *this, const float *a2, const float *a3, float *a4, float *a5, int a6, int a7, int a8, int a9)
{
  v10 = *(this + 13);
  v9 = *(this + 14);
  v11 = *(this + 18);
  v12 = *(this + 1);
  v13 = *(v12 + 24);
  v14 = *(v12 + 48);
  v15 = *(this + 17);
  v16 = *(this + 20);
  v17 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a7 < 1)
    {
      v18 = 0;
    }

    else
    {
      LODWORD(v18) = 0;
      v19 = 0;
      v20 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v45 = v15[6];
          v44 = v15[7];
          v43 = v15[4];
          v42 = v15[5];
        }

        else
        {
          v21 = v11;
          do
          {
            v22 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v23 = *v15;
            v24 = v15[1];
            v25 = v15[2];
            v26 = v15[3];
            v27 = vmlaq_f64(v22, v26, v13[3]);
            v28 = vmlaq_f64(v22, v25, v13[2]);
            v29 = vmlaq_f64(v22, v24, v13[1]);
            v30 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
            v31 = vmlaq_f64(vmlaq_f64(v22, *v15, *v13), *v16, v13[4]);
            v32 = vmlaq_f64(v29, v16[1], v13[5]);
            v33 = vmlaq_f64(v28, v16[2], v13[6]);
            v34 = vmlaq_f64(v27, v16[3], v13[7]);
            v16[2] = v25;
            v16[3] = v26;
            *v16 = v23;
            v16[1] = v24;
            v15[2] = v33;
            v15[3] = v34;
            *v15 = v31;
            v15[1] = v32;
            v36 = v15[4];
            v35 = v15[5];
            v38 = v15[6];
            v37 = v15[7];
            v39 = vmlaq_f64(v30, v38, v13[2]);
            v40 = vmlaq_f64(v30, v37, v13[3]);
            v41 = vmlaq_f64(v30, v36, *v13);
            v42 = vmlaq_f64(vmlaq_f64(v30, v35, v13[1]), v16[5], v13[5]);
            v43 = vmlaq_f64(v41, v16[4], v13[4]);
            v44 = vmlaq_f64(v40, v16[7], v13[7]);
            v45 = vmlaq_f64(v39, v16[6], v13[6]);
            v16[4] = v36;
            v16[5] = v35;
            v16[6] = v38;
            v16[7] = v37;
            v15[6] = v45;
            v15[7] = v44;
            v15[4] = v43;
            v15[5] = v42;
            a2 = (a2 + v20);
            a3 = (a3 + v20);
            --v21;
          }

          while (v21);
        }

        v18 = (v18 + v11);
        v46 = *(this + 10) * (v9 & 0x7FFFFF);
        v47 = (v14 + (((v9 >> 22) & 0x1FE) << 6));
        v48 = v47[1];
        v50 = v47[2];
        v49 = v47[3];
        v51 = v15[1];
        v53 = v15[2];
        v52 = v15[3];
        v54 = v47[6];
        v55 = v47[7];
        v56 = v47[4];
        v57 = v47[5];
        v58 = v16[2];
        v59 = v16[3];
        v60 = v16[1];
        v61 = vmlaq_f64(vmulq_f64(v57, v60), v51, v48);
        v62 = v16[6];
        v63 = v16[7];
        v64 = v16[4];
        v65 = v16[5];
        v66 = vmlaq_f64(vmulq_f64(v57, v65), v42, v48);
        v67 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v56, *v16), *v15, *v47), vmlaq_f64(vmulq_f64(v54, v58), v53, v50)), vaddq_f64(v61, vmlaq_f64(vmulq_f64(v55, v59), v52, v49)));
        v68 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v56, v64), v43, *v47), vmlaq_f64(vmulq_f64(v54, v62), v45, v50)), vaddq_f64(v66, vmlaq_f64(vmulq_f64(v55, v63), v44, v49)));
        v70 = v47[8];
        v69 = v47[9];
        v72 = v47[10];
        v71 = v47[11];
        v73 = v47[14];
        v74 = v47[15];
        v75 = v47[12];
        v76 = v47[13];
        v77 = vmlaq_f64(vmulq_f64(v60, v76), v51, v69);
        v78 = vmlaq_f64(vmulq_f64(v65, v76), v42, v69);
        v79 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v16, v75), *v15, v70), vmlaq_f64(vmulq_f64(v58, v73), v53, v72)), vaddq_f64(v77, vmlaq_f64(vmulq_f64(v59, v74), v52, v71))), v67));
        v80 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v64, v75), v43, v70), vmlaq_f64(vmulq_f64(v62, v73), v45, v72)), vaddq_f64(v78, vmlaq_f64(vmulq_f64(v63, v74), v44, v71))), v68));
        *a4 = v79.f32[1] + (v46 * (v79.f32[0] - v79.f32[1]));
        *a5 = v80.f32[1] + (v46 * (v80.f32[0] - v80.f32[1]));
        a4 += a9;
        a5 += a9;
        LODWORD(v47) = v9 + v10;
        v9 = (v9 + v10) & 0x7FFFFFFF;
        v11 = v17 + (v47 >> 31);
        ++v19;
      }

      while (v19 != a7);
    }

    v157 = a6 - v18;
    if (a6 > v18)
    {
      if (v11 < v157)
      {
        v157 = v11;
      }

      if (v157 >= 1)
      {
        v158 = 0;
        v159 = v157;
        do
        {
          v160 = vdupq_lane_s64(COERCE__INT64(a2[v158]), 0);
          v161 = *v15;
          v162 = v15[1];
          v163 = v15[2];
          v164 = v15[3];
          v165 = vmlaq_f64(v160, v164, v13[3]);
          v166 = vmlaq_f64(v160, v163, v13[2]);
          v167 = vmlaq_f64(v160, v162, v13[1]);
          v168 = vdupq_lane_s64(COERCE__INT64(a3[v158]), 0);
          v169 = vmlaq_f64(vmlaq_f64(v160, *v15, *v13), *v16, v13[4]);
          v170 = vmlaq_f64(v167, v16[1], v13[5]);
          v171 = vmlaq_f64(v166, v16[2], v13[6]);
          v172 = vmlaq_f64(v165, v16[3], v13[7]);
          v16[2] = v163;
          v16[3] = v164;
          *v16 = v161;
          v16[1] = v162;
          v15[2] = v171;
          v15[3] = v172;
          *v15 = v169;
          v15[1] = v170;
          v174 = v15[4];
          v173 = v15[5];
          v176 = v15[6];
          v175 = v15[7];
          v177 = vmlaq_f64(v168, v176, v13[2]);
          v178 = vmlaq_f64(v168, v175, v13[3]);
          v179 = vmlaq_f64(v168, v174, *v13);
          v180 = vmlaq_f64(vmlaq_f64(v168, v173, v13[1]), v16[5], v13[5]);
          v181 = vmlaq_f64(v179, v16[4], v13[4]);
          v182 = vmlaq_f64(v178, v16[7], v13[7]);
          v183 = vmlaq_f64(v177, v16[6], v13[6]);
          v16[4] = v174;
          v16[5] = v173;
          v16[6] = v176;
          v16[7] = v175;
          v15[6] = v183;
          v15[7] = v182;
          v15[4] = v181;
          v15[5] = v180;
          v158 += a8;
          --v159;
        }

        while (v159);
      }

LABEL_35:
      v11 -= v157;
      v18 = (v157 + v18);
    }
  }

  else
  {
    if (a7 < 1)
    {
      v18 = 0;
    }

    else
    {
      LODWORD(v18) = 0;
      v81 = 0;
      v82 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v111 = v15[10];
          v110 = v15[11];
          v109 = v15[8];
          v108 = v15[9];
        }

        else
        {
          v83 = v11;
          do
          {
            v84 = vdupq_lane_s64(COERCE__INT64(*a2), 0);
            v85 = *v15;
            v86 = v15[1];
            v87 = v15[2];
            v88 = v15[3];
            v89 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
            v90 = vmlaq_f64(vmlaq_f64(v84, *v15, *v13), *v16, v13[8]);
            v91 = vmlaq_f64(vmlaq_f64(v84, v86, v13[1]), v16[1], v13[9]);
            v92 = vmlaq_f64(vmlaq_f64(v84, v87, v13[2]), v16[2], v13[10]);
            v93 = vmlaq_f64(vmlaq_f64(v84, v88, v13[3]), v16[3], v13[11]);
            v16[2] = v87;
            v16[3] = v88;
            *v16 = v85;
            v16[1] = v86;
            v15[2] = v92;
            v15[3] = v93;
            *v15 = v90;
            v15[1] = v91;
            v94 = v15[4];
            v95 = v15[5];
            v96 = v15[6];
            v97 = v15[7];
            v98 = vmlaq_f64(vmlaq_f64(v89, v94, *v13), v16[4], v13[8]);
            v99 = vmlaq_f64(vmlaq_f64(v89, v95, v13[1]), v16[5], v13[9]);
            v100 = vmlaq_f64(vmlaq_f64(v89, v96, v13[2]), v16[6], v13[10]);
            v101 = vmlaq_f64(vmlaq_f64(v89, v97, v13[3]), v16[7], v13[11]);
            v16[4] = v94;
            v16[5] = v95;
            v16[6] = v96;
            v16[7] = v97;
            v15[6] = v100;
            v15[7] = v101;
            v15[4] = v98;
            v15[5] = v99;
            v103 = v15[8];
            v102 = v15[9];
            v105 = v15[10];
            v104 = v15[11];
            v106 = vmlaq_f64(v89, v105, v13[6]);
            v107 = vmlaq_f64(v84, v103, v13[4]);
            v108 = vmlaq_f64(vmlaq_f64(v84, v102, v13[5]), v16[9], v13[13]);
            v109 = vmlaq_f64(v107, v16[8], v13[12]);
            v110 = vmlaq_f64(vmlaq_f64(v89, v104, v13[7]), v16[11], v13[15]);
            v111 = vmlaq_f64(v106, v16[10], v13[14]);
            v16[8] = v103;
            v16[9] = v102;
            v16[10] = v105;
            v16[11] = v104;
            v15[10] = v111;
            v15[11] = v110;
            v15[8] = v109;
            v15[9] = v108;
            a2 = (a2 + v82);
            a3 = (a3 + v82);
            --v83;
          }

          while (v83);
        }

        v112 = (v14 + (((v9 >> 21) & 0x3FC) << 6));
        v113 = v112[1];
        v115 = v112[2];
        v114 = v112[3];
        v116 = v15[1];
        v118 = v15[2];
        v117 = v15[3];
        v120 = v112[10];
        v119 = v112[11];
        v121 = v112[8];
        v122 = v112[9];
        v124 = v16[2];
        v123 = v16[3];
        v125 = v16[1];
        v126 = vmlaq_f64(vmulq_f64(v120, v124), v118, v115);
        v127 = vmlaq_f64(vmulq_f64(v121, *v16), *v15, *v112);
        v128 = vmlaq_f64(vmulq_f64(v119, v123), v117, v114);
        v215 = vmlaq_f64(vmulq_f64(v122, v125), v116, v113);
        v129 = v15[4];
        v130 = v15[5];
        v131 = v15[6];
        v132 = v15[7];
        v133 = v16[6];
        v134 = v16[7];
        v135 = v16[4];
        v136 = v16[5];
        v137 = vmulq_f64(v119, v134);
        v138 = vmlaq_f64(vmulq_f64(v120, v133), v131, v115);
        v139 = vmlaq_f64(vmulq_f64(v121, v135), v129, *v112);
        v140 = vmlaq_f64(v137, v132, v114);
        v141 = vmlaq_f64(vmulq_f64(v122, v136), v130, v113);
        v142 = v112[18];
        v143 = v112[26];
        v144 = v112[27];
        v145 = vmlaq_f64(vmulq_f64(v124, v143), v118, v142);
        v146 = v112[24];
        v147 = v112[25];
        v148 = v112[16];
        v149 = vmlaq_f64(vmulq_f64(v133, v143), v131, v142);
        v150 = vmlaq_f64(vmulq_f64(v135, v146), v129, v148);
        v151 = v112[19];
        v152 = v112[17];
        v153 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v16, v146), *v15, v148), v145), vaddq_f64(vmlaq_f64(vmulq_f64(v125, v147), v116, v152), vmlaq_f64(vmulq_f64(v123, v144), v117, v151))), vaddq_f64(vaddq_f64(v127, v126), vaddq_f64(v215, v128))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v16[8], v112[28]), v109, v112[20]), vmlaq_f64(vmulq_f64(v16[9], v112[29]), v108, v112[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v112[12], v16[8]), v109, v112[4]), vmlaq_f64(vmulq_f64(v112[13], v16[9]), v108, v112[5]))));
        v154 = *(this + 10) * (v9 & 0x7FFFFF);
        *&v153.f64[0] = vcvt_f32_f64(v153);
        v155 = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v150, v149), vaddq_f64(vmlaq_f64(vmulq_f64(v136, v147), v130, v152), vmlaq_f64(vmulq_f64(v134, v144), v132, v151))), vaddq_f64(vaddq_f64(v139, v138), vaddq_f64(v141, v140))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v16[10], v112[30]), v111, v112[22]), vmlaq_f64(vmulq_f64(v16[11], v112[31]), v110, v112[23])), vaddq_f64(vmlaq_f64(vmulq_f64(v112[14], v16[10]), v111, v112[6]), vmlaq_f64(vmulq_f64(v112[15], v16[11]), v110, v112[7])))));
        *a4 = *(v153.f64 + 1) + (v154 * (*v153.f64 - *(v153.f64 + 1)));
        *a5 = v155.f32[1] + (v154 * (v155.f32[0] - v155.f32[1]));
        v18 = (v18 + v11);
        a4 += a9;
        a5 += a9;
        v156 = v9 + v10;
        v9 = (v9 + v10) & 0x7FFFFFFF;
        v11 = v17 + (v156 >> 31);
        ++v81;
      }

      while (v81 != a7);
    }

    v157 = a6 - v18;
    if (a6 > v18)
    {
      if (v11 < v157)
      {
        v157 = v11;
      }

      if (v157 >= 1)
      {
        v184 = 0;
        v185 = v157;
        do
        {
          v186 = vdupq_lane_s64(COERCE__INT64(a2[v184]), 0);
          v187 = *v15;
          v188 = v15[1];
          v189 = v15[2];
          v190 = v15[3];
          v191 = vdupq_lane_s64(COERCE__INT64(a3[v184]), 0);
          v192 = vmlaq_f64(vmlaq_f64(v186, *v15, *v13), *v16, v13[8]);
          v193 = vmlaq_f64(vmlaq_f64(v186, v188, v13[1]), v16[1], v13[9]);
          v194 = vmlaq_f64(vmlaq_f64(v186, v189, v13[2]), v16[2], v13[10]);
          v195 = vmlaq_f64(vmlaq_f64(v186, v190, v13[3]), v16[3], v13[11]);
          v16[2] = v189;
          v16[3] = v190;
          *v16 = v187;
          v16[1] = v188;
          v15[2] = v194;
          v15[3] = v195;
          *v15 = v192;
          v15[1] = v193;
          v196 = v15[4];
          v197 = v15[5];
          v198 = v15[6];
          v199 = v15[7];
          v200 = vmlaq_f64(vmlaq_f64(v191, v196, *v13), v16[4], v13[8]);
          v201 = vmlaq_f64(vmlaq_f64(v191, v197, v13[1]), v16[5], v13[9]);
          v202 = vmlaq_f64(vmlaq_f64(v191, v198, v13[2]), v16[6], v13[10]);
          v203 = vmlaq_f64(vmlaq_f64(v191, v199, v13[3]), v16[7], v13[11]);
          v16[4] = v196;
          v16[5] = v197;
          v16[6] = v198;
          v16[7] = v199;
          v15[6] = v202;
          v15[7] = v203;
          v15[4] = v200;
          v15[5] = v201;
          v205 = v15[8];
          v204 = v15[9];
          v207 = v15[10];
          v206 = v15[11];
          v208 = vmlaq_f64(v191, v207, v13[6]);
          v209 = vmlaq_f64(v186, v205, v13[4]);
          v210 = vmlaq_f64(vmlaq_f64(v186, v204, v13[5]), v16[9], v13[13]);
          v211 = vmlaq_f64(v209, v16[8], v13[12]);
          v212 = vmlaq_f64(vmlaq_f64(v191, v206, v13[7]), v16[11], v13[15]);
          v213 = vmlaq_f64(v208, v16[10], v13[14]);
          v16[8] = v205;
          v16[9] = v204;
          v16[10] = v207;
          v16[11] = v206;
          v15[10] = v213;
          v15[11] = v212;
          v15[8] = v211;
          v15[9] = v210;
          v184 += a8;
          --v185;
        }

        while (v185);
      }

      goto LABEL_35;
    }
  }

  *(this + 14) = v9;
  *(this + 18) = v11;
  return v18;
}

uint64_t RamstadSRC::processStereoInt(RamstadSRC *this, const float *a2, const float *a3, float *a4, float *a5, int a6, int a7, int a8, int a9)
{
  v10 = *(this + 13);
  v9 = *(this + 14);
  v11 = *(this + 18);
  v12 = *(*this + 24);
  v13 = *(*this + 48);
  v14 = *(this + 11);
  v15 = *(this + 14);
  v16 = *(this + 9);
  v17 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a7 < 1)
    {
      v18 = 0;
    }

    else
    {
      LODWORD(v18) = 0;
      v19 = 0;
      v20 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v31 = v14[2];
          v32 = v14[3];
        }

        else
        {
          v21 = v11;
          do
          {
            v22 = vld1q_dup_f32(a2);
            a2 = (a2 + v20);
            v23 = vld1q_dup_f32(a3);
            a3 = (a3 + v20);
            v24 = v14[1];
            v25 = vmlaq_f32(v22, v24, v12[1]);
            v26 = vmlaq_f32(vmlaq_f32(v22, *v14, *v12), *v15, v12[2]);
            v27 = vmlaq_f32(v25, v15[1], v12[3]);
            *v15 = *v14;
            v15[1] = v24;
            *v14 = v26;
            v14[1] = v27;
            v28 = v14[2];
            v29 = v14[3];
            v30 = vmlaq_f32(v23, v29, v12[1]);
            v31 = vmlaq_f32(vmlaq_f32(v23, v28, *v12), v15[2], v12[2]);
            v32 = vmlaq_f32(v30, v15[3], v12[3]);
            v15[2] = v28;
            v15[3] = v29;
            v14[2] = v31;
            v14[3] = v32;
            --v21;
          }

          while (v21);
        }

        v18 = (v18 + v11);
        v33 = (v13 + 64 * v9);
        v34 = v33[1];
        v36 = v33[2];
        v35 = v33[3];
        v37 = vmlaq_f32(vmulq_f32(v35, v15[3]), v32, v34);
        v38 = vmlaq_f32(vmulq_f32(v36, v15[2]), v31, *v33);
        v39 = vaddq_f32(vmlaq_f32(vmulq_f32(v36, *v15), *v14, *v33), vmlaq_f32(vmulq_f32(v35, v15[1]), v14[1], v34));
        *a4 = vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)));
        v40 = vaddq_f32(v38, v37);
        *a5 = vaddv_f32(vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)));
        a4 += a9;
        a5 += a9;
        v41 = v9 + v10;
        if (v41 < v16)
        {
          v11 = v17;
        }

        else
        {
          v11 = v17 + 1;
        }

        if (v41 < v16)
        {
          v42 = 0;
        }

        else
        {
          v42 = v16;
        }

        v9 = v41 - v42;
        ++v19;
      }

      while (v19 != a7);
    }

    v75 = a6 - v18;
    if (a6 > v18)
    {
      if (v11 < v75)
      {
        v75 = v11;
      }

      if (v75 >= 1)
      {
        v76 = 0;
        v77 = v75;
        do
        {
          v78 = &a2[v76];
          v79 = &a3[v76];
          v80 = vld1q_dup_f32(v78);
          v81 = vld1q_dup_f32(v79);
          v82 = v14[1];
          v83 = vmlaq_f32(v80, v82, v12[1]);
          v84 = vmlaq_f32(vmlaq_f32(v80, *v14, *v12), *v15, v12[2]);
          v85 = vmlaq_f32(v83, v15[1], v12[3]);
          *v15 = *v14;
          v15[1] = v82;
          *v14 = v84;
          v14[1] = v85;
          v86 = v14[2];
          v87 = v14[3];
          v88 = vmlaq_f32(v81, v87, v12[1]);
          v89 = vmlaq_f32(vmlaq_f32(v81, v86, *v12), v15[2], v12[2]);
          v90 = vmlaq_f32(v88, v15[3], v12[3]);
          v15[2] = v86;
          v15[3] = v87;
          v14[2] = v89;
          v14[3] = v90;
          v76 += a8;
          --v77;
        }

        while (v77);
      }

LABEL_47:
      v11 -= v75;
      v18 = (v75 + v18);
    }
  }

  else
  {
    if (a7 < 1)
    {
      v18 = 0;
    }

    else
    {
      v43 = 0;
      LODWORD(v18) = 0;
      v44 = 4 * a8;
      do
      {
        if (v11 < 1)
        {
          v57 = v14[4];
          v58 = v14[5];
        }

        else
        {
          v45 = v11;
          do
          {
            v46 = vld1q_dup_f32(a2);
            a2 = (a2 + v44);
            v47 = vld1q_dup_f32(a3);
            a3 = (a3 + v44);
            v48 = v14[1];
            v49 = vmlaq_f32(vmlaq_f32(v46, *v14, *v12), *v15, v12[4]);
            v50 = vmlaq_f32(vmlaq_f32(v46, v48, v12[1]), v15[1], v12[5]);
            *v15 = *v14;
            v15[1] = v48;
            *v14 = v49;
            v14[1] = v50;
            v51 = v14[2];
            v52 = v14[3];
            v53 = vmlaq_f32(vmlaq_f32(v47, v51, *v12), v15[2], v12[4]);
            v54 = vmlaq_f32(vmlaq_f32(v47, v52, v12[1]), v15[3], v12[5]);
            v15[2] = v51;
            v15[3] = v52;
            v14[2] = v53;
            v14[3] = v54;
            v55 = v14[4];
            v56 = v14[5];
            v57 = vmlaq_f32(vmlaq_f32(v46, v55, v12[2]), v15[4], v12[6]);
            v58 = vmlaq_f32(vmlaq_f32(v47, v56, v12[3]), v15[5], v12[7]);
            v15[4] = v55;
            v15[5] = v56;
            v14[4] = v57;
            v14[5] = v58;
            --v45;
          }

          while (v45);
        }

        v18 = (v18 + v11);
        v59 = (v13 + 128 * v9);
        v60 = v59[1];
        v62 = v59[4];
        v61 = v59[5];
        v63 = vmlaq_f32(vmulq_f32(v61, v15[1]), v14[1], v60);
        v64 = vmlaq_f32(vmulq_f32(v62, *v15), *v14, *v59);
        v65 = vmlaq_f32(vmulq_f32(v61, v15[3]), v14[3], v60);
        v66 = vmlaq_f32(vmulq_f32(v62, v15[2]), v14[2], *v59);
        v67 = vmlaq_f32(vmulq_f32(v59[7], v15[5]), v58, v59[3]);
        v68 = vmlaq_f32(vmulq_f32(v59[6], v15[4]), v57, v59[2]);
        v69 = vaddq_f32(v64, v63);
        *v69.i8 = vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
        v70 = vadd_f32(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
        *a4 = vaddv_f32(vadd_f32(vzip1_s32(*v69.i8, v70), vzip2_s32(*v69.i8, v70)));
        v71 = vaddq_f32(v66, v65);
        *v71.i8 = vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
        v72 = vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
        *a5 = vaddv_f32(vadd_f32(vzip1_s32(*v71.i8, v72), vzip2_s32(*v71.i8, v72)));
        a4 += a9;
        a5 += a9;
        v73 = v9 + v10;
        if (v73 < v16)
        {
          v11 = v17;
        }

        else
        {
          v11 = v17 + 1;
        }

        if (v73 < v16)
        {
          v74 = 0;
        }

        else
        {
          v74 = v16;
        }

        v9 = v73 - v74;
        ++v43;
      }

      while (v43 != a7);
    }

    v75 = a6 - v18;
    if (a6 > v18)
    {
      if (v11 < v75)
      {
        v75 = v11;
      }

      if (v75 >= 1)
      {
        v91 = 0;
        v92 = v75;
        do
        {
          v93 = &a2[v91];
          v94 = &a3[v91];
          v95 = vld1q_dup_f32(v93);
          v96 = v14[1];
          v97 = vld1q_dup_f32(v94);
          v98 = vmlaq_f32(vmlaq_f32(v95, *v14, *v12), *v15, v12[4]);
          v99 = vmlaq_f32(vmlaq_f32(v95, v96, v12[1]), v15[1], v12[5]);
          *v15 = *v14;
          v15[1] = v96;
          *v14 = v98;
          v14[1] = v99;
          v100 = v14[2];
          v101 = v14[3];
          v102 = vmlaq_f32(vmlaq_f32(v97, v100, *v12), v15[2], v12[4]);
          v103 = vmlaq_f32(vmlaq_f32(v97, v101, v12[1]), v15[3], v12[5]);
          v15[2] = v100;
          v15[3] = v101;
          v14[2] = v102;
          v14[3] = v103;
          v104 = v14[4];
          v105 = v14[5];
          v106 = vmlaq_f32(vmlaq_f32(v95, v104, v12[2]), v15[4], v12[6]);
          v107 = vmlaq_f32(vmlaq_f32(v97, v105, v12[3]), v15[5], v12[7]);
          v15[4] = v104;
          v15[5] = v105;
          v14[4] = v106;
          v14[5] = v107;
          v91 += a8;
          --v92;
        }

        while (v92);
      }

      goto LABEL_47;
    }
  }

  *(this + 14) = v9;
  *(this + 18) = v11;
  return v18;
}

uint64_t RamstadSRC::processStereoFrac(RamstadSRC *this, const float *a2, const float *a3, float *a4, float *a5, int a6, int a7, int a8, int a9)
{
  v10 = *(this + 13);
  v9 = *(this + 14);
  v11 = *(this + 18);
  v12 = *(*this + 24);
  v13 = *(*this + 48);
  v14 = *(this + 11);
  v15 = *(this + 14);
  v16 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a7 >= 1)
    {
      LODWORD(v17) = 0;
      v18 = 0;
      v19 = 4 * a8;
      while (1)
      {
        v17 = (v17 + v11);
        if (v17 > *(this + 58))
        {
          goto LABEL_37;
        }

        if (v11 < 1)
        {
          v29 = v14[2];
          v30 = v14[3];
        }

        else
        {
          do
          {
            v20 = vld1q_dup_f32(a2);
            a2 = (a2 + v19);
            v21 = vld1q_dup_f32(a3);
            a3 = (a3 + v19);
            v22 = v14[1];
            v23 = vmlaq_f32(v20, v22, v12[1]);
            v24 = vmlaq_f32(vmlaq_f32(v20, *v14, *v12), *v15, v12[2]);
            v25 = vmlaq_f32(v23, v15[1], v12[3]);
            *v15 = *v14;
            v15[1] = v22;
            *v14 = v24;
            v14[1] = v25;
            v26 = v14[2];
            v27 = v14[3];
            v28 = vmlaq_f32(v21, v27, v12[1]);
            v29 = vmlaq_f32(vmlaq_f32(v21, v26, *v12), v15[2], v12[2]);
            v30 = vmlaq_f32(v28, v15[3], v12[3]);
            v15[2] = v26;
            v15[3] = v27;
            v14[2] = v29;
            v14[3] = v30;
            --v11;
          }

          while (v11);
        }

        v31 = *(this + 10) * (v9 & 0x7FFFFF);
        v32 = (v13 + 32 * ((v9 >> 22) & 0x1FE));
        v33 = v32[1];
        v34 = v14[1];
        v36 = v32[2];
        v35 = v32[3];
        v37 = v15[1];
        v39 = v15[2];
        v38 = v15[3];
        v40 = vaddq_f32(vmlaq_f32(vmulq_f32(v36, *v15), *v14, *v32), vmlaq_f32(vmulq_f32(v35, v37), v34, v33));
        *v40.i8 = vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
        v41 = vaddq_f32(vmlaq_f32(vmulq_f32(v36, v39), v29, *v32), vmlaq_f32(vmulq_f32(v35, v38), v30, v33));
        *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
        v42 = v32[4];
        v43 = v32[5];
        v45 = v32[6];
        v44 = v32[7];
        v46 = vmlaq_f32(vmulq_f32(v39, v45), v29, v42);
        v47 = vaddq_f32(vmlaq_f32(vmulq_f32(*v15, v45), *v14, v42), vmlaq_f32(vmulq_f32(v37, v44), v34, v43));
        *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
        *v47.i8 = vadd_f32(vzip1_s32(*v47.i8, *v40.i8), vzip2_s32(*v47.i8, *v40.i8));
        v48 = vaddq_f32(v46, vmlaq_f32(vmulq_f32(v38, v44), v30, v43));
        *v48.i8 = vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
        *v48.i8 = vadd_f32(vzip1_s32(*v48.i8, *v41.i8), vzip2_s32(*v48.i8, *v41.i8));
        *a4 = *&v47.i32[1] + (v31 * (*v47.i32 - *&v47.i32[1]));
        *a5 = *&v48.i32[1] + (v31 * (*v48.i32 - *&v48.i32[1]));
        a4 += a9;
        a5 += a9;
        LODWORD(v32) = v9 + v10;
        v9 = (v9 + v10) & 0x7FFFFFFF;
        v11 = v16 + (v32 >> 31);
        if (++v18 == a7)
        {
          goto LABEL_21;
        }
      }
    }

    v17 = 0;
LABEL_21:
    v95 = a6 - v17;
    if (a6 > v17)
    {
      if (v11 < v95)
      {
        v95 = v11;
      }

      if (v95 >= 1)
      {
        v96 = 0;
        v97 = v95;
        do
        {
          v98 = &a2[v96];
          v99 = &a3[v96];
          v100 = vld1q_dup_f32(v98);
          v101 = vld1q_dup_f32(v99);
          v102 = v14[1];
          v103 = vmlaq_f32(v100, v102, v12[1]);
          v104 = vmlaq_f32(vmlaq_f32(v100, *v14, *v12), *v15, v12[2]);
          v105 = vmlaq_f32(v103, v15[1], v12[3]);
          *v15 = *v14;
          v15[1] = v102;
          *v14 = v104;
          v14[1] = v105;
          v106 = v14[2];
          v107 = v14[3];
          v108 = vmlaq_f32(v101, v107, v12[1]);
          v109 = vmlaq_f32(vmlaq_f32(v101, v106, *v12), v15[2], v12[2]);
          v110 = vmlaq_f32(v108, v15[3], v12[3]);
          v15[2] = v106;
          v15[3] = v107;
          v14[2] = v109;
          v14[3] = v110;
          v96 += a8;
          --v97;
        }

        while (v97);
      }

LABEL_35:
      v11 -= v95;
      v17 = (v95 + v17);
    }
  }

  else
  {
    if (a7 >= 1)
    {
      LODWORD(v17) = 0;
      v49 = 0;
      v50 = 4 * a8;
      while (1)
      {
        v17 = (v17 + v11);
        if (v17 > *(this + 58))
        {
          break;
        }

        if (v11 < 1)
        {
          v62 = v14[4];
          v63 = v14[5];
        }

        else
        {
          do
          {
            v51 = vld1q_dup_f32(a2);
            a2 = (a2 + v50);
            v52 = vld1q_dup_f32(a3);
            a3 = (a3 + v50);
            v53 = v14[1];
            v54 = vmlaq_f32(vmlaq_f32(v51, *v14, *v12), *v15, v12[4]);
            v55 = vmlaq_f32(vmlaq_f32(v51, v53, v12[1]), v15[1], v12[5]);
            *v15 = *v14;
            v15[1] = v53;
            *v14 = v54;
            v14[1] = v55;
            v56 = v14[2];
            v57 = v14[3];
            v58 = vmlaq_f32(vmlaq_f32(v52, v56, *v12), v15[2], v12[4]);
            v59 = vmlaq_f32(vmlaq_f32(v52, v57, v12[1]), v15[3], v12[5]);
            v15[2] = v56;
            v15[3] = v57;
            v14[2] = v58;
            v14[3] = v59;
            v60 = v14[4];
            v61 = v14[5];
            v62 = vmlaq_f32(vmlaq_f32(v51, v60, v12[2]), v15[4], v12[6]);
            v63 = vmlaq_f32(vmlaq_f32(v52, v61, v12[3]), v15[5], v12[7]);
            v15[4] = v60;
            v15[5] = v61;
            v14[4] = v62;
            v14[5] = v63;
            --v11;
          }

          while (v11);
        }

        v64 = *(this + 10) * (v9 & 0x7FFFFF);
        v65 = (v13 + 32 * ((v9 >> 21) & 0x3FC));
        v66 = v65[1];
        v67 = v14[1];
        v69 = v65[4];
        v68 = v65[5];
        v70 = v15[1];
        v71 = vmlaq_f32(vmulq_f32(v68, v70), v67, v66);
        v72 = v14[2];
        v73 = v14[3];
        v75 = v15[2];
        v74 = v15[3];
        v76 = vmlaq_f32(vmulq_f32(v68, v74), v73, v66);
        v78 = v15[4];
        v77 = v15[5];
        v79 = vmlaq_f32(vmulq_f32(v65[7], v77), v63, v65[3]);
        v80 = vmlaq_f32(vmulq_f32(v65[6], v78), v62, v65[2]);
        v81 = vaddq_f32(vmlaq_f32(vmulq_f32(v69, *v15), *v14, *v65), v71);
        *v81.i8 = vadd_f32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
        *v66.f32 = vadd_f32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
        v82 = vaddq_f32(vmlaq_f32(vmulq_f32(v69, v75), v72, *v65), v76);
        *v82.i8 = vadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
        *v69.f32 = vadd_f32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
        v83 = v65[8];
        v84 = v65[9];
        v86 = v65[12];
        v85 = v65[13];
        v87 = vmlaq_f32(vmulq_f32(v70, v85), v67, v84);
        v88 = vmlaq_f32(vmulq_f32(v74, v85), v73, v84);
        v89 = vmlaq_f32(vmulq_f32(v75, v86), v72, v83);
        v90 = vmlaq_f32(vmulq_f32(v77, v65[15]), v63, v65[11]);
        v91 = vmlaq_f32(vmulq_f32(v78, v65[14]), v62, v65[10]);
        v92 = vaddq_f32(vmlaq_f32(vmulq_f32(*v15, v86), *v14, v83), v87);
        *v92.i8 = vadd_f32(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
        v93 = vadd_f32(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
        *v92.i8 = vadd_f32(vadd_f32(vzip1_s32(*v92.i8, *v81.i8), vzip2_s32(*v92.i8, *v81.i8)), vadd_f32(vzip1_s32(v93, *v66.f32), vzip2_s32(v93, *v66.f32)));
        v94 = vaddq_f32(v89, v88);
        *v94.i8 = vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
        *v81.i8 = vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
        *v94.i8 = vadd_f32(vadd_f32(vzip1_s32(*v94.i8, *v82.i8), vzip2_s32(*v94.i8, *v82.i8)), vadd_f32(vzip1_s32(*v81.i8, *v69.f32), vzip2_s32(*v81.i8, *v69.f32)));
        *a4 = *&v92.i32[1] + (v64 * (*v92.i32 - *&v92.i32[1]));
        *a5 = *&v94.i32[1] + (v64 * (*v94.i32 - *&v94.i32[1]));
        a4 += a9;
        a5 += a9;
        LODWORD(v65) = v9 + v10;
        v9 = (v9 + v10) & 0x7FFFFFFF;
        v11 = v16 + (v65 >> 31);
        if (++v49 == a7)
        {
          goto LABEL_29;
        }
      }

LABEL_37:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEB7A0](exception, "RamstadSRC::processStereoFrac preflight prediction failed.");
    }

    v17 = 0;
LABEL_29:
    v95 = a6 - v17;
    if (a6 > v17)
    {
      if (v11 < v95)
      {
        v95 = v11;
      }

      if (v95 >= 1)
      {
        v111 = 0;
        v112 = v95;
        do
        {
          v113 = &a2[v111];
          v114 = &a3[v111];
          v115 = vld1q_dup_f32(v113);
          v116 = v14[1];
          v117 = vld1q_dup_f32(v114);
          v118 = vmlaq_f32(vmlaq_f32(v115, *v14, *v12), *v15, v12[4]);
          v119 = vmlaq_f32(vmlaq_f32(v115, v116, v12[1]), v15[1], v12[5]);
          *v15 = *v14;
          v15[1] = v116;
          *v14 = v118;
          v14[1] = v119;
          v120 = v14[2];
          v121 = v14[3];
          v122 = vmlaq_f32(vmlaq_f32(v117, v120, *v12), v15[2], v12[4]);
          v123 = vmlaq_f32(vmlaq_f32(v117, v121, v12[1]), v15[3], v12[5]);
          v15[2] = v120;
          v15[3] = v121;
          v14[2] = v122;
          v14[3] = v123;
          v124 = v14[4];
          v125 = v14[5];
          v126 = vmlaq_f32(vmlaq_f32(v115, v124, v12[2]), v15[4], v12[6]);
          v127 = vmlaq_f32(vmlaq_f32(v117, v125, v12[3]), v15[5], v12[7]);
          v15[4] = v124;
          v15[5] = v125;
          v14[4] = v126;
          v14[5] = v127;
          v111 += a8;
          --v112;
        }

        while (v112);
      }

      goto LABEL_35;
    }
  }

  *(this + 14) = v9;
  *(this + 18) = v11;
  return v17;
}

double RamstadSRC::processMulti(RamstadSRC *this, const float *const *a2, float *const *a3, int a4, int a5, int a6, int a7)
{
  RamstadSRC::checkPreflight(this, a4, a5);
  v14 = *(this + 76);
  if (*(this + 77) == 1)
  {
    if (*(this + 76))
    {
      RamstadSRC::processMultiIntD(this, a2, a3, a4, a5, a6, a7);
    }

    else
    {
      RamstadSRC::processMultiFracD(this, a2, a3, a4, a5, a6, a7);
    }
  }

  else if (*(this + 76))
  {
    RamstadSRC::processMultiInt(this, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    RamstadSRC::processMultiFrac(this, a2, a3, a4, a5, a6, a7);
  }

  result = NAN;
  *(this + 29) = -1;
  *(this + 60) = -1;
  return result;
}

void sub_24161D450(_Unwind_Exception *a1)
{
  *(v1 + 232) = -1;
  *(v1 + 240) = -1;
  _Unwind_Resume(a1);
}

uint64_t RamstadSRC::processMultiIntD(RamstadSRC *this, const float *const *a2, float *const *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(this + 1);
  v11 = *(v10 + 24);
  v12 = *(v10 + 48);
  v13 = *(this + 17);
  v14 = *(this + 20);
  v15 = *(this + 9);
  v16 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v52 = 0;
      v18 = 0;
    }

    else
    {
      v17 = 0;
      LODWORD(v18) = 0;
      LODWORD(v19) = 0;
      for (i = 0; i != a5; ++i)
      {
        if (v9 >= 1)
        {
          v21 = 0;
          v19 = v19;
          do
          {
            v22 = *(this + 8);
            if (v22 >= 1)
            {
              v23 = a2;
              v24 = v13;
              v25 = v14;
              do
              {
                v26 = *v23++;
                v27 = vdupq_lane_s64(COERCE__INT64(*(v26 + 4 * v19)), 0);
                v29 = *v24;
                v28 = v24[1];
                v31 = v24[2];
                v30 = v24[3];
                v32 = vmlaq_f64(v27, v31, v11[2]);
                v33 = vmlaq_f64(v27, v30, v11[3]);
                v34 = vmlaq_f64(v27, *v24, *v11);
                v35 = vmlaq_f64(vmlaq_f64(v27, v28, v11[1]), v25[1], v11[5]);
                v36 = vmlaq_f64(v34, *v25, v11[4]);
                v37 = vmlaq_f64(v33, v25[3], v11[7]);
                v38 = vmlaq_f64(v32, v25[2], v11[6]);
                v25[2] = v31;
                v25[3] = v30;
                *v25 = v29;
                v25[1] = v28;
                v25 += 4;
                v24[2] = v38;
                v24[3] = v37;
                *v24 = v36;
                v24[1] = v35;
                v24 += 4;
                --v22;
              }

              while (v22);
            }

            v19 += a6;
            ++v21;
          }

          while (v21 != v9);
        }

        v39 = *(this + 8);
        if (v39 >= 1)
        {
          v41 = v13;
          v42 = v14;
          v43 = a3;
          do
          {
            v44 = v42[2];
            v45 = v42[3];
            v46 = *v42;
            v47 = v42[1];
            v42 += 4;
            v48 = *v43++;
            v40 = (v12 + ((2 * v7) << 6));
            v49 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v40[4], v46), *v41, *v40), vmlaq_f64(vmulq_f64(v40[6], v44), v41[2], v40[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v40[5], v47), v41[1], v40[1]), vmlaq_f64(vmulq_f64(v40[7], v45), v41[3], v40[3]))));
            *(v48 + 4 * v17) = v49;
            v41 += 4;
            --v39;
          }

          while (v39);
        }

        v18 = (v18 + v9);
        v50 = v7 + v8;
        if (v50 < v15)
        {
          v9 = v16;
        }

        else
        {
          v9 = v16 + 1;
        }

        if (v50 < v15)
        {
          v51 = 0;
        }

        else
        {
          v51 = v15;
        }

        v7 = v50 - v51;
        v17 += a7;
      }

      v52 = v19;
    }

    v130 = a4 - v18;
    if (a4 > v18)
    {
      if (v9 < v130)
      {
        v130 = v9;
      }

      if (v130 >= 1)
      {
        v131 = 0;
        v132 = a6;
        do
        {
          v133 = *(this + 8);
          if (v133 >= 1)
          {
            v134 = a2;
            v135 = v13;
            v136 = v14;
            do
            {
              v137 = *v134++;
              v138 = vdupq_lane_s64(COERCE__INT64(*(v137 + 4 * v52)), 0);
              v140 = *v135;
              v139 = v135[1];
              v142 = v135[2];
              v141 = v135[3];
              v143 = vmlaq_f64(v138, v142, v11[2]);
              v144 = vmlaq_f64(v138, v141, v11[3]);
              v145 = vmlaq_f64(v138, *v135, *v11);
              v146 = vmlaq_f64(vmlaq_f64(v138, v139, v11[1]), v136[1], v11[5]);
              v147 = vmlaq_f64(v145, *v136, v11[4]);
              v148 = vmlaq_f64(v144, v136[3], v11[7]);
              v149 = vmlaq_f64(v143, v136[2], v11[6]);
              v136[2] = v142;
              v136[3] = v141;
              *v136 = v140;
              v136[1] = v139;
              v136 += 4;
              v135[2] = v149;
              v135[3] = v148;
              *v135 = v147;
              v135[1] = v146;
              v135 += 4;
              --v133;
            }

            while (v133);
          }

          v52 += v132;
          ++v131;
        }

        while (v131 != v130);
      }

LABEL_67:
      v9 -= v130;
      v18 = (v130 + v18);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v129 = 0;
      v18 = 0;
    }

    else
    {
      v53 = 0;
      LODWORD(v18) = 0;
      v54 = 0;
      LODWORD(v55) = 0;
      do
      {
        if (v9 >= 1)
        {
          v56 = 0;
          v55 = v55;
          do
          {
            v57 = *(this + 8);
            v58 = (v57 - 1);
            v59 = v13;
            v60 = v14;
            if (v57 >= 2)
            {
              v61 = 0;
              v60 = v14;
              v59 = v13;
              do
              {
                v62 = &a2[v61];
                v63 = vdupq_lane_s64(COERCE__INT64((*v62)[v55]), 0);
                v64 = vdupq_lane_s64(COERCE__INT64(*(*(v62 + 1) + 4 * v55)), 0);
                v65 = *v59;
                v66 = v59[1];
                v67 = v59[2];
                v68 = v59[3];
                v69 = vmlaq_f64(vmlaq_f64(v63, *v59, *v11), *v60, v11[8]);
                v70 = vmlaq_f64(vmlaq_f64(v63, v66, v11[1]), v60[1], v11[9]);
                v71 = vmlaq_f64(vmlaq_f64(v63, v67, v11[2]), v60[2], v11[10]);
                v72 = vmlaq_f64(vmlaq_f64(v63, v68, v11[3]), v60[3], v11[11]);
                v60[2] = v67;
                v60[3] = v68;
                *v60 = v65;
                v60[1] = v66;
                v59[2] = v71;
                v59[3] = v72;
                *v59 = v69;
                v59[1] = v70;
                v73 = v59[4];
                v74 = v59[5];
                v75 = v59[6];
                v76 = v59[7];
                v77 = vmlaq_f64(vmlaq_f64(v64, v73, *v11), v60[4], v11[8]);
                v78 = vmlaq_f64(vmlaq_f64(v64, v74, v11[1]), v60[5], v11[9]);
                v79 = vmlaq_f64(vmlaq_f64(v64, v75, v11[2]), v60[6], v11[10]);
                v80 = vmlaq_f64(vmlaq_f64(v64, v76, v11[3]), v60[7], v11[11]);
                v60[4] = v73;
                v60[5] = v74;
                v60[6] = v75;
                v60[7] = v76;
                v59[6] = v79;
                v59[7] = v80;
                v59[4] = v77;
                v59[5] = v78;
                v82 = v59[8];
                v81 = v59[9];
                v84 = v59[10];
                v83 = v59[11];
                v85 = vmlaq_f64(v64, v84, v11[6]);
                v86 = vmlaq_f64(v63, v82, v11[4]);
                v87 = vmlaq_f64(vmlaq_f64(v63, v81, v11[5]), v60[9], v11[13]);
                v88 = vmlaq_f64(v86, v60[8], v11[12]);
                v89 = vmlaq_f64(vmlaq_f64(v64, v83, v11[7]), v60[11], v11[15]);
                v90 = vmlaq_f64(v85, v60[10], v11[14]);
                v60[8] = v82;
                v60[9] = v81;
                v60[10] = v84;
                v60[11] = v83;
                v59[10] = v90;
                v59[11] = v89;
                v59[8] = v88;
                v59[9] = v87;
                v59 += 12;
                v60 += 12;
                v61 += 2;
              }

              while (v61 < v58);
            }

            if (v57)
            {
              v91 = vdupq_lane_s64(COERCE__INT64(a2[v58][v55]), 0);
              v92 = *v59;
              v93 = v59[1];
              v94 = v59[2];
              v95 = v59[3];
              v96 = vmlaq_f64(vmlaq_f64(v91, *v59, *v11), *v60, v11[8]);
              v97 = vmlaq_f64(vmlaq_f64(v91, v93, v11[1]), v60[1], v11[9]);
              v98 = vmlaq_f64(vmlaq_f64(v91, v94, v11[2]), v60[2], v11[10]);
              v99 = vmlaq_f64(vmlaq_f64(v91, v95, v11[3]), v60[3], v11[11]);
              v60[2] = v94;
              v60[3] = v95;
              *v60 = v92;
              v60[1] = v93;
              v59[2] = v98;
              v59[3] = v99;
              *v59 = v96;
              v59[1] = v97;
              v101 = v59[4];
              v100 = v59[5];
              v103 = v59[6];
              v102 = v59[7];
              v104 = vmlaq_f64(v91, v101, v11[4]);
              v105 = vmlaq_f64(vmlaq_f64(0, v102, v11[7]), v60[7], v11[15]);
              v106 = vmlaq_f64(vmlaq_f64(0, v103, v11[6]), v60[6], v11[14]);
              v107 = vmlaq_f64(vmlaq_f64(v91, v100, v11[5]), v60[5], v11[13]);
              v108 = vmlaq_f64(v104, v60[4], v11[12]);
              v60[4] = v101;
              v60[5] = v100;
              v60[6] = v103;
              v60[7] = v102;
              v59[6] = v106;
              v59[7] = v105;
              v59[4] = v108;
              v59[5] = v107;
            }

            v55 += a6;
            ++v56;
          }

          while (v56 != v9);
        }

        v109 = (v12 + ((4 * v7) << 6));
        v110 = *(this + 8);
        v111 = v13;
        v112 = v14;
        v113 = (v110 - 1);
        if (v110 > 1)
        {
          v114 = 0;
          v112 = v14;
          v111 = v13;
          do
          {
            v115 = &a3[v114];
            v116 = v109[1];
            v118 = v109[2];
            v117 = v109[3];
            v119 = v109[10];
            v120 = v109[11];
            v121 = v109[8];
            v122 = v109[9];
            v123 = *v115;
            v124 = *(v115 + 1);
            v125 = vmlaq_f64(vmulq_f64(v122, v112[5]), v111[5], v116);
            *v116.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v121, *v112), *v111, *v109), vmlaq_f64(vmulq_f64(v119, v112[2]), v111[2], v118)), vaddq_f64(vmlaq_f64(vmulq_f64(v122, v112[1]), v111[1], v116), vmlaq_f64(vmulq_f64(v120, v112[3]), v111[3], v117))), vaddq_f64(vmlaq_f64(vmulq_f64(v109[12], v112[8]), v111[8], v109[4]), vmlaq_f64(vmulq_f64(v109[13], v112[9]), v111[9], v109[5]))));
            *v117.f64 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v121, v112[4]), v111[4], *v109), vmlaq_f64(vmulq_f64(v119, v112[6]), v111[6], v118)), vaddq_f64(v125, vmlaq_f64(vmulq_f64(v120, v112[7]), v111[7], v117))), vaddq_f64(vmlaq_f64(vmulq_f64(v109[14], v112[10]), v111[10], v109[6]), vmlaq_f64(vmulq_f64(v109[15], v112[11]), v111[11], v109[7]))));
            v123[v53] = *v116.f64;
            *(v124 + 4 * v53) = LODWORD(v117.f64[0]);
            v111 += 12;
            v112 += 12;
            v114 += 2;
          }

          while (v114 < v113);
        }

        if (v110)
        {
          v126 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[8], *v112), *v111, *v109), vmlaq_f64(vmulq_f64(v109[10], v112[2]), v111[2], v109[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v109[9], v112[1]), v111[1], v109[1]), vmlaq_f64(vmulq_f64(v109[11], v112[3]), v111[3], v109[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[12], v112[4]), v111[4], v109[4]), vmlaq_f64(vmulq_f64(v109[14], v112[6]), v111[6], v109[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v109[13], v112[5]), v111[5], v109[5]), vmlaq_f64(vmulq_f64(v109[15], v112[7]), v111[7], v109[7])))));
          a3[v113][v53] = v126;
        }

        v18 = (v18 + v9);
        v127 = v7 + v8;
        if (v127 < v15)
        {
          v9 = v16;
        }

        else
        {
          v9 = v16 + 1;
        }

        if (v127 < v15)
        {
          v128 = 0;
        }

        else
        {
          v128 = v15;
        }

        v7 = v127 - v128;
        ++v54;
        v53 += a7;
      }

      while (v54 != a5);
      v129 = v55;
    }

    v130 = a4 - v18;
    if (a4 > v18)
    {
      if (v9 < v130)
      {
        v130 = v9;
      }

      if (v130 >= 1)
      {
        v150 = 0;
        v151 = a6;
        do
        {
          v152 = *(this + 8);
          v153 = (v152 - 1);
          v154 = v13;
          v155 = v14;
          if (v152 >= 2)
          {
            v156 = 0;
            v155 = v14;
            v154 = v13;
            do
            {
              v157 = &a2[v156];
              v158 = vdupq_lane_s64(COERCE__INT64((*v157)[v129]), 0);
              v159 = vdupq_lane_s64(COERCE__INT64(*(*(v157 + 1) + 4 * v129)), 0);
              v160 = *v154;
              v161 = v154[1];
              v162 = v154[2];
              v163 = v154[3];
              v164 = vmlaq_f64(vmlaq_f64(v158, *v154, *v11), *v155, v11[8]);
              v165 = vmlaq_f64(vmlaq_f64(v158, v161, v11[1]), v155[1], v11[9]);
              v166 = vmlaq_f64(vmlaq_f64(v158, v162, v11[2]), v155[2], v11[10]);
              v167 = vmlaq_f64(vmlaq_f64(v158, v163, v11[3]), v155[3], v11[11]);
              v155[2] = v162;
              v155[3] = v163;
              *v155 = v160;
              v155[1] = v161;
              v154[2] = v166;
              v154[3] = v167;
              *v154 = v164;
              v154[1] = v165;
              v168 = v154[4];
              v169 = v154[5];
              v170 = v154[6];
              v171 = v154[7];
              v172 = vmlaq_f64(vmlaq_f64(v159, v168, *v11), v155[4], v11[8]);
              v173 = vmlaq_f64(vmlaq_f64(v159, v169, v11[1]), v155[5], v11[9]);
              v174 = vmlaq_f64(vmlaq_f64(v159, v170, v11[2]), v155[6], v11[10]);
              v175 = vmlaq_f64(vmlaq_f64(v159, v171, v11[3]), v155[7], v11[11]);
              v155[4] = v168;
              v155[5] = v169;
              v155[6] = v170;
              v155[7] = v171;
              v154[6] = v174;
              v154[7] = v175;
              v154[4] = v172;
              v154[5] = v173;
              v177 = v154[8];
              v176 = v154[9];
              v179 = v154[10];
              v178 = v154[11];
              v180 = vmlaq_f64(v159, v179, v11[6]);
              v181 = vmlaq_f64(v158, v177, v11[4]);
              v182 = vmlaq_f64(vmlaq_f64(v158, v176, v11[5]), v155[9], v11[13]);
              v183 = vmlaq_f64(v181, v155[8], v11[12]);
              v184 = vmlaq_f64(vmlaq_f64(v159, v178, v11[7]), v155[11], v11[15]);
              v185 = vmlaq_f64(v180, v155[10], v11[14]);
              v155[8] = v177;
              v155[9] = v176;
              v155[10] = v179;
              v155[11] = v178;
              v154[10] = v185;
              v154[11] = v184;
              v154[8] = v183;
              v154[9] = v182;
              v154 += 12;
              v155 += 12;
              v156 += 2;
            }

            while (v156 < v153);
          }

          if (v152)
          {
            v186 = vdupq_lane_s64(COERCE__INT64(a2[v153][v129]), 0);
            v187 = *v154;
            v188 = v154[1];
            v189 = v154[2];
            v190 = v154[3];
            v191 = vmlaq_f64(vmlaq_f64(v186, *v154, *v11), *v155, v11[8]);
            v192 = vmlaq_f64(vmlaq_f64(v186, v188, v11[1]), v155[1], v11[9]);
            v193 = vmlaq_f64(vmlaq_f64(v186, v189, v11[2]), v155[2], v11[10]);
            v194 = vmlaq_f64(vmlaq_f64(v186, v190, v11[3]), v155[3], v11[11]);
            v155[2] = v189;
            v155[3] = v190;
            *v155 = v187;
            v155[1] = v188;
            v154[2] = v193;
            v154[3] = v194;
            *v154 = v191;
            v154[1] = v192;
            v196 = v154[4];
            v195 = v154[5];
            v198 = v154[6];
            v197 = v154[7];
            v199 = vmlaq_f64(v186, v196, v11[4]);
            v200 = vmlaq_f64(vmlaq_f64(0, v197, v11[7]), v155[7], v11[15]);
            v201 = vmlaq_f64(vmlaq_f64(0, v198, v11[6]), v155[6], v11[14]);
            v202 = vmlaq_f64(vmlaq_f64(v186, v195, v11[5]), v155[5], v11[13]);
            v203 = vmlaq_f64(v199, v155[4], v11[12]);
            v155[4] = v196;
            v155[5] = v195;
            v155[6] = v198;
            v155[7] = v197;
            v154[6] = v201;
            v154[7] = v200;
            v154[4] = v203;
            v154[5] = v202;
          }

          v129 += v151;
          ++v150;
        }

        while (v150 != v130);
      }

      goto LABEL_67;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v18;
}

uint64_t RamstadSRC::processMultiFracD(RamstadSRC *this, const float *const *a2, float *const *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(this + 1);
  v11 = *(v10 + 24);
  v12 = *(v10 + 48);
  v13 = *(this + 17);
  v14 = *(this + 20);
  v15 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v68 = 0;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      LODWORD(v17) = 0;
      LODWORD(v18) = 0;
      for (i = 0; i != a5; ++i)
      {
        if (v9 >= 1)
        {
          v20 = 0;
          v18 = v18;
          do
          {
            v21 = *(this + 8);
            if (v21 >= 1)
            {
              v22 = a2;
              v23 = v13;
              v24 = v14;
              do
              {
                v25 = *v22++;
                v26 = vdupq_lane_s64(COERCE__INT64(*(v25 + 4 * v18)), 0);
                v28 = *v23;
                v27 = v23[1];
                v30 = v23[2];
                v29 = v23[3];
                v31 = vmlaq_f64(v26, v30, v11[2]);
                v32 = vmlaq_f64(v26, v29, v11[3]);
                v33 = vmlaq_f64(v26, *v23, *v11);
                v34 = vmlaq_f64(vmlaq_f64(v26, v27, v11[1]), v24[1], v11[5]);
                v35 = vmlaq_f64(v33, *v24, v11[4]);
                v36 = vmlaq_f64(v32, v24[3], v11[7]);
                v37 = vmlaq_f64(v31, v24[2], v11[6]);
                v24[2] = v30;
                v24[3] = v29;
                *v24 = v28;
                v24[1] = v27;
                v24 += 4;
                v23[2] = v37;
                v23[3] = v36;
                *v23 = v35;
                v23[1] = v34;
                v23 += 4;
                --v21;
              }

              while (v21);
            }

            v18 += a6;
            ++v20;
          }

          while (v20 != v9);
        }

        v38 = *(this + 8);
        if (v38 >= 1)
        {
          v39 = *(this + 10) * (v7 & 0x7FFFFF);
          v40 = (v12 + (((v7 >> 22) & 0x1FE) << 6));
          v41 = *(this + 23);
          v42 = v13;
          v43 = v14;
          v44 = v41;
          v45 = *(this + 8);
          do
          {
            v46 = v43[2];
            v47 = v43[3];
            v48 = *v43;
            v49 = v43[1];
            v43 += 4;
            v50 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v40[4], v48), *v42, *v40), vmlaq_f64(vmulq_f64(v40[6], v46), v42[2], v40[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v40[5], v49), v42[1], v40[1]), vmlaq_f64(vmulq_f64(v40[7], v47), v42[3], v40[3]))));
            *v44++ = v50;
            v42 += 4;
            --v45;
          }

          while (v45);
          v51 = *(this + 26);
          v52 = v13;
          v53 = v14;
          v54 = v51;
          v55 = v38;
          do
          {
            v56 = v53[2];
            v57 = v53[3];
            v58 = *v53;
            v59 = v53[1];
            v53 += 4;
            v60 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v40[12], v58), *v52, v40[8]), vmlaq_f64(vmulq_f64(v40[14], v56), v52[2], v40[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v40[13], v59), v52[1], v40[9]), vmlaq_f64(vmulq_f64(v40[15], v57), v52[3], v40[11]))));
            *v54++ = v60;
            v52 += 4;
            --v55;
          }

          while (v55);
          v61 = a3;
          do
          {
            v62 = *v41++;
            v63 = v62;
            v64 = *v51++;
            v65 = v63 + (v39 * (v64 - v63));
            v66 = *v61++;
            *(v66 + 4 * v16) = v65;
            --v38;
          }

          while (v38);
        }

        v17 = (v17 + v9);
        v67 = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v15 + (v67 >> 31);
        v16 += a7;
      }

      v68 = v18;
    }

    v158 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v158)
      {
        v158 = v9;
      }

      if (v158 >= 1)
      {
        v159 = 0;
        v160 = a6;
        do
        {
          v161 = *(this + 8);
          if (v161 >= 1)
          {
            v162 = a2;
            v163 = v13;
            v164 = v14;
            do
            {
              v165 = *v162++;
              v166 = vdupq_lane_s64(COERCE__INT64(*(v165 + 4 * v68)), 0);
              v168 = *v163;
              v167 = v163[1];
              v170 = v163[2];
              v169 = v163[3];
              v171 = vmlaq_f64(v166, v170, v11[2]);
              v172 = vmlaq_f64(v166, v169, v11[3]);
              v173 = vmlaq_f64(v166, *v163, *v11);
              v174 = vmlaq_f64(vmlaq_f64(v166, v167, v11[1]), v164[1], v11[5]);
              v175 = vmlaq_f64(v173, *v164, v11[4]);
              v176 = vmlaq_f64(v172, v164[3], v11[7]);
              v177 = vmlaq_f64(v171, v164[2], v11[6]);
              v164[2] = v170;
              v164[3] = v169;
              *v164 = v168;
              v164[1] = v167;
              v164 += 4;
              v163[2] = v177;
              v163[3] = v176;
              *v163 = v175;
              v163[1] = v174;
              v163 += 4;
              --v161;
            }

            while (v161);
          }

          v68 += v160;
          ++v159;
        }

        while (v159 != v158);
      }

LABEL_67:
      v9 -= v158;
      v17 = (v158 + v17);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v157 = 0;
      v17 = 0;
    }

    else
    {
      v69 = 0;
      LODWORD(v17) = 0;
      v70 = 0;
      LODWORD(v71) = 0;
      do
      {
        if (v9 >= 1)
        {
          v72 = 0;
          v71 = v71;
          do
          {
            v73 = *(this + 8);
            v74 = (v73 - 1);
            v75 = v13;
            v76 = v14;
            if (v73 >= 2)
            {
              v77 = 0;
              v76 = v14;
              v75 = v13;
              do
              {
                v78 = &a2[v77];
                v79 = vdupq_lane_s64(COERCE__INT64((*v78)[v71]), 0);
                v80 = vdupq_lane_s64(COERCE__INT64(*(*(v78 + 1) + 4 * v71)), 0);
                v81 = *v75;
                v82 = v75[1];
                v83 = v75[2];
                v84 = v75[3];
                v85 = vmlaq_f64(vmlaq_f64(v79, *v75, *v11), *v76, v11[8]);
                v86 = vmlaq_f64(vmlaq_f64(v79, v82, v11[1]), v76[1], v11[9]);
                v87 = vmlaq_f64(vmlaq_f64(v79, v83, v11[2]), v76[2], v11[10]);
                v88 = vmlaq_f64(vmlaq_f64(v79, v84, v11[3]), v76[3], v11[11]);
                v76[2] = v83;
                v76[3] = v84;
                *v76 = v81;
                v76[1] = v82;
                v75[2] = v87;
                v75[3] = v88;
                *v75 = v85;
                v75[1] = v86;
                v89 = v75[4];
                v90 = v75[5];
                v91 = v75[6];
                v92 = v75[7];
                v93 = vmlaq_f64(vmlaq_f64(v80, v89, *v11), v76[4], v11[8]);
                v94 = vmlaq_f64(vmlaq_f64(v80, v90, v11[1]), v76[5], v11[9]);
                v95 = vmlaq_f64(vmlaq_f64(v80, v91, v11[2]), v76[6], v11[10]);
                v96 = vmlaq_f64(vmlaq_f64(v80, v92, v11[3]), v76[7], v11[11]);
                v76[4] = v89;
                v76[5] = v90;
                v76[6] = v91;
                v76[7] = v92;
                v75[6] = v95;
                v75[7] = v96;
                v75[4] = v93;
                v75[5] = v94;
                v98 = v75[8];
                v97 = v75[9];
                v100 = v75[10];
                v99 = v75[11];
                v101 = vmlaq_f64(v80, v100, v11[6]);
                v102 = vmlaq_f64(v79, v98, v11[4]);
                v103 = vmlaq_f64(vmlaq_f64(v79, v97, v11[5]), v76[9], v11[13]);
                v104 = vmlaq_f64(v102, v76[8], v11[12]);
                v105 = vmlaq_f64(vmlaq_f64(v80, v99, v11[7]), v76[11], v11[15]);
                v106 = vmlaq_f64(v101, v76[10], v11[14]);
                v76[8] = v98;
                v76[9] = v97;
                v76[10] = v100;
                v76[11] = v99;
                v75[10] = v106;
                v75[11] = v105;
                v75[8] = v104;
                v75[9] = v103;
                v75 += 12;
                v76 += 12;
                v77 += 2;
              }

              while (v77 < v74);
            }

            if (v73)
            {
              v107 = vdupq_lane_s64(COERCE__INT64(a2[v74][v71]), 0);
              v108 = *v75;
              v109 = v75[1];
              v110 = v75[2];
              v111 = v75[3];
              v112 = vmlaq_f64(vmlaq_f64(v107, *v75, *v11), *v76, v11[8]);
              v113 = vmlaq_f64(vmlaq_f64(v107, v109, v11[1]), v76[1], v11[9]);
              v114 = vmlaq_f64(vmlaq_f64(v107, v110, v11[2]), v76[2], v11[10]);
              v115 = vmlaq_f64(vmlaq_f64(v107, v111, v11[3]), v76[3], v11[11]);
              v76[2] = v110;
              v76[3] = v111;
              *v76 = v108;
              v76[1] = v109;
              v75[2] = v114;
              v75[3] = v115;
              *v75 = v112;
              v75[1] = v113;
              v117 = v75[4];
              v116 = v75[5];
              v119 = v75[6];
              v118 = v75[7];
              v120 = vmlaq_f64(v107, v117, v11[4]);
              v121 = vmlaq_f64(vmlaq_f64(0, v118, v11[7]), v76[7], v11[15]);
              v122 = vmlaq_f64(vmlaq_f64(0, v119, v11[6]), v76[6], v11[14]);
              v123 = vmlaq_f64(vmlaq_f64(v107, v116, v11[5]), v76[5], v11[13]);
              v124 = vmlaq_f64(v120, v76[4], v11[12]);
              v76[4] = v117;
              v76[5] = v116;
              v76[6] = v119;
              v76[7] = v118;
              v75[6] = v122;
              v75[7] = v121;
              v75[4] = v124;
              v75[5] = v123;
            }

            v71 += a6;
            ++v72;
          }

          while (v72 != v9);
        }

        v125 = *(this + 10);
        v126 = (v12 + (((v7 >> 21) & 0x3FC) << 6));
        v127 = *(this + 8);
        v128 = *(this + 23);
        v129 = v13;
        v130 = v14;
        v131 = (v127 - 1);
        if (v127 > 1)
        {
          v132 = 0;
          v133 = *(this + 23);
          v130 = v14;
          v129 = v13;
          do
          {
            v134 = v126[1];
            v135 = v126[3];
            v136 = v126[11];
            v137 = v126[9];
            *v133++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[8], *v130), *v129, *v126), vmlaq_f64(vmulq_f64(v126[10], v130[2]), v129[2], v126[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v137, v130[1]), v129[1], v134), vmlaq_f64(vmulq_f64(v136, v130[3]), v129[3], v135))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[8], v130[4]), v129[4], *v126), vmlaq_f64(vmulq_f64(v126[10], v130[6]), v129[6], v126[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v137, v130[5]), v129[5], v134), vmlaq_f64(vmulq_f64(v136, v130[7]), v129[7], v135)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[12], v130[8]), v129[8], v126[4]), vmlaq_f64(vmulq_f64(v126[13], v130[9]), v129[9], v126[5])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[14], v130[10]), v129[10], v126[6]), vmlaq_f64(vmulq_f64(v126[15], v130[11]), v129[11], v126[7])))));
            v129 += 12;
            v130 += 12;
            v132 += 2;
          }

          while (v132 < v131);
        }

        if (v127)
        {
          v138 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[8], *v130), *v129, *v126), vmlaq_f64(vmulq_f64(v126[10], v130[2]), v129[2], v126[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[9], v130[1]), v129[1], v126[1]), vmlaq_f64(vmulq_f64(v126[11], v130[3]), v129[3], v126[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[12], v130[4]), v129[4], v126[4]), vmlaq_f64(vmulq_f64(v126[14], v130[6]), v129[6], v126[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[13], v130[5]), v129[5], v126[5]), vmlaq_f64(vmulq_f64(v126[15], v130[7]), v129[7], v126[7])))));
          v128[v131] = v138;
        }

        v139 = *(this + 26);
        v140 = v13;
        v141 = v14;
        if (v127 >= 2)
        {
          v142 = 0;
          v143 = *(this + 26);
          v141 = v14;
          v140 = v13;
          do
          {
            v144 = v126[17];
            v145 = v126[19];
            v146 = v126[27];
            v147 = v126[25];
            *v143++ = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[24], *v141), *v140, v126[16]), vmlaq_f64(vmulq_f64(v126[26], v141[2]), v140[2], v126[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v147, v141[1]), v140[1], v144), vmlaq_f64(vmulq_f64(v146, v141[3]), v140[3], v145))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[24], v141[4]), v140[4], v126[16]), vmlaq_f64(vmulq_f64(v126[26], v141[6]), v140[6], v126[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v147, v141[5]), v140[5], v144), vmlaq_f64(vmulq_f64(v146, v141[7]), v140[7], v145)))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[28], v141[8]), v140[8], v126[20]), vmlaq_f64(vmulq_f64(v126[29], v141[9]), v140[9], v126[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[30], v141[10]), v140[10], v126[22]), vmlaq_f64(vmulq_f64(v126[31], v141[11]), v140[11], v126[23])))));
            v140 += 12;
            v141 += 12;
            v142 += 2;
          }

          while (v142 < v131);
        }

        if (v127)
        {
          v148 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[24], *v141), *v140, v126[16]), vmlaq_f64(vmulq_f64(v126[26], v141[2]), v140[2], v126[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[25], v141[1]), v140[1], v126[17]), vmlaq_f64(vmulq_f64(v126[27], v141[3]), v140[3], v126[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v126[28], v141[4]), v140[4], v126[20]), vmlaq_f64(vmulq_f64(v126[30], v141[6]), v140[6], v126[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v126[29], v141[5]), v140[5], v126[21]), vmlaq_f64(vmulq_f64(v126[31], v141[7]), v140[7], v126[23])))));
          v139[v131] = v148;
        }

        if (v127 >= 1)
        {
          v149 = v125 * (v7 & 0x7FFFFF);
          v150 = a3;
          do
          {
            v151 = *v128++;
            v152 = v151;
            v153 = *v139++;
            v154 = v152 + (v149 * (v153 - v152));
            v155 = *v150++;
            *(v155 + 4 * v69) = v154;
            --v127;
          }

          while (v127);
        }

        v17 = (v17 + v9);
        v156 = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v15 + (v156 >> 31);
        ++v70;
        v69 += a7;
      }

      while (v70 != a5);
      v157 = v71;
    }

    v158 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v158)
      {
        v158 = v9;
      }

      if (v158 >= 1)
      {
        v178 = 0;
        v179 = a6;
        do
        {
          v180 = *(this + 8);
          v181 = (v180 - 1);
          v182 = v13;
          v183 = v14;
          if (v180 >= 2)
          {
            v184 = 0;
            v183 = v14;
            v182 = v13;
            do
            {
              v185 = &a2[v184];
              v186 = vdupq_lane_s64(COERCE__INT64((*v185)[v157]), 0);
              v187 = vdupq_lane_s64(COERCE__INT64(*(*(v185 + 1) + 4 * v157)), 0);
              v188 = *v182;
              v189 = v182[1];
              v190 = v182[2];
              v191 = v182[3];
              v192 = vmlaq_f64(vmlaq_f64(v186, *v182, *v11), *v183, v11[8]);
              v193 = vmlaq_f64(vmlaq_f64(v186, v189, v11[1]), v183[1], v11[9]);
              v194 = vmlaq_f64(vmlaq_f64(v186, v190, v11[2]), v183[2], v11[10]);
              v195 = vmlaq_f64(vmlaq_f64(v186, v191, v11[3]), v183[3], v11[11]);
              v183[2] = v190;
              v183[3] = v191;
              *v183 = v188;
              v183[1] = v189;
              v182[2] = v194;
              v182[3] = v195;
              *v182 = v192;
              v182[1] = v193;
              v196 = v182[4];
              v197 = v182[5];
              v198 = v182[6];
              v199 = v182[7];
              v200 = vmlaq_f64(vmlaq_f64(v187, v196, *v11), v183[4], v11[8]);
              v201 = vmlaq_f64(vmlaq_f64(v187, v197, v11[1]), v183[5], v11[9]);
              v202 = vmlaq_f64(vmlaq_f64(v187, v198, v11[2]), v183[6], v11[10]);
              v203 = vmlaq_f64(vmlaq_f64(v187, v199, v11[3]), v183[7], v11[11]);
              v183[4] = v196;
              v183[5] = v197;
              v183[6] = v198;
              v183[7] = v199;
              v182[6] = v202;
              v182[7] = v203;
              v182[4] = v200;
              v182[5] = v201;
              v205 = v182[8];
              v204 = v182[9];
              v207 = v182[10];
              v206 = v182[11];
              v208 = vmlaq_f64(v187, v207, v11[6]);
              v209 = vmlaq_f64(v186, v205, v11[4]);
              v210 = vmlaq_f64(vmlaq_f64(v186, v204, v11[5]), v183[9], v11[13]);
              v211 = vmlaq_f64(v209, v183[8], v11[12]);
              v212 = vmlaq_f64(vmlaq_f64(v187, v206, v11[7]), v183[11], v11[15]);
              v213 = vmlaq_f64(v208, v183[10], v11[14]);
              v183[8] = v205;
              v183[9] = v204;
              v183[10] = v207;
              v183[11] = v206;
              v182[10] = v213;
              v182[11] = v212;
              v182[8] = v211;
              v182[9] = v210;
              v182 += 12;
              v183 += 12;
              v184 += 2;
            }

            while (v184 < v181);
          }

          if (v180)
          {
            v214 = vdupq_lane_s64(COERCE__INT64(a2[v181][v157]), 0);
            v215 = *v182;
            v216 = v182[1];
            v217 = v182[2];
            v218 = v182[3];
            v219 = vmlaq_f64(vmlaq_f64(v214, *v182, *v11), *v183, v11[8]);
            v220 = vmlaq_f64(vmlaq_f64(v214, v216, v11[1]), v183[1], v11[9]);
            v221 = vmlaq_f64(vmlaq_f64(v214, v217, v11[2]), v183[2], v11[10]);
            v222 = vmlaq_f64(vmlaq_f64(v214, v218, v11[3]), v183[3], v11[11]);
            v183[2] = v217;
            v183[3] = v218;
            *v183 = v215;
            v183[1] = v216;
            v182[2] = v221;
            v182[3] = v222;
            *v182 = v219;
            v182[1] = v220;
            v224 = v182[4];
            v223 = v182[5];
            v226 = v182[6];
            v225 = v182[7];
            v227 = vmlaq_f64(v214, v224, v11[4]);
            v228 = vmlaq_f64(vmlaq_f64(0, v225, v11[7]), v183[7], v11[15]);
            v229 = vmlaq_f64(vmlaq_f64(0, v226, v11[6]), v183[6], v11[14]);
            v230 = vmlaq_f64(vmlaq_f64(v214, v223, v11[5]), v183[5], v11[13]);
            v231 = vmlaq_f64(v227, v183[4], v11[12]);
            v183[4] = v224;
            v183[5] = v223;
            v183[6] = v226;
            v183[7] = v225;
            v182[6] = v229;
            v182[7] = v228;
            v182[4] = v231;
            v182[5] = v230;
          }

          v157 += v179;
          ++v178;
        }

        while (v178 != v158);
      }

      goto LABEL_67;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v17;
}

uint64_t RamstadSRC::processMultiInt(RamstadSRC *this, const float *const *a2, float *const *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(*this + 24);
  v11 = *(*this + 48);
  v12 = *(this + 11);
  v13 = *(this + 14);
  v14 = *(this + 9);
  v15 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v44 = 0;
      v17 = 0;
    }

    else
    {
      v16 = 0;
      LODWORD(v17) = 0;
      LODWORD(v18) = 0;
      for (i = 0; i != a5; ++i)
      {
        if (v9 >= 1)
        {
          v20 = 0;
          v18 = v18;
          do
          {
            v21 = *(this + 8);
            if (v21 >= 1)
            {
              v22 = a2;
              v23 = v12;
              v24 = v13;
              do
              {
                v25 = *v22++;
                v26 = (v25 + 4 * v18);
                v27 = vld1q_dup_f32(v26);
                v28 = v23[1];
                v29 = vmlaq_f32(v27, v28, v10[1]);
                v30 = vmlaq_f32(vmlaq_f32(v27, *v23, *v10), *v24, v10[2]);
                v31 = vmlaq_f32(v29, v24[1], v10[3]);
                *v24 = *v23;
                v24[1] = v28;
                v24 += 2;
                *v23 = v30;
                v23[1] = v31;
                v23 += 2;
                --v21;
              }

              while (v21);
            }

            v18 += a6;
            ++v20;
          }

          while (v20 != v9);
        }

        v32 = *(this + 8);
        if (v32 >= 1)
        {
          v33 = v12;
          v34 = v13;
          v35 = a3;
          do
          {
            v36 = *v33;
            v37 = v33[1];
            v33 += 2;
            v39 = *v34;
            v38 = v34[1];
            v34 += 2;
            v40 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v11 + 64 * v7 + 32), v39), v36, *(v11 + 64 * v7)), vmlaq_f32(vmulq_f32(*(v11 + 64 * v7 + 48), v38), v37, *(v11 + 64 * v7 + 16)));
            v41 = *v35++;
            *(v41 + 4 * v16) = vaddv_f32(vadd_f32(*v40.i8, *&vextq_s8(v40, v40, 8uLL)));
            --v32;
          }

          while (v32);
        }

        v17 = (v17 + v9);
        v42 = v7 + v8;
        if (v42 < v14)
        {
          v9 = v15;
        }

        else
        {
          v9 = v15 + 1;
        }

        if (v42 < v14)
        {
          v43 = 0;
        }

        else
        {
          v43 = v14;
        }

        v7 = v42 - v43;
        v16 += a7;
      }

      v44 = v18;
    }

    v103 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v103)
      {
        v103 = v9;
      }

      if (v103 >= 1)
      {
        v104 = 0;
        v105 = a6;
        do
        {
          v106 = *(this + 8);
          if (v106 >= 1)
          {
            v107 = a2;
            v108 = v12;
            v109 = v13;
            do
            {
              v110 = *v107++;
              v111 = (v110 + 4 * v44);
              v112 = vld1q_dup_f32(v111);
              v113 = v108[1];
              v114 = vmlaq_f32(v112, v113, v10[1]);
              v115 = vmlaq_f32(vmlaq_f32(v112, *v108, *v10), *v109, v10[2]);
              v116 = vmlaq_f32(v114, v109[1], v10[3]);
              *v109 = *v108;
              v109[1] = v113;
              v109 += 2;
              *v108 = v115;
              v108[1] = v116;
              v108 += 2;
              --v106;
            }

            while (v106);
          }

          v44 += v105;
          ++v104;
        }

        while (v104 != v103);
      }

LABEL_67:
      v9 -= v103;
      v17 = (v103 + v17);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v102 = 0;
      v17 = 0;
    }

    else
    {
      v45 = 0;
      LODWORD(v17) = 0;
      v46 = 0;
      LODWORD(v47) = 0;
      do
      {
        if (v9 >= 1)
        {
          v48 = 0;
          v47 = v47;
          do
          {
            v49 = *(this + 8);
            v50 = (v49 - 1);
            v51 = v12;
            v52 = v13;
            if (v49 >= 2)
            {
              v53 = 0;
              v52 = v13;
              v51 = v12;
              do
              {
                v54 = &a2[v53];
                v55 = &(*v54)[v47];
                v56 = (*(v54 + 1) + 4 * v47);
                v57 = vld1q_dup_f32(v55);
                v58 = vld1q_dup_f32(v56);
                v59 = v51[1];
                v60 = vmlaq_f32(vmlaq_f32(v57, *v51, *v10), *v52, v10[4]);
                v61 = vmlaq_f32(vmlaq_f32(v57, v59, v10[1]), v52[1], v10[5]);
                *v52 = *v51;
                v52[1] = v59;
                *v51 = v60;
                v51[1] = v61;
                v62 = v51[2];
                v63 = v51[3];
                v64 = vmlaq_f32(vmlaq_f32(v58, v62, *v10), v52[2], v10[4]);
                v65 = vmlaq_f32(vmlaq_f32(v58, v63, v10[1]), v52[3], v10[5]);
                v52[2] = v62;
                v52[3] = v63;
                v51[2] = v64;
                v51[3] = v65;
                v66 = v51[4];
                v67 = v51[5];
                v68 = vmlaq_f32(vmlaq_f32(v57, v66, v10[2]), v52[4], v10[6]);
                v69 = vmlaq_f32(vmlaq_f32(v58, v67, v10[3]), v52[5], v10[7]);
                v52[4] = v66;
                v52[5] = v67;
                v51[4] = v68;
                v51[5] = v69;
                v51 += 6;
                v52 += 6;
                v53 += 2;
              }

              while (v53 < v50);
            }

            if (v49)
            {
              v70 = &a2[v50][v47];
              v71 = vld1q_dup_f32(v70);
              v72 = v51[1];
              v73 = vmlaq_f32(vmlaq_f32(v71, *v51, *v10), *v52, v10[4]);
              v74 = vmlaq_f32(vmlaq_f32(v71, v72, v10[1]), v52[1], v10[5]);
              *v52 = *v51;
              v52[1] = v72;
              *v51 = v73;
              v51[1] = v74;
              v75 = v51[2];
              v76 = v51[3];
              v77 = vmlaq_f32(vmlaq_f32(0, v76, v10[3]), v52[3], v10[7]);
              v78 = vmlaq_f32(vmlaq_f32(v71, v75, v10[2]), v52[2], v10[6]);
              v52[2] = v75;
              v52[3] = v76;
              v51[2] = v78;
              v51[3] = v77;
            }

            v47 += a6;
            ++v48;
          }

          while (v48 != v9);
        }

        v79 = (v11 + 128 * v7);
        v80 = *(this + 8);
        v81 = v12;
        v82 = v13;
        v83 = (v80 - 1);
        if (v80 > 1)
        {
          v84 = 0;
          v82 = v13;
          v81 = v12;
          do
          {
            v85 = &a3[v84];
            v86 = v79[1];
            v88 = v79[4];
            v87 = v79[5];
            v89 = vmlaq_f32(vmulq_f32(v87, v82[1]), v81[1], v86);
            v90 = vmlaq_f32(vmulq_f32(v87, v82[3]), v81[3], v86);
            v92 = *v85;
            v91 = *(v85 + 1);
            v93 = vmlaq_f32(vmulq_f32(v79[7], v82[5]), v81[5], v79[3]);
            v94 = vmlaq_f32(vmulq_f32(v79[6], v82[4]), v81[4], v79[2]);
            v95 = vaddq_f32(vmlaq_f32(vmulq_f32(v88, *v82), *v81, *v79), v89);
            *v95.i8 = vadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
            v96 = vadd_f32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
            *v95.i8 = vadd_f32(vzip1_s32(*v95.i8, v96), vzip2_s32(*v95.i8, v96));
            v97 = vaddq_f32(vmlaq_f32(vmulq_f32(v88, v82[2]), v81[2], *v79), v90);
            *v97.i8 = vadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
            *v93.i8 = vadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
            v92[v45] = vaddv_f32(*v95.i8);
            *(v91 + 4 * v45) = vaddv_f32(vadd_f32(vzip1_s32(*v97.i8, *v93.i8), vzip2_s32(*v97.i8, *v93.i8)));
            v81 += 6;
            v82 += 6;
            v84 += 2;
          }

          while (v84 < v83);
        }

        if (v80)
        {
          v98 = vaddq_f32(vmlaq_f32(vmulq_f32(v79[4], *v82), *v81, *v79), vmlaq_f32(vmulq_f32(v79[5], v82[1]), v81[1], v79[1]));
          *v98.i8 = vadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
          v99 = vaddq_f32(vmlaq_f32(vmulq_f32(v79[6], v82[2]), v81[2], v79[2]), vmlaq_f32(vmulq_f32(v79[7], v82[3]), v81[3], v79[3]));
          *v99.i8 = vadd_f32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
          a3[v83][v45] = vaddv_f32(vadd_f32(vzip1_s32(*v98.i8, *v99.i8), vzip2_s32(*v98.i8, *v99.i8)));
        }

        v17 = (v17 + v9);
        v100 = v7 + v8;
        if (v100 < v14)
        {
          v9 = v15;
        }

        else
        {
          v9 = v15 + 1;
        }

        if (v100 < v14)
        {
          v101 = 0;
        }

        else
        {
          v101 = v14;
        }

        v7 = v100 - v101;
        ++v46;
        v45 += a7;
      }

      while (v46 != a5);
      v102 = v47;
    }

    v103 = a4 - v17;
    if (a4 > v17)
    {
      if (v9 < v103)
      {
        v103 = v9;
      }

      if (v103 >= 1)
      {
        v117 = 0;
        v118 = a6;
        do
        {
          v119 = *(this + 8);
          v120 = (v119 - 1);
          v121 = v12;
          v122 = v13;
          if (v119 >= 2)
          {
            v123 = 0;
            v122 = v13;
            v121 = v12;
            do
            {
              v124 = &a2[v123];
              v125 = &(*v124)[v102];
              v126 = (*(v124 + 1) + 4 * v102);
              v127 = vld1q_dup_f32(v125);
              v128 = vld1q_dup_f32(v126);
              v129 = v121[1];
              v130 = vmlaq_f32(vmlaq_f32(v127, *v121, *v10), *v122, v10[4]);
              v131 = vmlaq_f32(vmlaq_f32(v127, v129, v10[1]), v122[1], v10[5]);
              *v122 = *v121;
              v122[1] = v129;
              *v121 = v130;
              v121[1] = v131;
              v132 = v121[2];
              v133 = v121[3];
              v134 = vmlaq_f32(vmlaq_f32(v128, v132, *v10), v122[2], v10[4]);
              v135 = vmlaq_f32(vmlaq_f32(v128, v133, v10[1]), v122[3], v10[5]);
              v122[2] = v132;
              v122[3] = v133;
              v121[2] = v134;
              v121[3] = v135;
              v136 = v121[4];
              v137 = v121[5];
              v138 = vmlaq_f32(vmlaq_f32(v127, v136, v10[2]), v122[4], v10[6]);
              v139 = vmlaq_f32(vmlaq_f32(v128, v137, v10[3]), v122[5], v10[7]);
              v122[4] = v136;
              v122[5] = v137;
              v121[4] = v138;
              v121[5] = v139;
              v121 += 6;
              v122 += 6;
              v123 += 2;
            }

            while (v123 < v120);
          }

          if (v119)
          {
            v140 = &a2[v120][v102];
            v141 = vld1q_dup_f32(v140);
            v142 = v121[1];
            v143 = vmlaq_f32(vmlaq_f32(v141, *v121, *v10), *v122, v10[4]);
            v144 = vmlaq_f32(vmlaq_f32(v141, v142, v10[1]), v122[1], v10[5]);
            *v122 = *v121;
            v122[1] = v142;
            *v121 = v143;
            v121[1] = v144;
            v145 = v121[2];
            v146 = v121[3];
            v147 = vmlaq_f32(vmlaq_f32(0, v146, v10[3]), v122[3], v10[7]);
            v148 = vmlaq_f32(vmlaq_f32(v141, v145, v10[2]), v122[2], v10[6]);
            v122[2] = v145;
            v122[3] = v146;
            v121[2] = v148;
            v121[3] = v147;
          }

          v102 += v118;
          ++v117;
        }

        while (v117 != v103);
      }

      goto LABEL_67;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v17;
}

uint64_t RamstadSRC::processMultiFrac(RamstadSRC *this, const float *const *a2, float *const *a3, int a4, int a5, int a6, int a7)
{
  v8 = *(this + 13);
  v7 = *(this + 14);
  v9 = *(this + 18);
  v10 = *(*this + 24);
  v11 = *(*this + 48);
  v12 = *(this + 11);
  v13 = *(this + 14);
  v14 = *(this + 11);
  if (*(this + 10) == 8)
  {
    if (a5 < 1)
    {
      v61 = 0;
      v16 = 0;
    }

    else
    {
      v15 = 0;
      LODWORD(v16) = 0;
      LODWORD(v17) = 0;
      for (i = 0; i != a5; ++i)
      {
        if (v9 >= 1)
        {
          v19 = 0;
          v17 = v17;
          do
          {
            v20 = *(this + 8);
            if (v20 >= 1)
            {
              v21 = a2;
              v22 = v12;
              v23 = v13;
              do
              {
                v24 = *v21++;
                v25 = (v24 + 4 * v17);
                v26 = vld1q_dup_f32(v25);
                v27 = v22[1];
                v28 = vmlaq_f32(v26, v27, v10[1]);
                v29 = vmlaq_f32(vmlaq_f32(v26, *v22, *v10), *v23, v10[2]);
                v30 = vmlaq_f32(v28, v23[1], v10[3]);
                *v23 = *v22;
                v23[1] = v27;
                v23 += 2;
                *v22 = v29;
                v22[1] = v30;
                v22 += 2;
                --v20;
              }

              while (v20);
            }

            v17 += a6;
            ++v19;
          }

          while (v19 != v9);
        }

        v31 = *(this + 8);
        if (v31 >= 1)
        {
          v32 = *(this + 10) * (v7 & 0x7FFFFF);
          v33 = (v11 + 32 * ((v7 >> 22) & 0x1FE));
          v34 = *(this + 23);
          v35 = v12;
          v36 = v13;
          v37 = v34;
          v38 = *(this + 8);
          do
          {
            v39 = *v35;
            v40 = v35[1];
            v35 += 2;
            v42 = *v36;
            v41 = v36[1];
            v36 += 2;
            v43 = vaddq_f32(vmlaq_f32(vmulq_f32(v33[2], v42), v39, *v33), vmlaq_f32(vmulq_f32(v33[3], v41), v40, v33[1]));
            *v37++ = vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)));
            --v38;
          }

          while (v38);
          v44 = *(this + 26);
          v45 = v12;
          v46 = v13;
          v47 = v44;
          v48 = v31;
          do
          {
            v49 = *v45;
            v50 = v45[1];
            v45 += 2;
            v52 = *v46;
            v51 = v46[1];
            v46 += 2;
            v53 = vaddq_f32(vmlaq_f32(vmulq_f32(v33[6], v52), v49, v33[4]), vmlaq_f32(vmulq_f32(v33[7], v51), v50, v33[5]));
            *v47++ = vaddv_f32(vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL)));
            --v48;
          }

          while (v48);
          v54 = a3;
          do
          {
            v55 = *v34++;
            v56 = v55;
            v57 = *v44++;
            v58 = v56 + (v32 * (v57 - v56));
            v59 = *v54++;
            *(v59 + 4 * v15) = v58;
            --v31;
          }

          while (v31);
        }

        v16 = (v16 + v9);
        v60 = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v14 + (v60 >> 31);
        v15 += a7;
      }

      v61 = v17;
    }

    v144 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v144)
      {
        v144 = v9;
      }

      if (v144 >= 1)
      {
        v145 = 0;
        v146 = a6;
        do
        {
          v147 = *(this + 8);
          if (v147 >= 1)
          {
            v148 = a2;
            v149 = v12;
            v150 = v13;
            do
            {
              v151 = *v148++;
              v152 = (v151 + 4 * v61);
              v153 = vld1q_dup_f32(v152);
              v154 = v149[1];
              v155 = vmlaq_f32(v153, v154, v10[1]);
              v156 = vmlaq_f32(vmlaq_f32(v153, *v149, *v10), *v150, v10[2]);
              v157 = vmlaq_f32(v155, v150[1], v10[3]);
              *v150 = *v149;
              v150[1] = v154;
              v150 += 2;
              *v149 = v156;
              v149[1] = v157;
              v149 += 2;
              --v147;
            }

            while (v147);
          }

          v61 += v146;
          ++v145;
        }

        while (v145 != v144);
      }

LABEL_67:
      v9 -= v144;
      v16 = (v144 + v16);
    }
  }

  else
  {
    if (a5 < 1)
    {
      v143 = 0;
      v16 = 0;
    }

    else
    {
      v62 = 0;
      LODWORD(v16) = 0;
      v63 = 0;
      LODWORD(v64) = 0;
      do
      {
        if (v9 >= 1)
        {
          v65 = 0;
          v64 = v64;
          do
          {
            v66 = *(this + 8);
            v67 = (v66 - 1);
            v68 = v12;
            v69 = v13;
            if (v66 >= 2)
            {
              v70 = 0;
              v69 = v13;
              v68 = v12;
              do
              {
                v71 = &a2[v70];
                v72 = &(*v71)[v64];
                v73 = (*(v71 + 1) + 4 * v64);
                v74 = vld1q_dup_f32(v72);
                v75 = vld1q_dup_f32(v73);
                v76 = v68[1];
                v77 = vmlaq_f32(vmlaq_f32(v74, *v68, *v10), *v69, v10[4]);
                v78 = vmlaq_f32(vmlaq_f32(v74, v76, v10[1]), v69[1], v10[5]);
                *v69 = *v68;
                v69[1] = v76;
                *v68 = v77;
                v68[1] = v78;
                v79 = v68[2];
                v80 = v68[3];
                v81 = vmlaq_f32(vmlaq_f32(v75, v79, *v10), v69[2], v10[4]);
                v82 = vmlaq_f32(vmlaq_f32(v75, v80, v10[1]), v69[3], v10[5]);
                v69[2] = v79;
                v69[3] = v80;
                v68[2] = v81;
                v68[3] = v82;
                v83 = v68[4];
                v84 = v68[5];
                v85 = vmlaq_f32(vmlaq_f32(v74, v83, v10[2]), v69[4], v10[6]);
                v86 = vmlaq_f32(vmlaq_f32(v75, v84, v10[3]), v69[5], v10[7]);
                v69[4] = v83;
                v69[5] = v84;
                v68[4] = v85;
                v68[5] = v86;
                v68 += 6;
                v69 += 6;
                v70 += 2;
              }

              while (v70 < v67);
            }

            if (v66)
            {
              v87 = &a2[v67][v64];
              v88 = vld1q_dup_f32(v87);
              v89 = v68[1];
              v90 = vmlaq_f32(vmlaq_f32(v88, *v68, *v10), *v69, v10[4]);
              v91 = vmlaq_f32(vmlaq_f32(v88, v89, v10[1]), v69[1], v10[5]);
              *v69 = *v68;
              v69[1] = v89;
              *v68 = v90;
              v68[1] = v91;
              v92 = v68[2];
              v93 = v68[3];
              v94 = vmlaq_f32(vmlaq_f32(0, v93, v10[3]), v69[3], v10[7]);
              v95 = vmlaq_f32(vmlaq_f32(v88, v92, v10[2]), v69[2], v10[6]);
              v69[2] = v92;
              v69[3] = v93;
              v68[2] = v95;
              v68[3] = v94;
            }

            v64 += a6;
            ++v65;
          }

          while (v65 != v9);
        }

        v96 = *(this + 10);
        v97 = (v11 + 32 * ((v7 >> 21) & 0x3FC));
        v98 = *(this + 8);
        v99 = *(this + 23);
        v100 = v12;
        v101 = v13;
        v102 = (v98 - 1);
        if (v98 > 1)
        {
          v103 = 0;
          v104 = *(this + 23);
          v101 = v13;
          v100 = v12;
          do
          {
            v105 = v97[1];
            v107 = v97[4];
            v106 = v97[5];
            v108 = vmlaq_f32(vmulq_f32(v106, v101[1]), v100[1], v105);
            v109 = vmlaq_f32(vmulq_f32(v106, v101[3]), v100[3], v105);
            v110 = vmlaq_f32(vmulq_f32(v97[7], v101[5]), v100[5], v97[3]);
            v111 = vmlaq_f32(vmulq_f32(v97[6], v101[4]), v100[4], v97[2]);
            v112 = vaddq_f32(vmlaq_f32(vmulq_f32(v107, *v101), *v100, *v97), v108);
            *v111.i8 = vadd_f32(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
            *v112.i8 = vadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
            v113 = vaddq_f32(vmlaq_f32(vmulq_f32(v107, v101[2]), v100[2], *v97), v109);
            *v113.i8 = vadd_f32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
            *v110.i8 = vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL));
            *v104++ = vadd_f32(vadd_f32(vzip1_s32(*v112.i8, *v113.i8), vzip2_s32(*v112.i8, *v113.i8)), vadd_f32(vzip1_s32(*v111.i8, *v110.i8), vzip2_s32(*v111.i8, *v110.i8)));
            v100 += 6;
            v101 += 6;
            v103 += 2;
          }

          while (v103 < v102);
        }

        if (v98)
        {
          v114 = vaddq_f32(vmlaq_f32(vmulq_f32(v97[4], *v101), *v100, *v97), vmlaq_f32(vmulq_f32(v97[5], v101[1]), v100[1], v97[1]));
          *v114.i8 = vadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
          v115 = vaddq_f32(vmlaq_f32(vmulq_f32(v97[6], v101[2]), v100[2], v97[2]), vmlaq_f32(vmulq_f32(v97[7], v101[3]), v100[3], v97[3]));
          *v115.i8 = vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
          v99[v102] = vaddv_f32(vadd_f32(vzip1_s32(*v114.i8, *v115.i8), vzip2_s32(*v114.i8, *v115.i8)));
        }

        v116 = *(this + 26);
        v117 = v12;
        v118 = v13;
        if (v98 >= 2)
        {
          v119 = 0;
          v120 = *(this + 26);
          v118 = v13;
          v117 = v12;
          do
          {
            v121 = v97[8];
            v122 = v97[9];
            v124 = v97[12];
            v123 = v97[13];
            v125 = vmlaq_f32(vmulq_f32(v123, v118[1]), v117[1], v122);
            v126 = vmlaq_f32(vmulq_f32(v124, *v118), *v117, v121);
            v127 = vmlaq_f32(vmulq_f32(v123, v118[3]), v117[3], v122);
            v128 = vmlaq_f32(vmulq_f32(v124, v118[2]), v117[2], v121);
            v129 = vmlaq_f32(vmulq_f32(v97[15], v118[5]), v117[5], v97[11]);
            v130 = vmlaq_f32(vmulq_f32(v97[14], v118[4]), v117[4], v97[10]);
            v131 = vaddq_f32(v126, v125);
            *v130.i8 = vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
            *v131.i8 = vadd_f32(*v131.i8, *&vextq_s8(v131, v131, 8uLL));
            v132 = vaddq_f32(v128, v127);
            *v132.i8 = vadd_f32(*v132.i8, *&vextq_s8(v132, v132, 8uLL));
            *v129.i8 = vadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
            *v120++ = vadd_f32(vadd_f32(vzip1_s32(*v131.i8, *v132.i8), vzip2_s32(*v131.i8, *v132.i8)), vadd_f32(vzip1_s32(*v130.i8, *v129.i8), vzip2_s32(*v130.i8, *v129.i8)));
            v117 += 6;
            v118 += 6;
            v119 += 2;
          }

          while (v119 < v102);
        }

        if (v98)
        {
          v133 = vaddq_f32(vmlaq_f32(vmulq_f32(v97[12], *v118), *v117, v97[8]), vmlaq_f32(vmulq_f32(v97[13], v118[1]), v117[1], v97[9]));
          *v133.i8 = vadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
          v134 = vaddq_f32(vmlaq_f32(vmulq_f32(v97[14], v118[2]), v117[2], v97[10]), vmlaq_f32(vmulq_f32(v97[15], v118[3]), v117[3], v97[11]));
          *v134.i8 = vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL));
          v116[v102] = vaddv_f32(vadd_f32(vzip1_s32(*v133.i8, *v134.i8), vzip2_s32(*v133.i8, *v134.i8)));
        }

        if (v98 >= 1)
        {
          v135 = v96 * (v7 & 0x7FFFFF);
          v136 = a3;
          do
          {
            v137 = *v99++;
            v138 = v137;
            v139 = *v116++;
            v140 = v138 + (v135 * (v139 - v138));
            v141 = *v136++;
            *(v141 + 4 * v62) = v140;
            --v98;
          }

          while (v98);
        }

        v16 = (v16 + v9);
        v142 = v7 + v8;
        v7 = (v7 + v8) & 0x7FFFFFFF;
        v9 = v14 + (v142 >> 31);
        ++v63;
        v62 += a7;
      }

      while (v63 != a5);
      v143 = v64;
    }

    v144 = a4 - v16;
    if (a4 > v16)
    {
      if (v9 < v144)
      {
        v144 = v9;
      }

      if (v144 >= 1)
      {
        v158 = 0;
        v159 = a6;
        do
        {
          v160 = *(this + 8);
          v161 = (v160 - 1);
          v162 = v12;
          v163 = v13;
          if (v160 >= 2)
          {
            v164 = 0;
            v163 = v13;
            v162 = v12;
            do
            {
              v165 = &a2[v164];
              v166 = &(*v165)[v143];
              v167 = (*(v165 + 1) + 4 * v143);
              v168 = vld1q_dup_f32(v166);
              v169 = vld1q_dup_f32(v167);
              v170 = v162[1];
              v171 = vmlaq_f32(vmlaq_f32(v168, *v162, *v10), *v163, v10[4]);
              v172 = vmlaq_f32(vmlaq_f32(v168, v170, v10[1]), v163[1], v10[5]);
              *v163 = *v162;
              v163[1] = v170;
              *v162 = v171;
              v162[1] = v172;
              v173 = v162[2];
              v174 = v162[3];
              v175 = vmlaq_f32(vmlaq_f32(v169, v173, *v10), v163[2], v10[4]);
              v176 = vmlaq_f32(vmlaq_f32(v169, v174, v10[1]), v163[3], v10[5]);
              v163[2] = v173;
              v163[3] = v174;
              v162[2] = v175;
              v162[3] = v176;
              v177 = v162[4];
              v178 = v162[5];
              v179 = vmlaq_f32(vmlaq_f32(v168, v177, v10[2]), v163[4], v10[6]);
              v180 = vmlaq_f32(vmlaq_f32(v169, v178, v10[3]), v163[5], v10[7]);
              v163[4] = v177;
              v163[5] = v178;
              v162[4] = v179;
              v162[5] = v180;
              v162 += 6;
              v163 += 6;
              v164 += 2;
            }

            while (v164 < v161);
          }

          if (v160)
          {
            v181 = &a2[v161][v143];
            v182 = vld1q_dup_f32(v181);
            v183 = v162[1];
            v184 = vmlaq_f32(vmlaq_f32(v182, *v162, *v10), *v163, v10[4]);
            v185 = vmlaq_f32(vmlaq_f32(v182, v183, v10[1]), v163[1], v10[5]);
            *v163 = *v162;
            v163[1] = v183;
            *v162 = v184;
            v162[1] = v185;
            v186 = v162[2];
            v187 = v162[3];
            v188 = vmlaq_f32(vmlaq_f32(0, v187, v10[3]), v163[3], v10[7]);
            v189 = vmlaq_f32(vmlaq_f32(v182, v186, v10[2]), v163[2], v10[6]);
            v163[2] = v186;
            v163[3] = v187;
            v162[2] = v189;
            v162[3] = v188;
          }

          v143 += v159;
          ++v158;
        }

        while (v158 != v144);
      }

      goto LABEL_67;
    }
  }

  *(this + 14) = v7;
  *(this + 18) = v9;
  return v16;
}

double RamstadSRC::latencySeconds(RamstadSRC *this)
{
  v1 = *(this + 3);
  v2 = *(this + 2) / v1;
  v3 = *(this + 10) == 8;
  if (v2 >= 1.0)
  {
    v4 = dbl_241642F40[*(this + 10) == 8];
  }

  else
  {
    v4 = dbl_241642F30[*(this + 10) == 8] / v2;
  }

  return v4 / v1;
}

double RamstadSRC::latencySamples(RamstadSRC *this)
{
  v1 = *(this + 10) == 8;
  v2 = *(this + 2) / *(this + 3);
  if (v2 >= 1.0)
  {
    return dbl_241642F40[*(this + 10) == 8];
  }

  else
  {
    return dbl_241642F30[*(this + 10) == 8] / v2;
  }
}

uint64_t RamstadSRC::inputSamplesForOutputSamples(RamstadSRC *this, int a2)
{
  v2 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  v3 = *(this + 18);
  if (*(this + 76) == 1)
  {
    v4 = ((*(this + 14) + *(this + 12) * v2) / *(this + 9) + v3);
  }

  else
  {
    v4 = v3 + ((*(this + 14) + *(this + 8) * v2) >> 31);
  }

  *(this + 58) = v4;
  *(this + 59) = v4;
  *(this + 60) = a2;
  return v4;
}

uint64_t RamstadSRC::outputSamplesForInputSamples(RamstadSRC *this, int a2, int *a3)
{
  *a3 = 0;
  v5 = *(this + 18);
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if (v7 < 0 != v6)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    if (*(this + 76) == 1)
    {
      v11 = *(this + 9) * v7;
      v12 = *(this + 14);
      v13 = *(this + 12);
    }

    else
    {
      v12 = v7 << 31;
      v11 = *(this + 14);
      v13 = *(this + 8);
    }

    v14 = (v12 + v11 + v13 - 1) / v13;
    v9 = (v14 + 1);
    if ((v14 & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      while (1)
      {
        v8 = RamstadSRC::inputSamplesForOutputSamples(this, v9);
        if (v8 <= a2)
        {
          break;
        }

        v6 = __OFSUB__(v9, 1);
        v9 = (v9 - 1);
        if ((v9 < 0) ^ v6 | (v9 == 0))
        {
          v8 = *a3;
          goto LABEL_14;
        }
      }

      *a3 = v8;
    }
  }

LABEL_14:
  *(this + 58) = v8;
  *(this + 59) = a2;
  *(this + 60) = v9;
  return v9;
}

void RamstadKernelFactoryD::~RamstadKernelFactoryD(RamstadKernelFactoryD *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void RamstadKernelFactoryD::RamstadKernelFactoryD(RamstadKernelFactoryD *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<RamstadKernelD *>::reserve(this, 0x20uLL);
}

void sub_24161FC74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<RamstadKernelD *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>(result, a2);
    }

    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void RamstadKernelFactory::~RamstadKernelFactory(RamstadKernelFactory *this)
{
  v2 = *this;
  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void RamstadKernelFactory::RamstadKernelFactory(RamstadKernelFactory *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<RamstadKernelD *>::reserve(this, 0x20uLL);
}

void sub_24161FD98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv8_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv8_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x245CEBEA0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t ASDBufferList::setBufferListFromData(ASDBufferList *this, void *a2, int a3)
{
  if (!a2)
  {
    ASDBufferList::setBufferListFromData();
  }

  if (*(*(this + 5) + 24) != 1)
  {
    ASDBufferList::setBufferListFromData();
  }

  v4 = *(this + 6) * a3;
  v5 = *(this + 5);

  return CABufferList::SetBytes(v5, v4, a2);
}

uint64_t CABufferList::SetBytes(uint64_t this, int a2, void *a3)
{
  if (*(this + 8))
  {
    CABufferList::AllocateBuffersAndCopyFrom();
  }

  else if (*(this + 24) == 1)
  {
    *(this + 36) = a2;
    *(this + 40) = a3;
    return this;
  }

  v3 = CABufferList::SetBytes();
  return CABufferList::New(v3, v4, v5);
}

void *CABufferList::New(CABufferList *this, const char *a2, const CAStreamBasicDescription *a3)
{
  v4 = *(a2 + 3);
  v5 = *(a2 + 7);
  if ((v4 & 0x20) != 0)
  {
    v6 = *(a2 + 7);
  }

  else
  {
    v6 = 1;
  }

  if ((v4 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a2 + 7);
  }

  result = operator new(16 * v6 + 32);
  *result = this;
  result[1] = 0;
  *(result + 4) = 0;
  *(result + 6) = v6;
  if (v6)
  {
    v9 = (result + 4);
    do
    {
      *v9 = v7;
      *(v9 + 1) = 0;
      *(v9 + 1) = 0;
      v9 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241627DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2416280EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CALog::setNumberSubscopeBits(uint64_t this)
{
  CALog::sNumberScopeBits = 64 - this;
  CALog::sScopeMask = ~(-1 << -this);
  CALog::sSubscopeMask = -1 << -this;
  return this;
}

uint64_t CALog::Instance(CALog *this)
{
  if (atomic_load_explicit(&CALog::Instance(void)::onceflag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&CALog::Instance(void)::onceflag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<CALog::Instance(void)::$_0 &&>>);
  }

  return CALog::Instance(void)::instance;
}

uint64_t CALog::Scope::SetScopePriorityThreshold(uint64_t this, int a2)
{
  if (a2 >= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = a2;
  }

  if ((*(this + 48) & 0x20) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2;
  }

  *(this + 8) = v3;
  return this;
}

CALog::Scope *CALog::Scope::Scope(CALog::Scope *this, int a2, uint64_t a3, const char *category, const char *subsystem, const char *a6, int a7)
{
  *(this + 2) = 3;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 64) = 0;
  if (a2)
  {
    v13 = MEMORY[0x277D86220];
    if (category && subsystem)
    {
      v13 = os_log_create(subsystem, category);
    }

    *this = v13;
    gUseOSLogInDefaultScope = 1;
  }

  else
  {
    *this = 0;
  }

  v14 = CFStringCreateWithCString(0, subsystem, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a6, 0x8000100u);
  CALog::Scope::init(this, a3, category, v14, v15, a7);
  CFRelease(v14);
  CFRelease(v15);
  return this;
}

uint64_t CALog::Scope::init(CALog::Scope *this, uint64_t a2, const char *a3, CFTypeRef cf, void *a5, int a6)
{
  v24[4] = *MEMORY[0x277D85DE8];
  *(this + 3) = a3;
  *(this + 4) = cf;
  *(this + 5) = a5;
  *(this + 12) = a6;
  if (cf)
  {
    CFRetain(cf);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  *(this + 15) = 0;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  pthread_rwlock_wrlock(&sLock);
  v10 = gScopes;
  if (!gScopes)
  {
    operator new();
  }

  v12 = *(gScopes + 8);
  v11 = *(gScopes + 16);
  if (v12 >= v11)
  {
    v14 = (v12 - *gScopes) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
    }

    v16 = v11 - *gScopes;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,CALog::Scope *>>>(gScopes, v17);
    }

    v18 = (16 * v14);
    *v18 = a2;
    v18[1] = this;
    v13 = 16 * v14 + 16;
    v19 = *(v10 + 8) - *v10;
    v20 = v18 - v19;
    memcpy(v18 - v19, *v10, v19);
    v21 = *v10;
    *v10 = v20;
    *(v10 + 8) = v13;
    *(v10 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v12 = a2;
    v12[1] = this;
    v13 = (v12 + 2);
  }

  *(v10 + 8) = v13;
  result = pthread_rwlock_unlock(&sLock);
  if (cf)
  {
    v24[0] = &unk_2853445A0;
    v24[1] = this;
    v24[3] = v24;
    CASmartPreferences::AddHandler<int>(a5, cf, PrefValueToPriority, v24);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}