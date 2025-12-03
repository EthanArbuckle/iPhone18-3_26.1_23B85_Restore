@interface ChallengeInviteViewController
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithCoder:(id)coder;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)willBecomeActiveWithConversation:(id)conversation;
@end

@implementation ChallengeInviteViewController

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_100017DA4(conversationCopy);
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_10001AB8C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100040E9C();
    v6 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
    v7 = type metadata accessor for ChallengeInviteContentCardModel(0);
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    bundleCopy = bundle;
    v9 = sub_100040E6C();
  }

  else
  {
    v10 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
    v11 = type metadata accessor for ChallengeInviteContentCardModel(0);
    (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
    bundleCopy2 = bundle;
    v9 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ChallengeInviteViewController();
  v13 = [(ChallengeInviteViewController *)&v15 initWithNibName:v9 bundle:bundle];

  return v13;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ChallengeInviteViewController();
  coderCopy = coder;
  v8 = [(ChallengeInviteViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v5 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ChallengeInviteViewController();
  return [(ChallengeInviteViewController *)&v8 initWithShouldBeSheetPresentationControllerDelegate:delegateCopy];
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  v5 = sub_100040DCC();
  v6 = sub_100040E9C();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = sub_10001B4C8(v5, v6, v8);

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_1000028DC(&qword_1000555B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = sending;
  v15[3] = conversation;
  v15[4] = text;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_10004104C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100048370;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100048380;
  v18[5] = v17;
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_10001C938(0, 0, v13, &unk_100048390, v18);
}

@end