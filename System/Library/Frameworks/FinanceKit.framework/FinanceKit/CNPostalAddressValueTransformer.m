@interface CNPostalAddressValueTransformer
+ (Class)transformedValueClass;
- (_TtC10FinanceKit31CNPostalAddressValueTransformer)init;
@end

@implementation CNPostalAddressValueTransformer

+ (Class)transformedValueClass
{
  sub_1B7205540(0, &qword_1EDAFAF20);

  return swift_getObjCClassFromMetadata();
}

- (_TtC10FinanceKit31CNPostalAddressValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CNPostalAddressValueTransformer *)&v3 init];
}

@end