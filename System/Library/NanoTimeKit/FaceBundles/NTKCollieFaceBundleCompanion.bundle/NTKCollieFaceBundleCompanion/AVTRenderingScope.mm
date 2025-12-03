@interface AVTRenderingScope
+ (id)ntk_watchFaceAnimojiRenderingScope;
+ (id)ntk_watchFaceMemojiRenderingScope;
@end

@implementation AVTRenderingScope

+ (id)ntk_watchFaceAnimojiRenderingScope
{
  listControllerThumbnailScope = [self listControllerThumbnailScope];
  v3 = +[CLKDevice currentDevice];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;

  v8 = [listControllerThumbnailScope copyWithSize:AVTFramingModeWatchFace framingMode:{v5, v7}];

  return v8;
}

+ (id)ntk_watchFaceMemojiRenderingScope
{
  listControllerThumbnailScope = [self listControllerThumbnailScope];
  v3 = +[CLKDevice currentDevice];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;

  +[NTKCollieFaceView avatarFramingTopMargin];
  v9 = [listControllerThumbnailScope copyWithSize:AVTFramingModeWatchFace framingMode:{v5, v7 + v8}];

  return v9;
}

@end