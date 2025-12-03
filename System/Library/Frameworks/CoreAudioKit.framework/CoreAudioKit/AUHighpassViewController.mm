@interface AUHighpassViewController
- (_TtC12CoreAudioKit24AUHighpassViewController)init;
- (_TtC12CoreAudioKit24AUHighpassViewController)initWithCoder:(id)coder;
@end

@implementation AUHighpassViewController

- (_TtC12CoreAudioKit24AUHighpassViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUHighpassViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit24AUHighpassViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUHighpassViewController();
  coderCopy = coder;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end