@interface IPv4AddressWithPrefixFormatter
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation IPv4AddressWithPrefixFormatter

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v18.receiver = self;
  v18.super_class = IPv4AddressWithPrefixFormatter;
  v7 = [(IPv4AddressFormatter *)&v18 isPartialStringValid:valid newEditingString:string errorDescription:?];
  if (v7)
  {
    if (objc_msgSend_length(valid, v8, v9))
    {
      v11 = objc_msgSend_rangeOfString_(valid, v10, @"/");
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (objc_msgSend_length(valid, v12, v13) >= 0x10)
        {
          if (description)
          {
LABEL_6:
            LOBYTE(v7) = 0;
            *description = @"gErC";
            return v7;
          }

LABEL_9:
          LOBYTE(v7) = 0;
          return v7;
        }
      }

      else
      {
        v14 = objc_msgSend_substringFromIndex_(valid, v12, v11 + 1);
        if (objc_msgSend_integerValue(v14, v15, v16) >= 0x21)
        {
          if (description)
          {
            goto LABEL_6;
          }

          goto LABEL_9;
        }
      }
    }

    LOBYTE(v7) = 1;
  }

  return v7;
}

@end