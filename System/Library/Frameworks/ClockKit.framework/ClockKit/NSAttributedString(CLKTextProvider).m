@interface NSAttributedString(CLKTextProvider)
- (id)_attributedStringWithForegroundColor:()CLKTextProvider;
- (id)_attributedStringWithOtherAttributesFromStyle:()CLKTextProvider;
@end

@implementation NSAttributedString(CLKTextProvider)

- (id)_attributedStringWithOtherAttributesFromStyle:()CLKTextProvider
{
  v4 = a3;
  v5 = [v4 otherAttributes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [a1 mutableCopy];
    v8 = [v4 otherAttributes];
    [v7 addAttributes:v8 range:{0, objc_msgSend(v7, "length")}];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (id)_attributedStringWithForegroundColor:()CLKTextProvider
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 mutableCopy];
    [v5 addAttribute:*MEMORY[0x277D740C0] value:v4 range:{0, objc_msgSend(v5, "length")}];

    v6 = [v5 copy];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end