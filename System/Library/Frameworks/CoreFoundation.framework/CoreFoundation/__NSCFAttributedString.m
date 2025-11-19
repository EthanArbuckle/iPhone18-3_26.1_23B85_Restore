@interface __NSCFAttributedString
- (Class)classForCoder;
- (id)attributedSubstringFromRange:(_NSRange)a3;
- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5;
- (void)addAttributes:(id)a3 range:(_NSRange)a4;
- (void)appendAttributedString:(id)a3;
- (void)deleteCharactersInRange:(_NSRange)a3;
- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (void)removeAttribute:(id)a3 range:(_NSRange)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setAttributedString:(id)a3;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
@end

@implementation __NSCFAttributedString

- (id)attributedSubstringFromRange:(_NSRange)a3
{
  v3 = CFAttributedStringCreateWithSubstring(0, self, a3);

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

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  v6 = _CFAttributedStringCheckAndReplace(self, a3.location, a3.length, a4);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttributes(self, a4.location, a4.length, a3, 1u);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed(self, a3.location, a3.length, a4);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed(self, a4, 0, a3);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)appendAttributedString:(id)a3
{
  Length = _CFAttributedStringGetLength(self);
  v7 = _CFAttributedStringCheckAndReplaceAttributed(self, Length, 0, a3);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  v5 = _CFAttributedStringCheckAndReplaceAttributed(self, a3.location, a3.length, 0);
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)setAttributedString:(id)a3
{
  Length = _CFAttributedStringGetLength(self);
  v7 = _CFAttributedStringCheckAndReplaceAttributed(self, 0, Length, a3);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)addAttributes:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttributes(self, a4.location, a4.length, a3, 0);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  if (!a4)
  {
    [__NSCFAttributedString addAttribute:a2 value:? range:?];
  }

  v7 = _CFAttributedStringCheckAndSetAttribute(self, a5.location, a5.length, a3, a4);
  if (v7)
  {
    mutateError2(a2, v7, self);
  }
}

- (void)removeAttribute:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttribute(self, a4.location, a4.length, a3, 0);
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

@end