@interface VideoReaderRand
- (id).cxx_construct;
- (id)initFromFile:(id)file frameTimes:(const void *)times;
- (id)initFromFile:(id)file withParams:(id)params;
- (int)getFrameAtTime:(id *)time frame:(opaqueCMSampleBuffer *)frame rawFrameIndex:(unsigned int *)index;
- (int)indexForTime:(id *)time;
- (int)reset;
@end

@implementation VideoReaderRand

- (id)initFromFile:(id)file frameTimes:(const void *)times
{
  fileCopy = file;
  v12.receiver = self;
  v12.super_class = VideoReaderRand;
  v7 = [(VideoReader *)&v12 initFromFile:fileCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7 + 40;
    if (v7 + 40 != times)
    {
      sub_2418DF350(v7 + 40, *times, *(times + 1), 0xAAAAAAAAAAAAAAABLL * ((*(times + 1) - *times) >> 3));
    }

    v8[87] = -1431655765 * ((v9[1] - *v9) >> 3);
    v8[86] = -1;
    [v8 setReadAheadEnable:0];
    v10 = v8;
  }

  return v8;
}

- (id)initFromFile:(id)file withParams:(id)params
{
  fileCopy = file;
  paramsCopy = params;
  v8 = -[VideoReaderRand initFromFile:frameTimes:](self, "initFromFile:frameTimes:", fileCopy, [paramsCopy frameTimes]);

  return v8;
}

- (int)reset
{
  self->_lastFrameDex = -1;
  v3.receiver = self;
  v3.super_class = VideoReaderRand;
  return [(VideoReader *)&v3 reset];
}

- (int)indexForTime:(id *)time
{
  time1 = *time;
  begin = self->_frameTimes.__begin_;
  v6 = *(begin + 2);
  *&v19.var0 = *begin;
  v19.var3 = v6;
  if (CMTimeCompare(&time1, &v19) < 0)
  {
    LODWORD(v11) = -1;
  }

  else
  {
    lastFrameDex = self->_lastFrameDex;
    if ((lastFrameDex & 0x80000000) != 0 || (time1 = *time, v8 = self->_frameTimes.__begin_ + 24 * lastFrameDex, v9 = *(v8 + 2), *&v19.var0 = *v8, v19.var3 = v9, CMTimeCompare(&time1, &v19) < 1))
    {
      v10 = 0;
    }

    else
    {
      v10 = self->_lastFrameDex;
    }

    LODWORD(v11) = self->_numFrames - 1;
    if (v10 < v11)
    {
      v11 = v10;
      for (i = 24 * v10; ; i += 24)
      {
        v13 = self->_frameTimes.__begin_ + i;
        v14 = *(v13 + 2);
        *&time1.value = *v13;
        time1.epoch = v14;
        v19 = *time;
        if (CMTimeCompare(&time1, &v19) <= 0)
        {
          *&time1.value = *&time->var0;
          v15 = self->_frameTimes.__begin_;
          time1.epoch = time->var3;
          v16 = v15 + i;
          v17 = *(v15 + i + 40);
          *&v19.var0 = *(v16 + 24);
          v19.var3 = v17;
          if (CMTimeCompare(&time1, &v19) < 0)
          {
            break;
          }
        }

        if (++v11 >= self->_numFrames - 1)
        {
          LODWORD(v11) = self->_numFrames - 1;
          return v11;
        }
      }
    }
  }

  return v11;
}

- (int)getFrameAtTime:(id *)time frame:(opaqueCMSampleBuffer *)frame rawFrameIndex:(unsigned int *)index
{
  v20 = *time;
  v8 = [(VideoReaderRand *)self indexForTime:&v20];
  if ((v8 & 0x80000000) != 0)
  {
    return 3;
  }

  v9 = v8;
  begin = self->_frameTimes.__begin_;
  v20 = *(begin + v8);
  lastFrameDex = self->_lastFrameDex;
  if ((lastFrameDex & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  time1 = v20;
  v12 = begin + 24 * lastFrameDex;
  v13 = *v12;
  time2.epoch = *(v12 + 2);
  *&time2.value = v13;
  if (CMTimeCompare(&time1, &time2) < 1 || (v14 = self->_lastFrameDex, v9 >= v14 + 5))
  {
    [(VideoReaderRand *)self reset];
    v14 = self->_lastFrameDex;
  }

  if (v14 < 0)
  {
LABEL_7:
    time1 = v20;
    [(VideoReader *)self setReadStartT:&time1];
    self->_lastFrameDex = v9 - 1;
  }

  v15 = 7;
  while (1)
  {
    result = [(VideoReader *)self getFrameAsSampleBuf:frame];
    if (result)
    {
      break;
    }

    [(VideoReader *)self lastPresentationTime];
    time2 = v20;
    result = CMTimeCompare(&time1, &time2);
    if (result >= 1)
    {
      NSLog(&cfstr_Videoreaderran.isa);
      return 3;
    }

    v17 = self->_lastFrameDex + 1;
    self->_lastFrameDex = v17;
    if (!result)
    {
      *index = v17;
      return result;
    }

    if (!--v15)
    {
      NSLog(&cfstr_Videoreaderran_0.isa, 7);
      return 3;
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 41) = 0;
  *(self + 42) = 0;
  *(self + 40) = 0;
  return self;
}

@end