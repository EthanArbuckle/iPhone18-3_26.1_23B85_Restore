@interface ICDebuggingItemHeader
- (UIButton)clearButton;
- (void)setClearButtonHandler:(id)handler;
- (void)setTitle:(id)title;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation ICDebuggingItemHeader

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);

  [(ICDebuggingItemHeader *)self setNeedsUpdateConfiguration];
}

- (void)setClearButtonHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  clearButtonHandler = self->_clearButtonHandler;
  self->_clearButtonHandler = v4;

  [(ICDebuggingItemHeader *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  v11.receiver = self;
  v11.super_class = ICDebuggingItemHeader;
  [(ICDebuggingItemHeader *)&v11 updateConfigurationUsingState:state];
  v4 = +[UIListContentConfiguration groupedHeaderConfiguration];
  title = [(ICDebuggingItemHeader *)self title];
  [v4 setText:title];

  clearButtonHandler = [(ICDebuggingItemHeader *)self clearButtonHandler];

  if (clearButtonHandler)
  {
    v7 = [UICellAccessoryCustomView alloc];
    clearButton = [(ICDebuggingItemHeader *)self clearButton];
    v9 = [v7 initWithCustomView:clearButton placement:1];

    v12 = v9;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [(ICDebuggingItemHeader *)self setAccessories:v10];
  }

  else
  {
    [(ICDebuggingItemHeader *)self setAccessories:&__NSArray0__struct];
  }

  [(ICDebuggingItemHeader *)self setContentConfiguration:v4];
}

- (UIButton)clearButton
{
  clearButton = self->_clearButton;
  if (clearButton)
  {
    v3 = clearButton;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DCA90;
    v10[3] = &unk_100647A58;
    v10[4] = self;
    v5 = [UIAction actionWithHandler:v10];
    v6 = +[UIButtonConfiguration plainButtonConfiguration];
    [v6 setTitle:@"Clear"];
    [v6 setButtonSize:2];
    v7 = [UIButton buttonWithConfiguration:v6 primaryAction:v5];
    v8 = self->_clearButton;
    self->_clearButton = v7;

    v3 = self->_clearButton;
  }

  return v3;
}

@end