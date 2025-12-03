@interface ACDClientProvider
- (id)createClientForConnection:(id)connection;
@end

@implementation ACDClientProvider

- (id)createClientForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[ACDClient alloc] initWithConnection:connectionCopy];

  return v4;
}

@end