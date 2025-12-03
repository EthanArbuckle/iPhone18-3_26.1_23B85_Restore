@interface NSCFAttributedString
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

@implementation NSCFAttributedString

- (id)attributedSubstringFromRange:(_NSRange)range
{
  v3 = CFAttributedStringCreateWithSubstring(0, self, range);

  return v3;
}

- (Class)classForCoder
{
  __CFAttributedStringMtbl();

  return objc_opt_self();
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  v6 = _CFAttributedStringCheckAndReplace();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttributes();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)replaceCharactersInRange:(_NSRange)range withAttributedString:(id)string
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)insertAttributedString:(id)string atIndex:(unint64_t)index
{
  v6 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)appendAttributedString:(id)string
{
  _CFAttributedStringGetLength();
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)setAttributedString:(id)string
{
  _CFAttributedStringGetLength();
  v5 = _CFAttributedStringCheckAndReplaceAttributed();
  if (v5)
  {
    mutateError2(a2, v5, self);
  }
}

- (void)addAttributes:(id)attributes range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttributes();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

- (void)addAttribute:(id)attribute value:(id)value range:(_NSRange)range
{
  if (!value)
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

- (void)removeAttribute:(id)attribute range:(_NSRange)range
{
  v6 = _CFAttributedStringCheckAndSetAttribute();
  if (v6)
  {
    mutateError2(a2, v6, self);
  }
}

@end