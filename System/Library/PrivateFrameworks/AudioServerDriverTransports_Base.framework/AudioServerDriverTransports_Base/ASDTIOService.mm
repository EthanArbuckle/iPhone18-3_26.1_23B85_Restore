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
  ioObject = [(ASDTIOService *)self ioObject];

  IOObjectRetain(ioObject);
}

- (void)releaseIOService
{
  if ([(ASDTIOService *)self ioObject])
  {
    ioObject = [(ASDTIOService *)self ioObject];

    IOObjectRelease(ioObject);
  }
}

@end