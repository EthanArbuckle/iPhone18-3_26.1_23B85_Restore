@interface UIFont(LPExtras)
- (uint64_t)_lp_CSSFontWeight;
- (uint64_t)_lp_symbolWeight;
@end

@implementation UIFont(LPExtras)

- (uint64_t)_lp_CSSFontWeight
{
  fontDescriptor = [self fontDescriptor];
  v2 = CTFontDescriptorCopyAttribute(fontDescriptor, *MEMORY[0x1E6965668]);
  [v2 floatValue];
  v4 = v3;

  v5 = round(v4 / 100.0) * 100.0;
  v6 = MEMORY[0x1E696AD98];

  return [v6 numberWithDouble:v5];
}

- (uint64_t)_lp_symbolWeight
{
  if (([self traits] & 2) != 0)
  {
    return 7;
  }

  if (([self traits] & 4) != 0)
  {
    return 2;
  }

  if (([self traits] & 8) != 0)
  {
    return 3;
  }

  if (([self traits] & 0x10) != 0)
  {
    return 1;
  }

  return 4;
}

@end