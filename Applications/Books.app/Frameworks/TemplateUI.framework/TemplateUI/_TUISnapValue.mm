@interface _TUISnapValue
- (BOOL)isEqual:(id)equal;
- (_TUISnapValue)initWithOther:(id)other;
- (_TUISnapValue)initWithValue:(double)value;
- (_TUISnapValue)valueWithIdentifier:(id)identifier;
- (_TUISnapValue)valueWithMax:(double)max;
- (_TUISnapValue)valueWithStep:(double)step;
@end

@implementation _TUISnapValue

- (_TUISnapValue)initWithValue:(double)value
{
  v8.receiver = self;
  v8.super_class = _TUISnapValue;
  v4 = [(_TUISnapValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_value = value;
    identifier = v4->_identifier;
    v4->_identifier = 0;

    *&v5->_step = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v5;
}

- (_TUISnapValue)initWithOther:(id)other
{
  otherCopy = other;
  v12.receiver = self;
  v12.super_class = _TUISnapValue;
  v5 = [(_TUISnapValue *)&v12 init];
  if (v5)
  {
    [otherCopy value];
    v5->_value = v6;
    identifier = [otherCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    [otherCopy step];
    v5->_step = v9;
    [otherCopy max];
    v5->_max = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = self == equalCopy;
  if (equalCopy && self != equalCopy)
  {
    if (self->_value == equalCopy->_value && TUICGFloatIsEqualFloatOrBothNaN(self->_step, equalCopy->_step) && TUICGFloatIsEqualFloatOrBothNaN(self->_max, v5->_max))
    {
      identifier = self->_identifier;
      if (identifier == v5->_identifier)
      {
        v6 = 1;
      }

      else
      {
        v6 = [(NSCopying *)identifier isEqual:?];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (_TUISnapValue)valueWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[_TUISnapValue alloc] initWithOther:self];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;

  return v5;
}

- (_TUISnapValue)valueWithStep:(double)step
{
  v4 = [[_TUISnapValue alloc] initWithOther:self];
  v4->_step = step;

  return v4;
}

- (_TUISnapValue)valueWithMax:(double)max
{
  v4 = [[_TUISnapValue alloc] initWithOther:self];
  v4->_max = max;

  return v4;
}

@end