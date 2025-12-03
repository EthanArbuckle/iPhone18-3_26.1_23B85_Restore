@interface INIntentKeyParameter
- (INIntentKeyParameter)initWithCodableAttribute:(id)attribute value:(id)value image:(id)image;
@end

@implementation INIntentKeyParameter

- (INIntentKeyParameter)initWithCodableAttribute:(id)attribute value:(id)value image:(id)image
{
  attributeCopy = attribute;
  valueCopy = value;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = INIntentKeyParameter;
  v12 = [(INIntentKeyParameter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codableAttribute, attribute);
    objc_storeStrong(&v13->_value, value);
    objc_storeStrong(&v13->_image, image);
  }

  return v13;
}

@end