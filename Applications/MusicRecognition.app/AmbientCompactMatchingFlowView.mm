@interface AmbientCompactMatchingFlowView
- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithCoder:(id)coder;
- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithFrame:(CGRect)frame;
@end

@implementation AmbientCompactMatchingFlowView

- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(AmbientCompactMatchingFlowView *)&v12 initWithFrame:x, y, width, height];
  sub_1000DCE1C();

  return height;
}

- (_TtC16MusicRecognition30AmbientCompactMatchingFlowView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView;
  v7 = objc_allocWithZone(UIImageView);
  coderCopy = coder;
  *(&self->super.super.super.isa + v6) = [v7 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13.receiver = self;
  v13.super_class = ObjectType;
  v9 = [(AmbientCompactMatchingFlowView *)&v13 initWithCoder:coderCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_1000DCE1C();
  }

  return v10;
}

@end