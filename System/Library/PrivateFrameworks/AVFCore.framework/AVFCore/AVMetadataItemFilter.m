@interface AVMetadataItemFilter
+ (AVMetadataItemFilter)metadataItemFilterForSharing;
@end

@implementation AVMetadataItemFilter

+ (AVMetadataItemFilter)metadataItemFilterForSharing
{
  if (metadataItemFilterForSharing_onceToken != -1)
  {
    +[AVMetadataItemFilter metadataItemFilterForSharing];
  }

  return metadataItemFilterForSharing_sSharingFilter;
}

AVMetadataItemFilterForSharing *__52__AVMetadataItemFilter_metadataItemFilterForSharing__block_invoke()
{
  result = objc_alloc_init(AVMetadataItemFilterForSharing);
  metadataItemFilterForSharing_sSharingFilter = result;
  return result;
}

@end