@interface MKLookAroundScene
- (MKLookAroundScene)initWithMapItem:(id)item cameraFrameOverride:(id)override;
- (MKLookAroundScene)initWithMuninViewState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MKLookAroundScene

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 16) = self->_type;
  objc_storeStrong((v4 + 40), self->_mapItem);
  v5 = [(GEOCameraFrame *)self->_cameraFrameOverride copy];
  v6 = *(v4 + 24);
  *(v4 + 24) = v5;

  v7 = [(GEOMuninViewState *)self->_muninViewState copy];
  v8 = *(v4 + 32);
  *(v4 + 32) = v7;

  *(v4 + 8) = self->_wantsCloseUpView;
  return v4;
}

- (MKLookAroundScene)initWithMuninViewState:(id)state
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = MKLookAroundScene;
  v5 = [(MKLookAroundScene *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v7 = [stateCopy copy];
    muninViewState = v6->_muninViewState;
    v6->_muninViewState = v7;
  }

  return v6;
}

- (MKLookAroundScene)initWithMapItem:(id)item cameraFrameOverride:(id)override
{
  itemCopy = item;
  overrideCopy = override;
  v14.receiver = self;
  v14.super_class = MKLookAroundScene;
  v9 = [(MKLookAroundScene *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 0;
    objc_storeStrong(&v9->_mapItem, item);
    v11 = [overrideCopy copy];
    cameraFrameOverride = v10->_cameraFrameOverride;
    v10->_cameraFrameOverride = v11;
  }

  return v10;
}

@end