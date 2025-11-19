@interface AUParametricEQViewController
- (_TtC12CoreAudioKit28AUParametricEQViewController)init;
- (_TtC12CoreAudioKit28AUParametricEQViewController)initWithCoder:(id)a3;
@end

@implementation AUParametricEQViewController

- (_TtC12CoreAudioKit28AUParametricEQViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AUParametricEQViewController();
  return [(AUEQViewControllerBase *)&v3 init];
}

- (_TtC12CoreAudioKit28AUParametricEQViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AUParametricEQViewController();
  v4 = a3;
  v5 = [(AUEQViewControllerBase *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end