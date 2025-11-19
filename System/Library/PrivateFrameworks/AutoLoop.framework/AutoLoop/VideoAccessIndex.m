@interface VideoAccessIndex
- (id).cxx_construct;
- (id)initFromFile:(id)a3 pixelFormat:(unsigned int)a4 frameTimes:(const void *)a5;
- (int)getFrameAtIndex:(unsigned int)a3 pixBuf:(__CVBuffer *)a4;
@end

@implementation VideoAccessIndex

- (id)initFromFile:(id)a3 pixelFormat:(unsigned int)a4 frameTimes:(const void *)a5
{
  v6 = *&a4;
  v8 = a3;
  v19.receiver = self;
  v19.super_class = VideoAccessIndex;
  v9 = [(VideoAccessIndex *)&v19 init];
  if (v9)
  {
    v10 = [[VideoReaderRand alloc] initFromFile:v8 frameTimes:a5];
    readerRand = v9->readerRand;
    v9->readerRand = v10;

    v12 = v9->readerRand;
    if (!v12)
    {
      v17 = 0;
      goto LABEL_8;
    }

    [(VideoReader *)v12 setPixelFormatOptions:v6];
    if (&v9->mFrameTimes != a5)
    {
      sub_2418DF350(&v9->mFrameTimes.__begin_, *a5, *(a5 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3));
    }

    v9->numFrames = -1431655765 * ((v9->mFrameTimes.__end_ - v9->mFrameTimes.__begin_) >> 3);
    v13 = [(VideoReader *)v9->readerRand videoTrack];
    videoTrack = v9->videoTrack;
    v9->videoTrack = v13;

    v15 = [(VideoReader *)v9->readerRand asset];
    asset = v9->asset;
    v9->asset = v15;
  }

  v17 = v9;
LABEL_8:

  return v17;
}

- (int)getFrameAtIndex:(unsigned int)a3 pixBuf:(__CVBuffer *)a4
{
  if (self->numFrames < a3)
  {
    return 4;
  }

  v6 = self->mFrameTimes.__begin_ + 24 * a3;
  v14 = *v6;
  v15 = *(v6 + 2);
  v13 = 0;
  sbuf = 0;
  readerRand = self->readerRand;
  v10 = v14;
  v11 = v15;
  v4 = [(VideoReaderRand *)readerRand getFrameAtTime:&v10 frame:&sbuf rawFrameIndex:&v13];
  if (!v4)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    *a4 = ImageBuffer;
    CFRetain(ImageBuffer);
    CFRelease(sbuf);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end