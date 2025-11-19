@interface DDReminderViewController
- (id)title;
- (void)prepareForAction:(id)a3;
@end

@implementation DDReminderViewController

- (void)prepareForAction:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008664;
  block[3] = &unk_100018AD0;
  v7 = a3;
  v8 = self;
  v9 = a2;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)title
{
  v2 = [(DDReminderCreationController *)self->_reminderDelegate title];
  v3 = [v2 string];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1000190B8;
  }

  v6 = v5;

  return v5;
}

@end