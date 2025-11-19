@interface _CLKTimeFormatterSubstringRange
+ (_CLKTimeFormatterSubstringRange)rangeWithRange:(_NSRange)a3;
- (_CLKTimeFormatterSubstringRange)initWithRange:(_NSRange)a3;
- (_NSRange)range;
- (id)substringFromString:(id)a3;
@end

@implementation _CLKTimeFormatterSubstringRange

+ (_CLKTimeFormatterSubstringRange)rangeWithRange:(_NSRange)a3
{
  v3 = [[a1 alloc] initWithRange:{a3.location, a3.length}];

  return v3;
}

- (_CLKTimeFormatterSubstringRange)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6.receiver = self;
  v6.super_class = _CLKTimeFormatterSubstringRange;
  result = [(_CLKTimeFormatterSubstringRange *)&v6 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
  }

  return result;
}

- (id)substringFromString:(id)a3
{
  v4 = a3;
  v5 = v4;
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL || (v7 = self->_range.length + location, v7 > [v4 length]))
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 substringWithRange:{self->_range.location, self->_range.length}];
  }

  return v8;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end