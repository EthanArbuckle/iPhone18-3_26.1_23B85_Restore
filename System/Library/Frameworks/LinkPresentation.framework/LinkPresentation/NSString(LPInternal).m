@interface NSString(LPInternal)
- (BOOL)_lp_hasCaseInsensitiveSuffix:()LPInternal;
- (BOOL)_lp_isEqualToAny:()LPInternal;
- (BOOL)_lp_isEqualToAnyIgnoringCase:()LPInternal;
- (BOOL)_lp_isLTRText;
- (uint64_t)_lp_stringType;
- (void)_lp_setStringType:()LPInternal;
@end

@implementation NSString(LPInternal)

- (BOOL)_lp_isEqualToAny:()LPInternal
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__NSString_LPInternal___lp_isEqualToAny___block_invoke;
  v4[3] = &unk_1E7A378B8;
  v4[4] = a1;
  return [a3 indexOfObjectPassingTest:v4] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_lp_isEqualToAnyIgnoringCase:()LPInternal
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__NSString_LPInternal___lp_isEqualToAnyIgnoringCase___block_invoke;
  v4[3] = &unk_1E7A378B8;
  v4[4] = a1;
  return [a3 indexOfObjectPassingTest:v4] != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_lp_hasCaseInsensitiveSuffix:()LPInternal
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 rangeOfString:v4 options:13] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_lp_stringType
{
  v2 = objc_getAssociatedObject(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lp_setStringType:()LPInternal
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, sel__lp_stringType, v2, 1);
}

- (BOOL)_lp_isLTRText
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getNLLanguageRecognizerClass(void)::softClass;
  v11 = getNLLanguageRecognizerClass(void)::softClass;
  if (!getNLLanguageRecognizerClass(void)::softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL28getNLLanguageRecognizerClassv_block_invoke;
    v7[3] = &unk_1E7A35518;
    v7[4] = &v8;
    ___ZL28getNLLanguageRecognizerClassv_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 dominantLanguageForString:a1];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v4] == 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end