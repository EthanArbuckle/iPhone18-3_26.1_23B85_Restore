@interface EKEventEditViewControllerOOPImpl
- (BOOL)hasUnsavedChanges;
- (CGSize)preferredContentSize;
- (EKCalendar)defaultCalendar;
- (EKEvent)event;
- (EKEventEditViewDelegateAllOutOfProcess)editViewDelegate;
- (EKEventStore)eventStore;
- (UIColor)editorBackgroundColor;
- (_TtC10EventKitUI32EKEventEditViewControllerOOPImpl)initWithNibName:(id)name bundle:(id)bundle;
- (void)setDefaultCalendar:(id)calendar;
- (void)setEditViewDelegate:(id)delegate;
- (void)setEditorBackgroundColor:(id)color;
- (void)setEvent:(id)event;
- (void)setEventStore:(id)store;
- (void)viewDidLoad;
@end

@implementation EKEventEditViewControllerOOPImpl

- (_TtC10EventKitUI32EKEventEditViewControllerOOPImpl)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1D35DF384();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1D35BD93C(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D35BDB2C();
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

- (EKEventStore)eventStore
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_eventStore;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  sub_1D35C1314(store, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_eventStore, sub_1D35C4D40);
}

- (EKEvent)event
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_event;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1D35C1314(event, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_event, sub_1D35C4DD0);
}

- (EKEventEditViewDelegateAllOutOfProcess)editViewDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setEditViewDelegate:(id)delegate
{
  v5 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editViewDelegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (EKCalendar)defaultCalendar
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_defaultCalendar;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDefaultCalendar:(id)calendar
{
  calendarCopy = calendar;
  selfCopy = self;
  sub_1D35C1314(calendar, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_defaultCalendar, sub_1D35C5140);
}

- (UIColor)editorBackgroundColor
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editorBackgroundColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEditorBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D35C1314(color, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editorBackgroundColor, sub_1D35C5374);
}

- (BOOL)hasUnsavedChanges
{
  v3 = self + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v4 = *(v3 + 5);
  v22[4] = *(v3 + 4);
  v22[5] = v4;
  v22[6] = *(v3 + 6);
  v23 = *(v3 + 14);
  v5 = *(v3 + 1);
  v22[0] = *v3;
  v22[1] = v5;
  v6 = *(v3 + 3);
  v22[2] = *(v3 + 2);
  v22[3] = v6;
  if (*(&v22[0] + 1))
  {
    v14 = v22[0];
    v7 = *(v3 + 6);
    v19 = *(v3 + 5);
    v20 = v7;
    v21 = *(v3 + 14);
    v8 = *(v3 + 2);
    v15 = *(v3 + 1);
    v16 = v8;
    v9 = *(v3 + 3);
    v18 = *(v3 + 4);
    v17 = v9;
    selfCopy = self;
    sub_1D35C1944(v22, v13);
    v11 = sub_1D35C53B0();

    sub_1D35C0FC8(v22);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

@end