@interface AVStringPair
- (AVStringPair)initWithString:(id)a3 separatedByString:(id)a4;
- (BOOL)keyEquals:(id)a3;
@end

@implementation AVStringPair

- (BOOL)keyEquals:(id)a3
{
  v4 = a3;
  v5 = [(AVStringPair *)self key];
  if (v5)
  {
    v6 = [(AVStringPair *)self key];
    v7 = [v4 caseInsensitiveCompare:v6] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVStringPair)initWithString:(id)a3 separatedByString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v19.receiver = self;
    v19.super_class = AVStringPair;
    v8 = [(AVStringPair *)&v19 init];
    if (v8)
    {
      if ([v7 length])
      {
        v9 = [v6 rangeOfString:v7];
        v11 = v10;
      }

      else
      {
        v11 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v13 = [v6 substringToIndex:v9];
        first = v8->_first;
        v8->_first = v13;

        v15 = [v6 substringFromIndex:v9 + v11];
        v16 = 16;
      }

      else
      {
        v15 = [v6 copy];
        v16 = 8;
      }

      v17 = *(&v8->super.isa + v16);
      *(&v8->super.isa + v16) = v15;
    }

    self = v8;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end