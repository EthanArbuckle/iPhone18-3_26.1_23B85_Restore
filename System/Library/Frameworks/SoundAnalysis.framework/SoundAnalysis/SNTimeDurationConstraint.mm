@interface SNTimeDurationConstraint
- (BOOL)isEqual:(id)a3;
- (CMTimeRange)durationRange;
- (SNTimeDurationConstraint)initWithCoder:(id)a3;
- (SNTimeDurationConstraint)initWithDurationRange:(CMTimeRange *)durationRange;
- (SNTimeDurationConstraint)initWithEnumeratedDurations:(NSArray *)enumeratedDurations;
- (SNTimeDurationConstraint)initWithImpl:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SNTimeDurationConstraint

- (SNTimeDurationConstraint)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNTimeDurationConstraint;
  v6 = [(SNTimeDurationConstraint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

- (SNTimeDurationConstraint)initWithEnumeratedDurations:(NSArray *)enumeratedDurations
{
  v4 = enumeratedDurations;
  v9.receiver = self;
  v9.super_class = SNTimeDurationConstraint;
  v5 = [(SNTimeDurationConstraint *)&v9 init];
  if (v5)
  {
    v6 = [[_SNTimeDurationConstraint alloc] initWithEnumeratedDurations:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (SNTimeDurationConstraint)initWithDurationRange:(CMTimeRange *)durationRange
{
  v11.receiver = self;
  v11.super_class = SNTimeDurationConstraint;
  v4 = [(SNTimeDurationConstraint *)&v11 init];
  if (v4)
  {
    v5 = [_SNTimeDurationConstraint alloc];
    v6 = *&durationRange->start.epoch;
    v10[0] = *&durationRange->start.value;
    v10[1] = v6;
    v10[2] = *&durationRange->duration.timescale;
    v7 = [(_SNTimeDurationConstraint *)v5 initWithDurationRange:v10];
    impl = v4->_impl;
    v4->_impl = v7;

    if (!v4->_impl)
    {

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(_SNTimeDurationConstraint *)self->_impl isEqual:v5->_impl];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(_SNTimeDurationConstraint *)self->_impl copyWithZone:a3];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (SNTimeDurationConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SNTimeDurationConstraint;
  v5 = [(SNTimeDurationConstraint *)&v10 init];
  v6 = v5;
  if (!v4 || v5 && (v7 = [[_SNTimeDurationConstraint alloc] initWithCoder:v4], impl = v6->_impl, v6->_impl = v7, impl, !v6->_impl))
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (a3)
  {
    MEMORY[0x1EEE66B58](self->_impl, sel_encodeWithCoder_);
  }
}

- (CMTimeRange)durationRange
{
  result = self->_impl;
  if (result)
  {
    return MEMORY[0x1EEE66B58](result, sel_durationRange);
  }

  *&retstr->start.epoch = 0u;
  *&retstr->duration.timescale = 0u;
  *&retstr->start.value = 0u;
  return result;
}

@end