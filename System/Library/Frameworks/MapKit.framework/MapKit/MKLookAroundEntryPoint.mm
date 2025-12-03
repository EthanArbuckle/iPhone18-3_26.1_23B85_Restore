@interface MKLookAroundEntryPoint
+ (id)entryPointWithMapItem:(id)item isMarkedLocation:(BOOL)location wantsCloseUpView:(BOOL)view cameraFrameOverride:(id)override triggerAction:(int)action;
+ (id)entryPointWithMapItem:(id)item triggerAction:(int)action;
+ (id)entryPointWithMapItem:(id)item wantsCloseUpView:(BOOL)view cameraFrameOverride:(id)override;
+ (id)entryPointWithMuninMarker:(id)marker heading:(double)heading;
+ (id)entryPointWithMuninViewState:(id)state;
+ (id)entryPointWithMuninViewState:(id)state triggerAction:(int)action;
+ (id)entryPointWithScene:(id)scene wantsCloseUpView:(BOOL)view;
- (MKLookAroundEntryPoint)init;
@end

@implementation MKLookAroundEntryPoint

- (MKLookAroundEntryPoint)init
{
  v5.receiver = self;
  v5.super_class = MKLookAroundEntryPoint;
  v2 = [(MKLookAroundEntryPoint *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MKLookAroundEntryPoint *)v2 setTriggerAction:0];
  }

  return v3;
}

+ (id)entryPointWithMapItem:(id)item isMarkedLocation:(BOOL)location wantsCloseUpView:(BOOL)view cameraFrameOverride:(id)override triggerAction:(int)action
{
  v7 = *&action;
  viewCopy = view;
  locationCopy = location;
  overrideCopy = override;
  v13 = [self entryPointWithMapItem:item wantsCloseUpView:viewCopy];
  [v13 setCameraFrameOverride:overrideCopy];

  [v13 setTriggerAction:v7];
  [v13 setIsMarkedLocation:locationCopy];

  return v13;
}

+ (id)entryPointWithMuninViewState:(id)state triggerAction:(int)action
{
  v4 = *&action;
  v5 = [self entryPointWithMuninViewState:state];
  [v5 setTriggerAction:v4];

  return v5;
}

+ (id)entryPointWithMapItem:(id)item triggerAction:(int)action
{
  v4 = *&action;
  v5 = [self entryPointWithMapItem:item];
  [v5 setTriggerAction:v4];

  return v5;
}

+ (id)entryPointWithScene:(id)scene wantsCloseUpView:(BOOL)view
{
  viewCopy = view;
  _mapItem = [scene _mapItem];
  v7 = [self entryPointWithMapItem:_mapItem wantsCloseUpView:viewCopy];

  return v7;
}

+ (id)entryPointWithMuninViewState:(id)state
{
  stateCopy = state;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setType:2];
    [v5 setMuninViewState:stateCopy];
  }

  return v5;
}

+ (id)entryPointWithMuninMarker:(id)marker heading:(double)heading
{
  markerCopy = marker;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6;
  if (v6)
  {
    [v6 setType:1];
    [v7 setMuninMarker:markerCopy];
    [v7 setHeading:heading];
  }

  return v7;
}

+ (id)entryPointWithMapItem:(id)item wantsCloseUpView:(BOOL)view cameraFrameOverride:(id)override
{
  viewCopy = view;
  itemCopy = item;
  overrideCopy = override;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9;
  if (v9)
  {
    [v9 setType:0];
    [v10 setMapItem:itemCopy];
    [v10 setWantsCloseUpView:viewCopy];
    [v10 setCameraFrameOverride:overrideCopy];
  }

  return v10;
}

@end