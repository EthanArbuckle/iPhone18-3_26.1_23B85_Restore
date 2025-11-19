@interface AVDataValueTransformer
+ (id)messageTransformerWithClass:(Class)a3;
@end

@implementation AVDataValueTransformer

+ (id)messageTransformerWithClass:(Class)a3
{
  v3 = [[AVAirMessageTransformer alloc] initWithMessageClass:a3];

  return v3;
}

@end