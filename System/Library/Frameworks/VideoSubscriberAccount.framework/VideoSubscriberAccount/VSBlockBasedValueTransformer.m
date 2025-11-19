@interface VSBlockBasedValueTransformer
- (VSBlockBasedValueTransformer)init;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VSBlockBasedValueTransformer

- (VSBlockBasedValueTransformer)init
{
  v6.receiver = self;
  v6.super_class = VSBlockBasedValueTransformer;
  v2 = [(VSBlockBasedValueTransformer *)&v6 init];
  if (v2)
  {
    v3 = [&__block_literal_global_45 copy];
    transformationBlock = v2->_transformationBlock;
    v2->_transformationBlock = v3;
  }

  return v2;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  v5 = [(VSBlockBasedValueTransformer *)self transformationBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  v5 = [(VSBlockBasedValueTransformer *)self reverseTransformationBlock];
  v6 = (v5)[2](v5, v4);

  return v6;
}

@end