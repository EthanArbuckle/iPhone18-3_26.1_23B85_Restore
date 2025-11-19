@interface ATIDSConnectionInfo
- (ATIDSConnectionInfo)init;
- (void)dealloc;
@end

@implementation ATIDSConnectionInfo

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ATIDSConnectionInfo;
  [(ATIDSConnectionInfo *)&v2 dealloc];
}

- (ATIDSConnectionInfo)init
{
  v3.receiver = self;
  v3.super_class = ATIDSConnectionInfo;
  return [(ATIDSConnectionInfo *)&v3 init];
}

@end