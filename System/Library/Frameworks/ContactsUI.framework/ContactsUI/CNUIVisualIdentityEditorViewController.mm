@interface CNUIVisualIdentityEditorViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (CGSize)preferredContentSize;
- (CNContact)contact;
- (CNUIVisualIdentityEditorViewController)initWithCoder:(id)a3;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 configuration:(id)a4;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 isMeContact:(BOOL)a4;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 isMeContact:(BOOL)a4 saveChangesToContactStore:(BOOL)a5;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 saveChangesToContactStore:(BOOL)a4;
- (CNUIVisualIdentityEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNUIVisualIdentityEditorViewControllerDelegate)delegate;
- (void)setContact:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)viewDidLoad;
@end

@implementation CNUIVisualIdentityEditorViewController

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v2 = MEMORY[0x19A8F5660](a1, a2);

  return v2;
}

- (CNUIVisualIdentityEditorViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CNContact)contact
{
  v3 = *(self + OBJC_IVAR___CNUIVisualIdentityEditorViewController_model);
  swift_getKeyPath();
  sub_199ABEA8C();
  v4 = self;

  sub_199DF73AC();

  v5 = *(v3 + 16);

  return v5;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = self;

  sub_199ABEB30(v4);
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3
{
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = a3;
  v6 = sub_199ABED24(v5, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 configuration:(id)a4
{
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = a3;
  v8 = a4;
  v9 = sub_199ABED24(v7, 2, 0, a4);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 isMeContact:(BOOL)a4
{
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = a3;
  v8 = sub_199ABED24(v7, a4, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 saveChangesToContactStore:(BOOL)a4
{
  v5 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v6 = a3;
  v7 = sub_199ABED24(v6, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)a3 isMeContact:(BOOL)a4 saveChangesToContactStore:(BOOL)a5
{
  v8 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v9 = a3;
  v10 = sub_199ABED24(v9, a4, a5, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (CNUIVisualIdentityEditorViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration) = 0;
  swift_unknownObjectWeakInit();
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5 = self;
  v2 = [(CNUIVisualIdentityEditorViewController *)v5 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

    sub_199ABDC28();
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)preferredContentSize
{
  v2 = self;
  v3 = [(CNUIVisualIdentityEditorViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {

    v5 = 766.0;
    v6 = 464.0;
  }

  else
  {
    v11.receiver = v2;
    v11.super_class = type metadata accessor for VisualIdentityEditorViewController();
    [(CNUIVisualIdentityEditorViewController *)&v11 preferredContentSize];
    v8 = v7;
    v10 = v9;

    v6 = v8;
    v5 = v10;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VisualIdentityEditorViewController();
  [(CNUIVisualIdentityEditorViewController *)&v5 setPreferredContentSize:width, height];
}

- (CNUIVisualIdentityEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end