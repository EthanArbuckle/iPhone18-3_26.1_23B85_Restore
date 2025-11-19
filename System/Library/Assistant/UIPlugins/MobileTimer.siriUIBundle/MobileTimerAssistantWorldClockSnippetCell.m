@interface MobileTimerAssistantWorldClockSnippetCell
- (MobileTimerAssistantWorldClockSnippetCell)initWithFrame:(CGRect)a3;
- (void)setClock:(id)a3;
@end

@implementation MobileTimerAssistantWorldClockSnippetCell

- (MobileTimerAssistantWorldClockSnippetCell)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = MobileTimerAssistantWorldClockSnippetCell;
  v3 = [(MobileTimerAssistantWorldClockSnippetCell *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [(MTUIWorldClockCellView *)v4->_clockCellView nameLabel];
    [v9 setTextColor:v8];

    v10 = +[UIColor siriui_semiTransparentTextColor];
    v11 = [(MTUIWorldClockCellView *)v4->_clockCellView combinedLabel];
    [v11 setTextColor:v10];

    v12 = +[UIColor siriui_textColor];
    v13 = [(MTUIWorldClockCellView *)v4->_clockCellView digitalClock];
    [v13 setTextColor:v12];

    [(MTUIWorldClockCellView *)v4->_clockCellView setAutoresizingMask:18];
    [(MobileTimerAssistantWorldClockSnippetCell *)v4 textAndAccessoryInsets];
    [(MTUIWorldClockCellView *)v4->_clockCellView setLayoutMargins:?];
    v14 = [(MobileTimerAssistantWorldClockSnippetCell *)v4 contentView];
    [v14 addSubview:v4->_clockCellView];

    v15 = objc_opt_new();
    v16 = _NSDictionaryOfVariableBindings(@"_clockCellView", v4->_clockCellView, 0);
    v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_clockCellView]|" options:0 metrics:0 views:v16];
    [v15 addObjectsFromArray:v17];

    v18 = _NSDictionaryOfVariableBindings(@"_clockCellView", v4->_clockCellView, 0);
    v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_clockCellView]|" options:0 metrics:0 views:v18];
    [v15 addObjectsFromArray:v19];

    v20 = [(MTUIWorldClockCellView *)v4->_clockCellView heightAnchor];
    +[MTUIWorldClockCellView defaultHeight];
    v21 = [v20 constraintEqualToConstant:?];
    [v15 addObject:v21];

    [NSLayoutConstraint activateConstraints:v15];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v4 selector:"_updateForContentSizeChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v23 = v4;
  }

  return v4;
}

- (void)setClock:(id)a3
{
  v5 = a3;
  if (self->_clock != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_clock, a3);
    v6 = [(SAClockObject *)self->_clock cityName];
    v7 = [(MTUIWorldClockCellView *)self->_clockCellView nameLabel];
    [v7 setText:v6];

    v8 = [(SAClockObject *)self->_clock timezoneId];
    v9 = [NSTimeZone timeZoneWithName:v8];

    [(MTUIWorldClockCellView *)self->_clockCellView setTimeZone:v9];
    [(MobileTimerAssistantWorldClockSnippetCell *)self setNeedsLayout];

    v5 = v10;
  }
}

@end