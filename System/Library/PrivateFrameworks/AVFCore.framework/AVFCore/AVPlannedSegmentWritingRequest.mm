@interface AVPlannedSegmentWritingRequest
+ (id)requestWithSegmentFileOutputURL:(id)l assemblyTrackID:(int)d timeRange:(id *)range outputSettings:(id)settings finishBlock:(id)block;
- (AVPlannedSegmentWritingRequest)initWithSegmentFileOutputURL:(id)l assemblyTrackID:(int)d timeRange:(id *)range outputSettings:(id)settings finishBlock:(id)block;
- (id)description;
- (void)dealloc;
@end

@implementation AVPlannedSegmentWritingRequest

- (AVPlannedSegmentWritingRequest)initWithSegmentFileOutputURL:(id)l assemblyTrackID:(int)d timeRange:(id *)range outputSettings:(id)settings finishBlock:(id)block
{
  v16.receiver = self;
  v16.super_class = AVPlannedSegmentWritingRequest;
  v12 = [(AVPlannedSegmentWritingRequest *)&v16 init];
  if (v12)
  {
    *(v12 + 1) = [l copy];
    *(v12 + 4) = d;
    v14 = *&range->var0.var3;
    v13 = *&range->var1.var1;
    *(v12 + 20) = *&range->var0.var0;
    *(v12 + 36) = v14;
    *(v12 + 52) = v13;
    *(v12 + 9) = [settings copy];
    *(v12 + 10) = [block copy];
  }

  return v12;
}

+ (id)requestWithSegmentFileOutputURL:(id)l assemblyTrackID:(int)d timeRange:(id *)range outputSettings:(id)settings finishBlock:(id)block
{
  v10 = *&d;
  v12 = [AVPlannedSegmentWritingRequest alloc];
  v13 = *&range->var0.var3;
  v15[0] = *&range->var0.var0;
  v15[1] = v13;
  v15[2] = *&range->var1.var1;
  return [(AVPlannedSegmentWritingRequest *)v12 initWithSegmentFileOutputURL:l assemblyTrackID:v10 timeRange:v15 outputSettings:settings finishBlock:block];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlannedSegmentWritingRequest;
  [(AVPlannedSegmentWritingRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  segmentFileOutputURL = [(AVPlannedSegmentWritingRequest *)self segmentFileOutputURL];
  assemblyTrackID = [(AVPlannedSegmentWritingRequest *)self assemblyTrackID];
  if (self)
  {
    [(AVPlannedSegmentWritingRequest *)self timeRange];
    time = v10;
    Seconds = CMTimeGetSeconds(&time);
    [(AVPlannedSegmentWritingRequest *)self timeRange];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    Seconds = CMTimeGetSeconds(&time);
    memset(v9, 0, sizeof(v9));
  }

  time = *&v9[1];
  return [v3 stringWithFormat:@"<%@: %p, segmentURL = %@, assemblyTrackID = %d, timeRange = [start = %1.3f, duration = %1.3f]>", v4, self, segmentFileOutputURL, assemblyTrackID, *&Seconds, CMTimeGetSeconds(&time)];
}

@end