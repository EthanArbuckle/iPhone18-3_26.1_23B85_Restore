@interface THFlowBodyChunkInfo
- (THFlowBodyChunkInfo)initWithBodyInfo:(id)a3;
- (void)dealloc;
@end

@implementation THFlowBodyChunkInfo

- (THFlowBodyChunkInfo)initWithBodyInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = THFlowBodyChunkInfo;
  v4 = -[THFlowBodyChunkInfo initWithContext:geometry:](&v6, "initWithContext:geometry:", [a3 context], objc_msgSend(a3, "geometry"));
  if (v4)
  {
    v4->_bodyInfo = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THFlowBodyChunkInfo;
  [(THModelBodyTextInfo *)&v3 dealloc];
}

@end