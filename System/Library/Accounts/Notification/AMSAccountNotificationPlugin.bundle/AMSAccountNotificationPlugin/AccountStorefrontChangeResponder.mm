@interface AccountStorefrontChangeResponder
+ (void)accountStorefrontDidChangeWithAccount:(id)account;
@end

@implementation AccountStorefrontChangeResponder

+ (void)accountStorefrontDidChangeWithAccount:(id)account
{
  swift_getObjCClassMetadata();
  accountCopy = account;
  sub_29C8872E4(accountCopy);
}

@end