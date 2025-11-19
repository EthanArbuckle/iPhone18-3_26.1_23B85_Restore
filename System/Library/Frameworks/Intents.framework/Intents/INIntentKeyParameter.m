@interface INIntentKeyParameter
- (INIntentKeyParameter)initWithCodableAttribute:(id)a3 value:(id)a4 image:(id)a5;
@end

@implementation INIntentKeyParameter

- (INIntentKeyParameter)initWithCodableAttribute:(id)a3 value:(id)a4 image:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = INIntentKeyParameter;
  v12 = [(INIntentKeyParameter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_codableAttribute, a3);
    objc_storeStrong(&v13->_value, a4);
    objc_storeStrong(&v13->_image, a5);
  }

  return v13;
}

@end