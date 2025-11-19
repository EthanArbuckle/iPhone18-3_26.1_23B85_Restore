@interface HomePodSetupPickerViewController
- (_TtC14HDSViewService32HomePodSetupPickerViewController)initWithContentView:(id)a3;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006310C();
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = self;
  sub_100064748(a4);
  v13 = v12;

  return v13;
}

- (_TtC14HDSViewService32HomePodSetupPickerViewController)initWithContentView:(id)a3
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXPickerContentViewController_opaque[v5], 1, 1, v6);
  *&self->PRXPickerContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupPickerViewController();
  return [(HomePodSetupPickerViewController *)&v8 initWithContentView:a3];
}

@end