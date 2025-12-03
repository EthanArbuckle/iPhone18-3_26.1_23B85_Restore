@interface AUHighshelfViewController
- (_TtC12CoreAudioKit25AUHighshelfViewController)init;
- (_TtC12CoreAudioKit25AUHighshelfViewController)initWithCoder:(id)coder;
@end

@implementation AUHighshelfViewController

- (_TtC12CoreAudioKit25AUHighshelfViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUHighshelfViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit25AUHighshelfViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUHighshelfViewController();
  coderCopy = coder;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end