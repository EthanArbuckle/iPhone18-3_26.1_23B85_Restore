@interface ICEditorExtensionViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (ICEditorExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addUserActivityData:(id)data;
- (void)checkInWithReply:(id)reply;
- (void)dealloc;
- (void)motionBegan:(int64_t)began withEvent:(id)event;
- (void)motionCancelled:(int64_t)cancelled withEvent:(id)event;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)noteEditorRequestsDismissal:(id)dismissal cancelled:(BOOL)cancelled;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ICEditorExtensionViewController

- (ICEditorExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10000B474();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100002448(v5, v7, bundle);
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_analyticsController);
  selfCopy = self;
  [v2 appSessionDidTerminate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for EditorExtensionViewController();
  [(ICEditorExtensionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000028BC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100003D54();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100003FF0(appear);
}

- (void)motionBegan:(int64_t)began withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_100009D18();
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_100009DF0();
}

- (void)motionCancelled:(int64_t)cancelled withEvent:(id)event
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator);
  *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_feedbackGenerator) = 0;
  _objc_release_x1();
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_noteEditor);
  if (v3)
  {
    selfCopy = self;
    note = [v3 note];
    if (note)
    {
      v6 = note;
      isEmpty = [note isEmpty];
    }

    else
    {
      isEmpty = 1;
    }

    LOBYTE(self) = isEmpty;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICEditorExtensionViewController_noteEditor);
  if (v4)
  {
    [v4 cancelFromSystemPaperCard:self];
  }
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_100007D3C(connectionCopy);

  return 1;
}

- (void)checkInWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2]();

  _Block_release(v3);
}

- (void)addUserActivityData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_10000B374();
  v7 = v6;

  sub_100008748(v5, v7);
  sub_10000A518(v5, v7);
}

- (void)noteEditorRequestsDismissal:(id)dismissal cancelled:(BOOL)cancelled
{
  dismissalCopy = dismissal;
  selfCopy = self;
  sub_10000A418(cancelled);
}

@end