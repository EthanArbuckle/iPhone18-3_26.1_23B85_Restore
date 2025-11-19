@interface VSValueTypeProperty
+ (id)valueTypePropertyWithName:(id)a3 kind:(unint64_t)a4 allowedClasses:(id)a5 initialValue:(id)a6;
@end

@implementation VSValueTypeProperty

+ (id)valueTypePropertyWithName:(id)a3 kind:(unint64_t)a4 allowedClasses:(id)a5 initialValue:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(a1);
  [v13 setName:v12];

  [v13 setKind:a4];
  [v13 setAllowedClasses:v11];

  [v13 setInitialValue:v10];

  return v13;
}

@end