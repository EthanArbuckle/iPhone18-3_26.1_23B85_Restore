@interface CanvasViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldEndEditing:(id)editing;
- (NSUndoManager)undoManager;
- (_TtC7Journal20CanvasViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)addDrawing;
- (void)appWillEnterForeground;
- (void)changeJournal:(id)journal;
- (void)chooseCustomDate:(id)date;
- (void)deleteEntry:(id)entry;
- (void)findInEntry:(id)entry;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)jumpToSelection;
- (void)onEmptyRegionTapped:(id)tapped;
- (void)restoreSuggestionSheetPostAppUnlock;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)shouldDismissOnboarding;
- (void)showAudioPickerFromKeyboardShortcut;
- (void)showCameraPicker;
- (void)showLocationPickerFromKeyboardShortcut;
- (void)showPhotoMenuIfNeeded:(id)needed;
- (void)showPhotoPicker;
- (void)showSuggestionPickerFromKeyboardShortcut;
- (void)textView:(id)view didEndFormattingWithViewController:(id)controller;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
- (void)toggleBookmark;
- (void)toggleEditing;
- (void)toggleTitleVisibility:(id)visibility;
- (void)undoManagerNotificationWithNotification:(id)notification;
- (void)updateProperties;
- (void)updateUserActivityState:(id)state;
- (void)validateCommand:(id)command;
- (void)videoStartedNotification:(id)notification;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CanvasViewController

- (void)restoreSuggestionSheetPostAppUnlock
{
  selfCopy = self;
  sub_1003B5D14();
}

- (void)showSuggestionPickerFromKeyboardShortcut
{
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  selfCopy = self;
  sub_1003B7110(v5);

  sub_100004F84(v5, &qword_100AD1420);
}

- (void)showPhotoPicker
{
  selfCopy = self;
  sub_1003B80B0();
}

- (void)showPhotoMenuIfNeeded:(id)needed
{
  if (needed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(CanvasViewController *)self showPhotoPicker:v6];

  sub_100004F84(&v6, &qword_100AD13D0);
}

- (void)showCameraPicker
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003BF1BC(0, 0, v5, 0, 0, &unk_1009531F0, v9);

  sub_100004F84(v5, &qword_100AD5170);
}

- (void)showAudioPickerFromKeyboardShortcut
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = selfCopy;
  *(v9 + 40) = 0;
  sub_1003BF1BC(0, 0, v5, 0, 0, &unk_1009531E0, v9);

  sub_100004F84(v5, &qword_100AD5170);
}

- (void)showLocationPickerFromKeyboardShortcut
{
  selfCopy = self;
  sub_1003B73DC();
}

- (void)shouldDismissOnboarding
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1003BFC10;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100006C7C;
  v6[3] = &unk_100A6ABB0;
  v4 = _Block_copy(v6);
  selfCopy = self;

  [(CanvasViewController *)selfCopy dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1003BC1A8(cancelCopy);
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_100042028(&qword_100AD1B00, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10062B43C(v6, controllerCopy);

  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8960();
  }
}

- (NSUndoManager)undoManager
{
  selfCopy = self;
  v3 = sub_1006594BC();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10065B394();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_10065E8D4(appearCopy);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_10065EA44(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10065EC80(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10065F7E4(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CanvasViewController(0);
  v4 = v8.receiver;
  [(CanvasViewController *)&v8 viewDidDisappear:disappearCopy];
  if (v4[OBJC_IVAR____TtC7Journal20CanvasViewController_isFinalDisappearance] == 1 && (v5 = &v4[OBJC_IVAR____TtC7Journal20CanvasViewController_delegate], swift_unknownObjectWeakLoadStrong()))
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(v4, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)updateProperties
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasViewController(0);
  v2 = v3.receiver;
  [(CanvasViewController *)&v3 updateProperties];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  sub_1003CABA0(1);
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  isEditing = [(CanvasViewController *)selfCopy isEditing];
  if (isEditing)
  {
    v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      sub_1001737C8(1, v4);
    }

    else
    {
      [(CanvasViewController *)selfCopy endEditing];
    }
  }

  return isEditing;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10065FD78();
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100660134();
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_100660428(editing, animated);
}

- (void)appWillEnterForeground
{
  selfCopy = self;
  sub_100663054();
}

- (void)toggleTitleVisibility:(id)visibility
{
  if (visibility)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100663748();

  sub_100004F84(v6, &qword_100AD13D0);
}

- (void)findInEntry:(id)entry
{
  if (entry)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1006639B0(v6);

  sub_100004F84(v6, &qword_100AD13D0);
}

- (void)videoStartedNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100663FEC(v7);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_100664B7C(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_100665234(commandCopy);
}

- (_TtC7Journal20CanvasViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoManagerNotificationWithNotification:(id)notification
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for MainActor();
  selfCopy = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v8 + 32))(v19 + v17, v10, v7);
  *(v19 + v18) = selfCopy;
  sub_1003E9628(0, 0, v6, &unk_100960FF8, v19);

  (*(v8 + 8))(v13, v7);
}

- (void)toggleEditing
{
  selfCopy = self;
  [(CanvasViewController *)selfCopy setEditing:[(CanvasViewController *)selfCopy isEditing]^ 1 animated:1];
}

- (void)onEmptyRegionTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_10066B578(tappedCopy);
}

- (BOOL)textViewShouldEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_10066DD6C();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10066DE98();
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_10066E0A0();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_10066E1F4(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_10066E67C(selectionCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10066EB2C(changeCopy);
}

- (void)textView:(id)view didEndFormattingWithViewController:(id)controller
{
  sub_1000065A8(0, &unk_100AD43A0);
  viewCopy = view;
  selfCopy = self;
  v7 = sub_100658B00();
  LOBYTE(self) = static NSObject.== infix(_:_:)();

  if (self)
  {
    v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);

    *(&v8->super.super.super.isa + OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController) = 0;
    v9 = v8;
  }

  else
  {
    v9 = selfCopy;
  }
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  length = range.length;
  sub_1000065A8(0, &unk_100ADC630);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12.super.super.isa = sub_10066F21C(viewCopy, v11, length, v8).super.super.isa;

  return v12.super.super.isa;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100672590(touchCopy);

  return v9;
}

- (void)chooseCustomDate:(id)date
{
  v5 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (date)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  swift_storeEnumTagMultiPayload();
  sub_1003B5E4C(v7, v10);

  sub_1006730B4(v7, type metadata accessor for CanvasContentInputType);
  sub_100004F84(v10, &qword_100AD13D0);
}

- (void)toggleBookmark
{
  selfCopy = self;
  sub_10066FDAC();
}

- (void)deleteEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_100672BF8();
}

- (void)changeJournal:(id)journal
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10066FF78(journal);
  swift_unknownObjectRelease();
}

- (void)jumpToSelection
{
  selfCopy = self;
  v2 = sub_100658B00();
  selectedRange = [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView) selectedRange];
  [v2 scrollRangeToVisible:{selectedRange, v4}];
}

- (void)addDrawing
{
  selfCopy = self;
  v2 = sub_100658B00();
  sub_1002B40C8();
}

@end