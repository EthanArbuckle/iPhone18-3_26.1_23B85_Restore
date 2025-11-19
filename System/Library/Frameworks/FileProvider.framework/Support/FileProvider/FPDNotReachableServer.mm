@interface FPDNotReachableServer
- (void)start;
@end

@implementation FPDNotReachableServer

- (void)start
{
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.FileProvider"];
  listener = self->_listener;
  self->_listener = v3;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v5 = self->_listener;

  [(NSXPCListener *)v5 resume];
}

@end