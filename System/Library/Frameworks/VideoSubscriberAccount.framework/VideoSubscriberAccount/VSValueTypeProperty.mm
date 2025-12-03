@interface VSValueTypeProperty
+ (id)valueTypePropertyWithName:(id)name kind:(unint64_t)kind allowedClasses:(id)classes initialValue:(id)value;
@end

@implementation VSValueTypeProperty

+ (id)valueTypePropertyWithName:(id)name kind:(unint64_t)kind allowedClasses:(id)classes initialValue:(id)value
{
  valueCopy = value;
  classesCopy = classes;
  nameCopy = name;
  v13 = objc_alloc_init(self);
  [v13 setName:nameCopy];

  [v13 setKind:kind];
  [v13 setAllowedClasses:classesCopy];

  [v13 setInitialValue:valueCopy];

  return v13;
}

@end