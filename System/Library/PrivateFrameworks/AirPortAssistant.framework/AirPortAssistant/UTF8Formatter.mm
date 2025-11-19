@interface UTF8Formatter
+ (id)afpFormatter:(unint64_t)a3;
+ (id)afpSet;
+ (id)utf8Formatter;
+ (id)utf8Formatter:(unint64_t)a3;
+ (id)utf8FormatterWithMaxByteCount:(unint64_t)a3 maxLength:(unint64_t)a4;
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
- (UTF8Formatter)initWithMaxByteCount:(unint64_t)a3 maxLength:(unint64_t)a4;
- (id)initAFPFormatterWithLength:(unint64_t)a3;
@end

@implementation UTF8Formatter

+ (id)utf8Formatter
{
  v2 = [UTF8Formatter alloc];
  v4 = objc_msgSend_initWithMaxByteCount_maxLength_(v2, v3, 0, 0);

  return v4;
}

+ (id)utf8Formatter:(unint64_t)a3
{
  v4 = [UTF8Formatter alloc];
  v6 = objc_msgSend_initWithMaxByteCount_maxLength_(v4, v5, a3, a3);

  return v6;
}

+ (id)utf8FormatterWithMaxByteCount:(unint64_t)a3 maxLength:(unint64_t)a4
{
  v6 = [UTF8Formatter alloc];
  v8 = objc_msgSend_initWithMaxByteCount_maxLength_(v6, v7, a3, a4);

  return v8;
}

+ (id)afpFormatter:(unint64_t)a3
{
  v4 = [UTF8Formatter alloc];
  inited = objc_msgSend_initAFPFormatterWithLength_(v4, v5, a3);

  return inited;
}

- (id)initAFPFormatterWithLength:(unint64_t)a3
{
  v6 = objc_msgSend_initWithMaxLength_(self, a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_afpSet(UTF8Formatter, v4, v5);
    objc_msgSend_setMaxByteCount_(v6, v8, a3);
    v11 = objc_msgSend_invertedSet(v7, v9, v10);
    objc_msgSend_setInvertedCharacterSet_(v6, v12, v11);
    objc_msgSend_setCharacterSet_(v6, v13, v7);
  }

  return v6;
}

- (UTF8Formatter)initWithMaxByteCount:(unint64_t)a3 maxLength:(unint64_t)a4
{
  v5 = objc_msgSend_initWithMaxLength_(self, a2, a4);
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setMaxByteCount_(v5, v6, a3);
    v10 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v8, v9);
    objc_msgSend_setInvertedCharacterSet_(v7, v11, v10);
    v14 = objc_msgSend_invertedCharacterSet(v7, v12, v13);
    v17 = objc_msgSend_invertedSet(v14, v15, v16);
    objc_msgSend_setCharacterSet_(v7, v18, v17);
  }

  return v7;
}

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v20.receiver = self;
  v20.super_class = UTF8Formatter;
  v9 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v9)
  {
    if (objc_msgSend_length(a3, v10, v11))
    {
      v14 = objc_msgSend_maxByteCount(self, v12, v13);
      v18 = objc_msgSend_UTF8ByteCount(a3, v15, v16);
      LOBYTE(v9) = 1;
      if (v14 && v18 > v14)
      {
        if (a4)
        {
          *a4 = objc_msgSend_prefixStringWithByteCount_(a3, v17, v14);
        }

        LOBYTE(v9) = 0;
        if (a5)
        {
          *a5 = @"gErC";
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