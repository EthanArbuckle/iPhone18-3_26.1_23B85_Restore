@interface MobileTimerAssistantWorldClockSnippetCell
- (MobileTimerAssistantWorldClockSnippetCell)initWithFrame:(CGRect)frame;
- (void)setClock:(id)clock;
@end

@implementation MobileTimerAssistantWorldClockSnippetCell

- (MobileTimerAssistantWorldClockSnippetCell)initWithFrame:(CGRect)frame
{
  v25.receiver = self;
  v25.super_class = MobileTimerAssistantWorldClockSnippetCell;
  v3 = [(MobileTimerAssistantWorldClockSnippetCell *)&v25 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MobileTimerAssistantWorldClockSnippetCell *)v3 setKeylineType:0];
    v5 = [MTUIWorldClockCellView alloc];
    [(MobileTimerAssistantWorldClockSnippetCell *)v4 bounds];
    v6 = [v5 initWithFrame:?];
    clockCellView = v4->_clockCellView;
    v4->_clockCellView = v6;

    v8 = +[UIColor siriui_textColor];
    nameLabel = [(MTUIWorldClockCellView *)v4->_clockCellView nameLabel];
    [nameLabel setTextColor:v8];

    v10 = +[UIColor siriui_semiTransparentTextColor];
    combinedLabel = [(MTUIWorldClockCellView *)v4->_clockCellView combinedLabel];
    [combinedLabel setTextColor:v10];

    v12 = +[UIColor siriui_textColor];
    digitalClock = [(MTUIWorldClockCellView *)v4->_clockCellView digitalClock];
    [digitalClock setTextColor:v12];

    [(MTUIWorldClockCellView *)v4->_clockCellView setAutoresizingMask:18];
    [(MobileTimerAssistantWorldClockSnippetCell *)v4 textAndAccessoryInsets];
    [(MTUIWorldClockCellView *)v4->_clockCellView setLayoutMargins:?];
    contentView = [(MobileTimerAssistantWorldClockSnippetCell *)v4 contentView];
    [contentView addSubview:v4->_clockCellView];

    v15 = objc_opt_new();
    v16 = _NSDictionaryOfVariableBindings(@"_clockCellView", v4->_clockCellView, 0);
    v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_clockCellView]|" options:0 metrics:0 views:v16];
    [v15 addObjectsFromArray:v17];

    v18 = _NSDictionaryOfVariableBindings(@"_clockCellView", v4->_clockCellView, 0);
    v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_clockCellView]|" options:0 metrics:0 views:v18];
    [v15 addObjectsFromArray:v19];

    heightAnchor = [(MTUIWorldClockCellView *)v4->_clockCellView heightAnchor];
    +[MTUIWorldClockCellView defaultHeight];
    v21 = [heightAnchor constraintEqualToConstant:?];
    [v15 addObject:v21];

    [NSLayoutConstraint activateConstraints:v15];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v4 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v23 = v4;
  }

  return v4;
}

- (void)setClock:(id)clock
{
  clockCopy = clock;
  if (self->_clock != clockCopy)
  {
    v10 = clockCopy;
    objc_storeStrong(&self->_clock, clock);
    cityName = [(SAClockObject *)self->_clock cityName];
    nameLabel = [(MTUIWorldClockCellView *)self->_clockCellView nameLabel];
    [nameLabel setText:cityName];

    timezoneId = [(SAClockObject *)self->_clock timezoneId];
    v9 = [NSTimeZone timeZoneWithName:timezoneId];

    [(MTUIWorldClockCellView *)self->_clockCellView setTimeZone:v9];
    [(MobileTimerAssistantWorldClockSnippetCell *)self setNeedsLayout];

    clockCopy = v10;
  }
}

@end