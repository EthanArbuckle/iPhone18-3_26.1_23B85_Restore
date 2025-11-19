@interface ICSystemPaperViewController
+ (id)newSystemPaperViewControllerWithIncomingLink:(id)a3 incomingImageData:(id)a4;
- (BOOL)canSwipeInDirection:(int64_t)a3;
- (ICNote)currentNote;
- (ICSystemPaperViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (ICViewControllerManager)viewControllerManager;
- (NSLayoutConstraint)paletteButtonEdgeConstraint;
- (UIButton)redoButton;
- (UIButton)undoButton;
- (UIStackView)undoRedoButtonStackView;
- (id)inkPaletteButtonViewWithInkPaletteController:(id)a3;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)backToNotesWithKeyboard;
- (void)deleteCurrentNote;
- (void)didTapPaletteButton:(id)a3;
- (void)indexer:(id)a3 didChangeContentWithDifference:(id)a4 controller:(id)a5;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)redo;
- (void)setCurrentNote:(id)a3;
- (void)setCurrentNote:(id)a3 animated:(BOOL)a4 direction:(int64_t)a5 setEditing:(BOOL)a6 showInkPicker:(BOOL)a7;
- (void)setCurrentNoteEditorViewController:(id)a3;
- (void)setLaunchImageView:(id)a3;
- (void)setPageContainerView:(id)a3;
- (void)setPageControl:(id)a3;
- (void)setSystemPaperNavigationBar:(id)a3;
- (void)synthesizeSwipeForDirection:(int64_t)a3;
- (void)toolPickerVisibilityDidChange:(id)a3;
- (void)undo;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICSystemPaperViewController

- (UIStackView)undoRedoButtonStackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)undoButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)redoButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)undo
{
  v2 = self;
  sub_1003BF3A4(&selRef_undo);
}

- (void)redo
{
  v2 = self;
  sub_1003BF3A4(&selRef_redo);
}

- (ICSystemPaperViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1003BF48C(v5, v7, a4);
}

+ (id)newSystemPaperViewControllerWithIncomingLink:(id)a3 incomingImageData:(id)a4
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = sub_1003D1DB0(a3, v5);

  return v7;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003C0FD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003C3B50(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1003C3CAC(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003C4A78(a3);
}

- (void)deleteCurrentNote
{
  v2 = self;
  sub_1003C5D28();
}

- (ICNote)currentNote
{
  v3 = *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (v3)
  {
    v3 = [v3 note];
    v2 = vars8;
  }

  return v3;
}

- (void)setCurrentNote:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003C6DC0(a3, 0, 0, 0, 0);
}

- (void)setCurrentNote:(id)a3 animated:(BOOL)a4 direction:(int64_t)a5 setEditing:(BOOL)a6 showInkPicker:(BOOL)a7
{
  v7 = a7;
  v10 = a4;
  v13 = a3;
  v14 = self;
  sub_1003C6DC0(a3, v10, a5, a6, v7);
}

- (void)setCurrentNoteEditorViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController) = a3;
  v5 = a3;
  v6 = self;

  sub_1003CF424();
  sub_1003C39C0();
  sub_1003CA968();
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLaunchImageView:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_launchImageView);
  *(self + OBJC_IVAR___ICSystemPaperViewController_launchImageView) = a3;
  v3 = a3;
}

- (void)setSystemPaperNavigationBar:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar);
  *(self + OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar) = a3;
  v3 = a3;
}

- (void)setPageContainerView:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_pageContainerView);
  *(self + OBJC_IVAR___ICSystemPaperViewController_pageContainerView) = a3;
  v3 = a3;
}

- (void)setPageControl:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_pageControl);
  *(self + OBJC_IVAR___ICSystemPaperViewController_pageControl) = a3;
  v3 = a3;
}

- (NSLayoutConstraint)paletteButtonEdgeConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapPaletteButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003D2088();
}

- (void)backToNotesWithKeyboard
{
  v2 = self;
  sub_1003CE02C();
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1003CF0CC(a3);

  sub_1000073B4(v10, &qword_1006BE7A0);
}

- (void)toolPickerVisibilityDidChange:(id)a3
{
  v3 = self;
  sub_1003C52FC();
  sub_1003C28E8();
}

- (id)inkPaletteButtonViewWithInkPaletteController:(id)a3
{
  v3 = self;
  v4 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);

  return v4;
}

- (BOOL)canSwipeInDirection:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1003CF548(a3);

  return a3 & 1;
}

- (void)synthesizeSwipeForDirection:(int64_t)a3
{
  v4 = self;
  sub_1003CF8A0(a3);
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1003D2208(v7);

  return v9;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1003D243C(v7);

  return v9;
}

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  sub_1000054A4(0, &unk_1006C8180);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1003D2670(v6);
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  sub_1000054A4(0, &unk_1006C8180);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_1003D29CC(a4, v10, a6);
}

- (void)indexer:(id)a3 didChangeContentWithDifference:(id)a4 controller:(id)a5
{
  v8 = sub_10015DA04(&unk_1006C67F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  static CollectionDifference._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a5;
  v14 = self;
  sub_1003D2E98();

  (*(v9 + 8))(v11, v8);
}

@end