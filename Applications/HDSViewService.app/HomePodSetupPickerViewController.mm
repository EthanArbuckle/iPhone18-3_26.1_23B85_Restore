@interface HomePodSetupPickerViewController
- (_TtC14HDSViewService32HomePodSetupPickerViewController)initWithContentView:(id)view;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006310C();
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  selfCopy = self;
  sub_100064748(row);
  v13 = v12;

  return v13;
}

- (_TtC14HDSViewService32HomePodSetupPickerViewController)initWithContentView:(id)view
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
  return [(HomePodSetupPickerViewController *)&v8 initWithContentView:view];
}

@end