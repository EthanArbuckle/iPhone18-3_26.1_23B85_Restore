@interface DomainNameFormatter
+ (id)domainNameFormatter:(unint64_t)formatter;
+ (id)domainNameSet;
- (DomainNameFormatter)initWithMaxLength:(unint64_t)length;
@end

@implementation DomainNameFormatter

+ (id)domainNameFormatter:(unint64_t)formatter
{
  v3 = [DomainNameFormatter alloc];
  v5 = objc_msgSend_initWithMaxLength_(v3, v4, 0);

  return v5;
}

- (DomainNameFormatter)initWithMaxLength:(unint64_t)length
{
  v13.receiver = self;
  v13.super_class = DomainNameFormatter;
  v5 = [(APFormatter *)&v13 initWithMaxLength:length];
  if (v5)
  {
    v6 = objc_msgSend_domainNameSet(DomainNameFormatter, v3, v4);
    objc_msgSend_setCharacterSet_(v5, v7, v6);
    v10 = objc_msgSend_invertedSet(v6, v8, v9);
    objc_msgSend_setInvertedCharacterSet_(v5, v11, v10);
  }

  return v5;
}

+ (id)domainNameSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @".:-*/");
  objc_msgSend_addCharactersInString_(v2, v4, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  objc_msgSend_formUnionWithCharacterSet_(v2, v8, v7);

  return v2;
}

@end