@interface CNUIVisualIdentityEditorViewController
+ (CNKeyDescriptor)descriptorForRequiredKeys;
- (CGSize)preferredContentSize;
- (CNContact)contact;
- (CNUIVisualIdentityEditorViewController)initWithCoder:(id)coder;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact configuration:(id)configuration;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact isMeContact:(BOOL)meContact;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact isMeContact:(BOOL)meContact saveChangesToContactStore:(BOOL)store;
- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact saveChangesToContactStore:(BOOL)store;
- (CNUIVisualIdentityEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNUIVisualIdentityEditorViewControllerDelegate)delegate;
- (void)setContact:(id)contact;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidLoad;
@end

@implementation CNUIVisualIdentityEditorViewController

+ (CNKeyDescriptor)descriptorForRequiredKeys
{
  v2 = MEMORY[0x19A8F5660](self, a2);

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
  selfCopy = self;

  sub_199DF73AC();

  v5 = *(v3 + 16);

  return v5;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;

  sub_199ABEB30(contactCopy);
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact
{
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  contactCopy = contact;
  v6 = sub_199ABED24(contactCopy, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact configuration:(id)configuration
{
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  contactCopy = contact;
  configurationCopy = configuration;
  v9 = sub_199ABED24(contactCopy, 2, 0, configuration);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact isMeContact:(BOOL)meContact
{
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  contactCopy = contact;
  v8 = sub_199ABED24(contactCopy, meContact, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact saveChangesToContactStore:(BOOL)store
{
  v5 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  contactCopy = contact;
  v7 = sub_199ABED24(contactCopy, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (CNUIVisualIdentityEditorViewController)initWithContact:(id)contact isMeContact:(BOOL)meContact saveChangesToContactStore:(BOOL)store
{
  v8 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  contactCopy = contact;
  v10 = sub_199ABED24(contactCopy, meContact, store, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (CNUIVisualIdentityEditorViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration) = 0;
  swift_unknownObjectWeakInit();
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  view = [(CNUIVisualIdentityEditorViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    clearColor = [objc_opt_self() clearColor];
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
  selfCopy = self;
  traitCollection = [(CNUIVisualIdentityEditorViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {

    v5 = 766.0;
    v6 = 464.0;
  }

  else
  {
    v11.receiver = selfCopy;
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

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.receiver = self;
  v5.super_class = type metadata accessor for VisualIdentityEditorViewController();
  [(CNUIVisualIdentityEditorViewController *)&v5 setPreferredContentSize:width, height];
}

- (CNUIVisualIdentityEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end