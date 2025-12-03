@interface FontSizePicker.Coordinator
- (void)valueEditingViewController:(id)controller didChangeValue:(int64_t)value;
@end

@implementation FontSizePicker.Coordinator

- (void)valueEditingViewController:(id)controller didChangeValue:(int64_t)value
{
  type metadata accessor for FontSizeViewController();
  if (swift_dynamicCastClass())
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtCV8PaperKit14FontSizePicker11Coordinator_pickedSize);
    controllerCopy = controller;
    selfCopy = self;
    v7(value);
  }
}

@end