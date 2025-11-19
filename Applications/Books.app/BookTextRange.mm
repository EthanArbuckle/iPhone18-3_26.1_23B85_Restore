@interface BookTextRange
+ (id)textRangeWithRange:(_NSRange)a3;
+ (id)textRangeWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6;
- (BOOL)isEqual:(id)a3;
- (BookTextRange)initWithRange:(_NSRange)a3;
- (BookTextRange)initWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)end;
- (id)start;
@end

@implementation BookTextRange

+ (id)textRangeWithRange:(_NSRange)a3
{
  v3 = [[a1 alloc] initWithRange:{a3.location, a3.length}];

  return v3;
}

+ (id)textRangeWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6
{
  v8 = a4;
  length = a3.length;
  location = a3.location;
  v11 = [a1 alloc];
  *&v12 = a5;
  *&v13 = a6;
  v14 = [v11 initWithRange:location eolAffinity:length preferredStartPosition:v8 preferredEndPosition:{v12, v13}];

  return v14;
}

- (BookTextRange)initWithRange:(_NSRange)a3
{
  LODWORD(v3) = 2143289344;
  LODWORD(v4) = 2143289344;
  return [(BookTextRange *)self initWithRange:a3.location eolAffinity:a3.length preferredStartPosition:0 preferredEndPosition:v3, v4];
}

- (BookTextRange)initWithRange:(_NSRange)a3 eolAffinity:(BOOL)a4 preferredStartPosition:(float)a5 preferredEndPosition:(float)a6
{
  length = a3.length;
  location = a3.location;
  v12.receiver = self;
  v12.super_class = BookTextRange;
  result = [(BookTextRange *)&v12 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_eolAffinity = a4;
    result->_preferredStartPosition = a5;
    result->_preferredEndPosition = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  eolAffinity = self->_eolAffinity;
  *&v6 = self->_preferredStartPosition;
  *&v7 = self->_preferredEndPosition;
  location = self->_range.location;
  length = self->_range.length;

  return [v4 initWithRange:location eolAffinity:length preferredStartPosition:eolAffinity preferredEndPosition:{v6, v7}];
}

- (id)start
{
  if (self->_range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [BookTextPosition textPositionWithCharIndex:0];
  }

  else
  {
    *&v2 = self->_preferredStartPosition;
    [BookTextPosition textPositionWithCharIndex:"textPositionWithCharIndex:eolAffinity:preferredPosition:isPreferredStart:" eolAffinity:v2 preferredPosition:? isPreferredStart:?];
  }
  v3 = ;

  return v3;
}

- (id)end
{
  location = self->_range.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [BookTextPosition textPositionWithCharIndex:0];
  }

  else
  {
    length = self->_range.length;
    v6 = length + location;
    if (length)
    {
      eolAffinity = 0;
    }

    else
    {
      eolAffinity = self->_eolAffinity;
    }

    *&v2 = self->_preferredEndPosition;
    v4 = [BookTextPosition textPositionWithCharIndex:v6 eolAffinity:eolAffinity preferredPosition:0 isPreferredStart:v2];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  if (v5 && ((length = self->_range.length, self->_range.location == *(v5 + 8)) ? (v7 = length == *(v5 + 16)) : (v7 = 0), v7))
  {
    if (length)
    {
      v8 = 1;
    }

    else
    {
      v8 = self->_eolAffinity == *(v5 + 24);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v8.location = [(BookTextRange *)self range];
  v4 = NSStringFromRange(v8);
  v5 = [NSString stringWithFormat:@"<%@ %p %@>", v3, self, v4];

  return v5;
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end