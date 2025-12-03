@interface MessagesViewController
- (BOOL)displaysAfterAppearance;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (_TtC28InviteMessageBubbleExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleFamilyDidUpdate;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation MessagesViewController

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_10000235C(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100002AE0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100002CEC(disappear);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100002EF0(conversationCopy);
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_1000080B0(selfCopy, v4);
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
  selfCopy = self;
  v7();

  v9 = type metadata accessor for InviteMessageDetails();
  LOBYTE(selfCopy) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_100008800(v6, &qword_100034798, &qword_100029618);
  return selfCopy;
}

- (void)handleFamilyDidUpdate
{
  selfCopy = self;
  sub_100005658();
}

- (_TtC28InviteMessageBubbleExtension22MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1000283EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100005A90(v5, v7, bundle);
}

@end