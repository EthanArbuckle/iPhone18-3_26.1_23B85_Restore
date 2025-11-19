@interface ChallengeInviteViewController
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithCoder:(id)a3;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3;
- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation ChallengeInviteViewController

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100017DA4(v4);
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10001AB8C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100040E9C();
    v6 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
    v7 = type metadata accessor for ChallengeInviteContentCardModel(0);
    (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
    v8 = a4;
    v9 = sub_100040E6C();
  }

  else
  {
    v10 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
    v11 = type metadata accessor for ChallengeInviteContentCardModel(0);
    (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
    v12 = a4;
    v9 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ChallengeInviteViewController();
  v13 = [(ChallengeInviteViewController *)&v15 initWithNibName:v9 bundle:a4];

  return v13;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ChallengeInviteViewController();
  v7 = a3;
  v8 = [(ChallengeInviteViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

- (_TtC26ChallengesMessageExtension29ChallengeInviteViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26ChallengesMessageExtension29ChallengeInviteViewController_cardModel;
  v6 = type metadata accessor for ChallengeInviteContentCardModel(0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ChallengeInviteViewController();
  return [(ChallengeInviteViewController *)&v8 initWithShouldBeSheetPresentationControllerDelegate:v3];
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  v5 = sub_100040DCC();
  v6 = sub_100040E9C();
  v8 = v7;
  v9 = self;
  LOBYTE(v6) = sub_10001B4C8(v5, v6, v8);

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_1000028DC(&qword_1000555B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_10001C938(0, 0, v13, &unk_100048390, v18);
}

@end