@interface CRLSEiOSCreateBoardViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithCoder:(id)a3;
- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancel:(id)a3;
- (void)createBoardButtonAction:(id)a3;
- (void)textFieldDidChangeSelection:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CRLSEiOSCreateBoardViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100033E14();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100034658(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000347C8(a3);
}

- (void)createBoardButtonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v5 = self;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField);
  if (v6)
  {
    v7 = [v6 text];
    if (v7)
    {
      v8 = v7;
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

- (void)cancel:(id)a3
{
  v5 = self;
  v3 = [(CRLSEiOSCreateBoardViewController *)v5 navigationController];
  if (v3)
  {
    v4 = v3;
  }
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 text];
  if (v6)
  {
    v7 = v6;
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

- (void)textFieldDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034AF8(v4);
}

- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_10007E444();
    *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
    v6 = a4;
    v7 = sub_10007E404();
  }

  else
  {
    *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
    swift_unknownObjectWeakInit();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  v9 = [(CRLSEiOSCreateBoardViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24FreeformSharingExtension33CRLSEiOSCreateBoardViewController_newBoardTextField) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLSEiOSCreateBoardViewController();
  v5 = a3;
  v6 = [(CRLSEiOSCreateBoardViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end