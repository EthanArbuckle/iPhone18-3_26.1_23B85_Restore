@interface EKSubscribedCalendarEditItemViewController
- (CGSize)preferredContentSize;
- (EKSubscribedCalendarEditItemViewController)initWithFrame:(CGRect)a3 calendar:(id)a4;
- (void)loadView;
@end

@implementation EKSubscribedCalendarEditItemViewController

- (EKSubscribedCalendarEditItemViewController)initWithFrame:(CGRect)a3 calendar:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = EKSubscribedCalendarEditItemViewController;
  v11 = [(EKEditItemViewController *)&v16 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_calendar, a4);
    v13 = EventKitUIBundle();
    v14 = [v13 localizedStringForKey:@"Edit Calendar" value:&stru_1F4EF6790 table:0];
    [(EKSubscribedCalendarEditItemViewController *)v12 setTitle:v14];

    [(EKEditItemViewController *)v12 setShowsDoneButton:1];
    [(EKEditItemViewController *)v12 setModal:1];
  }

  return v12;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v19 = [v3 initWithFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  [v19 setAutoresizingMask:18];
  v4 = [EKSubscribedCalendarEditor alloc];
  calendar = self->_calendar;
  v6 = [(EKCalendar *)calendar eventStore];
  v7 = [(EKSubscribedCalendarEditor *)v4 initWithCalendar:calendar eventStore:v6 entityType:0 limitedToSource:0];
  calendarEditor = self->_calendarEditor;
  self->_calendarEditor = v7;

  [(EKSubscribedCalendarEditItemViewController *)self addChildViewController:self->_calendarEditor];
  [(EKAbstractCalendarEditor *)self->_calendarEditor didMoveToParentViewController:self];
  v9 = [(EKAbstractCalendarEditor *)self->_calendarEditor view];
  [v19 addSubview:v9];

  [v19 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(EKAbstractCalendarEditor *)self->_calendarEditor view];
  [v18 setFrame:{v11, v13, v15, v17}];

  [(EKSubscribedCalendarEditItemViewController *)self setView:v19];
}

- (CGSize)preferredContentSize
{
  v14.receiver = self;
  v14.super_class = EKSubscribedCalendarEditItemViewController;
  [(EKEditItemViewController *)&v14 preferredContentSize];
  v4 = v3;
  v5 = [(EKAbstractCalendarEditor *)self->_calendarEditor view];
  [v5 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v7 = v6;

  v8 = [(EKSubscribedCalendarEditItemViewController *)self navigationController];
  v9 = [v8 navigationBar];
  [v9 frame];
  v11 = v7 + v10;

  v12 = v4;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end