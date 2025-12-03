@interface ICSystemPaperViewController
+ (id)newSystemPaperViewControllerWithIncomingLink:(id)link incomingImageData:(id)data;
- (BOOL)canSwipeInDirection:(int64_t)direction;
- (ICNote)currentNote;
- (ICSystemPaperViewController)initWithNibName:(id)name bundle:(id)bundle;
- (ICViewControllerManager)viewControllerManager;
- (NSLayoutConstraint)paletteButtonEdgeConstraint;
- (UIButton)redoButton;
- (UIButton)undoButton;
- (UIStackView)undoRedoButtonStackView;
- (id)inkPaletteButtonViewWithInkPaletteController:(id)controller;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)backToNotesWithKeyboard;
- (void)deleteCurrentNote;
- (void)didTapPaletteButton:(id)button;
- (void)indexer:(id)indexer didChangeContentWithDifference:(id)difference controller:(id)controller;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)redo;
- (void)setCurrentNote:(id)note;
- (void)setCurrentNote:(id)note animated:(BOOL)animated direction:(int64_t)direction setEditing:(BOOL)editing showInkPicker:(BOOL)picker;
- (void)setCurrentNoteEditorViewController:(id)controller;
- (void)setLaunchImageView:(id)view;
- (void)setPageContainerView:(id)view;
- (void)setPageControl:(id)control;
- (void)setSystemPaperNavigationBar:(id)bar;
- (void)synthesizeSwipeForDirection:(int64_t)direction;
- (void)toolPickerVisibilityDidChange:(id)change;
- (void)undo;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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
  selfCopy = self;
  sub_1003BF3A4(&selRef_undo);
}

- (void)redo
{
  selfCopy = self;
  sub_1003BF3A4(&selRef_redo);
}

- (ICSystemPaperViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1003BF48C(v5, v7, bundle);
}

+ (id)newSystemPaperViewControllerWithIncomingLink:(id)link incomingImageData:(id)data
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  linkCopy = link;
  v7 = sub_1003D1DB0(link, v5);

  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003C0FD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003C3B50(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003C3CAC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003C4A78(disappear);
}

- (void)deleteCurrentNote
{
  selfCopy = self;
  sub_1003C5D28();
}

- (ICNote)currentNote
{
  note = *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  if (note)
  {
    note = [note note];
    v2 = vars8;
  }

  return note;
}

- (void)setCurrentNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  sub_1003C6DC0(note, 0, 0, 0, 0);
}

- (void)setCurrentNote:(id)note animated:(BOOL)animated direction:(int64_t)direction setEditing:(BOOL)editing showInkPicker:(BOOL)picker
{
  pickerCopy = picker;
  animatedCopy = animated;
  noteCopy = note;
  selfCopy = self;
  sub_1003C6DC0(note, animatedCopy, direction, editing, pickerCopy);
}

- (void)setCurrentNoteEditorViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController);
  *(self + OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController) = controller;
  controllerCopy = controller;
  selfCopy = self;

  sub_1003CF424();
  sub_1003C39C0();
  sub_1003CA968();
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLaunchImageView:(id)view
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_launchImageView);
  *(self + OBJC_IVAR___ICSystemPaperViewController_launchImageView) = view;
  viewCopy = view;
}

- (void)setSystemPaperNavigationBar:(id)bar
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar);
  *(self + OBJC_IVAR___ICSystemPaperViewController_systemPaperNavigationBar) = bar;
  barCopy = bar;
}

- (void)setPageContainerView:(id)view
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_pageContainerView);
  *(self + OBJC_IVAR___ICSystemPaperViewController_pageContainerView) = view;
  viewCopy = view;
}

- (void)setPageControl:(id)control
{
  v4 = *(self + OBJC_IVAR___ICSystemPaperViewController_pageControl);
  *(self + OBJC_IVAR___ICSystemPaperViewController_pageControl) = control;
  controlCopy = control;
}

- (NSLayoutConstraint)paletteButtonEdgeConstraint
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapPaletteButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1003D2088();
}

- (void)backToNotesWithKeyboard
{
  selfCopy = self;
  sub_1003CE02C();
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  if (sender)
  {
    segueCopy = segue;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    segueCopy2 = segue;
    selfCopy2 = self;
  }

  sub_1003CF0CC(segue);

  sub_1000073B4(v10, &qword_1006BE7A0);
}

- (void)toolPickerVisibilityDidChange:(id)change
{
  selfCopy = self;
  sub_1003C52FC();
  sub_1003C28E8();
}

- (id)inkPaletteButtonViewWithInkPaletteController:(id)controller
{
  selfCopy = self;
  v4 = sub_1003C0610(&OBJC_IVAR___ICSystemPaperViewController____lazy_storage___paletteButton, sub_1003C02A0);

  return v4;
}

- (BOOL)canSwipeInDirection:(int64_t)direction
{
  selfCopy = self;
  LOBYTE(direction) = sub_1003CF548(direction);

  return direction & 1;
}

- (void)synthesizeSwipeForDirection:(int64_t)direction
{
  selfCopy = self;
  sub_1003CF8A0(direction);
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_1003D2208(viewControllerCopy);

  return v9;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  v9 = sub_1003D243C(viewControllerCopy);

  return v9;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  sub_1000054A4(0, &unk_1006C8180);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1003D2670(v6);
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  sub_1000054A4(0, &unk_1006C8180);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1003D29CC(animating, v10, completed);
}

- (void)indexer:(id)indexer didChangeContentWithDifference:(id)difference controller:(id)controller
{
  v8 = sub_10015DA04(&unk_1006C67F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  static CollectionDifference._unconditionallyBridgeFromObjectiveC(_:)();
  indexerCopy = indexer;
  controllerCopy = controller;
  selfCopy = self;
  sub_1003D2E98();

  (*(v9 + 8))(v11, v8);
}

@end