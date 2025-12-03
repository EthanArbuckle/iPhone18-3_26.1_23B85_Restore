@interface __NSCFAttributedString
- (Class)classForCoder;
- (id)attributedSubstringFromRange:(_NSRange)range;
- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range;
- (void)addAttributes:(id)attributes range:(_NSRange)range;
- (void)appendAttributedString:(id)string;
- (void)deleteCharactersInRange:(_NSRange)range;
- (void)insertAttributedString:(id)string atIndex:(unint64_t)index;
- (void)removeAttribute:(id)attribute range:(_NSRange)range;
- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setAttributedString:(id)string;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
@end

@implementation __NSCFAttributedString

- (id)attributedSubstringFromRange:(_NSRange)range
{
  v3 = CFAttributedStringCreateWithSubstring(0, self, range);

  return v3;
}

- (Class)classForCoder
{
  if (__CFAttributedStringMtbl(self))
  {
    v2 = "NSMutableAttributedString";
  }

  else
  {
    v2 = "NSAttributedString";
  }

  return objc_lookUpClass(v2);
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  v6 = _CFAttributedStringCheckAndReplace(self, range.location, range.length, string);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttributes(self, range.location, range.length, attributes, 1u);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed(self, range.location, range.length, string);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)insertAttributedString:(id)string atIndex:(unint64_t)index
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed(self, index, 0, string);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)appendAttributedString:(id)string
{
  Length = _CFAttributedStringGetLength(self);
  v7 = _CFAttributedStringCheckAndReplaceAttributed(self, Length, 0, string);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  v5 = _CFAttributedStringCheckAndReplaceAttributed(self, range.location, range.length, 0);
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)setAttributedString:(id)string
{
  Length = _CFAttributedStringGetLength(self);
  v7 = _CFAttributedStringCheckAndReplaceAttributed(self, 0, Length, string);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)addAttributes:(id)attributes range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttributes(self, range.location, range.length, attributes, 0);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  if (!value)
  {
    [__NSCFAttributedString addAttribute:a2 value:? range:?];
  }

  v7 = _CFAttributedStringCheckAndSetAttribute(self, range.location, range.length, attribute, value);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)removeAttribute:(id)attribute range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttribute(self, range.location, range.length, attribute, 0);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

@end