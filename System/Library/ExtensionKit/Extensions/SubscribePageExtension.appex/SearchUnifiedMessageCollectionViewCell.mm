@interface SearchUnifiedMessageCollectionViewCell
- (_TtC22SubscribePageExtension38SearchUnifiedMessageCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation SearchUnifiedMessageCollectionViewCell

- (_TtC22SubscribePageExtension38SearchUnifiedMessageCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(UnifiedMessageCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

@end