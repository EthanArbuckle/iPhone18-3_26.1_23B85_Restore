@interface CHEmbeddedAudioResourceInfo
- (CHEmbeddedAudioResourceInfo)initWithURL:(id)l options:(id)options;
@end

@implementation CHEmbeddedAudioResourceInfo

- (CHEmbeddedAudioResourceInfo)initWithURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = CHEmbeddedAudioResourceInfo;
  v9 = [(CHEmbeddedAudioResourceInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

@end