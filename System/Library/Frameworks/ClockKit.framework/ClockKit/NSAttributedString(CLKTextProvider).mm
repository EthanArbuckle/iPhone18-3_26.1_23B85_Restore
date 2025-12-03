@interface NSAttributedString(CLKTextProvider)
- (id)_attributedStringWithForegroundColor:()CLKTextProvider;
- (id)_attributedStringWithOtherAttributesFromStyle:()CLKTextProvider;
@end

@implementation NSAttributedString(CLKTextProvider)

- (id)_attributedStringWithOtherAttributesFromStyle:()CLKTextProvider
{
  v4 = a3;
  otherAttributes = [v4 otherAttributes];
  v6 = [otherAttributes count];

  if (v6)
  {
    selfCopy = [self mutableCopy];
    otherAttributes2 = [v4 otherAttributes];
    [selfCopy addAttributes:otherAttributes2 range:{0, objc_msgSend(selfCopy, "length")}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_attributedStringWithForegroundColor:()CLKTextProvider
{
  if (a3)
  {
    v4 = a3;
    v5 = [self mutableCopy];
    [v5 addAttribute:*MEMORY[0x277D740C0] value:v4 range:{0, objc_msgSend(v5, "length")}];

    selfCopy = [v5 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end