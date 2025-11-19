@interface BKAudiobookPlugin
- (id)helperForURL:(id)a3 withOptions:(id)a4;
@end

@implementation BKAudiobookPlugin

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BKMLAudiobookHelper alloc] initWithAssetUrl:v6 options:v5];

  return v7;
}

@end