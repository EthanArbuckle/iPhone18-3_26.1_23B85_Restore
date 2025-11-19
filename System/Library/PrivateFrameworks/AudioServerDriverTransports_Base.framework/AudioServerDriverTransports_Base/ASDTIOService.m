@interface ASDTIOService
- (void)dealloc;
- (void)releaseIOService;
- (void)retainIOService;
@end

@implementation ASDTIOService

- (void)dealloc
{
  [(ASDTIOService *)self releaseIOService];
  v3.receiver = self;
  v3.super_class = ASDTIOService;
  [(ASDTIOService *)&v3 dealloc];
}

- (void)retainIOService
{
  v2 = [(ASDTIOService *)self ioObject];

  IOObjectRetain(v2);
}

- (void)releaseIOService
{
  if ([(ASDTIOService *)self ioObject])
  {
    v3 = [(ASDTIOService *)self ioObject];

    IOObjectRelease(v3);
  }
}

@end