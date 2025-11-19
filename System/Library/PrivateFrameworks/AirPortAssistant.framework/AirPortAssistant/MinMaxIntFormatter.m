@interface MinMaxIntFormatter
+ (id)formatterForMin:(int64_t)a3 max:(int64_t)a4;
- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5;
- (MinMaxIntFormatter)initWithMin:(int64_t)a3 max:(int64_t)a4;
@end

@implementation MinMaxIntFormatter

+ (id)formatterForMin:(int64_t)a3 max:(int64_t)a4
{
  v6 = [MinMaxIntFormatter alloc];
  v8 = objc_msgSend_initWithMin_max_(v6, v7, a3, a4);

  return v8;
}

- (MinMaxIntFormatter)initWithMin:(int64_t)a3 max:(int64_t)a4
{
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v13.receiver = self;
  v13.super_class = MinMaxIntFormatter;
  v8 = [(APFormatter *)&v13 initWithCharacterSet:v7 withMaxLength:0];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setMinimum_(v8, v9, a3);
    objc_msgSend_setMaximum_(v10, v11, a4);
  }

  return v10;
}

- (BOOL)isPartialStringValid:(id)a3 newEditingString:(id *)a4 errorDescription:(id *)a5
{
  v29.receiver = self;
  v29.super_class = MinMaxIntFormatter;
  v9 = [APFormatter isPartialStringValid:sel_isPartialStringValid_newEditingString_errorDescription_ newEditingString:? errorDescription:?];
  if (v9)
  {
    if (objc_msgSend_length(a3, v10, v11))
    {
      v14 = objc_msgSend_integerValue(a3, v12, v13);
      if (v14 < objc_msgSend_minimum(self, v15, v16))
      {
        if (a4)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = objc_msgSend_minimum(self, v17, v18);
          *a4 = objc_msgSend_stringWithFormat_(v19, v21, @"%ld", v20);
        }

        if (a5)
        {
          v22 = @"gErG";
LABEL_13:
          LOBYTE(v9) = 0;
          *a5 = v22;
          return v9;
        }

        goto LABEL_15;
      }

      if (v14 > objc_msgSend_maximum(self, v17, v18))
      {
        if (a4)
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = objc_msgSend_maximum(self, v23, v24);
          *a4 = objc_msgSend_stringWithFormat_(v25, v27, @"%ld", v26);
        }

        if (a5)
        {
          v22 = @"gErF";
          goto LABEL_13;
        }

LABEL_15:
        LOBYTE(v9) = 0;
        return v9;
      }
    }

    LOBYTE(v9) = 1;
  }

  return v9;
}

@end