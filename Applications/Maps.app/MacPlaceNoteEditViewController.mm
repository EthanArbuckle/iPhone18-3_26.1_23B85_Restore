@interface MacPlaceNoteEditViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNote:(id)a3;
- (id)dismissHandler;
- (void)doneTapped;
- (void)macFooterViewLeftButtonTapped:(id)a3;
- (void)macFooterViewRightButtonTapped:(id)a3;
- (void)setDismissHandler:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation MacPlaceNoteEditViewController

- (id)dismissHandler
{
  v2 = (self + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10043FCA8;
    aBlock[3] = &unk_101612A98;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100348374;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_1000D3B90(v7, v8);
}

- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNote:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return MacPlaceNoteEditViewController.init(note:)(v3, v4);
}

- (void)viewDidLoad
{
  v2 = self;
  MacPlaceNoteEditViewController.viewDidLoad()();
}

- (void)doneTapped
{
  v2 = self;
  _s4Maps30MacPlaceNoteEditViewControllerC09macFooterF17RightButtonTappedyySo0biF0CF_0();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = _s4Maps30MacPlaceNoteEditViewControllerC04textF0_18shouldChangeTextIn011replacementK0SbSo06UITextF0C_So8_NSRangeVSStF_0(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v11 = self;
  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (v11 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note);
  *v10 = v7;
  v10[1] = v9;

  sub_100345DC0();
}

- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)macFooterViewLeftButtonTapped:(id)a3
{
  v4 = self + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    v7 = self;
    sub_1000CD9D4(v5);
    v5(0, 0, 0);

    sub_1000D3B90(v5, v6);
  }
}

- (void)macFooterViewRightButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  _s4Maps30MacPlaceNoteEditViewControllerC09macFooterF17RightButtonTappedyySo0biF0CF_0();
}

@end