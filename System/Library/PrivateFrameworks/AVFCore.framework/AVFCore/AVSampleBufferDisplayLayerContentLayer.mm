@interface AVSampleBufferDisplayLayerContentLayer
- (id)actionForKey:(id)a3;
@end

@implementation AVSampleBufferDisplayLayerContentLayer

- (id)actionForKey:(id)a3
{
  if (([a3 isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(a3, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AVSampleBufferDisplayLayerContentLayer;
  return [(AVSampleBufferDisplayLayerContentLayer *)&v6 actionForKey:a3];
}

@end