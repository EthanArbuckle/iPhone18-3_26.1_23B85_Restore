@interface ColorPickerViewController
- (_TtC7Journal25ColorPickerViewController)init;
- (_TtC7Journal25ColorPickerViewController)initWithCoder:(id)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ColorPickerViewController

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ColorPickerViewController();
  v4 = v5.receiver;
  [(ColorPickerViewController *)&v5 viewWillDisappear:v3];
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

- (_TtC7Journal25ColorPickerViewController)initWithCoder:(id)a3
{
  *&self->journalDelegate[OBJC_IVAR____TtC7Journal25ColorPickerViewController_journalDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ColorPickerViewController();
  v5 = a3;
  v6 = [(ColorPickerViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end