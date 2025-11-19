@interface CAField
+ (id)fieldWithName:(id)a3 ioProperty:(id)a4 valueType:(Class)a5;
- (BOOL)isValidValue:(id)a3;
- (CAField)initWithName:(id)a3 ioProperty:(id)a4 valueType:(Class)a5;
@end

@implementation CAField

- (CAField)initWithName:(id)a3 ioProperty:(id)a4 valueType:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CAField;
  v11 = [(CAField *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    objc_storeStrong(&v12->_ioProperty, a4);
    objc_storeStrong(&v12->_valueType, a5);
  }

  return v12;
}

+ (id)fieldWithName:(id)a3 ioProperty:(id)a4 valueType:(Class)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithName:v9 ioProperty:v8 valueType:a5];

  return v10;
}

- (BOOL)isValidValue:(id)a3
{
  v4 = a3;
  v7 = 0;
  if (v4)
  {
    v5 = +[NSNull null];

    if (v5 == v4 || (valueType = self->_valueType, (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = 1;
    }
  }

  return v7;
}

@end