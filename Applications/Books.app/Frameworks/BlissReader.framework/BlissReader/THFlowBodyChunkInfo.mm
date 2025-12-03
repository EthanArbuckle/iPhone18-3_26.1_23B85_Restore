@interface THFlowBodyChunkInfo
- (THFlowBodyChunkInfo)initWithBodyInfo:(id)info;
- (void)dealloc;
@end

@implementation THFlowBodyChunkInfo

- (THFlowBodyChunkInfo)initWithBodyInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = THFlowBodyChunkInfo;
  v4 = -[THFlowBodyChunkInfo initWithContext:geometry:](&v6, "initWithContext:geometry:", [info context], objc_msgSend(info, "geometry"));
  if (v4)
  {
    v4->_bodyInfo = info;
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