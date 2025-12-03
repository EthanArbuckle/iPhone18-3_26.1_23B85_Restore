@interface ICEmojiImageGenerator
- (ICEmojiImageGenerator)init;
- (id)generateEmojiImageAsset:(id)asset description:(id)description;
@end

@implementation ICEmojiImageGenerator

- (id)generateEmojiImageAsset:(id)asset description:(id)description
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v9 = _s11MobileNotes19EmojiImageGeneratorC08generatecD5Asset_11descriptionSo07NSEmojidG0CSgSS_SStF_0(v5, v7);

  return v9;
}

- (ICEmojiImageGenerator)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICEmojiImageGenerator *)&v3 init];
}

@end