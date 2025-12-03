@interface AVDataValueTransformer
+ (id)messageTransformerWithClass:(Class)class;
@end

@implementation AVDataValueTransformer

+ (id)messageTransformerWithClass:(Class)class
{
  v3 = [[AVAirMessageTransformer alloc] initWithMessageClass:class];

  return v3;
}

@end