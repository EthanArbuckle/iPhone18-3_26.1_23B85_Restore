@interface MacPlaceNoteEditViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNote:(id)note;
- (id)dismissHandler;
- (void)doneTapped;
- (void)macFooterViewLeftButtonTapped:(id)tapped;
- (void)macFooterViewRightButtonTapped:(id)tapped;
- (void)setDismissHandler:(id)handler;
- (void)textViewDidChange:(id)change;
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

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_1000D3B90(v7, v8);
}

- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNote:(id)note
{
  if (note)
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
  selfCopy = self;
  MacPlaceNoteEditViewController.viewDidLoad()();
}

- (void)doneTapped
{
  selfCopy = self;
  _s4Maps30MacPlaceNoteEditViewControllerC09macFooterF17RightButtonTappedyySo0biF0CF_0();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = _s4Maps30MacPlaceNoteEditViewControllerC04textF0_18shouldChangeTextIn011replacementK0SbSo06UITextF0C_So8_NSRangeVSStF_0(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  text = [changeCopy text];
  if (text)
  {
    v6 = text;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = (selfCopy + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note);
  *v10 = v7;
  v10[1] = v9;

  sub_100345DC0();
}

- (_TtC4Maps30MacPlaceNoteEditViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)macFooterViewLeftButtonTapped:(id)tapped
{
  v4 = self + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 1);
    selfCopy = self;
    sub_1000CD9D4(v5);
    v5(0, 0, 0);

    sub_1000D3B90(v5, v6);
  }
}

- (void)macFooterViewRightButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  _s4Maps30MacPlaceNoteEditViewControllerC09macFooterF17RightButtonTappedyySo0biF0CF_0();
}

@end