@interface MailRecategorizationCellHeaderView
- (NSString)title;
- (void)setTitle:(id)title;
@end

@implementation MailRecategorizationCellHeaderView

- (NSString)title
{
  _objc_retain(self);
  MailRecategorizationCellHeaderView.title.getter();
  v7 = v2;
  _objc_release(self);
  if (v7)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  _objc_retain(title);
  _objc_retain(self);
  if (title)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    _objc_release(title);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  MailRecategorizationCellHeaderView.title.setter(v6, v7);
  _objc_release(self);
}

@end