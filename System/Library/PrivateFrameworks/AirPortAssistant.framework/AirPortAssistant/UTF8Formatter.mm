@interface UTF8Formatter
+ (id)afpFormatter:(unint64_t)formatter;
+ (id)afpSet;
+ (id)utf8Formatter;
+ (id)utf8Formatter:(unint64_t)formatter;
+ (id)utf8FormatterWithMaxByteCount:(unint64_t)count maxLength:(unint64_t)length;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
- (UTF8Formatter)initWithMaxByteCount:(unint64_t)count maxLength:(unint64_t)length;
- (id)initAFPFormatterWithLength:(unint64_t)length;
@end

@implementation UTF8Formatter

+ (id)utf8Formatter
{
  v2 = [UTF8Formatter alloc];
  v4 = objc_msgSend_initWithMaxByteCount_maxLength_(v2, v3, 0, 0);

  return v4;
}

+ (id)utf8Formatter:(unint64_t)formatter
{
  v4 = [UTF8Formatter alloc];
  v6 = objc_msgSend_initWithMaxByteCount_maxLength_(v4, v5, formatter, formatter);

  return v6;
}

+ (id)utf8FormatterWithMaxByteCount:(unint64_t)count maxLength:(unint64_t)length
{
  v6 = [UTF8Formatter alloc];
  v8 = objc_msgSend_initWithMaxByteCount_maxLength_(v6, v7, count, length);

  return v8;
}

+ (id)afpFormatter:(unint64_t)formatter
{
  v4 = [UTF8Formatter alloc];
  inited = objc_msgSend_initAFPFormatterWithLength_(v4, v5, formatter);

  return inited;
}

- (id)initAFPFormatterWithLength:(unint64_t)length
{
  v6 = objc_msgSend_initWithMaxLength_(self, a2, length);
  if (v6)
  {
    v7 = objc_msgSend_afpSet(UTF8Formatter, v4, v5);
    objc_msgSend_setMaxByteCount_(v6, v8, length);
    v11 = objc_msgSend_invertedSet(v7, v9, v10);
    objc_msgSend_setInvertedCharacterSet_(v6, v12, v11);
    objc_msgSend_setCharacterSet_(v6, v13, v7);
  }

  return v6;
}

- (UTF8Formatter)initWithMaxByteCount:(unint64_t)count maxLength:(unint64_t)length
{
  v5 = objc_msgSend_initWithMaxLength_(self, a2, length);
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setMaxByteCount_(v5, v6, count);
    v10 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v8, v9);
    objc_msgSend_setInvertedCharacterSet_(v7, v11, v10);
    v14 = objc_msgSend_invertedCharacterSet(v7, v12, v13);
    v17 = objc_msgSend_invertedSet(v14, v15, v16);
    objc_msgSend_setCharacterSet_(v7, v18, v17);
  }

  return v7;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v20.receiver = self;
  v20.super_class = UTF8Formatter;
  v9 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v9)
  {
    if (objc_msgSend_length(valid, v10, v11))
    {
      v14 = objc_msgSend_maxByteCount(self, v12, v13);
      v18 = objc_msgSend_UTF8ByteCount(valid, v15, v16);
      LOBYTE(v9) = 1;
      if (v14 && v18 > v14)
      {
        if (string)
        {
          *string = objc_msgSend_prefixStringWithByteCount_(valid, v17, v14);
        }

        LOBYTE(v9) = 0;
        if (description)
        {
          *description = @"gErC";
        }
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

+ (id)afpSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v5 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v3, v4);
  objc_msgSend_formUnionWithCharacterSet_(v2, v6, v5);
  objc_msgSend_invert(v2, v7, v8);
  objc_msgSend_removeCharactersInRange_(v2, v9, 58, 1);
  objc_msgSend_removeCharactersInRange_(v2, v10, 47, 1);

  return v2;
}

@end