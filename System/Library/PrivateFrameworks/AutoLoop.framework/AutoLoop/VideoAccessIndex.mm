@interface VideoAccessIndex
- (id).cxx_construct;
- (id)initFromFile:(id)file pixelFormat:(unsigned int)format frameTimes:(const void *)times;
- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf;
@end

@implementation VideoAccessIndex

- (id)initFromFile:(id)file pixelFormat:(unsigned int)format frameTimes:(const void *)times
{
  v6 = *&format;
  fileCopy = file;
  v19.receiver = self;
  v19.super_class = VideoAccessIndex;
  v9 = [(VideoAccessIndex *)&v19 init];
  if (v9)
  {
    v10 = [[VideoReaderRand alloc] initFromFile:fileCopy frameTimes:times];
    readerRand = v9->readerRand;
    v9->readerRand = v10;

    v12 = v9->readerRand;
    if (!v12)
    {
      v17 = 0;
      goto LABEL_8;
    }

    [(VideoReader *)v12 setPixelFormatOptions:v6];
    if (&v9->mFrameTimes != times)
    {
      sub_2418DF350(&v9->mFrameTimes.__begin_, *times, *(times + 1), 0xAAAAAAAAAAAAAAABLL * ((*(times + 1) - *times) >> 3));
    }

    v9->numFrames = -1431655765 * ((v9->mFrameTimes.__end_ - v9->mFrameTimes.__begin_) >> 3);
    videoTrack = [(VideoReader *)v9->readerRand videoTrack];
    videoTrack = v9->videoTrack;
    v9->videoTrack = videoTrack;

    asset = [(VideoReader *)v9->readerRand asset];
    asset = v9->asset;
    v9->asset = asset;
  }

  v17 = v9;
LABEL_8:

  return v17;
}

- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf
{
  if (self->numFrames < index)
  {
    return 4;
  }

  v6 = self->mFrameTimes.__begin_ + 24 * index;
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
    *buf = ImageBuffer;
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