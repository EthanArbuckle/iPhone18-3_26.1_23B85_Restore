@interface TTRIShowRemindersViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (_TtC9Reminders31TTRIShowRemindersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (id)providerForDeferredMenuElement:(id)a3;
- (void)addStructuredHashtagForSelectedReminderAction:(id)a3;
- (void)collapseAllItemsAction:(id)a3;
- (void)createCustomSmartList:(id)a3;
- (void)deleteReminderAction:(id)a3;
- (void)editSectionsAction:(id)a3;
- (void)endEditingReminderAction:(id)a3;
- (void)expandAllItemsAction:(id)a3;
- (void)groupByTimeAction:(id)a3;
- (void)newSectionAction:(id)a3;
- (void)placeholderAction:(id)a3;
- (void)postponeAllOverdueToTodayAction:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)printListAction:(id)a3;
- (void)saveAsTemplateAction:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setPriorityAction:(id)a3;
- (void)toggleAutoCategorizeListAction:(id)a3;
- (void)toggleShowCompletedAction:(id)a3;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateUserActivityState:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewTemplatesAction:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIShowRemindersViewController

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_10037B140();

  if (v3)
  {
    sub_100003540(0, &unk_10076BAB0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10037B26C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10037E0F0();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_10037DD70(0, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10037EE58(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10037F204(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10037F8A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIShowRemindersViewController *)&v7 viewDidDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v6 = *&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v5);
  (*(v6 + 464))(v5, v6);
}

- (void)updateUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10037FDBC(v4);
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  ObjectType = swift_getObjectType();
  v8 = self;
  if ([(TTRIShowRemindersViewController *)v8 isEditing]== v5)
  {
  }

  else
  {
    UIViewController.endFirstResponderEditing()();
    v9.receiver = v8;
    v9.super_class = ObjectType;
    [(TTRIShowRemindersViewController *)&v9 setEditing:v5 animated:v4];
    [*&v8->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:v5 animated:v4];
    sub_10037DD70(1, 1);
    sub_10037FFC0();
  }
}

- (NSArray)preferredFocusEnvironments
{
  sub_100058000(&qword_10076B780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D420;
  v4 = *&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  *(v3 + 32) = v4;
  v5 = v4;
  sub_100058000(&qword_100780A40);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
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

  v8 = sub_100380378(a3, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003840A0(v4);
}

- (id)providerForDeferredMenuElement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100385D2C(v4);

  return v6;
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003908F8();
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = [(TTRIShowRemindersViewController *)&v6 contentScrollViewForEdge:a3];

  return v4;
}

- (void)deleteReminderAction:(id)a3
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v13 = self;
  }

  sub_100383958(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000079B4(v18, &qword_10076AE40);
    v14 = &qword_100772140;
    v15 = v7;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v16 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v17 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v16);
    (*(v17 + 88))(v11, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v16, v17);

    (*(v9 + 8))(v11, v8);
    v14 = &qword_10076AE40;
    v15 = v18;
  }

  sub_1000079B4(v15, v14);
}

- (void)endEditingReminderAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 456))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)createCustomSmartList:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 256))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)expandAllItemsAction:(id)a3
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
    memset(v14, 0, sizeof(v14));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  v8 = (*(v7 + 528))(v6, v7);
  v9 = *&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v10 = *&self->feedbackGenerator[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 208);
  v13 = v9;
  v12(v8, ObjectType, v10);

  sub_1000079B4(v14, &qword_10076AE40);
}

- (void)collapseAllItemsAction:(id)a3
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
    memset(v14, 0, sizeof(v14));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  v8 = (*(v7 + 528))(v6, v7);
  v9 = *&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  v10 = *&self->feedbackGenerator[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 216);
  v13 = v9;
  v12(v8, ObjectType, v10);

  sub_1000079B4(v14, &qword_10076AE40);
}

- (void)setPriorityAction:(id)a3
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

  sub_100388C5C(v6);

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)addStructuredHashtagForSelectedReminderAction:(id)a3
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v13 = self;
  }

  sub_100383958(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000079B4(v18, &qword_10076AE40);
    v14 = &qword_100772140;
    v15 = v7;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v16 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v17 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v16);
    (*(v17 + 232))(v11, v16, v17);

    (*(v9 + 8))(v11, v8);
    v14 = &qword_10076AE40;
    v15 = v18;
  }

  sub_1000079B4(v15, v14);
}

- (void)postponeAllOverdueToTodayAction:(id)a3
{
  v5 = type metadata accessor for TTRRemindersListPostponeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = self;
  }

  v11 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v12 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v11);
  (*(v6 + 104))(v8, enum case for TTRRemindersListPostponeType.today(_:), v5);
  (*(v12 + 720))(v8, v11, v12);

  (*(v6 + 8))(v8, v5);
  sub_1000079B4(v13, &qword_10076AE40);
}

- (void)printListAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 952))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)toggleShowCompletedAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter]);
  v7 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
  (*(v6 + 968))(v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)toggleAutoCategorizeListAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 944))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)newSectionAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 1016))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)editSectionsAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 1080))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)placeholderAction:(id)a3
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v3, 0, sizeof(v3));
  }

  sub_1000079B4(v3, &qword_10076AE40);
}

- (void)viewTemplatesAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 888))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)saveAsTemplateAction:(id)a3
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 896))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)groupByTimeAction:(id)a3
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
    memset(v14, 0, sizeof(v14));
    v5 = self;
  }

  v6 = &self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v8 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v8);
  if ((*(*(v7 + 8) + 8))(v8))
  {
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    sub_10000C36C(v6, v9);
    v12 = *(v6 + 3);
    v11 = *(v6 + 4);
    sub_10000C36C(v6, v12);
    v13 = (*(*(v11 + 8) + 16))(v12);
    (*(*(v10 + 8) + 24))((v13 & 1) == 0, v9);
  }

  sub_1000079B4(v14, &qword_10076AE40);
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  sub_10038B740();
  v3 = sub_100176730();

  return v3 & 1;
}

- (_TtC9Reminders31TTRIShowRemindersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = &self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  sub_10000C36C(v4, v5);
  v7 = *(v6 + 832);
  v8 = self;
  v7(v12, v5, v6);
  if (v13)
  {
    sub_10000C36C(v12, v13);
    v9 = sub_1001E1300();

    v10 = v9 ^ 1;
    sub_100004758(v12);
  }

  else
  {

    sub_1000079B4(v12, &unk_100780A18);
    v10 = 1;
  }

  return v10 & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100390EC0();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100391058();
}

@end