@interface NSXPCConnection
- (id)amsd_processName;
@end

@implementation NSXPCConnection

- (id)amsd_processName
{
  if (proc_name([(NSXPCConnection *)self processIdentifier], buffer, 0x100u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSString stringWithUTF8String:buffer];
  }

  return v2;
}

@end