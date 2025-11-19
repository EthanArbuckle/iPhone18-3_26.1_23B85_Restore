@interface NSObject
- (id)mf_andOperations:(id)a3;
- (id)mf_orOperations:(id)a3;
@end

@implementation NSObject

- (id)mf_andOperations:(id)a3
{
  v3 = a3;
  v4 = [[_CollectingInvocationTrampoline alloc] initWithCollection:v3 allMustMatch:1];

  return v4;
}

- (id)mf_orOperations:(id)a3
{
  v3 = a3;
  v4 = [[_CollectingInvocationTrampoline alloc] initWithCollection:v3 allMustMatch:0];

  return v4;
}

@end