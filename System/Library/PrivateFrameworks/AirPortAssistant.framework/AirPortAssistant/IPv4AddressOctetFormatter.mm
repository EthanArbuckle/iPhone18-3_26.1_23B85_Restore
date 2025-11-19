@interface IPv4AddressOctetFormatter
- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7;
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
@end

@implementation IPv4AddressOctetFormatter

- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7
{
  length = a6.length;
  location = a6.location;
  maxLength = self->super.super._maxLength;
  v15 = WORD1(maxLength);
  if ((maxLength & 0xFFFF0000) == 0 || WORD1(maxLength) == 0)
  {
LABEL_6:
    v22.receiver = self;
    v22.super_class = IPv4AddressOctetFormatter;
    return [(APFormatter *)&v22 isPartialStringValid:a3 proposedSelectedRange:a4 originalString:a5 originalSelectedRange:location errorDescription:length, a7];
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = objc_msgSend_length(a5, a2, a3);
      v21 = objc_msgSend_rangeOfString_options_range_(a5, v20, @".", 0, v18, v19 - v18);
      v18 = &a2[v21];
      if (!&a2[v21])
      {
        return 0;
      }

      if (!--v15)
      {
        if (location >= v18)
        {
          goto LABEL_6;
        }

        return 0;
      }
    }
  }
}

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  maxLength = self->super.super._maxLength;
  v27.receiver = self;
  v27.super_class = IPv4AddressOctetFormatter;
  LODWORD(v7) = [(IPv4AddressFormatter *)&v27 isPartialStringValid:a3 newEditingString:a4 errorDescription:a5];
  if (v7)
  {
    v9 = objc_msgSend_componentsSeparatedByString_(a3, v8, @".");
    if (objc_msgSend_count(v9, v10, v11) <= WORD1(maxLength))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      if (objc_msgSend_count(v9, v12, v13) < 4)
      {
        goto LABEL_15;
      }

      if (!BYTE1(maxLength))
      {
        if (!maxLength)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v15 = objc_msgSend_objectAtIndex_(v9, v14, 2);
      v7 = objc_msgSend_integerValue(v15, v16, v17);
      v18 = v7 == BYTE1(maxLength);
      LOBYTE(v7) = v7 != BYTE1(maxLength);
      v18 = v18 || maxLength == 0;
      if (!v18)
      {
LABEL_13:
        v19 = objc_msgSend_objectAtIndex_(v9, v14, 3);
        if (objc_msgSend_length(v19, v20, v21))
        {
          v23 = objc_msgSend_objectAtIndex_(v9, v22, 3);
          LOBYTE(v7) = objc_msgSend_integerValue(v23, v24, v25) <= maxLength;
          return v7;
        }

LABEL_15:
        LOBYTE(v7) = 1;
      }
    }
  }

  return v7;
}

@end