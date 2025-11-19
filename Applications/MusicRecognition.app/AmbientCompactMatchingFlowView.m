@interface AmbientCompactMatchingFlowView
- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithCoder:(id)a3;
- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithFrame:(CGRect)a3;
@end

@implementation AmbientCompactMatchingFlowView

- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AmbientCompactMatchingFlowView *)&v12 initWithFrame:x, y, width, height];
  sub_1000DCE1C();

  return v10;
}

- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView;
  v7 = objc_allocWithZone(UIImageView);
  v8 = a3;
  *(&self->super.super.super.isa + v6) = [v7 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13.receiver = self;
  v13.super_class = ObjectType;
  v9 = [(AmbientCompactMatchingFlowView *)&v13 initWithCoder:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_1000DCE1C();
  }

  return v10;
}

@end