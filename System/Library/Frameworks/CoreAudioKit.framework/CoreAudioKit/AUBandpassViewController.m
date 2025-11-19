@interface AUBandpassViewController
- (_TtC12CoreAudioKit24AUBandpassViewController)init;
- (_TtC12CoreAudioKit24AUBandpassViewController)initWithCoder:(id)a3;
@end

@implementation AUBandpassViewController

- (_TtC12CoreAudioKit24AUBandpassViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUBandpassViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit24AUBandpassViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUBandpassViewController();
  v4 = a3;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end