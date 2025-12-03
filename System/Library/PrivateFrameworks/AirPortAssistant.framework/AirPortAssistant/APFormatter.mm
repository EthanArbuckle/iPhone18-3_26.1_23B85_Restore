@interface APFormatter
+ (id)asciiFormatter:(unint64_t)formatter;
+ (id)asciiSet;
+ (id)formatterForBSFormatter:(int)formatter withMaxLen:(int64_t)len;
+ (id)hexFormatter:(unint64_t)formatter;
+ (id)ipFormatter:(unint64_t)formatter;
+ (id)ipOctetFormatter:(unint64_t)formatter;
+ (id)ipv4AddressSet;
+ (id)ipv4AddressWithPrefixSet;
+ (id)ipv6AddressSet;
+ (id)maxLengthFormatter:(unint64_t)formatter;
+ (id)multipleIPFormatter:(unint64_t)formatter;
+ (id)multipleIpAddressesSet;
+ (id)nonZeroNumberOnly:(unint64_t)only;
+ (id)numberOnlyFormatter:(unint64_t)formatter;
+ (id)phoneNumberFormatter:(unint64_t)formatter;
+ (id)phoneNumberSet;
+ (id)pogoPasswordSet;
+ (id)portRangeFormatter:(unint64_t)formatter;
+ (id)portRangeSet;
+ (id)romanFormatter:(unint64_t)formatter;
+ (id)romanSet;
+ (id)sharedIPFormatter;
+ (id)sharedIPv4PrefixFormatter;
+ (id)sharedIPv6Formatter;
+ (id)sharedMultipleIPFormatter;
+ (id)sharedPhoneNumberFormatter;
- (APFormatter)initWithCharacterSet:(id)set withMaxLength:(unint64_t)length;
- (APFormatter)initWithMaxLength:(unint64_t)length;
- (APFormatter)initWithStringOfValidCharacters:(id)characters withMaxLength:(unint64_t)length;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description;
- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)string errorDescription:(id *)description;
- (id)characterSet;
- (id)invertedCharacterSet;
- (void)dealloc;
- (void)setCharacterSet:(id)set;
- (void)setInvertedCharacterSet:(id)set;
@end

@implementation APFormatter

+ (id)formatterForBSFormatter:(int)formatter withMaxLen:(int64_t)len
{
  switch(formatter)
  {
    case 1:
      result = MEMORY[0x2821F9670](UTF8Formatter, sel_utf8Formatter_, len);
      break;
    case 2:
      result = MEMORY[0x2821F9670](APFormatter, sel_hexFormatter_, len);
      break;
    case 3:
      result = MEMORY[0x2821F9670](ASCII7BitFormatter, sel_ascii7BitFormatter_, len);
      break;
    case 4:
      result = MEMORY[0x2821F9670](APFormatter, sel_numberOnlyFormatter_, len);
      break;
    case 5:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPFormatter, *&formatter);
      break;
    case 6:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv6Formatter, *&formatter);
      break;
    case 7:
      result = MEMORY[0x2821F9670](APFormatter, sel_ipOctetFormatter_, len);
      break;
    case 8:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv4PrefixFormatter, *&formatter);
      break;
    case 9:
      result = MEMORY[0x2821F9670](MACFormatter, sel_macFormatter, *&formatter);
      break;
    case 10:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedPhoneNumberFormatter, *&formatter);
      break;
    case 11:
      result = MEMORY[0x2821F9670](DomainNameFormatter, sel_domainNameFormatter_, len);
      break;
    case 12:
      result = MEMORY[0x2821F9670](HostnameFormatter, sel_hostnameFormatter_, len);
      break;
    case 13:
      result = MEMORY[0x2821F9670](APFormatter, sel_portRangeFormatter_, len);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (APFormatter)initWithStringOfValidCharacters:(id)characters withMaxLength:(unint64_t)length
{
  v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, characters);

  return objc_msgSend_initWithCharacterSet_withMaxLength_(self, v6, v7, length);
}

- (APFormatter)initWithCharacterSet:(id)set withMaxLength:(unint64_t)length
{
  v14.receiver = self;
  v14.super_class = APFormatter;
  v6 = [(APFormatter *)&v14 init];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setCharacterSet_(v6, v7, set);
    v11 = objc_msgSend_invertedSet(set, v9, v10);
    objc_msgSend_setInvertedCharacterSet_(v8, v12, v11);
    v8->_maxLength = length;
  }

  return v8;
}

