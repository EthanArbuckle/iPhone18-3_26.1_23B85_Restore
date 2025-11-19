@interface TimerApertureAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC10ClockAngel26TimerApertureAccessoryView)initWithCoder:(id)a3;
- (_TtC10ClockAngel26TimerApertureAccessoryView)initWithFrame:(CGRect)a3;
@end

@implementation TimerApertureAccessoryView

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v6 = self;
  v7 = [(TimerApertureAccessoryView *)v6 subviews];
  sub_10002BB3C(0, &unk_1001197A8, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:

    v14 = 0.0;
    v16 = 0.0;
    goto LABEL_9;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v8 + 32);
  }

  v12 = v11;

  [v12 sizeThatFits:{width, height}];
  v14 = v13;
  v16 = v15;

LABEL_9:
  v9 = v14;
  v10 = v16;
LABEL_12:
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC10ClockAngel26TimerApertureAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TimerApertureAccessoryView();
  return [(TimerApertureAccessoryView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10ClockAngel26TimerApertureAccessoryView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TimerApertureAccessoryView();
  v4 = a3;
  v5 = [(TimerApertureAccessoryView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end