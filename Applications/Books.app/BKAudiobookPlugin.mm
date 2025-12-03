@interface BKAudiobookPlugin
- (id)helperForURL:(id)l withOptions:(id)options;
@end

@implementation BKAudiobookPlugin

- (id)helperForURL:(id)l withOptions:(id)options
{
  optionsCopy = options;
  lCopy = l;
  v7 = [[BKMLAudiobookHelper alloc] initWithAssetUrl:lCopy options:optionsCopy];

  return v7;
}

@end