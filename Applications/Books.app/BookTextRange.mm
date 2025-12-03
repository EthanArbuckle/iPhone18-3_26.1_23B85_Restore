@interface BookTextRange
+ (id)textRangeWithRange:(_NSRange)range;
+ (id)textRangeWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition;
- (BOOL)isEqual:(id)equal;
- (BookTextRange)initWithRange:(_NSRange)range;
- (BookTextRange)initWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)end;
- (id)start;
@end

@implementation BookTextRange

+ (id)textRangeWithRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

+ (id)textRangeWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition
{
  affinityCopy = affinity;
  length = range.length;
  location = range.location;
  v11 = [self alloc];
  *&v12 = position;
  *&v13 = endPosition;
  v14 = [v11 initWithRange:location eolAffinity:length preferredStartPosition:affinityCopy preferredEndPosition:{v12, v13}];

  return v14;
}

- (BookTextRange)initWithRange:(_NSRange)range
{
  LODWORD(v3) = 2143289344;
  LODWORD(v4) = 2143289344;
  return [(BookTextRange *)self initWithRange:range.location eolAffinity:range.length preferredStartPosition:0 preferredEndPosition:v3, v4];
}

- (BookTextRange)initWithRange:(_NSRange)range eolAffinity:(BOOL)affinity preferredStartPosition:(float)position preferredEndPosition:(float)endPosition
{
  length = range.length;
  location = range.location;
  v12.receiver = self;
  v12.super_class = BookTextRange;
  result = [(BookTextRange *)&v12 init];
  if (result)
  {
    result->_range.location = location;
    result->_range.length = length;
    result->_eolAffinity = affinity;
    result->_preferredStartPosition = position;
    result->_preferredEndPosition = endPosition;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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