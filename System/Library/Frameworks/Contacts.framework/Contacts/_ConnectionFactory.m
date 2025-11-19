@interface _ConnectionFactory
- (id)makeConnection;
@end

@implementation _ConnectionFactory

- (id)makeConnection
{
  v2 = +[CNContactPosterDataXPCService newConnection];

  return v2;
}

@end