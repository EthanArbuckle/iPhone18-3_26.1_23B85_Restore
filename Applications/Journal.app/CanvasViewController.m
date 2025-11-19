@interface CanvasViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldEndEditing:(id)a3;
- (NSUndoManager)undoManager;
- (_TtC7Journal20CanvasViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)addDrawing;
- (void)appWillEnterForeground;
- (void)changeJournal:(id)a3;
- (void)chooseCustomDate:(id)a3;
- (void)deleteEntry:(id)a3;
- (void)findInEntry:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)jumpToSelection;
- (void)onEmptyRegionTapped:(id)a3;
- (void)restoreSuggestionSheetPostAppUnlock;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)shouldDismissOnboarding;
- (void)showAudioPickerFromKeyboardShortcut;
- (void)showCameraPicker;
- (void)showLocationPickerFromKeyboardShortcut;
- (void)showPhotoMenuIfNeeded:(id)a3;
- (void)showPhotoPicker;
- (void)showSuggestionPickerFromKeyboardShortcut;
- (void)textView:(id)a3 didEndFormattingWithViewController:(id)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)toggleBookmark;
- (void)toggleEditing;
- (void)toggleTitleVisibility:(id)a3;
- (void)undoManagerNotificationWithNotification:(id)a3;
- (void)updateProperties;
- (void)updateUserActivityState:(id)a3;
- (void)validateCommand:(id)a3;
- (void)videoStartedNotification:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CanvasViewController

- (void)restoreSuggestionSheetPostAppUnlock
{
  v2 = self;
  sub_1003B5D14();
}

- (void)showSuggestionPickerFromKeyboardShortcut
{
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = self;
  sub_1003B7110(v5);

  sub_100004F84(v5, &qword_100AD1420);
}

- (void)showPhotoPicker
{
  v2 = self;
  sub_1003B80B0();
}

- (void)showPhotoMenuIfNeeded:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
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
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
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
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = 0;
  sub_1003BF1BC(0, 0, v5, 0, 0, &unk_1009531E0, v9);

  sub_100004F84(v5, &qword_100AD5170);
}

- (void)showLocationPickerFromKeyboardShortcut
{
  v2 = self;
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
  v5 = self;

  [(CanvasViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003BC1A8(v4);
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_100042028(&qword_100AD1B00, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_10062B43C(v6, v7);

  if (*(&v8->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8960();
  }
}

- (NSUndoManager)undoManager
{
  v2 = self;
  v3 = sub_1006594BC();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10065B394();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_10065E8D4(v3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_10065EA44(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10065EC80(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10065F7E4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CanvasViewController(0);
  v4 = v8.receiver;
  [(CanvasViewController *)&v8 viewDidDisappear:v3];
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
  v2 = self;
  v3 = [(CanvasViewController *)v2 isEditing];
  if (v3)
  {
    v4 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      sub_1001737C8(1, v4);
    }

    else
    {
      [(CanvasViewController *)v2 endEditing];
    }
  }

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10065FD78();
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100660134();
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_100660428(a3, a4);
}

- (void)appWillEnterForeground
{
  v2 = self;
  sub_100663054();
}

- (void)toggleTitleVisibility:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100663748();

  sub_100004F84(v6, &qword_100AD13D0);
}

- (void)findInEntry:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1006639B0(v6);

  sub_100004F84(v6, &qword_100AD13D0);
}

- (void)videoStartedNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_100663FEC(v7);

  (*(v5 + 8))(v7, v4);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_100664B7C(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100665234(v4);
}

- (_TtC7Journal20CanvasViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)undoManagerNotificationWithNotification:(id)a3
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
  v15 = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v8 + 32))(v19 + v17, v10, v7);
  *(v19 + v18) = v15;
  sub_1003E9628(0, 0, v6, &unk_100960FF8, v19);

  (*(v8 + 8))(v13, v7);
}

- (void)toggleEditing
{
  v2 = self;
  [(CanvasViewController *)v2 setEditing:[(CanvasViewController *)v2 isEditing]^ 1 animated:1];
}

- (void)onEmptyRegionTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066B578(v4);
}

- (BOOL)textViewShouldEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10066DD6C();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066DE98();
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066E0A0();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_10066E1F4(v12, location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066E67C(v4);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10066EB2C(v4);
}

- (void)textView:(id)a3 didEndFormattingWithViewController:(id)a4
{
  sub_1000065A8(0, &unk_100AD43A0);
  v6 = a3;
  v10 = self;
  v7 = sub_100658B00();
  LOBYTE(self) = static NSObject.== infix(_:_:)();

  if (self)
  {
    v8 = *(&v10->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView);

    *(&v8->super.super.super.isa + OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController) = 0;
    v9 = v8;
  }

  else
  {
    v9 = v10;
  }
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  length = a4.length;
  sub_1000065A8(0, &unk_100ADC630);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  v12.super.super.isa = sub_10066F21C(v9, v11, length, v8).super.super.isa;

  return v12.super.super.isa;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100672590(v7);

  return v9;
}

- (void)chooseCustomDate:(id)a3
{
  v5 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  swift_storeEnumTagMultiPayload();
  sub_1003B5E4C(v7, v10);

  sub_1006730B4(v7, type metadata accessor for CanvasContentInputType);
  sub_100004F84(v10, &qword_100AD13D0);
}

- (void)toggleBookmark
{
  v2 = self;
  sub_10066FDAC();
}

- (void)deleteEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100672BF8();
}

- (void)changeJournal:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10066FF78(a3);
  swift_unknownObjectRelease();
}

- (void)jumpToSelection
{
  v5 = self;
  v2 = sub_100658B00();
  v3 = [*(&v5->super.super.super.isa + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView) selectedRange];
  [v2 scrollRangeToVisible:{v3, v4}];
}

- (void)addDrawing
{
  v3 = self;
  v2 = sub_100658B00();
  sub_1002B40C8();
}

@end