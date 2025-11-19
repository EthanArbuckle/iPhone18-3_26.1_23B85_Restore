@interface AUHighshelfViewController
- (_TtC12CoreAudioKit25AUHighshelfViewController)init;
- (_TtC12CoreAudioKit25AUHighshelfViewController)initWithCoder:(id)a3;
@end

@implementation AUHighshelfViewController

- (_TtC12CoreAudioKit25AUHighshelfViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUHighshelfViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit25AUHighshelfViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUHighshelfViewController();
  v4 = a3;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end