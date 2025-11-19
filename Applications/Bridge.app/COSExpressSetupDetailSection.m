@interface COSExpressSetupDetailSection
- (COSExpressSetupDetailSection)init;
@end

@implementation COSExpressSetupDetailSection

- (COSExpressSetupDetailSection)init
{
  v7.receiver = self;
  v7.super_class = COSExpressSetupDetailSection;
  v2 = [(COSExpressSetupDetailSection *)&v7 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

@end