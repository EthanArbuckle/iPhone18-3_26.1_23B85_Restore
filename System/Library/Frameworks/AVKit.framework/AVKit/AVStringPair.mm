@interface AVStringPair
- (AVStringPair)initWithString:(id)string separatedByString:(id)byString;
- (BOOL)keyEquals:(id)equals;
@end

@implementation AVStringPair

- (BOOL)keyEquals:(id)equals
{
  equalsCopy = equals;
  v5 = [(AVStringPair *)self key];
  if (v5)
  {
    v6 = [(AVStringPair *)self key];
    v7 = [equalsCopy caseInsensitiveCompare:v6] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVStringPair)initWithString:(id)string separatedByString:(id)byString
{
  stringCopy = string;
  byStringCopy = byString;
  if (stringCopy)
  {
    v19.receiver = self;
    v19.super_class = AVStringPair;
    v8 = [(AVStringPair *)&v19 init];
    if (v8)
    {
      if ([byStringCopy length])
      {
        v9 = [stringCopy rangeOfString:byStringCopy];
        v11 = v10;
      }

      else
      {
        v11 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v13 = [stringCopy substringToIndex:v9];
        first = v8->_first;
        v8->_first = v13;

        v15 = [stringCopy substringFromIndex:v9 + v11];
        v16 = 16;
      }

      else
      {
        v15 = [stringCopy copy];
        v16 = 8;
      }

      v17 = *(&v8->super.isa + v16);
      *(&v8->super.isa + v16) = v15;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end