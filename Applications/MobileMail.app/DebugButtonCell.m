@interface DebugButtonCell
+ (id)cellShowingViewControllerClass:(Class)a3;
+ (id)cellWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
+ (id)cellWithTitle:(id)a3 style:(int64_t)a4 target:(id)a5 action:(SEL)a6;
- (DebugButtonCell)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 handler:(id)a6;
- (DebugButtonDelegate)delegate;
- (void)invokeAction;
@end

@implementation DebugButtonCell

+ (id)cellShowingViewControllerClass:(Class)a3
{
  v4 = [DebugButtonCell alloc];
  v5 = [(objc_class *)a3 title];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100098494;
  v8[3] = &unk_10064E5B0;
  v8[4] = a3;
  v6 = [(DebugButtonCell *)v4 initWithTitle:v5 detail:0 style:2 handler:v8];

  return v6;
}

+ (id)cellWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [DebugButtonCell alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009866C;
  v13[3] = &unk_10064E5D8;
  v10 = v8;
  v14 = v10;
  v11 = [(DebugButtonCell *)v9 initWithTitle:v7 detail:0 style:a4 handler:v13];

  return v11;
}

+ (id)cellWithTitle:(id)a3 style:(int64_t)a4 target:(id)a5 action:(SEL)a6
{
  v9 = a3;
  objc_initWeak(&location, a5);
  v10 = [DebugButtonCell alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000987A0;
  v13[3] = &unk_10064E600;
  objc_copyWeak(v14, &location);
  v14[1] = a6;
  v11 = [(DebugButtonCell *)v10 initWithTitle:v9 detail:0 style:a4 handler:v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v11;
}

- (DebugButtonCell)initWithTitle:(id)a3 detail:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = DebugButtonCell;
  v13 = [(DebugButtonCell *)&v23 initWithStyle:v11 != 0 reuseIdentifier:0];
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = objc_retainBlock(v12);
  handler = v13->_handler;
  v13->_handler = v14;

  v16 = [(DebugButtonCell *)v13 textLabel];
  [v16 setText:v10];

  v17 = [(DebugButtonCell *)v13 detailTextLabel];
  [v17 setText:v11];

  switch(a5)
  {
    case 0:
      v21 = [(DebugButtonCell *)v13 textLabel];
      [v21 setTextAlignment:1];

      v19 = +[UIColor linkColor];
      v20 = [(DebugButtonCell *)v13 textLabel];
      [v20 setTextColor:v19];
      goto LABEL_8;
    case 1:
      v18 = [(DebugButtonCell *)v13 textLabel];
      [v18 setTextAlignment:1];

      v19 = +[UIColor systemRedColor];
      v20 = [(DebugButtonCell *)v13 textLabel];
      [v20 setTextColor:v19];
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
  v3 = [(DebugButtonCell *)self handler];
  v3[2](v3, self);
}

- (DebugButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end