@interface NSMutableDictionary
- (void)addLines:(id)lines fromOwner:(id)owner;
@end

@implementation NSMutableDictionary

- (void)addLines:(id)lines fromOwner:(id)owner
{
  linesCopy = lines;
  ownerCopy = owner;
  v7 = [(NSMutableDictionary *)self objectForKey:ownerCopy];
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  [v7 addLines:linesCopy];
  [(NSMutableDictionary *)self setValue:v7 forKey:ownerCopy];
}

@end