- (APFormatter)initWithMaxLength:(unint64_t)length
{
  v9.receiver = self;
  v9.super_class = APFormatter;
  v4 = [(APFormatter *)&v9 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setCharacterSet_(v4, v5, 0);
    objc_msgSend_setInvertedCharacterSet_(v6, v7, 0);
    v6->_maxLength = length;
  }

  return v6;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  if (value)
  {
    v5 = string == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    *value = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", string, description, string);
  }

  return v6;
}

- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)string errorDescription:(id *)description
{
  v7 = maxLength;
  if (self->_maxLength)
  {
    v9 = objc_msgSend_UTF8ByteCount(maxLength, a2, maxLength);
    maxLength = self->_maxLength;
    if (v9 > maxLength)
    {
      if (string)
      {
        *string = objc_msgSend_prefixStringWithByteCount_(v7, a2, maxLength);
      }

      if (description)
      {
        result = 0;
        v11 = @"gErC";
LABEL_17:
        *description = v11;
        return result;
      }

      return 0;
    }
  }

  if (objc_msgSend_characterSet(self, a2, maxLength))
  {
    v35 = 0;
    v14 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v12, v7);
    v16 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v15, @"\n");
    objc_msgSend_setCharactersToBeSkipped_(v14, v17, v16);
    v20 = objc_msgSend_characterSet(self, v18, v19);
    objc_msgSend_scanCharactersFromSet_intoString_(v14, v21, v20, &v35);
    if ((objc_msgSend_isAtEnd(v14, v22, v23) & 1) == 0)
    {
      if (string)
      {
        v34 = v35;
        if (!v35)
        {
          v34 = &stru_285145FE8;
        }

        *string = v34;
      }

      if (description)
      {
        *description = @"gErE";
      }

      return 0;
    }
  }

  if (!objc_msgSend_characterSet(self, v12, v13))
  {
    return 1;
  }

  v35 = 0;
  v25 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v24, v7);
  v28 = objc_msgSend_invertedCharacterSet(self, v26, v27);
  objc_msgSend_scanCharactersFromSet_intoString_(v25, v29, v28, &v35);
  v32 = objc_msgSend_length(v35, v30, v31);
  result = v32 == 0;
  if (v32)
  {
    if (string)
    {
      v33 = v35;
      if (!v35)
      {
        v33 = &stru_285145FE8;
      }

      *string = v33;
    }

    if (description)
    {
      v11 = @"gErE";
      goto LABEL_17;
    }
  }

  return result;
}

+ (id)romanFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_romanSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)sharedIPFormatter
{
  result = qword_27E383448;
  if (!qword_27E383448)
  {
    v4 = [IPv4AddressFormatter alloc];
    v7 = objc_msgSend_ipv4AddressSet(self, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 15);
    qword_27E383448 = result;
  }

  return result;
}

+ (id)sharedIPv6Formatter
{
  result = qword_27E383450;
  if (!qword_27E383450)
  {
    v4 = [APFormatter alloc];
    v7 = objc_msgSend_ipv6AddressSet(self, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 39);
    qword_27E383450 = result;
  }

  return result;
}

+ (id)sharedIPv4PrefixFormatter
{
  result = qword_27E383458;
  if (!qword_27E383458)
  {
    v4 = [IPv4AddressWithPrefixFormatter alloc];
    v7 = objc_msgSend_ipv4AddressWithPrefixSet(self, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 18);
    qword_27E383458 = result;
  }

  return result;
}

+ (id)ipFormatter:(unint64_t)formatter
{
  v5 = [IPv4AddressFormatter alloc];
  v8 = objc_msgSend_ipv4AddressSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)ipOctetFormatter:(unint64_t)formatter
{
  v5 = [IPv4AddressOctetFormatter alloc];
  v8 = objc_msgSend_ipv4AddressSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)sharedMultipleIPFormatter
{
  result = qword_27E383460;
  if (!qword_27E383460)
  {
    v4 = [APFormatter alloc];
    v7 = objc_msgSend_multipleIpAddressesSet(self, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 49);
    qword_27E383460 = result;
  }

  return result;
}

+ (id)multipleIPFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_multipleIpAddressesSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)maxLengthFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v6 = objc_msgSend_initWithMaxLength_(v4, v5, formatter);

  return v6;
}

