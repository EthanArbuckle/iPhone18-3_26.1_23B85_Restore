@interface ACDClientProvider
- (id)createClientForConnection:(id)a3;
@end

@implementation ACDClientProvider

- (id)createClientForConnection:(id)a3
{
  v3 = a3;
  v4 = [[ACDClient alloc] initWithConnection:v3];

  return v4;
}

@end