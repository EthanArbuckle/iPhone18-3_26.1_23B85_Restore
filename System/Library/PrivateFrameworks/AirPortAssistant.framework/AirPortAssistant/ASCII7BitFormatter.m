@interface ASCII7BitFormatter
+ (id)ascii7BitFormatter:(unint64_t)a3;
+ (id)ascii7BitSet;
- (ASCII7BitFormatter)initWithMaxLength:(unint64_t)a3;
@end

@implementation ASCII7BitFormatter

+ (id)ascii7BitFormatter:(unint64_t)a3
{
  v4 = [ASCII7BitFormatter alloc];
  v6 = objc_msgSend_initWithMaxLength_(v4, v5, a3);

  return v6;
}

- (ASCII7BitFormatter)initWithMaxLength:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = ASCII7BitFormatter;
  v5 = [(APFormatter *)&v13 initWithMaxLength:a3];
  if (v5)
  {
    v6 = objc_msgSend_ascii7BitSet(ASCII7BitFormatter, v3, v4);
    objc_msgSend_setCharacterSet_(v5, v7, v6);
    v10 = objc_msgSend_invertedSet(v6, v8, v9);
    objc_msgSend_setInvertedCharacterSet_(v5, v11, v10);
  }

  return v5;
}

+ (id)ascii7BitSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);

  return v2;
}

@end