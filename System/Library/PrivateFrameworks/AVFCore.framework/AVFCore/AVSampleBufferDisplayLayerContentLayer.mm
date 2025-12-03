@interface AVSampleBufferDisplayLayerContentLayer
- (id)actionForKey:(id)key;
@end

@implementation AVSampleBufferDisplayLayerContentLayer

- (id)actionForKey:(id)key
{
  if (([key isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(key, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AVSampleBufferDisplayLayerContentLayer;
  return [(AVSampleBufferDisplayLayerContentLayer *)&v6 actionForKey:key];
}

@end