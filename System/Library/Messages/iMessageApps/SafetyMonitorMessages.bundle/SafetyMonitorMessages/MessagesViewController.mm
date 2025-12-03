@interface MessagesViewController
+ (void)replySuggestionWithCompletion:(id)completion;
- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (MessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate;
- (UIColor)messageTintColor;
- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler;
- (void)didBecomeActiveWithConversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willTransitionToPresentationStyle:(unint64_t)style;
@end

@implementation MessagesViewController

- (UIColor)messageTintColor
{
  sub_16278(0, &qword_24760, UIColor_ptr);
  v2 = sub_18E64();

  return v2;
}

- (BOOL)_handleTextInputPayload:(id)payload withPayloadID:(id)d
{
  sub_18BD4();
  sub_18C74();
  selfCopy = self;
  v6 = sub_1C70();

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)sending conversation:(MSConversation *)conversation associatedText:(NSString *)text completionHandler:(id)handler
{
  v11 = sub_11BB4(&qword_24780, &qword_19710);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = sending;
  v16[3] = conversation;
  v16[4] = text;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_18DD4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19810;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_19820;
  v19[5] = v18;
  sendingCopy = sending;
  conversationCopy = conversation;
  textCopy = text;
  selfCopy = self;
  sub_FD3C(0, 0, v14, &unk_19830, v19);
}

+ (void)replySuggestionWithCompletion:(id)completion
{
  v4 = sub_11BB4(&qword_24780, &qword_19710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = sub_18DD4();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_18DB4();

  v12 = sub_18DA4();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = ObjCClassMetadata;
  v13[5] = sub_15DC4;
  v13[6] = v9;
  sub_403C(0, 0, v7, &unk_19850, v13);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_DA44(conversationCopy);
}

- (void)didBecomeActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_DD70(conversationCopy);
}

- (void)didResignActiveWithConversation:(id)conversation
{
  conversationCopy = conversation;
  selfCopy = self;
  sub_EBB8(conversationCopy);
}

- (void)willTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_A910();
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  selfCopy = self;
  sub_14F94();
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_F690(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (MessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)delegate
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end