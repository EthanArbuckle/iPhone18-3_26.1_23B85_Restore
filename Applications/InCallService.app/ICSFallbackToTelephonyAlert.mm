@interface ICSFallbackToTelephonyAlert
- (NSString)alternateButtonTitle;
- (NSString)message;
- (id)cancelAction;
- (void)alternateResponse;
- (void)defaultResponse;
- (void)setCancelAction:(id)action;
- (void)show;
@end

@implementation ICSFallbackToTelephonyAlert

- (id)cancelAction
{
  v2 = sub_100179634();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10002E570;
    v6[3] = &unk_10035C008;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCancelAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1001541E8;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_100179714(v4, v5);
}

- (NSString)message
{
  selfCopy = self;
  sub_100179B6C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)alternateButtonTitle
{
  selfCopy = self;
  sub_100179E10();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)defaultResponse
{
  selfCopy = self;
  sub_100179E28();
}

- (void)alternateResponse
{
  selfCopy = self;
  sub_10017A0AC();
}

- (void)show
{
  selfCopy = self;
  sub_10017A160();
}

@end