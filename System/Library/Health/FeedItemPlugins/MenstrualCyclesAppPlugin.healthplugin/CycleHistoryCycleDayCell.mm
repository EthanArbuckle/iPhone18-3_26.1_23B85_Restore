@interface CycleHistoryCycleDayCell
+ (Class)layerClass;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation CycleHistoryCycleDayCell

+ (Class)layerClass
{
  sub_29DE9408C(0, &qword_2A181AC20);

  return swift_getObjCClassFromMetadata();
}

- (void)applyLayoutAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  attributesCopy = attributes;
  v5 = v6.receiver;
  [(CycleHistoryCycleDayCell *)&v6 applyLayoutAttributes:attributesCopy];
  sub_29E028E4C();
}

@end