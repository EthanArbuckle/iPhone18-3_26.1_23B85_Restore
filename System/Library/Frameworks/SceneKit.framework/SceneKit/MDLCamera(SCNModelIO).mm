@interface MDLCamera(SCNModelIO)
+ (id)cameraWithSCNCamera:()SCNModelIO;
@end

@implementation MDLCamera(SCNModelIO)

+ (id)cameraWithSCNCamera:()SCNModelIO
{
  v4 = objc_alloc_init(self);
  objc_setAssociatedObject(v4, @"SCNSceneKitAssociatedObject", a3, 0x301);
  [a3 focusDistance];
  *&v5 = v5;
  [v4 setFocusDistance:v5];
  [a3 sensorHeight];
  *&v6 = v6;
  [v4 setSensorVerticalAperture:v6];
  [v4 setApertureBladeCount:{objc_msgSend(a3, "apertureBladeCount")}];
  if ([a3 useLegacyFov])
  {
    [a3 yFov];
  }

  else
  {
    [a3 fieldOfView];
  }

  *&v7 = v7;
  [v4 setFieldOfView:v7];
  [a3 aspectRatio];
  *&v8 = v8;
  [v4 setSensorAspect:v8];
  [a3 zNear];
  *&v9 = v9;
  [v4 setNearVisibilityDistance:v9];
  [a3 zFar];
  *&v10 = v10;
  [v4 setFarVisibilityDistance:v10];
  [a3 focalBlurRadius];
  *&v11 = v11;
  [v4 setMaximumCircleOfConfusion:v11];
  [a3 fStop];
  *&v12 = v12;
  [v4 setFStop:v12];
  [v4 setProjection:{objc_msgSend(a3, "usesOrthographicProjection")}];

  return v4;
}

@end