@interface AULowpassViewController
- (_TtC12CoreAudioKit23AULowpassViewController)init;
- (_TtC12CoreAudioKit23AULowpassViewController)initWithCoder:(id)coder;
@end

@implementation AULowpassViewController

- (_TtC12CoreAudioKit23AULowpassViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AULowpassViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit23AULowpassViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AULowpassViewController();
  coderCopy = coder;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end