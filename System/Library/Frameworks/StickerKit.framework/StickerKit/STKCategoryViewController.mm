@interface STKCategoryViewController
- (STKCategoryViewController)initWithCoder:(id)a3;
- (STKCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)transitionerForConnectingHostingController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation STKCategoryViewController

- (void)viewDidLoad
{
  v2 = self;
  CategoryViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  _s10StickerKit22CategoryViewControllerC13viewDidAppearyySbF_0();
}

- (id)transitionerForConnectingHostingController:(id)a3
{
  v5[4] = sub_19A6D26D4;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_19A6DB1A8;
  v5[3] = &block_descriptor_34;
  v3 = _Block_copy(v5);

  return v3;
}

- (STKCategoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_19A7AB014();
    a3 = v8;
  }

  sub_19A5F5028(0, &unk_1EAFCB0D0);
  v9 = a4;
  sub_19A7AB664();
  *(&self->super.super.super.isa + OBJC_IVAR___STKCategoryViewController_keyboardSuppression) = 0;
  if (a3)
  {
    v10 = sub_19A7AAFE4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(STKCategoryViewController *)&v13 initWithNibName:v10 bundle:v9];

  return v11;
}

- (STKCategoryViewController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0);
  v6 = a3;
  sub_19A7AB664();
  *(&self->super.super.super.isa + OBJC_IVAR___STKCategoryViewController_keyboardSuppression) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(STKCategoryViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end