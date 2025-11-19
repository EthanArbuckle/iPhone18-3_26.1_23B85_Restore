@interface BridgeZoomLabeledSliderCell
- (double)initialValue;
- (id)_zoomDomainAccessor;
- (void)handleSliderDidFinishDrag:(id)a3;
@end

@implementation BridgeZoomLabeledSliderCell

- (void)handleSliderDidFinishDrag:(id)a3
{
  v4 = a3;
  v5 = [(BridgeZoomLabeledSliderCell *)self _zoomDomainAccessor];
  v6 = MEMORY[0x277CCABB0];
  [v4 value];
  v8 = v7;

  LODWORD(v9) = v8;
  v10 = [v6 numberWithFloat:v9];
  [v5 setObject:v10 forKey:@"ZoomPreferredMaximumZoomScale"];

  v11 = [(BridgeZoomLabeledSliderCell *)self _zoomDomainAccessor];
  v12 = [v11 synchronize];

  v14 = objc_opt_new();
  v13 = [MEMORY[0x277CBEB98] setWithArray:&unk_284E7E6B8];
  [v14 synchronizeNanoDomain:@"com.apple.ZoomTouch" keys:v13];
}

- (id)_zoomDomainAccessor
{
  zoomDomainAccessor = self->_zoomDomainAccessor;
  if (!zoomDomainAccessor)
  {
    v4 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.ZoomTouch"];
    v5 = self->_zoomDomainAccessor;
    self->_zoomDomainAccessor = v4;

    zoomDomainAccessor = self->_zoomDomainAccessor;
  }

  return zoomDomainAccessor;
}

- (double)initialValue
{
  v2 = [(BridgeZoomLabeledSliderCell *)self _zoomDomainAccessor];
  v3 = [v2 objectForKey:@"ZoomPreferredMaximumZoomScale"];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = *MEMORY[0x277CE68C8];
  }

  return v5;
}

@end