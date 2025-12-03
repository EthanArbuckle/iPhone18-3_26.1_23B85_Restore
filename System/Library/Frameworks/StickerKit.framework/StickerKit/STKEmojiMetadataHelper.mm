@interface STKEmojiMetadataHelper
+ (id)metadataDictionaryFromData:(id)data;
- (STKEmojiMetadataHelper)init;
@end

@implementation STKEmojiMetadataHelper

+ (id)metadataDictionaryFromData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = sub_19A7A8E34();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v4, v6);
  sub_19A612F00(v4, v6);
  if (v7)
  {
    v8 = sub_19A7AAF34();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (STKEmojiMetadataHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmojiMetadataHelper();
  return [(STKEmojiMetadataHelper *)&v3 init];
}

@end