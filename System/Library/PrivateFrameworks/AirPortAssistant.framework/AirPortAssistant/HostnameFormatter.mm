@interface HostnameFormatter
+ (id)hostnameFormatter:(unint64_t)formatter;
+ (id)hostnameSet;
- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description;
@end

@implementation HostnameFormatter

+ (id)hostnameFormatter:(unint64_t)formatter
{
  v5 = [HostnameFormatter alloc];
  v8 = objc_msgSend_hostnameSet(self, v6, v7);
  v10 = objc_msgSend_initWithCharacterSet_withMaxLength_(v5, v9, v8, formatter);

  return v10;
}

- (BOOL)isPartialStringValid:(id)valid newEditingString:(id *)string errorDescription:(id *)description
{
  v10 = objc_msgSend_rangeOfString_options_(valid, a2, @".local", 4);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = objc_msgSend_length(valid, v9, 0x7FFFFFFFFFFFFFFFLL);
  }

  v11 = objc_msgSend_substringToIndex_(valid, v9, v10);
  v16.receiver = self;
  v16.super_class = HostnameFormatter;
  v12 = [(APFormatter *)&v16 isPartialStringValid:v11 newEditingString:string errorDescription:description];
  v14 = v12;
  if (string && (v12 & 1) == 0)
  {
    *string = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@.local", *string);
  }

  return v14;
}

+ (id)hostnameSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @"-");
  objc_msgSend_addCharactersInString_(v2, v4, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
  v7 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v5, v6);
  objc_msgSend_formUnionWithCharacterSet_(v2, v8, v7);

  return v2;
}

@end