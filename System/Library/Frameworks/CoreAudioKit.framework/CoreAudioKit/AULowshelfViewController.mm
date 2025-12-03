@interface AULowshelfViewController
- (_TtC12CoreAudioKit24AULowshelfViewController)init;
- (_TtC12CoreAudioKit24AULowshelfViewController)initWithCoder:(id)coder;
@end

@implementation AULowshelfViewController

- (_TtC12CoreAudioKit24AULowshelfViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AULowshelfViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit24AULowshelfViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AULowshelfViewController();
  coderCopy = coder;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end