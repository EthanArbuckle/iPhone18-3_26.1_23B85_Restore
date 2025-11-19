@interface AVPlannedSegmentWritingRequest
+ (id)requestWithSegmentFileOutputURL:(id)a3 assemblyTrackID:(int)a4 timeRange:(id *)a5 outputSettings:(id)a6 finishBlock:(id)a7;
- (AVPlannedSegmentWritingRequest)initWithSegmentFileOutputURL:(id)a3 assemblyTrackID:(int)a4 timeRange:(id *)a5 outputSettings:(id)a6 finishBlock:(id)a7;
- (id)description;
- (void)dealloc;
@end

@implementation AVPlannedSegmentWritingRequest

- (AVPlannedSegmentWritingRequest)initWithSegmentFileOutputURL:(id)a3 assemblyTrackID:(int)a4 timeRange:(id *)a5 outputSettings:(id)a6 finishBlock:(id)a7
{
  v16.receiver = self;
  v16.super_class = AVPlannedSegmentWritingRequest;
  v12 = [(AVPlannedSegmentWritingRequest *)&v16 init];
  if (v12)
  {
    *(v12 + 1) = [a3 copy];
    *(v12 + 4) = a4;
    v14 = *&a5->var0.var3;
    v13 = *&a5->var1.var1;
    *(v12 + 20) = *&a5->var0.var0;
    *(v12 + 36) = v14;
    *(v12 + 52) = v13;
    *(v12 + 9) = [a6 copy];
    *(v12 + 10) = [a7 copy];
  }

  return v12;
}

+ (id)requestWithSegmentFileOutputURL:(id)a3 assemblyTrackID:(int)a4 timeRange:(id *)a5 outputSettings:(id)a6 finishBlock:(id)a7
{
  v10 = *&a4;
  v12 = [AVPlannedSegmentWritingRequest alloc];
  v13 = *&a5->var0.var3;
  v15[0] = *&a5->var0.var0;
  v15[1] = v13;
  v15[2] = *&a5->var1.var1;
  return [(AVPlannedSegmentWritingRequest *)v12 initWithSegmentFileOutputURL:a3 assemblyTrackID:v10 timeRange:v15 outputSettings:a6 finishBlock:a7];
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
  v5 = [(AVPlannedSegmentWritingRequest *)self segmentFileOutputURL];
  v6 = [(AVPlannedSegmentWritingRequest *)self assemblyTrackID];
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
  return [v3 stringWithFormat:@"<%@: %p, segmentURL = %@, assemblyTrackID = %d, timeRange = [start = %1.3f, duration = %1.3f]>", v4, self, v5, v6, *&Seconds, CMTimeGetSeconds(&time)];
}

@end