@interface DDMatch
+ (id)resultWithDDScannerResult:(id)result originalString:(id)string;
- (DDMatch)initWithDDScannerResult:(id)result;
- (DDMatch)initWithDDScannerResult:(id)result originalString:(id)string;
- (_NSRange)matchedRange;
- (void)commonInitWithDDScannerResult:(id)result originalString:(id)string;
@end

@implementation DDMatch

+ (id)resultWithDDScannerResult:(id)result originalString:(id)string
{
  resultCopy = result;
  stringCopy = string;
  if (resultCopy)
  {
    category = [resultCopy category];
    v8 = 0;
    if (category <= 3)
    {
      if (category != 1)
      {
        if (category == 2)
        {
          v9 = DDMatchPhoneNumber;
        }

        else
        {
          if (category != 3)
          {
            goto LABEL_24;
          }

          v9 = DDMatchPostalAddress;
        }

        goto LABEL_16;
      }

      type = [resultCopy type];
      v11 = [type isEqualToString:*MEMORY[0x277D040C8]];
      v12 = off_278A447F8;
      if (!v11)
      {
        v12 = off_278A44808;
      }

      goto LABEL_21;
    }

    if (category == 4)
    {
      v9 = DDMatchCalendarEvent;
LABEL_16:
      v8 = [[v9 alloc] initWithDDScannerResult:resultCopy];
      goto LABEL_24;
    }

    if (category != 5)
    {
      if (category != 6)
      {
        goto LABEL_24;
      }

      v9 = DDMatchMoneyAmount;
      goto LABEL_16;
    }

    type = [resultCopy type];
    if ([type isEqualToString:*MEMORY[0x277D041B0]])
    {
      v12 = &off_278A44828;
LABEL_21:
      v8 = [objc_alloc(*v12) initWithDDScannerResult:resultCopy];

      goto LABEL_24;
    }

    if ([type isEqualToString:*MEMORY[0x277D040D0]])
    {
      v12 = off_278A44800;
      goto LABEL_21;
    }
  }

  v8 = 0;
LABEL_24:

  return v8;
}

- (void)commonInitWithDDScannerResult:(id)result originalString:(id)string
{
  resultCopy = result;
  urlificationRange = [resultCopy urlificationRange];
  v8 = v7;
  self->_matchedRange.location = urlificationRange;
  self->_matchedRange.length = v7;
  v9 = urlificationRange - [resultCopy range];
  [resultCopy matchedString];
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

- (DDMatch)initWithDDScannerResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = DDMatch;
  v5 = [(DDMatch *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DDMatch *)v5 commonInitWithDDScannerResult:resultCopy originalString:0];
  }

  return v6;
}

- (DDMatch)initWithDDScannerResult:(id)result originalString:(id)string
{
  resultCopy = result;
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = DDMatch;
  v8 = [(DDMatch *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DDMatch *)v8 commonInitWithDDScannerResult:resultCopy originalString:stringCopy];
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