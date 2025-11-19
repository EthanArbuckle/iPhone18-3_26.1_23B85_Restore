@interface MessagesViewController
- (BOOL)displaysAfterAppearance;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (_TtC28InviteMessageBubbleExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleFamilyDidUpdate;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation MessagesViewController

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_10000235C(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100002AE0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100002CEC(a3);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100002EF0(v4);
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1000080B0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)displaysAfterAppearance
{
  v3 = sub_100001DFC(&qword_100034798, &qword_100029618);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *((swift_isaMask & self->super.super.super.super.super.isa) + 0xB0);
  v8 = self;
  v7();

  v9 = type metadata accessor for InviteMessageDetails();
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_100008800(v6, &qword_100034798, &qword_100029618);
  return v8;
}

- (void)handleFamilyDidUpdate
{
  v2 = self;
  sub_100005658();
}

- (_TtC28InviteMessageBubbleExtension22MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000283EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100005A90(v5, v7, a4);
}

@end