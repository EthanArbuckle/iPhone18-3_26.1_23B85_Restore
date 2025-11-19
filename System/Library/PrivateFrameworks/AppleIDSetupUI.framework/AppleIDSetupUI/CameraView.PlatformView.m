@interface CameraView.PlatformView
+ (Class)layerClass;
- (_TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView)initWithCoder:(id)a3;
- (_TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView)initWithFrame:(CGRect)a3;
@end

@implementation CameraView.PlatformView

+ (Class)layerClass
{
  sub_2409194E8(0, &qword_27E50C410, 0x277CE5B68);

  return swift_getObjCClassFromMetadata();
}

- (_TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CameraView.PlatformView();
  return [(CameraView.PlatformView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CameraView.PlatformView();
  v4 = a3;
  v5 = [(CameraView.PlatformView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end