@interface QLItemViewController(SupportedContentTypesCommonMethods)
+ (id)supportedAudiovisualContentTypes;
@end

@implementation QLItemViewController(SupportedContentTypesCommonMethods)

+ (id)supportedAudiovisualContentTypes
{
  if (supportedAudiovisualContentTypes_onceToken != -1)
  {
    +[QLItemViewController(SupportedContentTypesCommonMethods) supportedAudiovisualContentTypes];
  }

  v1 = supportedAudiovisualContentTypes_supportedContentTypes;

  return v1;
}

@end