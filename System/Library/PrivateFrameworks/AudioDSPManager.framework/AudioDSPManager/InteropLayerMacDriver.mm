@interface InteropLayerMacDriver
+ (id)getKeyForClientDescriptionWithKind:(unsigned int)kind mode:(unsigned int)mode;
@end

@implementation InteropLayerMacDriver

+ (id)getKeyForClientDescriptionWithKind:(unsigned int)kind mode:(unsigned int)mode
{
  sub_223B65450();
  v4 = sub_223BF453C();

  return v4;
}

@end