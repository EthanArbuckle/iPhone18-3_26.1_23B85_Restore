@interface AVPlayerItemAVKitData
- (AVPlayerItemAVKitData)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVPlayerItemAVKitData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVPlayerItemAVKitData);
  customPropertyStorage = [(AVPlayerItemAVKitData *)v4 customPropertyStorage];
  customPropertyStorage2 = [(AVPlayerItemAVKitData *)self customPropertyStorage];
  [customPropertyStorage setDictionary:customPropertyStorage2];

  [(AVPlayerItemAVKitData *)v4 setInterstitialPolicyEnforcement:1];
  return v4;
}

- (AVPlayerItemAVKitData)init
{
  v6.receiver = self;
  v6.super_class = AVPlayerItemAVKitData;
  v2 = [(AVPlayerItemAVKitData *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    customPropertyStorage = v2->_customPropertyStorage;
    v2->_customPropertyStorage = dictionary;
  }

  return v2;
}

@end