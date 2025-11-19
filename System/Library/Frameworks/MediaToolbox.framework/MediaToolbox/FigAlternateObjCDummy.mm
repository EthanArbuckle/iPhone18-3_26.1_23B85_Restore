@interface FigAlternateObjCDummy
- (id)audioAttributes;
- (id)videoAttributes;
@end

@implementation FigAlternateObjCDummy

- (id)videoAttributes
{
  v2 = objc_alloc_init(FigAlternateObjCVideoAttributesDummy);

  return v2;
}

- (id)audioAttributes
{
  v2 = objc_alloc_init(FigAlternateObjCAudioAttributesDummy);

  return v2;
}

@end