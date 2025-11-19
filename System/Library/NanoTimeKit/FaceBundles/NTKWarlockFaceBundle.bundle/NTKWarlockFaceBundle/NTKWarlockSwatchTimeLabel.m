@interface NTKWarlockSwatchTimeLabel
- (NTKWarlockSwatchTimeLabel)initWithCoder:(id)a3;
- (NTKWarlockSwatchTimeLabel)initWithFrame:(CGRect)a3;
- (void)prepareForSwatchWithTimeText:(id)a3 font:(id)a4;
@end

@implementation NTKWarlockSwatchTimeLabel

- (NTKWarlockSwatchTimeLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.isa + OBJC_IVAR___NTKWarlockSwatchTimeLabel_timeLabel) = v8;
  [(objc_class *)v8 setNumberOfLines:0];
  v11.receiver = self;
  v11.super_class = type metadata accessor for WarlockSwatchTimeLabel();
  v9 = [(NTKWarlockSwatchTimeLabel *)&v11 initWithFrame:x, y, width, height];
  [(NTKWarlockSwatchTimeLabel *)v9 addSubview:*(&v9->super.super.super.isa + OBJC_IVAR___NTKWarlockSwatchTimeLabel_timeLabel)];
  return v9;
}

- (NTKWarlockSwatchTimeLabel)initWithCoder:(id)a3
{
  result = sub_37A30();
  __break(1u);
  return result;
}

- (void)prepareForSwatchWithTimeText:(id)a3 font:(id)a4
{
  v6 = sub_37530();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_AE74(v6, v8, v9);
}

@end