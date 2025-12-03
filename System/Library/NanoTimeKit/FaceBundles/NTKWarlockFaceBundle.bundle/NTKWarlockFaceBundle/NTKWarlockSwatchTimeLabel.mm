@interface NTKWarlockSwatchTimeLabel
- (NTKWarlockSwatchTimeLabel)initWithCoder:(id)coder;
- (NTKWarlockSwatchTimeLabel)initWithFrame:(CGRect)frame;
- (void)prepareForSwatchWithTimeText:(id)text font:(id)font;
@end

@implementation NTKWarlockSwatchTimeLabel

- (NTKWarlockSwatchTimeLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR___NTKWarlockSwatchTimeLabel_timeLabel) = v8;
  [(objc_class *)v8 setNumberOfLines:0];
  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockSwatchTimeLabel();
  height = [(NTKWarlockSwatchTimeLabel *)&v11 initWithFrame:x, y, width, height];
  [(NTKWarlockSwatchTimeLabel *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR___NTKWarlockSwatchTimeLabel_timeLabel)];
  return height;
}

- (NTKWarlockSwatchTimeLabel)initWithCoder:(id)coder
{
  result = sub_37A30();
  __break(1u);
  return result;
}

- (void)prepareForSwatchWithTimeText:(id)text font:(id)font
{
  v6 = sub_37530();
  v8 = v7;
  fontCopy = font;
  selfCopy = self;
  sub_AE74(v6, v8, fontCopy);
}

@end