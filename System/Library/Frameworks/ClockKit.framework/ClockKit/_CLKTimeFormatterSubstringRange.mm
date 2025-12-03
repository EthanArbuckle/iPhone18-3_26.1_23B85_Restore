@interface _CLKTimeFormatterSubstringRange
+ (_CLKTimeFormatterSubstringRange)rangeWithRange:(_NSRange)range;
- (_CLKTimeFormatterSubstringRange)initWithRange:(_NSRange)range;
- (_NSRange)range;
- (id)substringFromString:(id)string;
@end

@implementation _CLKTimeFormatterSubstringRange

+ (_CLKTimeFormatterSubstringRange)rangeWithRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

- (_CLKTimeFormatterSubstringRange)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (id)substringFromString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL || (v7 = self->_range.length + location, v7 > [stringCopy length]))
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