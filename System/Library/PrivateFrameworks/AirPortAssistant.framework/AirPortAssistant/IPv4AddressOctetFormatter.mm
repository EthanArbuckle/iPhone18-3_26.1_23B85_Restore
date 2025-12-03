@interface IPv4AddressOctetFormatter
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation IPv4AddressOctetFormatter

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  length = selectedRange.length;
  location = selectedRange.location;
  maxLength = self->super.super._maxLength;
  v15 = WORD1(maxLength);
  if ((maxLength & 0xFFFF0000) == 0 || WORD1(maxLength) == 0)
  {
LABEL_6:
    v22.receiver = self;
    v22.super_class = IPv4AddressOctetFormatter;
    return [(APFormatter *)&v22 isPartialStringValid:valid proposedSelectedRange:range originalString:string originalSelectedRange:location errorDescription:length, description];
  }

  else
  {
    v18 = 0;
    while (1)
    {
      v19 = objc_msgSend_length(string, a2, valid);
      v21 = objc_msgSend_rangeOfString_options_range_(string, v20, @".", 0, v18, v19 - v18);
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

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  maxLength = self->super.super._maxLength;
  v27.receiver = self;
  v27.super_class = IPv4AddressOctetFormatter;
  LODWORD(v7) = [(IPv4AddressFormatter *)&v27 isPartialStringValid:valid newEditingString:string errorDescription:description];
  if (v7)
  {
    v9 = objc_msgSend_componentsSeparatedByString_(valid, v8, @".");
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