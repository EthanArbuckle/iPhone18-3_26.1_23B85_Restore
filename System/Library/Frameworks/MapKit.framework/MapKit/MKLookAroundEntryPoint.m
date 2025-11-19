@interface MKLookAroundEntryPoint
+ (id)entryPointWithMapItem:(id)a3 isMarkedLocation:(BOOL)a4 wantsCloseUpView:(BOOL)a5 cameraFrameOverride:(id)a6 triggerAction:(int)a7;
+ (id)entryPointWithMapItem:(id)a3 triggerAction:(int)a4;
+ (id)entryPointWithMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 cameraFrameOverride:(id)a5;
+ (id)entryPointWithMuninMarker:(id)a3 heading:(double)a4;
+ (id)entryPointWithMuninViewState:(id)a3;
+ (id)entryPointWithMuninViewState:(id)a3 triggerAction:(int)a4;
+ (id)entryPointWithScene:(id)a3 wantsCloseUpView:(BOOL)a4;
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

+ (id)entryPointWithMapItem:(id)a3 isMarkedLocation:(BOOL)a4 wantsCloseUpView:(BOOL)a5 cameraFrameOverride:(id)a6 triggerAction:(int)a7
{
  v7 = *&a7;
  v8 = a5;
  v9 = a4;
  v12 = a6;
  v13 = [a1 entryPointWithMapItem:a3 wantsCloseUpView:v8];
  [v13 setCameraFrameOverride:v12];

  [v13 setTriggerAction:v7];
  [v13 setIsMarkedLocation:v9];

  return v13;
}

+ (id)entryPointWithMuninViewState:(id)a3 triggerAction:(int)a4
{
  v4 = *&a4;
  v5 = [a1 entryPointWithMuninViewState:a3];
  [v5 setTriggerAction:v4];

  return v5;
}

+ (id)entryPointWithMapItem:(id)a3 triggerAction:(int)a4
{
  v4 = *&a4;
  v5 = [a1 entryPointWithMapItem:a3];
  [v5 setTriggerAction:v4];

  return v5;
}

+ (id)entryPointWithScene:(id)a3 wantsCloseUpView:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 _mapItem];
  v7 = [a1 entryPointWithMapItem:v6 wantsCloseUpView:v4];

  return v7;
}

+ (id)entryPointWithMuninViewState:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setType:2];
    [v5 setMuninViewState:v3];
  }

  return v5;
}

+ (id)entryPointWithMuninMarker:(id)a3 heading:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6;
  if (v6)
  {
    [v6 setType:1];
    [v7 setMuninMarker:v5];
    [v7 setHeading:a4];
  }

  return v7;
}

+ (id)entryPointWithMapItem:(id)a3 wantsCloseUpView:(BOOL)a4 cameraFrameOverride:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(objc_opt_class());
  v10 = v9;
  if (v9)
  {
    [v9 setType:0];
    [v10 setMapItem:v7];
    [v10 setWantsCloseUpView:v6];
    [v10 setCameraFrameOverride:v8];
  }

  return v10;
}

@end