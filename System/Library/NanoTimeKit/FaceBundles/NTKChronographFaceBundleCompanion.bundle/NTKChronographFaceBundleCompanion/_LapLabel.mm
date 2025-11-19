@interface _LapLabel
- (_LapLabel)initWithFrame:(CGRect)a3;
- (void)setLap:(unint64_t)a3;
- (void)split;
@end

@implementation _LapLabel

- (_LapLabel)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _LapLabel;
  result = [(_LapLabel *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_lap = -1;
  }

  return result;
}

- (void)split
{
  if (!self->_split)
  {
    self->_split = 1;
    v4 = [NTKChronographFaceBundle localizedStringForKey:@"CHRONO_SPLIT" comment:@"SPLIT"];
    [(_LapLabel *)self setText:v4];

    [(_LapLabel *)self sizeToFit];
  }
}

- (void)setLap:(unint64_t)a3
{
  self->_split = 0;
  if (self->_lap == a3)
  {
    return;
  }

  v4 = a3;
  self->_lap = a3;
  if (a3 >= 0xA)
  {
    v6 = @"CHRONO_LAP_SHORT";
    v7 = @"L";
LABEL_6:
    v8 = [NTKChronographFaceBundle localizedStringForKey:v6 comment:v7];
    v4 = [NSString localizedStringWithFormat:v8, v4];

    goto LABEL_7;
  }

  if (a3)
  {
    v6 = @"CHRONO_LAP";
    v7 = @"LAP";
    goto LABEL_6;
  }

LABEL_7:
  [(_LapLabel *)self setText:v4];

  [(_LapLabel *)self sizeToFit];
}

@end