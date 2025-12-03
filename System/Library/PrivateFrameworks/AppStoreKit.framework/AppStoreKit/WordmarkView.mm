@interface WordmarkView
- (BOOL)hasContent;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11AppStoreKit12WordmarkView)initWithCoder:(id)coder;
- (_TtC11AppStoreKit12WordmarkView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation WordmarkView

- (_TtC11AppStoreKit12WordmarkView)initWithFrame:(CGRect)frame
{
  v3 = sub_1E18B83F8(1, 0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC11AppStoreKit12WordmarkView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

- (BOOL)hasContent
{
  image = [*(&self->super.super.super.isa + OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView) image];
  v3 = image;
  if (image)
  {
  }

  return v3 != 0;
}

- (void)layoutSubviews
{
  selfCopy = self;
  WordmarkView.layoutSubviews()();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = WordmarkView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = WordmarkView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end