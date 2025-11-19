@interface _AVInputRoutePickerViewControllerSceneSpecification
- (_TtC5AVKit51_AVInputRoutePickerViewControllerSceneSpecification)init;
- (id)userActivity;
@end

@implementation _AVInputRoutePickerViewControllerSceneSpecification

- (id)userActivity
{
  v3 = objc_allocWithZone(MEMORY[0x1E696B090]);
  v4 = self;
  v5 = sub_18B6C55FC();
  v6 = [v3 initWithActivityType_];

  return v6;
}

- (_TtC5AVKit51_AVInputRoutePickerViewControllerSceneSpecification)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC5AVKit51_AVInputRoutePickerViewControllerSceneSpecification__kRSInputRoutingActivityType);
  *v4 = 0xD00000000000001ALL;
  v4[1] = 0x800000018B6FD950;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(_AVInputRoutePickerViewControllerSceneSpecification *)&v6 init];
}

@end