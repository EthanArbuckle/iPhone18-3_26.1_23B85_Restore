@interface ConversationSenderHeaderViewModel
- (BOOL)forceCollapsed;
- (BOOL)isBucketSelected;
- (EMCollectionItemID)itemID;
- (MUIAvatarImageGeneratorResult)avatarResult;
- (NSString)informationButtonTitle;
- (NSString)title;
- (_TtC10MobileMail33ConversationSenderHeaderViewModel)initWithItemID:(id)a3 avatarResult:(id)a4 title:(id)a5 bucket:(int64_t)a6 isBucketSelected:(BOOL)a7 categoryMessageCount:(int64_t)a8 totalMessageCount:(int64_t)a9 newMessageCount:(int64_t)a10 unreadMessageCount:(int64_t)a11 forceCollapsed:(BOOL)a12;
- (id)copyWithZone:(void *)a3;
- (int64_t)bucket;
- (void)setAvatarResult:(id)a3;
- (void)setBucket:(int64_t)a3;
- (void)setForceCollapsed:(BOOL)a3;
- (void)setInformationButtonTitle:(id)a3;
- (void)setIsBucketSelected:(BOOL)a3;
- (void)setItemID:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateSubtitleInformationWithBucket:(int64_t)a3 isBucketSelected:(BOOL)a4 categoryMessageCount:(int64_t)a5 totalMessageCount:(int64_t)a6 unreadMessageCount:(int64_t)a7 newMessageCount:(int64_t)a8;
@end

@implementation ConversationSenderHeaderViewModel

- (EMCollectionItemID)itemID
{
  _objc_retain(self);
  v4 = sub_1002B2534();
  _objc_release(self);

  return v4;
}

- (void)setItemID:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002B25FC(a3);
  _objc_release(self);
}

- (MUIAvatarImageGeneratorResult)avatarResult
{
  _objc_retain(self);
  v4 = sub_1002B26EC();
  _objc_release(self);

  return v4;
}

- (void)setAvatarResult:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_1002B27C4(a3);
  _objc_release(self);
}

- (NSString)title
{
  _objc_retain(self);
  sub_1002B28E8();
  _objc_release(self);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setTitle:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002B29D8(v4, v5);
  _objc_release(a3);
  _objc_release(self);
}

- (int64_t)bucket
{
  _objc_retain(self);
  v4 = sub_1002B2AD4();
  _objc_release(self);
  return v4;
}

- (void)setBucket:(int64_t)a3
{
  _objc_retain(self);
  sub_1002B2B90(a3);
  _objc_release(self);
}

- (BOOL)isBucketSelected
{
  _objc_retain(self);
  sub_1002B2C64();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsBucketSelected:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  sub_1002B2D2C(v3 & 1);
  _objc_release(self);
}

- (NSString)informationButtonTitle
{
  _objc_retain(self);
  sub_1002B2E68();
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

- (void)setInformationButtonTitle:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    _objc_release(a3);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1002B2FB0(v6, v7);
  _objc_release(self);
}

- (BOOL)forceCollapsed
{
  _objc_retain(self);
  sub_1002B30B4();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setForceCollapsed:(BOOL)a3
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  sub_1002B317C(v3 & 1);
  _objc_release(self);
}

- (_TtC10MobileMail33ConversationSenderHeaderViewModel)initWithItemID:(id)a3 avatarResult:(id)a4 title:(id)a5 bucket:(int64_t)a6 isBucketSelected:(BOOL)a7 categoryMessageCount:(int64_t)a8 totalMessageCount:(int64_t)a9 newMessageCount:(int64_t)a10 unreadMessageCount:(int64_t)a11 forceCollapsed:(BOOL)a12
{
  swift_unknownObjectRetain();
  _objc_retain(a4);
  _objc_retain(a5);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v12;
  v19 = _convertObjCBoolToBool(_:)();
  v13 = _convertObjCBoolToBool(_:)();
  v23 = sub_1002B329C(a3, a4, v16, v17, a6, v19 & 1, a8, a9, a10, a11, v13 & 1);
  _objc_release(a5);
  return v23;
}

- (id)copyWithZone:(void *)a3
{
  v6 = self;
  v5[1] = a3;
  _objc_retain(self);
  v12 = v14;
  sub_1002B3934(v14);
  _objc_release(v6);
  v10 = v15;
  v3 = sub_10027EC3C(v14, v15);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v11 = v5 - v7;
  (*(v8 + 16))();
  v13 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v8 + 8))(v11, v10);
  sub_1000160F4(v12);
  return v13;
}

- (void)updateSubtitleInformationWithBucket:(int64_t)a3 isBucketSelected:(BOOL)a4 categoryMessageCount:(int64_t)a5 totalMessageCount:(int64_t)a6 unreadMessageCount:(int64_t)a7 newMessageCount:(int64_t)a8
{
  _objc_retain(self);
  v8 = _convertObjCBoolToBool(_:)();
  sub_1002B3CE4(a3, v8 & 1, a5, a6, a7, a8);
  _objc_release(self);
}

@end