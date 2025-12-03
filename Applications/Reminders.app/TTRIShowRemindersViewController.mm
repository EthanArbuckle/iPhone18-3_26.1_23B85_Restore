@interface TTRIShowRemindersViewController
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (_TtC9Reminders31TTRIShowRemindersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (id)providerForDeferredMenuElement:(id)element;
- (void)addStructuredHashtagForSelectedReminderAction:(id)action;
- (void)collapseAllItemsAction:(id)action;
- (void)createCustomSmartList:(id)list;
- (void)deleteReminderAction:(id)action;
- (void)editSectionsAction:(id)action;
- (void)endEditingReminderAction:(id)action;
- (void)expandAllItemsAction:(id)action;
- (void)groupByTimeAction:(id)action;
- (void)newSectionAction:(id)action;
- (void)placeholderAction:(id)action;
- (void)postponeAllOverdueToTodayAction:(id)action;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)printListAction:(id)action;
- (void)saveAsTemplateAction:(id)action;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setPriorityAction:(id)action;
- (void)toggleAutoCategorizeListAction:(id)action;
- (void)toggleShowCompletedAction:(id)action;
- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateUserActivityState:(id)state;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewTemplatesAction:(id)action;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIShowRemindersViewController

- (NSArray)keyCommands
{
  selfCopy = self;
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
  selfCopy = self;
  sub_10037B26C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10037E0F0();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10037DD70(0, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10037EE58(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10037F204(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10037F8A0(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(TTRIShowRemindersViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v6 = *&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
  sub_10000C36C(&v4[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v5);
  (*(v6 + 464))(v5, v6);
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_10037FDBC(stateCopy);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  if ([(TTRIShowRemindersViewController *)selfCopy isEditing]== editingCopy)
  {
  }

  else
  {
    UIViewController.endFirstResponderEditing()();
    v9.receiver = selfCopy;
    v9.super_class = ObjectType;
    [(TTRIShowRemindersViewController *)&v9 setEditing:editingCopy animated:animatedCopy];
    [*&selfCopy->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:editingCopy animated:animatedCopy];
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

  v8 = sub_100380378(action, v10);

  sub_1000079B4(v10, &qword_10076AE40);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_1003840A0(commandCopy);
}

- (id)providerForDeferredMenuElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v6 = sub_100385D2C(elementCopy);

  return v6;
}

- (void)ttr_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1003908F8();
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = [(TTRIShowRemindersViewController *)&v6 contentScrollViewForEdge:edge];

  return v4;
}

- (void)deleteReminderAction:(id)action
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    selfCopy2 = self;
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

- (void)endEditingReminderAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 456))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)createCustomSmartList:(id)list
{
  if (list)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 256))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)expandAllItemsAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
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

- (void)collapseAllItemsAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
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

- (void)setPriorityAction:(id)action
{
  if (action)
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

  sub_100388C5C(v6);

  sub_1000079B4(v6, &qword_10076AE40);
}

- (void)addStructuredHashtagForSelectedReminderAction:(id)action
{
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    selfCopy2 = self;
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

- (void)postponeAllOverdueToTodayAction:(id)action
{
  v5 = type metadata accessor for TTRRemindersListPostponeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    selfCopy2 = self;
  }

  v11 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v12 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v11);
  (*(v6 + 104))(v8, enum case for TTRRemindersListPostponeType.today(_:), v5);
  (*(v12 + 720))(v8, v11, v12);

  (*(v6 + 8))(v8, v5);
  sub_1000079B4(v13, &qword_10076AE40);
}

- (void)printListAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 952))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)toggleShowCompletedAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter]);
  v7 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
  (*(v6 + 968))(v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)toggleAutoCategorizeListAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 944))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)newSectionAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 1016))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)editSectionsAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 1080))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)placeholderAction:(id)action
{
  if (action)
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

- (void)viewTemplatesAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 888))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)saveAsTemplateAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *&self->toolbarBottomConstraint[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v7 = *&self->keyboardAppearState[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  sub_10000C36C(&self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v6);
  (*(v7 + 896))(v6, v7);

  sub_1000079B4(v8, &qword_10076AE40);
}

- (void)groupByTimeAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
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
  selfCopy = self;
  sub_10038B740();
  v3 = sub_100176730();

  return v3 & 1;
}

- (_TtC9Reminders31TTRIShowRemindersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  v4 = &self->TTRIContentUnavailableHostableViewController_opaque[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  sub_10000C36C(v4, v5);
  v7 = *(v6 + 832);
  selfCopy = self;
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

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100390EC0();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100391058();
}

@end