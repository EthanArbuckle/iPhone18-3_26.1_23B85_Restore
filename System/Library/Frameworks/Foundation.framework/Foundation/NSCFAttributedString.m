@interface NSCFAttributedString
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

@implementation NSCFAttributedString

- (id)attributedSubstringFromRange:(_NSRange)a3
{
  v3 = CFAttributedStringCreateWithSubstring(0, self, a3);

  return v3;
}

- (Class)classForCoder
{
  __CFAttributedStringMtbl();

  return objc_opt_self();
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  v6 = _CFAttributedStringCheckAndReplace();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttributes();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)replaceCharactersInRange:(_NSRange)a3 withAttributedString:(id)a4
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)insertAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)appendAttributedString:(id)a3
{
  _CFAttributedStringGetLength();
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)setAttributedString:(id)a3
{
  _CFAttributedStringGetLength();
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)addAttributes:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttributes();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)addAttribute:(id)a3 value:(id)a4 range:(_NSRange)a5
{
  if (!a4)
  {
    v8 = a2;
    v9 = 2;
    goto LABEL_6;
  }

  v7 = _CFAttributedStringCheckAndSetAttribute();
  if (v7)
  {
    v9 = v7;
    v8 = a2;
LABEL_6:
    mutateError2(v8, v9, self);
  }
}

- (void)removeAttribute:(id)a3 range:(_NSRange)a4
{
  v6 = _CFAttributedStringCheckAndSetAttribute();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

@end