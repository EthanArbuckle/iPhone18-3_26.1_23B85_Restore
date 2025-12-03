@interface EKCalendarChooserOOPImpl
- (BOOL)allowsPullToRefresh;
- (BOOL)disableCalendarsUnselectedByFocus;
- (BOOL)onlyShowUnmanagedAccounts;
- (BOOL)showAccountStatus;
- (BOOL)showDelegateSetupCell;
- (BOOL)showDetailAccessories;
- (BOOL)showIdentityChooser;
- (BOOL)showsDeclinedEventsSetting;
- (CGSize)preferredContentSize;
- (EKCalendar)selectedCalendar;
- (EKCalendarChooserDelegate)delegate;
- (EKSource)limitedToSource;
- (NSSet)selectedCalendars;
- (_TtC10EventKitUI24EKCalendarChooserOOPImpl)initWithNibName:(id)name bundle:(id)bundle;
- (int)explanatoryTextMode;
- (int64_t)chooserMode;
- (int64_t)displayStyle;
- (int64_t)selectionStyle;
- (unint64_t)entityType;
- (void)setDelegate:(id)delegate;
- (void)setExplanatoryTextMode:(int)mode;
- (void)setLimitedToSource:(id)source;
- (void)setSelectedCalendar:(id)calendar;
- (void)setSelectedCalendars:(id)calendars;
- (void)toggleAllCalendars;
- (void)viewDidLoad;
@end

@implementation EKCalendarChooserOOPImpl

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D35A5ACC();
}

- (CGSize)preferredContentSize
{
  v2 = EKUIContainedControllerIdealWidth();
  EKUIContainedControllerIdealHeight();

  v4 = CGSizeMake(v3, v2);
  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)selectionStyle
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_selectionStyle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (int64_t)displayStyle
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_displayStyle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (unint64_t)entityType
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_entityType;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showIdentityChooser
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showIdentityChooser;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showDelegateSetupCell
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDelegateSetupCell;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (EKCalendarChooserDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (NSSet)selectedCalendars
{
  selfCopy = self;
  sub_1D35A87A4();

  sub_1D35A52E0(0, &qword_1EC76A860);
  sub_1D35AC630();
  v3 = sub_1D35DF474();

  return v3;
}

- (void)setSelectedCalendars:(id)calendars
{
  sub_1D35A52E0(0, &qword_1EC76A860);
  sub_1D35AC630();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = sub_1D35DF494();
  selfCopy = self;

  sub_1D35A8C18(v4);
}

- (BOOL)showDetailAccessories
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDetailAccessories;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (int64_t)chooserMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_chooserMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)disableCalendarsUnselectedByFocus
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_disableCalendarsUnselectedByFocus;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)allowsPullToRefresh
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_allowsPullToRefresh;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (EKCalendar)selectedCalendar
{
  selfCopy = self;

  v4 = sub_1D35A9C1C(v3);

  return v4;
}

- (void)setSelectedCalendar:(id)calendar
{
  calendarCopy = calendar;
  selfCopy = self;
  sub_1D35AC698(calendar);
}

- (BOOL)showsDeclinedEventsSetting
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showsDeclinedEventsSetting;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (EKSource)limitedToSource
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setLimitedToSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_1D35AC7B8(source);
}

- (int)explanatoryTextMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setExplanatoryTextMode:(int)mode
{
  v5 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = mode;
  selfCopy = self;
  v7 = sub_1D35A5820();
  memmove(__dst, v8, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    sub_1D35D70F0(*(&self->super.super.super.isa + v5));
  }

  (v7)(v9, 0);
}

- (BOOL)showAccountStatus
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showAccountStatus;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)onlyShowUnmanagedAccounts
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_onlyShowUnmanagedAccounts;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)toggleAllCalendars
{
  v3 = self + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView;
  swift_beginAccess();
  v4 = *(v3 + 7);
  v5 = *(v3 + 5);
  v21 = *(v3 + 6);
  v22 = v4;
  v6 = *(v3 + 7);
  v23 = *(v3 + 8);
  v7 = *(v3 + 3);
  v8 = *(v3 + 1);
  v17 = *(v3 + 2);
  v18 = v7;
  v9 = *(v3 + 3);
  v10 = *(v3 + 5);
  v19 = *(v3 + 4);
  v20 = v10;
  v11 = *(v3 + 1);
  v15 = *v3;
  v16 = v11;
  v25[6] = v21;
  v25[7] = v6;
  v25[8] = *(v3 + 8);
  v25[2] = v17;
  v25[3] = v9;
  v25[4] = v19;
  v25[5] = v5;
  v24 = *(v3 + 72);
  v26 = *(v3 + 72);
  v25[0] = v15;
  v25[1] = v8;
  if (sub_1D35AC2C8(v25) != 1)
  {
    v13[17] = v21;
    v13[18] = v22;
    v13[19] = v23;
    v14 = v24;
    v13[13] = v17;
    v13[14] = v18;
    v13[15] = v19;
    v13[16] = v20;
    v13[11] = v15;
    v13[12] = v16;
    selfCopy = self;
    sub_1D35AD594(&v15, v13);
    sub_1D35D74F8();

    sub_1D35AC260(&v15);
  }
}

- (_TtC10EventKitUI24EKCalendarChooserOOPImpl)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end