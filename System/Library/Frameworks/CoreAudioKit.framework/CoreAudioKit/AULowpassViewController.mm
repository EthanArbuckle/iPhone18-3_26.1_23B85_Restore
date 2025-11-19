@interface AULowpassViewController
- (_TtC12CoreAudioKit23AULowpassViewController)init;
- (_TtC12CoreAudioKit23AULowpassViewController)initWithCoder:(id)a3;
@end

@implementation AULowpassViewController

- (_TtC12CoreAudioKit23AULowpassViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AULowpassViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit23AULowpassViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AULowpassViewController();
  v4 = a3;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end