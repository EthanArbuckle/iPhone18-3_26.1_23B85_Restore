@interface BookTextPosition
+ (id)textPositionWithCharIndex:(unint64_t)index;
+ (id)textPositionWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start;
- (BOOL)isEqual:(id)equal;
- (BookTextPosition)initWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start;
- (id)copyWithZone:(_NSZone *)zone;
- (int)distanceFromPosition:(id)position;
- (int64_t)compare:(id)compare;
@end

@implementation BookTextPosition

+ (id)textPositionWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start
{
  startCopy = start;
  affinityCopy = affinity;
  v10 = [self alloc];
  *&v11 = position;
  v12 = [v10 initWithCharIndex:index eolAffinity:affinityCopy preferredPosition:startCopy isPreferredStart:v11];

  return v12;
}

+ (id)textPositionWithCharIndex:(unint64_t)index
{
  v3 = [[self alloc] initWithCharIndex:index];

  return v3;
}

- (BookTextPosition)initWithCharIndex:(unint64_t)index eolAffinity:(BOOL)affinity preferredPosition:(float)position isPreferredStart:(BOOL)start
{
  v11.receiver = self;
  v11.super_class = BookTextPosition;
  result = [(BookTextPosition *)&v11 init];
  if (result)
  {
    result->_charIndex = index;
    result->_eolAffinity = affinity;
    result->_preferredPosition = position;
    result->_isPreferredStart = start;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  charIndex = self->_charIndex;
  eolAffinity = self->_eolAffinity;
  *&v7 = self->_preferredPosition;
  isPreferredStart = self->_isPreferredStart;

  return [v4 initWithCharIndex:charIndex eolAffinity:eolAffinity preferredPosition:isPreferredStart isPreferredStart:v7];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  charIndex = [v5 charIndex];
  charIndex = self->_charIndex;
  if (charIndex == charIndex)
  {
    eolAffinity = self->_eolAffinity;
    if (eolAffinity == [v5 endOfLineAffinity])
    {
      v9 = 0;
    }

    else if (self->_eolAffinity)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else if (charIndex > charIndex)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  v6 = v5 && self->_charIndex == *(v5 + 8) && self->_eolAffinity == *(v5 + 16);

  return v6;
}

- (int)distanceFromPosition:(id)position
{
  positionCopy = position;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  LODWORD(self) = self->_charIndex;
  LODWORD(self) = self - [v5 charIndex];

  return self;
}

@end