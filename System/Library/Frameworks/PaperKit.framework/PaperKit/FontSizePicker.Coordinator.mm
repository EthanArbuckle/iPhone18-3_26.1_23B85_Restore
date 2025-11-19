@interface FontSizePicker.Coordinator
- (void)valueEditingViewController:(id)a3 didChangeValue:(int64_t)a4;
@end

@implementation FontSizePicker.Coordinator

- (void)valueEditingViewController:(id)a3 didChangeValue:(int64_t)a4
{
  type metadata accessor for FontSizeViewController();
  if (swift_dynamicCastClass())
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtCV8PaperKit14FontSizePicker11Coordinator_pickedSize);
    v9 = a3;
    v8 = self;
    v7(a4);
  }
}

@end