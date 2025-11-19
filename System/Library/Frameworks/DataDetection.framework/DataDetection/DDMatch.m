@interface DDMatch
+ (id)resultWithDDScannerResult:(id)a3 originalString:(id)a4;
- (DDMatch)initWithDDScannerResult:(id)a3;
- (DDMatch)initWithDDScannerResult:(id)a3 originalString:(id)a4;
- (_NSRange)matchedRange;
- (void)commonInitWithDDScannerResult:(id)a3 originalString:(id)a4;
@end

@implementation DDMatch

+ (id)resultWithDDScannerResult:(id)a3 originalString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 category];
    v8 = 0;
    if (v7 <= 3)
    {
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v9 = DDMatchPhoneNumber;
        }

        else
        {
          if (v7 != 3)
          {
            goto LABEL_24;
          }

          v9 = DDMatchPostalAddress;
        }

        goto LABEL_16;
      }

      v10 = [v5 type];
      v11 = [v10 isEqualToString:*MEMORY[0x277D040C8]];
      v12 = off_278A447F8;
      if (!v11)
      {
        v12 = off_278A44808;
      }

      goto LABEL_21;
    }

    if (v7 == 4)
    {
      v9 = DDMatchCalendarEvent;
LABEL_16:
      v8 = [[v9 alloc] initWithDDScannerResult:v5];
      goto LABEL_24;
    }

    if (v7 != 5)
    {
      if (v7 != 6)
      {
        goto LABEL_24;
      }

      v9 = DDMatchMoneyAmount;
      goto LABEL_16;
    }

    v10 = [v5 type];
    if ([v10 isEqualToString:*MEMORY[0x277D041B0]])
    {
      v12 = &off_278A44828;
LABEL_21:
      v8 = [objc_alloc(*v12) initWithDDScannerResult:v5];

      goto LABEL_24;
    }

    if ([v10 isEqualToString:*MEMORY[0x277D040D0]])
    {
      v12 = off_278A44800;
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_24:

  return v8;
}

- (void)commonInitWithDDScannerResult:(id)a3 originalString:(id)a4
{
  v5 = a3;
  v6 = [v5 urlificationRange];
  v8 = v7;
  self->_matchedRange.location = v6;
  self->_matchedRange.length = v7;
  v9 = v6 - [v5 range];
  [v5 matchedString];
  if (v9)
    v14 = {;

    v12 = [v14 substringWithRange:{v9, v8}];
    matchedString = self->_matchedString;
    self->_matchedString = v12;

    v11 = v14;
  }

  else
    v10 = {;

    v11 = self->_matchedString;
    self->_matchedString = v10;
  }
}

- (DDMatch)initWithDDScannerResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DDMatch;
  v5 = [(DDMatch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DDMatch *)v5 commonInitWithDDScannerResult:v4 originalString:0];
  }

  return v6;
}

- (DDMatch)initWithDDScannerResult:(id)a3 originalString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DDMatch;
  v8 = [(DDMatch *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DDMatch *)v8 commonInitWithDDScannerResult:v6 originalString:v7];
  }

  return v9;
}

- (_NSRange)matchedRange
{
  length = self->_matchedRange.length;
  location = self->_matchedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end