@interface AUBandpassViewController
- (_TtC12CoreAudioKit24AUBandpassViewController)init;
- (_TtC12CoreAudioKit24AUBandpassViewController)initWithCoder:(id)coder;
@end

@implementation AUBandpassViewController

- (_TtC12CoreAudioKit24AUBandpassViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUBandpassViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit24AUBandpassViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUBandpassViewController();
  coderCopy = coder;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end