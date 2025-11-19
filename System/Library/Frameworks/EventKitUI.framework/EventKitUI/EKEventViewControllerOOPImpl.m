@interface EKEventViewControllerOOPImpl
- (BOOL)ICSPreview;
- (BOOL)allowsCalendarPreview;
- (BOOL)allowsEditing;
- (BOOL)allowsInviteResponses;
- (BOOL)allowsSubitems;
- (BOOL)calendarPreviewIsInlineDayView;
- (BOOL)hasInProcessNavBar;
- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter;
- (BOOL)isEditingMode;
- (BOOL)isLargeDayView;
- (BOOL)minimalMode;
- (BOOL)noninteractivePlatterMode;
- (BOOL)showsAddToCalendarForICSPreview;
- (BOOL)showsDelegateMessage;
- (BOOL)showsDelegatorMessage;
- (BOOL)showsDeleteForICSPreview;
- (BOOL)showsDetectedConferenceItem;
- (BOOL)showsDoneButton;
- (BOOL)showsOutOfDateMessage;
- (BOOL)showsUpdateCalendarForICSPreview;
- (CGSize)preferredContentSize;
- (EKEvent)event;
- (EKEventViewDelegate)delegate;
- (_TtC10EventKitUI28EKEventViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneButtonTapped;
- (void)eventEditViewCompletedWith:(int64_t)a3 eventID:(id)a4 waitUntil:(id)a5;
- (void)eventEditViewPresented:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setEvent:(id)a3;
- (void)setHasInProcessNavBar:(BOOL)a3;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation EKEventViewControllerOOPImpl

- (BOOL)hasInProcessNavBar
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hasInProcessNavBar;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setHasInProcessNavBar:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hasInProcessNavBar;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (_TtC10EventKitUI28EKEventViewControllerOOPImpl)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1D35CB1B8(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D35CB450();
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

- (void)doneButtonTapped
{
  v3 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v15[0] = *v3;
  v5 = *(v3 + 3);
  v15[2] = *(v3 + 2);
  v15[3] = v5;
  v16[0] = *(v3 + 4);
  *(v16 + 15) = *(v3 + 79);
  v15[1] = v4;
  if (*(&v15[0] + 1))
  {
    v10 = v15[0];
    v6 = *(v3 + 4);
    v13 = *(v3 + 3);
    *v14 = v6;
    *&v14[15] = *(v3 + 79);
    v7 = *(v3 + 1);
    v12 = *(v3 + 2);
    v11 = v7;
    v8 = self;
    sub_1D35D2934(v15, v9);
    sub_1D35B4DD8();

    sub_1D35D14D8(v15);
  }
}

- (void)eventEditViewCompletedWith:(int64_t)a3 eventID:(id)a4 waitUntil:(id)a5
{
  v8 = sub_1D35DF384();
  v10 = v9;
  v11 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v12 = *(v11 + 1);
  v24[0] = *v11;
  v13 = *(v11 + 3);
  v24[2] = *(v11 + 2);
  v24[3] = v13;
  v25[0] = *(v11 + 4);
  *(v25 + 15) = *(v11 + 79);
  v24[1] = v12;
  if (*(&v24[0] + 1))
  {
    v19 = v24[0];
    v14 = *(v11 + 4);
    v22 = *(v11 + 3);
    *v23 = v14;
    *&v23[15] = *(v11 + 79);
    v15 = *(v11 + 1);
    v21 = *(v11 + 2);
    v20 = v15;
    v16 = a5;
    v17 = self;
    sub_1D35D2934(v24, v18);
    sub_1D35B4F58(a3, v8, v10, a5);

    sub_1D35D14D8(v24);
  }

  else
  {
  }
}

- (void)eventEditViewPresented:(BOOL)a3
{
  v3 = a3;
  v5 = self + OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v6 = *(v5 + 1);
  v17[0] = *v5;
  v7 = *(v5 + 3);
  v17[2] = *(v5 + 2);
  v17[3] = v7;
  v18[0] = *(v5 + 4);
  *(v18 + 15) = *(v5 + 79);
  v17[1] = v6;
  if (*(&v17[0] + 1))
  {
    v12 = v17[0];
    v8 = *(v5 + 4);
    v15 = *(v5 + 3);
    *v16 = v8;
    *&v16[15] = *(v5 + 79);
    v9 = *(v5 + 1);
    v14 = *(v5 + 2);
    v13 = v9;
    v10 = self;
    sub_1D35D2934(v17, v11);
    sub_1D35B507C(v3);

    sub_1D35D14D8(v17);
  }
}

- (EKEvent)event
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_event;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setEvent:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1D35D17B4(a3);
}

- (BOOL)allowsEditing
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsEditing;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (EKEventViewDelegate)delegate
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_delegate;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (BOOL)allowsCalendarPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsCalendarPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isEditingMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_isEditingMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDoneButton
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDoneButton;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setShowsDoneButton:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDoneButton;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (BOOL)calendarPreviewIsInlineDayView
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_calendarPreviewIsInlineDayView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)inlineDayViewRespectsSelectedCalendarsFilter
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_inlineDayViewRespectsSelectedCalendarsFilter;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)ICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_ICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)allowsInviteResponses
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsInviteResponses;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsAddToCalendarForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsAddToCalendarForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsUpdateCalendarForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsUpdateCalendarForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDeleteForICSPreview
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDeleteForICSPreview;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)allowsSubitems
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_allowsSubitems;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsOutOfDateMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsOutOfDateMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDelegatorMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDelegatorMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDelegateMessage
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDelegateMessage;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)showsDetectedConferenceItem
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_showsDetectedConferenceItem;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)minimalMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_minimalMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)noninteractivePlatterMode
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_noninteractivePlatterMode;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isLargeDayView
{
  v3 = OBJC_IVAR____TtC10EventKitUI28EKEventViewControllerOOPImpl_isLargeDayView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

@end