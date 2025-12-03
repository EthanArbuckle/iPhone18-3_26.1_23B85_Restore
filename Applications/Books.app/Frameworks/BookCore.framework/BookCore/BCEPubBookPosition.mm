@interface BCEPubBookPosition
+ (id)positionWithCFI:(id)i;
- (NSString)description;
- (int64_t)compare:(id)compare;
@end

@implementation BCEPubBookPosition

+ (id)positionWithCFI:(id)i
{
  iCopy = i;
  v4 = objc_alloc_init(BCEPubBookPosition);
  tailCFI = [iCopy tailCFI];

  [(BCEPubBookPosition *)v4 setCfiPosition:tailCFI];

  return v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = BUDynamicCast();

  cfiPosition = [(BCEPubBookPosition *)self cfiPosition];
  cfiPosition2 = [v5 cfiPosition];
  v8 = [cfiPosition compare:cfiPosition2];

  return v8;
}

- (NSString)description
{
  cfiPosition = [(BCEPubBookPosition *)self cfiPosition];
  v3 = [NSString stringWithFormat:@"BCEPubBookPosition(%@)", cfiPosition];

  return v3;
}

@end