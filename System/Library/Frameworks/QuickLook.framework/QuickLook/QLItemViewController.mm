@interface QLItemViewController
@end

@implementation QLItemViewController

void __92__QLItemViewController_SupportedContentTypesCommonMethods__supportedAudiovisualContentTypes__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CE6650] audiovisualTypes];
  v1 = [v0 setWithArray:v3];
  v2 = supportedAudiovisualContentTypes_supportedContentTypes;
  supportedAudiovisualContentTypes_supportedContentTypes = v1;
}

@end