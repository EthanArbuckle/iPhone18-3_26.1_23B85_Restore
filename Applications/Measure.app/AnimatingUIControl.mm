@interface AnimatingUIControl
- (_TtC7Measure18AnimatingUIControl)initWithCoder:(id)a3;
- (_TtC7Measure18AnimatingUIControl)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation AnimatingUIControl

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for AnimatingUIControl();
  v11.receiver = self;
  v11.super_class = v5;
  v6 = self;
  v7 = [(AnimatingUIControl *)&v11 isEnabled];
  v10.receiver = v6;
  v10.super_class = v5;
  [(AnimatingUIControl *)&v10 setEnabled:v3];
  if (v7 != [(AnimatingUIControl *)v6 isEnabled])
  {
    v8 = [(AnimatingUIControl *)v6 isEnabled];
    v9 = 0.5;
    if (v8)
    {
      v9 = 1.0;
    }

    sub_10007A620(v9);
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_10007A8B8(a3);
}

- (_TtC7Measure18AnimatingUIControl)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AnimatingUIControl();
  return [(AnimatingUIControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure18AnimatingUIControl)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AnimatingUIControl();
  v4 = a3;
  v5 = [(AnimatingUIControl *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end