@interface LAPSPasscodeType
+ (id)alphanumericType;
+ (id)noneType;
+ (id)numericCustomDigitsType;
+ (id)numericFourDigitsType;
+ (id)numericSixDigitsType;
+ (id)typeAllowingString:(id)string;
- (BOOL)allowsLength:(int64_t)length;
- (BOOL)allowsString:(id)string;
- (BOOL)isEqual:(id)equal;
- (LAPSPasscodeType)initWithIdentifier:(int64_t)identifier length:(unint64_t)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedName;
- (int64_t)complexityRating;
@end

@implementation LAPSPasscodeType

- (LAPSPasscodeType)initWithIdentifier:(int64_t)identifier length:(unint64_t)length
{
  v7.receiver = self;
  v7.super_class = LAPSPasscodeType;
  result = [(LAPSPasscodeType *)&v7 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_length = length;
  }

  return result;
}

+ (id)typeAllowingString:(id)string
{
  stringCopy = string;
  v4 = +[LAPSPasscodeType numericFourDigitsType];
  v5 = [v4 allowsString:stringCopy];

  if (v5)
  {
    v6 = +[LAPSPasscodeType numericFourDigitsType];
  }

  else
  {
    v7 = +[LAPSPasscodeType numericSixDigitsType];
    v8 = [v7 allowsString:stringCopy];

    if (v8)
    {
      v6 = +[LAPSPasscodeType numericSixDigitsType];
    }

    else
    {
      v9 = +[LAPSPasscodeType numericCustomDigitsType];
      v10 = [v9 allowsString:stringCopy];

      if (v10)
      {
        v6 = +[LAPSPasscodeType numericCustomDigitsType];
      }

      else
      {
        v11 = +[LAPSPasscodeType alphanumericType];
        v12 = [v11 allowsString:stringCopy];

        if (v12)
        {
          v6 = +[LAPSPasscodeType alphanumericType];
        }

        else
        {
          v13 = +[LAPSPasscodeType noneType];
          if (([v13 allowsString:stringCopy] & 1) == 0)
          {
            +[LAPSPasscodeType typeAllowingString:];
          }

          v6 = +[LAPSPasscodeType noneType];
        }
      }
    }
  }

  v14 = v6;

  return v14;
}

+ (id)noneType
{
  v2 = [[LAPSPasscodeType alloc] initWithIdentifier:0 length:0];

  return v2;
}

+ (id)numericFourDigitsType
{
  v2 = [[LAPSPasscodeType alloc] initWithIdentifier:1 length:4];

  return v2;
}

+ (id)numericSixDigitsType
{
  v2 = [[LAPSPasscodeType alloc] initWithIdentifier:2 length:6];

  return v2;
}

+ (id)numericCustomDigitsType
{
  v2 = [[LAPSPasscodeType alloc] initWithIdentifier:3 length:-1];

  return v2;
}

+ (id)alphanumericType
{
  v2 = [[LAPSPasscodeType alloc] initWithIdentifier:4 length:-1];

  return v2;
}

- (int64_t)complexityRating
{
  if ((self->_identifier - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return self->_identifier - 1;
  }
}

- (BOOL)allowsLength:(int64_t)length
{
  if ([(LAPSPasscodeType *)self hasFixedLength])
  {
    return [(LAPSPasscodeType *)self length]== length;
  }

  else
  {
    return length > 0;
  }
}

- (BOOL)allowsString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__LAPSPasscodeType_allowsString___block_invoke;
    v9[3] = &unk_278A65FB0;
    v9[4] = self;
    v5 = __33__LAPSPasscodeType_allowsString___block_invoke(v9);
    v7 = [v5 rangeOfFirstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}] != 0x7FFFFFFFFFFFFFFFLL && v6 == objc_msgSend(stringCopy, "length");
  }

  else
  {
    v7 = [(LAPSPasscodeType *)self identifier]== 0;
  }

  return v7;
}

id __33__LAPSPasscodeType_allowsString___block_invoke(uint64_t a1)
{
  v5[1] = MEMORY[0x277D85DD0];
  v5[2] = 3221225472;
  v5[3] = __33__LAPSPasscodeType_allowsString___block_invoke_2;
  v5[4] = &unk_278A65B10;
  v6 = *(a1 + 32);
  v1 = *(v6 + 8);
  if (v1 > 4)
  {
    v2 = @"^\\d{4}$";
  }

  else
  {
    v2 = off_278A65FD0[v1];
  }

  v5[0] = 0;
  v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v2 options:1 error:v5];
  if (v5[0])
  {
    __33__LAPSPasscodeType_allowsString___block_invoke_cold_1();
  }

  return v3;
}

__CFString *__33__LAPSPasscodeType_allowsString___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1 > 4)
  {
    return @"^\\d{4}$";
  }

  else
  {
    return off_278A65FD0[v1];
  }
}

- (id)localizedName
{
  identifier = self->_identifier;
  if (identifier <= 1)
  {
    if (identifier)
    {
      if (identifier == 1)
      {
        self = +[LALocalizedString passcodeTypeNumericFourDigits];
      }
    }

    else
    {
      self = +[LALocalizedString passcodeTypeNone];
    }
  }

  else
  {
    switch(identifier)
    {
      case 2:
        self = +[LALocalizedString passcodeTypeNumericSixDigits];
        break;
      case 3:
        self = +[LALocalizedString passcodeTypeNumericCustomDigits];
        break;
      case 4:
        self = +[LALocalizedString passcodeTypeAlphanumeric];
        break;
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LAPSPasscodeType alloc];
  identifier = [(LAPSPasscodeType *)self identifier];
  v6 = [(LAPSPasscodeType *)self length];

  return [(LAPSPasscodeType *)v4 initWithIdentifier:identifier length:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    if (identifier == [(LAPSPasscodeType *)self identifier])
    {
      v7 = [v5 length];
      v8 = v7 == [(LAPSPasscodeType *)self length];
    }

    else
    {
      v8 = 0;
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
  identifier = [(LAPSPasscodeType *)self identifier];
  if (identifier > 4)
  {
    return @"LAPSPasscodeTypeIdentifierUnknown";
  }

  else
  {
    return off_278A65FF8[identifier];
  }
}

@end