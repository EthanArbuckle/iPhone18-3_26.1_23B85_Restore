@interface CycleHistoryCycleDayCell
+ (Class)layerClass;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation CycleHistoryCycleDayCell

+ (Class)layerClass
{
  sub_29DE9408C(0, &qword_2A181AC20);

  return swift_getObjCClassFromMetadata();
}

- (void)applyLayoutAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(CycleHistoryCycleDayCell *)&v6 applyLayoutAttributes:v4];
  sub_29E028E4C();
}

@end