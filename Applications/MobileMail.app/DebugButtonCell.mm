@interface DebugButtonCell
+ (id)cellShowingViewControllerClass:(Class)class;
+ (id)cellWithTitle:(id)title style:(int64_t)style handler:(id)handler;
+ (id)cellWithTitle:(id)title style:(int64_t)style target:(id)target action:(SEL)action;
- (DebugButtonCell)initWithTitle:(id)title detail:(id)detail style:(int64_t)style handler:(id)handler;
- (DebugButtonDelegate)delegate;
- (void)invokeAction;
@end

@implementation DebugButtonCell

+ (id)cellShowingViewControllerClass:(Class)class
{
  v4 = [DebugButtonCell alloc];
  title = [(objc_class *)class title];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100098494;
  v8[3] = &unk_10064E5B0;
  v8[4] = class;
  v6 = [(DebugButtonCell *)v4 initWithTitle:title detail:0 style:2 handler:v8];

  return v6;
}

+ (id)cellWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v9 = [DebugButtonCell alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009866C;
  v13[3] = &unk_10064E5D8;
  v10 = handlerCopy;
  v14 = v10;
  v11 = [(DebugButtonCell *)v9 initWithTitle:titleCopy detail:0 style:style handler:v13];

  return v11;
}

+ (id)cellWithTitle:(id)title style:(int64_t)style target:(id)target action:(SEL)action
{
  titleCopy = title;
  objc_initWeak(&location, target);
  v10 = [DebugButtonCell alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000987A0;
  v13[3] = &unk_10064E600;
  objc_copyWeak(v14, &location);
  v14[1] = action;
  v11 = [(DebugButtonCell *)v10 initWithTitle:titleCopy detail:0 style:style handler:v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v11;
}

- (DebugButtonCell)initWithTitle:(id)title detail:(id)detail style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  detailCopy = detail;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = DebugButtonCell;
  v13 = [(DebugButtonCell *)&v23 initWithStyle:detailCopy != 0 reuseIdentifier:0];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = objc_retainBlock(handlerCopy);
  handler = v13->_handler;
  v13->_handler = v14;

  textLabel = [(DebugButtonCell *)v13 textLabel];
  [textLabel setText:titleCopy];

  detailTextLabel = [(DebugButtonCell *)v13 detailTextLabel];
  [detailTextLabel setText:detailCopy];

  switch(style)
  {
    case 0:
      textLabel2 = [(DebugButtonCell *)v13 textLabel];
      [textLabel2 setTextAlignment:1];

      v19 = +[UIColor linkColor];
      textLabel3 = [(DebugButtonCell *)v13 textLabel];
      [textLabel3 setTextColor:v19];
      goto LABEL_8;
    case 1:
      textLabel4 = [(DebugButtonCell *)v13 textLabel];
      [textLabel4 setTextAlignment:1];

      v19 = +[UIColor systemRedColor];
      textLabel3 = [(DebugButtonCell *)v13 textLabel];
      [textLabel3 setTextColor:v19];
LABEL_8:

      break;
    case 2:
      [(DebugButtonCell *)v13 setAccessoryType:1];
      break;
  }

LABEL_9:

  return v13;
}

- (void)invokeAction
{
  handler = [(DebugButtonCell *)self handler];
  handler[2](handler, self);
}

- (DebugButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end