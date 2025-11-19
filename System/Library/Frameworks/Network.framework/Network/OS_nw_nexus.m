@interface OS_nw_nexus
- (void)dealloc;
@end

@implementation OS_nw_nexus

- (void)dealloc
{
  nw_nexus_close(self);
  v3.receiver = self;
  v3.super_class = OS_nw_nexus;
  [(OS_nw_nexus *)&v3 dealloc];
}

@end