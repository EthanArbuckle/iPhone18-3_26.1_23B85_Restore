@interface _LapLabel
- (_LapLabel)initWithFrame:(CGRect)frame;
- (void)setLap:(unint64_t)lap;
- (void)split;
@end

@implementation _LapLabel

- (_LapLabel)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _LapLabel;
  result = [(_LapLabel *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setLap:(unint64_t)lap
{
  self->_split = 0;
  if (self->_lap == lap)
  {
    return;
  }

  lapCopy = lap;
  self->_lap = lap;
  if (lap >= 0xA)
  {
    v6 = @"CHRONO_LAP_SHORT";
    v7 = @"L";
LABEL_6:
    v8 = [NTKChronographFaceBundle localizedStringForKey:v6 comment:v7];
    lapCopy = [NSString localizedStringWithFormat:v8, lapCopy];

    goto LABEL_7;
  }

  if (lap)
  {
    v6 = @"CHRONO_LAP";
    v7 = @"LAP";
    goto LABEL_6;
  }

LABEL_7:
  [(_LapLabel *)self setText:lapCopy];

  [(_LapLabel *)self sizeToFit];
}

@end