@interface BCEPubBookPosition
+ (id)positionWithCFI:(id)a3;
- (NSString)description;
- (int64_t)compare:(id)a3;
@end

@implementation BCEPubBookPosition

+ (id)positionWithCFI:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BCEPubBookPosition);
  v5 = [v3 tailCFI];

  [(BCEPubBookPosition *)v4 setCfiPosition:v5];

  return v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [(BCEPubBookPosition *)self cfiPosition];
  v7 = [v5 cfiPosition];
  v8 = [v6 compare:v7];

  return v8;
}

- (NSString)description
{
  v2 = [(BCEPubBookPosition *)self cfiPosition];
  v3 = [NSString stringWithFormat:@"BCEPubBookPosition(%@)", v2];

  return v3;
}

@end