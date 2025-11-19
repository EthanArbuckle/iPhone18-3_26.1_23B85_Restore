@interface AVPlayerItemAVKitData
- (AVPlayerItemAVKitData)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVPlayerItemAVKitData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVPlayerItemAVKitData);
  v5 = [(AVPlayerItemAVKitData *)v4 customPropertyStorage];
  v6 = [(AVPlayerItemAVKitData *)self customPropertyStorage];
  [v5 setDictionary:v6];

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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    customPropertyStorage = v2->_customPropertyStorage;
    v2->_customPropertyStorage = v3;
  }

  return v2;
}

@end