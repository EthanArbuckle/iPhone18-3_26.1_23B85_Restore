@interface ConversationSenderHeaderViewModel
- (BOOL)forceCollapsed;
- (BOOL)isBucketSelected;
- (EMCollectionItemID)itemID;
- (MUIAvatarImageGeneratorResult)avatarResult;
- (NSString)informationButtonTitle;
- (NSString)title;
- (_TtC10MobileMail33ConversationSenderHeaderViewModel)initWithItemID:(id)d avatarResult:(id)result title:(id)title bucket:(int64_t)bucket isBucketSelected:(BOOL)selected categoryMessageCount:(int64_t)count totalMessageCount:(int64_t)messageCount newMessageCount:(int64_t)self0 unreadMessageCount:(int64_t)self1 forceCollapsed:(BOOL)self2;
- (id)copyWithZone:(void *)zone;
- (int64_t)bucket;
- (void)setAvatarResult:(id)result;
- (void)setBucket:(int64_t)bucket;
- (void)setForceCollapsed:(BOOL)collapsed;
- (void)setInformationButtonTitle:(id)title;
- (void)setIsBucketSelected:(BOOL)selected;
- (void)setItemID:(id)d;
- (void)setTitle:(id)title;
- (void)updateSubtitleInformationWithBucket:(int64_t)bucket isBucketSelected:(BOOL)selected categoryMessageCount:(int64_t)count totalMessageCount:(int64_t)messageCount unreadMessageCount:(int64_t)unreadMessageCount newMessageCount:(int64_t)newMessageCount;
@end

@implementation ConversationSenderHeaderViewModel

- (EMCollectionItemID)itemID
{
  _objc_retain(self);
  v4 = sub_1002B2534();
  _objc_release(self);

  return v4;
}

- (void)setItemID:(id)d
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  sub_1002B25FC(d);
  _objc_release(self);
}

- (MUIAvatarImageGeneratorResult)avatarResult
{
  _objc_retain(self);
  v4 = sub_1002B26EC();
  _objc_release(self);

  return v4;
}

- (void)setAvatarResult:(id)result
{
  _objc_retain(result);
  _objc_retain(self);
  sub_1002B27C4(result);
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

- (void)setTitle:(id)title
{
  _objc_retain(title);
  _objc_retain(self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002B29D8(v4, v5);
  _objc_release(title);
  _objc_release(self);
}

- (int64_t)bucket
{
  _objc_retain(self);
  v4 = sub_1002B2AD4();
  _objc_release(self);
  return v4;
}

- (void)setBucket:(int64_t)bucket
{
  _objc_retain(self);
  sub_1002B2B90(bucket);
  _objc_release(self);
}

- (BOOL)isBucketSelected
{
  _objc_retain(self);
  sub_1002B2C64();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)setIsBucketSelected:(BOOL)selected
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

- (void)setInformationButtonTitle:(id)title
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

- (void)setForceCollapsed:(BOOL)collapsed
{
  _objc_retain(self);
  v3 = _convertObjCBoolToBool(_:)();
  sub_1002B317C(v3 & 1);
  _objc_release(self);
}

- (_TtC10MobileMail33ConversationSenderHeaderViewModel)initWithItemID:(id)d avatarResult:(id)result title:(id)title bucket:(int64_t)bucket isBucketSelected:(BOOL)selected categoryMessageCount:(int64_t)count totalMessageCount:(int64_t)messageCount newMessageCount:(int64_t)self0 unreadMessageCount:(int64_t)self1 forceCollapsed:(BOOL)self2
{
  swift_unknownObjectRetain();
  _objc_retain(result);
  _objc_retain(title);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v12;
  v19 = _convertObjCBoolToBool(_:)();
  v13 = _convertObjCBoolToBool(_:)();
  v23 = sub_1002B329C(d, result, v16, v17, bucket, v19 & 1, count, messageCount, newMessageCount, unreadMessageCount, v13 & 1);
  _objc_release(title);
  return v23;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  v5[1] = zone;
  _objc_retain(self);
  v12 = v14;
  sub_1002B3934(v14);
  _objc_release(selfCopy);
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

- (void)updateSubtitleInformationWithBucket:(int64_t)bucket isBucketSelected:(BOOL)selected categoryMessageCount:(int64_t)count totalMessageCount:(int64_t)messageCount unreadMessageCount:(int64_t)unreadMessageCount newMessageCount:(int64_t)newMessageCount
{
  _objc_retain(self);
  v8 = _convertObjCBoolToBool(_:)();
  sub_1002B3CE4(bucket, v8 & 1, count, messageCount, unreadMessageCount, newMessageCount);
  _objc_release(self);
}

@end