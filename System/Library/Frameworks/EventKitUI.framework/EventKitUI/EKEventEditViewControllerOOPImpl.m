@interface EKEventEditViewControllerOOPImpl
- (BOOL)hasUnsavedChanges;
- (CGSize)preferredContentSize;
- (EKCalendar)defaultCalendar;
- (EKEvent)event;
- (EKEventEditViewDelegateAllOutOfProcess)editViewDelegate;
- (EKEventStore)eventStore;
- (UIColor)editorBackgroundColor;
- (_TtC10EventKitUI32EKEventEditViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setDefaultCalendar:(id)a3;
- (void)setEditViewDelegate:(id)a3;
- (void)setEditorBackgroundColor:(id)a3;
- (void)setEvent:(id)a3;
- (void)setEventStore:(id)a3;
- (void)viewDidLoad;
@end

@implementation EKEventEditViewControllerOOPImpl

- (_TtC10EventKitUI32EKEventEditViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1D35DF384();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1D35BD93C(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
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

- (void)setEventStore:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D35C1314(a3, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_eventStore, sub_1D35C4D40);
}

- (EKEvent)event
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_event;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEvent:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D35C1314(a3, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_event, sub_1D35C4DD0);
}

- (EKEventEditViewDelegateAllOutOfProcess)editViewDelegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setEditViewDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editViewDelegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (EKCalendar)defaultCalendar
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_defaultCalendar;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDefaultCalendar:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D35C1314(a3, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_defaultCalendar, sub_1D35C5140);
}

- (UIColor)editorBackgroundColor
{
  v3 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editorBackgroundColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEditorBackgroundColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D35C1314(a3, &OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editorBackgroundColor, sub_1D35C5374);
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
    v10 = self;
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