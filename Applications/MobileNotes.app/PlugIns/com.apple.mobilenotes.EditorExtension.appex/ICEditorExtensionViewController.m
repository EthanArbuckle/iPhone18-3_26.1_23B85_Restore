@interface ICEditorExtensionViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (ICEditorExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addUserActivityData:(id)a3;
- (void)checkInWithReply:(id)a3;
- (void)dealloc;
- (void)motionBegan:(int64_t)a3 withEvent:(id)a4;
- (void)motionCancelled:(int64_t)a3 withEvent:(id)a4;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)noteEditorRequestsDismissal:(id)a3 cancelled:(BOOL)a4;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ICEditorExtensionViewController

- (ICEditorExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10000B474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100002448(v5, v7, a4);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_analyticsController);
  v3 = self;
  [v2 appSessionDidTerminate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for EditorExtensionViewController();
  [(ICEditorExtensionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000028BC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100003D54();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100003FF0(a3);
}

- (void)motionBegan:(int64_t)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_100009D18();
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  sub_100009DF0();
}

- (void)motionCancelled:(int64_t)a3 withEvent:(id)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator);
  *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator) = 0;
  _objc_release_x1();
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_noteEditor);
  if (v3)
  {
    v4 = self;
    v5 = [v3 note];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isEmpty];
    }

    else
    {
      v7 = 1;
    }

    LOBYTE(self) = v7;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_noteEditor);
  if (v4)
  {
    [v4 cancelFromSystemPaperCard:self];
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007D3C(v4);

  return 1;
}

- (void)checkInWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (void)addUserActivityData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_10000B374();
  v7 = v6;

  sub_100008748(v5, v7);
  sub_10000A518(v5, v7);
}

- (void)noteEditorRequestsDismissal:(id)a3 cancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10000A418(a4);
}

@end