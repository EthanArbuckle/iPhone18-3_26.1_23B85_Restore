@interface PKMetalRenderMaskRenderCache
- (PKMetalRenderMaskRenderCache)initWithInk:(id)ink strokeDataUUID:(id)d;
@end

@implementation PKMetalRenderMaskRenderCache

- (PKMetalRenderMaskRenderCache)initWithInk:(id)ink strokeDataUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = PKMetalRenderMaskRenderCache;
  v8 = [(PKMetalStrokeRenderCache *)&v11 initWithInk:ink renderZoomFactor:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strokeDataUUID, d);
  }

  return v9;
}

@end