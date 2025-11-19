@interface APFormatter
+ (id)asciiFormatter:(unint64_t)a3;
+ (id)asciiSet;
+ (id)formatterForBSFormatter:(int)a3 withMaxLen:(int64_t)a4;
+ (id)hexFormatter:(unint64_t)a3;
+ (id)ipFormatter:(unint64_t)a3;
+ (id)ipOctetFormatter:(unint64_t)a3;
+ (id)ipv4AddressSet;
+ (id)ipv4AddressWithPrefixSet;
+ (id)ipv6AddressSet;
+ (id)maxLengthFormatter:(unint64_t)a3;
+ (id)multipleIPFormatter:(unint64_t)a3;
+ (id)multipleIpAddressesSet;
+ (id)nonZeroNumberOnly:(unint64_t)a3;
+ (id)numberOnlyFormatter:(unint64_t)a3;
+ (id)phoneNumberFormatter:(unint64_t)a3;
+ (id)phoneNumberSet;
+ (id)pogoPasswordSet;
+ (id)portRangeFormatter:(unint64_t)a3;
+ (id)portRangeSet;
+ (id)romanFormatter:(unint64_t)a3;
+ (id)romanSet;
+ (id)sharedIPFormatter;
+ (id)sharedIPv4PrefixFormatter;
+ (id)sharedIPv6Formatter;
+ (id)sharedMultipleIPFormatter;
+ (id)sharedPhoneNumberFormatter;
- (APFormatter)initWithCharacterSet:(id)a3 withMaxLength:(unint64_t)a4;
- (APFormatter)initWithMaxLength:(unint64_t)a3;
- (APFormatter)initWithStringOfValidCharacters:(id)a3 withMaxLength:(unint64_t)a4;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7;
- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)a4 errorDescription:(id *)a5;
- (id)characterSet;
- (id)invertedCharacterSet;
- (void)dealloc;
- (void)setCharacterSet:(id)a3;
- (void)setInvertedCharacterSet:(id)a3;
@end

@implementation APFormatter

+ (id)formatterForBSFormatter:(int)a3 withMaxLen:(int64_t)a4
{
  switch(a3)
  {
    case 1:
      result = MEMORY[0x2821F9670](UTF8Formatter, sel_utf8Formatter_, a4);
      break;
    case 2:
      result = MEMORY[0x2821F9670](APFormatter, sel_hexFormatter_, a4);
      break;
    case 3:
      result = MEMORY[0x2821F9670](ASCII7BitFormatter, sel_ascii7BitFormatter_, a4);
      break;
    case 4:
      result = MEMORY[0x2821F9670](APFormatter, sel_numberOnlyFormatter_, a4);
      break;
    case 5:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPFormatter, *&a3);
      break;
    case 6:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv6Formatter, *&a3);
      break;
    case 7:
      result = MEMORY[0x2821F9670](APFormatter, sel_ipOctetFormatter_, a4);
      break;
    case 8:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedIPv4PrefixFormatter, *&a3);
      break;
    case 9:
      result = MEMORY[0x2821F9670](MACFormatter, sel_macFormatter, *&a3);
      break;
    case 10:
      result = MEMORY[0x2821F9670](APFormatter, sel_sharedPhoneNumberFormatter, *&a3);
      break;
    case 11:
      result = MEMORY[0x2821F9670](DomainNameFormatter, sel_domainNameFormatter_, a4);
      break;
    case 12:
      result = MEMORY[0x2821F9670](HostnameFormatter, sel_hostnameFormatter_, a4);
      break;
    case 13:
      result = MEMORY[0x2821F9670](APFormatter, sel_portRangeFormatter_, a4);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (APFormatter)initWithStringOfValidCharacters:(id)a3 withMaxLength:(unint64_t)a4
{
  v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, a3);

  return objc_msgSend_initWithCharacterSet_withMaxLength_(self, v6, v7, a4);
}

- (APFormatter)initWithCharacterSet:(id)a3 withMaxLength:(unint64_t)a4
{
  v14.receiver = self;
  v14.super_class = APFormatter;
  v6 = [(APFormatter *)&v14 init];
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setCharacterSet_(v6, v7, a3);
    v11 = objc_msgSend_invertedSet(a3, v9, v10);
    objc_msgSend_setInvertedCharacterSet_(v8, v12, v11);
    v8->_maxLength = a4;
  }

  return v8;
}

- (APFormatter)initWithMaxLength:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = APFormatter;
  v4 = [(APFormatter *)&v9 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_setCharacterSet_(v4, v5, 0);
    objc_msgSend_setInvertedCharacterSet_(v6, v7, 0);
    v6->_maxLength = a3;
  }

  return v6;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  if (a3)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (!v5)
  {
    *a3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@", a4, a5, a4);
  }

  return v6;
}

