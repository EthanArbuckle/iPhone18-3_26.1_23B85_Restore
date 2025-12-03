@interface DesignTimeMediaItem
- (_TtC16MusicRecognition19DesignTimeMediaItem)initWithCoder:(id)coder;
@end

@implementation DesignTimeMediaItem

- (_TtC16MusicRecognition19DesignTimeMediaItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DesignTimeMediaItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end