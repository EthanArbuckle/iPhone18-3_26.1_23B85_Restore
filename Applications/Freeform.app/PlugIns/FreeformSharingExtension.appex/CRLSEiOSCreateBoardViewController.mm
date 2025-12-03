@interface CRLSEiOSCreateBoardViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithCoder:(id)coder;
- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancel:(id)cancel;
- (void)createBoardButtonAction:(id)action;
- (void)textFieldDidChangeSelection:(id)selection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CRLSEiOSCreateBoardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100033E14();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100034658(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000347C8(appear);
}

- (void)createBoardButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField);
  if (v6)
  {
    text = [v6 text];
    if (text)
    {
      v8 = text;
      v9 = sub_10007E444();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    sub_100034C5C(v9, v11);

    sub_1000357F4(v12);
  }

  else
  {
    __break(1u);
  }
}

- (void)cancel:(id)cancel
{
  selfCopy = self;
  navigationController = [(CRLSEiOSCreateBoardViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  text = [returnCopy text];
  if (text)
  {
    v7 = text;
    v8 = sub_10007E444();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_100034C5C(v8, v10);

  return 0;
}

- (void)textFieldDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_100034AF8(selectionCopy);
}

- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_10007E444();
    *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
    bundleCopy = bundle;
    v7 = sub_10007E404();
  }

  else
  {
    *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  v9 = [(CRLSEiOSCreateBoardViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  coderCopy = coder;
  v6 = [(CRLSEiOSCreateBoardViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end