@interface MessagesViewController
+ (void)replySuggestionWithCompletion:(id)a3;
- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3;
- (UIColor)messageTintColor;
- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6;
- (void)didBecomeActiveWithConversation:(id)a3;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willTransitionToPresentationStyle:(unint64_t)a3;
@end

@implementation MessagesViewController

- (UIColor)messageTintColor
{
  sub_16278(0, &qword_24760, UIColor_ptr);
  v2 = sub_18E64();

  return v2;
}

- (BOOL)_handleTextInputPayload:(id)a3 withPayloadID:(id)a4
{
  sub_18BD4();
  sub_18C74();
  v5 = self;
  v6 = sub_1C70();

  return v6 & 1;
}

- (void)_validateMessageForSending:(MSMessage *)a3 conversation:(MSConversation *)a4 associatedText:(NSString *)a5 completionHandler:(id)a6
{
  v11 = sub_11BB4(&qword_24780, &qword_19710);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_FD3C(0, 0, v14, &unk_19830, v19);
}

+ (void)replySuggestionWithCompletion:(id)a3
{
  v4 = sub_11BB4(&qword_24780, &qword_19710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DA44(v4);
}

- (void)didBecomeActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_DD70(v4);
}

- (void)didResignActiveWithConversation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_EBB8(v4);
}

- (void)willTransitionToPresentationStyle:(unint64_t)a3
{
  v3 = self;
  sub_A910();
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  v3 = self;
  sub_14F94();
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_F690(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (MessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (MessagesViewController)initWithShouldBeSheetPresentationControllerDelegate:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end