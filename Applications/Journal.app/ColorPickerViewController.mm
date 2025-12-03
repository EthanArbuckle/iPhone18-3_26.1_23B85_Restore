@interface ColorPickerViewController
- (_TtC7Journal25ColorPickerViewController)init;
- (_TtC7Journal25ColorPickerViewController)initWithCoder:(id)coder;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ColorPickerViewController

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ColorPickerViewController();
  v4 = v5.receiver;
  [(ColorPickerViewController *)&v5 viewWillDisappear:disappearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1005A49E4();
    swift_unknownObjectRelease();
  }
}

- (_TtC7Journal25ColorPickerViewController)init
{
  *&self->journalDelegate[OBJC_IVAR____TtC7Journal25ColorPickerViewController_journalDelegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ColorPickerViewController();
  return [(ColorPickerViewController *)&v4 init];
}

- (_TtC7Journal25ColorPickerViewController)initWithCoder:(id)coder
{
  *&self->journalDelegate[OBJC_IVAR____TtC7Journal25ColorPickerViewController_journalDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ColorPickerViewController();
  coderCopy = coder;
  v6 = [(ColorPickerViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end