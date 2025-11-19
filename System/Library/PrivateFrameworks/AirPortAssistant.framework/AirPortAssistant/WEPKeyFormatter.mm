@interface WEPKeyFormatter
+ (id)sharedWEPKeyFormatter;
+ (id)wepKeyFormatter:(unint64_t)a3;
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
@end

@implementation WEPKeyFormatter

+ (id)sharedWEPKeyFormatter
{
  result = qword_27E383470;
  if (!qword_27E383470)
  {
    v3 = [WEPKeyFormatter alloc];
    result = objc_msgSend_initWithMaxByteCount_maxLength_(v3, v4, 64, 64);
    qword_27E383470 = result;
  }

  return result;
}

+ (id)wepKeyFormatter:(unint64_t)a3
{
  v4 = [WEPKeyFormatter alloc];
  v6 = objc_msgSend_initWithMaxByteCount_maxLength_(v4, v5, a3, a3);

  return v6;
}

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v9 = @"$";
  if (objc_msgSend_hasPrefix_(a3, a2, @"$"))
  {
    v11 = 1;
  }

  else
  {
    v9 = @"0x";
    if ((objc_msgSend_hasPrefix_(a3, v10, @"0x") & 1) == 0 && !objc_msgSend_hasPrefix_(a3, v10, @"0X"))
    {
      goto LABEL_7;
    }

    v11 = 2;
  }

  v26 = 0;
  v12 = MEMORY[0x277CCAC80];
  v13 = objc_msgSend_substringFromIndex_(a3, v10, v11);
  v15 = objc_msgSend_scannerWithString_(v12, v14, v13);
  v18 = objc_msgSend_hexSet(APFormatter, v16, v17);
  objc_msgSend_scanCharactersFromSet_intoString_(v15, v19, v18, &v26);
  if (objc_msgSend_isAtEnd(v15, v20, v21))
  {
LABEL_7:
    v25.receiver = self;
    v25.super_class = WEPKeyFormatter;
    return [(UTF8Formatter *)&v25 isPartialStringValid:a3 newEditingString:a4 errorDescription:a5];
  }

  if (a4)
  {
    v24 = v26;
    if (!v26)
    {
      v24 = &stru_285145FE8;
    }

    *a4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@%@", v9, v24);
  }

  if (a5)
  {
    *a5 = @"gErE";
  }

  return 0;
}

@end