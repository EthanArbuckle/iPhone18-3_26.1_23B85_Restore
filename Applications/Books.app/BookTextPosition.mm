@interface BookTextPosition
+ (id)textPositionWithCharIndex:(unint64_t)a3;
+ (id)textPositionWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BookTextPosition)initWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (int)distanceFromPosition:(id)a3;
- (int64_t)compare:(id)a3;
@end

@implementation BookTextPosition

+ (id)textPositionWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = [a1 alloc];
  *&v11 = a5;
  v12 = [v10 initWithCharIndex:a3 eolAffinity:v8 preferredPosition:v6 isPreferredStart:v11];

  return v12;
}

+ (id)textPositionWithCharIndex:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithCharIndex:a3];

  return v3;
}

- (BookTextPosition)initWithCharIndex:(unint64_t)a3 eolAffinity:(BOOL)a4 preferredPosition:(float)a5 isPreferredStart:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = BookTextPosition;
  result = [(BookTextPosition *)&v11 init];
  if (result)
  {
    result->_charIndex = a3;
    result->_eolAffinity = a4;
    result->_preferredPosition = a5;
    result->_isPreferredStart = a6;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  charIndex = self->_charIndex;
  eolAffinity = self->_eolAffinity;
  *&v7 = self->_preferredPosition;
  isPreferredStart = self->_isPreferredStart;

  return [v4 initWithCharIndex:charIndex eolAffinity:eolAffinity preferredPosition:isPreferredStart isPreferredStart:v7];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  v6 = [v5 charIndex];
  charIndex = self->_charIndex;
  if (charIndex == v6)
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

  else if (charIndex > v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  v6 = v5 && self->_charIndex == *(v5 + 8) && self->_eolAffinity == *(v5 + 16);

  return v6;
}

- (int)distanceFromPosition:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = __IMAccessibilityCastAsClass();
  LODWORD(self) = self->_charIndex;
  LODWORD(self) = self - [v5 charIndex];

  return self;
}

@end