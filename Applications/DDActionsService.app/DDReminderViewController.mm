@interface DDReminderViewController
- (id)title;
- (void)prepareForAction:(id)action;
@end

@implementation DDReminderViewController

- (void)prepareForAction:(id)action
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008664;
  block[3] = &unk_100018AD0;
  actionCopy = action;
  selfCopy = self;
  v9 = a2;
  v5 = actionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)title
{
  title = [(DDReminderCreationController *)self->_reminderDelegate title];
  string = [title string];
  v4 = string;
  if (string)
  {
    v5 = string;
  }

  else
  {
    v5 = &stru_1000190B8;
  }

  v6 = v5;

  return v5;
}

@end