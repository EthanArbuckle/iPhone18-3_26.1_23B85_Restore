@interface NSString
@end

@implementation NSString

void __66__NSString_ABVCardAdditions__abStringByStrippingControlCharacters__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E696AB08] "controlCharacterSet")];
  [v0 invert];
  [v0 formUnionWithCharacterSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  [v0 addCharactersInRange:{8205, 1}];
  [v0 invert];
  abStringByStrippingControlCharacters___invalidChars = [v0 copy];
}

@end