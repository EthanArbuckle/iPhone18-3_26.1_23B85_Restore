@interface AnimatingUIControl
- (_TtC7Measure18AnimatingUIControl)initWithCoder:(id)coder;
- (_TtC7Measure18AnimatingUIControl)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation AnimatingUIControl

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for AnimatingUIControl();
  v11.receiver = self;
  v11.super_class = v5;
  selfCopy = self;
  isEnabled = [(AnimatingUIControl *)&v11 isEnabled];
  v10.receiver = selfCopy;
  v10.super_class = v5;
  [(AnimatingUIControl *)&v10 setEnabled:enabledCopy];
  if (isEnabled != [(AnimatingUIControl *)selfCopy isEnabled])
  {
    isEnabled2 = [(AnimatingUIControl *)selfCopy isEnabled];
    v9 = 0.5;
    if (isEnabled2)
    {
      v9 = 1.0;
    }

    sub_10007A620(v9);
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_10007A8B8(highlighted);
}

- (_TtC7Measure18AnimatingUIControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AnimatingUIControl();
  return [(AnimatingUIControl *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure18AnimatingUIControl)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AnimatingUIControl();
  coderCopy = coder;
  v5 = [(AnimatingUIControl *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end