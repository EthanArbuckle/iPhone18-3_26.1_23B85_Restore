@interface SetValueTransformer
+ (Class)transformedValueClass;
- (SetValueTransformer)init;
@end

@implementation SetValueTransformer

- (SetValueTransformer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetValueTransformer();
  return [(SetValueTransformer *)&v3 init];
}

+ (Class)transformedValueClass
{
  sub_10000200C(0, &qword_100297990, NSData_ptr);

  return swift_getObjCClassFromMetadata();
}

@end