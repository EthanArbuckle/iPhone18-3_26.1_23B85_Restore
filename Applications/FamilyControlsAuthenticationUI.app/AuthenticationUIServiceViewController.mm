@interface AuthenticationUIServiceViewController
- (_TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation AuthenticationUIServiceViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000FACC;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10000ADD8(context, v6, v7);
  sub_10000FA84(v6);
}

- (_TtC30FamilyControlsAuthenticationUI37AuthenticationUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10000EB0C(disappear);
}

@end