+ (id)numberOnlyFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  v9 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, formatter);

  return v9;
}

+ (id)nonZeroNumberOnly:(unint64_t)only
{
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @"123456789");
  v5 = [APFormatter alloc];
  v7 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v6, v4, only);

  return v7;
}

+ (id)portRangeFormatter:(unint64_t)formatter
{
  v4 = [APFormatter alloc];
  v7 = objc_msgSend_portRangeSet(APFormatter, v5, v6);
  v9 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, formatter);

  return v9;
}

+ (id)sharedPhoneNumberFormatter
{
  result = qword_27E383468;
  if (!qword_27E383468)
  {
    v4 = [APFormatter alloc];
    v7 = objc_msgSend_phoneNumberSet(self, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 0);
    qword_27E383468 = result;
  }

  return result;
}

+ (id)phoneNumberFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_phoneNumberSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)asciiFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_asciiSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

+ (id)hexFormatter:(unint64_t)formatter
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_hexSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

- (void)dealloc
{
  objc_msgSend_setCharacterSet_(self, a2, 0);
  objc_msgSend_setInvertedCharacterSet_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = APFormatter;
  [(APFormatter *)&v4 dealloc];
}

- (void)setCharacterSet:(id)set
{
  characterSet = self->_characterSet;
  if (characterSet != set)
  {

    self->_characterSet = set;
  }
}

- (id)characterSet
{
  v2 = self->_characterSet;

  return v2;
}

- (void)setInvertedCharacterSet:(id)set
{
  invertedCharacterSet = self->_invertedCharacterSet;
  if (invertedCharacterSet != set)
  {

    self->_invertedCharacterSet = set;
  }
}

- (id)invertedCharacterSet
{
  v2 = self->_invertedCharacterSet;

  return v2;
}

+ (id)ipv4AddressSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @".");
  objc_msgSend_addCharactersInString_(v2, v4, @"0123456789");

  return v2;
}

+ (id)ipv4AddressWithPrefixSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"/");
  v6 = objc_msgSend_ipv4AddressSet(APFormatter, v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v2, v7, v6);

  return v2;
}

+ (id)ipv6AddressSet
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v3, v4, @":");
  objc_msgSend_addCharactersInString_(v3, v5, @"/");
  v8 = objc_msgSend_hexSet(self, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v3, v9, v8);
  v12 = objc_msgSend_ipv4AddressSet(self, v10, v11);
  objc_msgSend_formUnionWithCharacterSet_(v3, v13, v12);

  return v3;
}

- (BOOL)isPartialStringValid:(id *)valid proposedSelectedRange:(_NSRange *)range originalString:(id)string originalSelectedRange:(_NSRange)selectedRange errorDescription:(id *)description
{
  v13 = 0;
  isPartialStringValid_newEditingString_errorDescription = objc_msgSend_isPartialStringValid_newEditingString_errorDescription_(self, a2, *valid, &v13, description, selectedRange.location, selectedRange.length);
  if (range)
  {
    if (isPartialStringValid_newEditingString_errorDescription)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13 == 0;
    }

    if (!v11)
    {
      range->location = objc_msgSend_length(v13, v8, v9);
      range->length = 0;
    }
  }

  return isPartialStringValid_newEditingString_errorDescription;
}

+ (id)romanSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"(),-./:=?' ");
  objc_msgSend_addCharactersInString_(v2, v4, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  objc_msgSend_formUnionWithCharacterSet_(v2, v8, v7);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "•");
  objc_msgSend_addCharactersInString_(v2, v11, v10);

  return v2;
}

+ (id)multipleIpAddressesSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"., ");
  v6 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v2, v7, v6);

  return v2;
}

+ (id)phoneNumberSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"()-*#,.");
  v6 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v2, v7, v6);

  return v2;
}

+ (id)asciiSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);
  objc_msgSend_addCharactersInRange_(v2, v4, 128, 127);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "•");
  objc_msgSend_addCharactersInString_(v2, v7, v6);

  return v2;
}

+ (id)pogoPasswordSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);
  objc_msgSend_addCharactersInRange_(v2, v4, 128, 127);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "•");
  objc_msgSend_addCharactersInString_(v2, v7, v6);

  return v2;
}

+ (id)portRangeSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @",-");
  v6 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v2, v7, v6);

  return v2;
}

@end