- (BOOL)isPartialStringValid:(id)maxLength newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v7 = maxLength;
  if (self->_maxLength)
  {
    v9 = objc_msgSend_UTF8ByteCount(maxLength, a2, maxLength);
    maxLength = self->_maxLength;
    if (v9 > maxLength)
    {
      if (a4)
      {
        *a4 = objc_msgSend_prefixStringWithByteCount_(v7, a2, maxLength);
      }

      if (a5)
      {
        result = 0;
        v11 = @"gErC";
LABEL_17:
        *a5 = v11;
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
      if (a4)
      {
        v34 = v35;
        if (!v35)
        {
          v34 = &stru_285145FE8;
        }

        *a4 = v34;
      }

      if (a5)
      {
        *a5 = @"gErE";
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
    if (a4)
    {
      v33 = v35;
      if (!v35)
      {
        v33 = &stru_285145FE8;
      }

      *a4 = v33;
    }

    if (a5)
    {
      v11 = @"gErE";
      goto LABEL_17;
    }
  }

  return result;
}

+ (id)romanFormatter:(unint64_t)a3
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_romanSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)sharedIPFormatter
{
  result = qword_27E383448;
  if (!qword_27E383448)
  {
    v4 = [IPv4AddressFormatter alloc];
    v7 = objc_msgSend_ipv4AddressSet(a1, v5, v6);
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
    v7 = objc_msgSend_ipv6AddressSet(a1, v5, v6);
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
    v7 = objc_msgSend_ipv4AddressWithPrefixSet(a1, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 18);
    qword_27E383458 = result;
  }

  return result;
}

+ (id)ipFormatter:(unint64_t)a3
{
  v5 = [IPv4AddressFormatter alloc];
  v8 = objc_msgSend_ipv4AddressSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)ipOctetFormatter:(unint64_t)a3
{
  v5 = [IPv4AddressOctetFormatter alloc];
  v8 = objc_msgSend_ipv4AddressSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)sharedMultipleIPFormatter
{
  result = qword_27E383460;
  if (!qword_27E383460)
  {
    v4 = [APFormatter alloc];
    v7 = objc_msgSend_multipleIpAddressesSet(a1, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 49);
    qword_27E383460 = result;
  }

  return result;
}

+ (id)multipleIPFormatter:(unint64_t)a3
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_multipleIpAddressesSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)maxLengthFormatter:(unint64_t)a3
{
  v4 = [APFormatter alloc];
  v6 = objc_msgSend_initWithMaxLength_(v4, v5, a3);

  return v6;
}

+ (id)numberOnlyFormatter:(unint64_t)a3
{
  v4 = [APFormatter alloc];
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  v9 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, a3);

  return v9;
}

+ (id)nonZeroNumberOnly:(unint64_t)a3
{
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], a2, @"123456789");
  v5 = [APFormatter alloc];
  v7 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v6, v4, a3);

  return v7;
}

+ (id)portRangeFormatter:(unint64_t)a3
{
  v4 = [APFormatter alloc];
  v7 = objc_msgSend_portRangeSet(APFormatter, v5, v6);
  v9 = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, a3);

  return v9;
}

+ (id)sharedPhoneNumberFormatter
{
  result = qword_27E383468;
  if (!qword_27E383468)
  {
    v4 = [APFormatter alloc];
    v7 = objc_msgSend_phoneNumberSet(a1, v5, v6);
    result = objc_msgSend_initWithCharacterSet_withMaxLength_(v4, v8, v7, 0);
    qword_27E383468 = result;
  }

  return result;
}

+ (id)phoneNumberFormatter:(unint64_t)a3
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_phoneNumberSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)asciiFormatter:(unint64_t)a3
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_asciiSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

  return v10;
}

+ (id)hexFormatter:(unint64_t)a3
{
  v5 = [APFormatter alloc];
  v8 = objc_msgSend_hexSet(a1, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, a3);

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

- (void)setCharacterSet:(id)a3
{
  characterSet = self->_characterSet;
  if (characterSet != a3)
  {

    self->_characterSet = a3;
  }
}

- (id)characterSet
{
  v2 = self->_characterSet;

  return v2;
}

- (void)setInvertedCharacterSet:(id)a3
{
  invertedCharacterSet = self->_invertedCharacterSet;
  if (invertedCharacterSet != a3)
  {

    self->_invertedCharacterSet = a3;
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
  v8 = objc_msgSend_hexSet(a1, v6, v7);
  objc_msgSend_formUnionWithCharacterSet_(v3, v9, v8);
  v12 = objc_msgSend_ipv4AddressSet(a1, v10, v11);
  objc_msgSend_formUnionWithCharacterSet_(v3, v13, v12);

  return v3;
}

- (BOOL)isPartialStringValid:(id *)a3 proposedSelectedRange:(_NSRange *)a4 originalString:(id)a5 originalSelectedRange:(_NSRange)a6 errorDescription:(id *)a7
{
  v13 = 0;
  isPartialStringValid_newEditingString_errorDescription = objc_msgSend_isPartialStringValid_newEditingString_errorDescription_(self, a2, *a3, &v13, a7, a6.location, a6.length);
  if (a4)
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
      a4->location = objc_msgSend_length(v13, v8, v9);
      a4->length = 0;
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