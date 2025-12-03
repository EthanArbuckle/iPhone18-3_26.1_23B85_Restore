@interface VSBlockBasedValueTransformer
- (VSBlockBasedValueTransformer)init;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
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

- (id)transformedValue:(id)value
{
  valueCopy = value;
  transformationBlock = [(VSBlockBasedValueTransformer *)self transformationBlock];
  v6 = (transformationBlock)[2](transformationBlock, valueCopy);

  return v6;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  reverseTransformationBlock = [(VSBlockBasedValueTransformer *)self reverseTransformationBlock];
  v6 = (reverseTransformationBlock)[2](reverseTransformationBlock, valueCopy);

  return v6;
}

@end