@interface _NSPersonNameComponentsStyleFormatterShort
- (BOOL)isEnabled;
- (_NSPersonNameComponentsStyleFormatter)subFormatter;
- (_NSPersonNameComponentsStyleFormatterShort)initWithMasterFormatter:(id)a3;
- (_NSPersonNameComponentsStyleFormatterShortVariantGeneral)variantFormatter;
- (id)_formattedStringFromOrderedKeys:(id)a3 components:(id)a4 attributesByRange:(id)a5;
- (id)abbreviatedKeys;
- (id)fallbackStyleFormatter;
- (id)keysOfInterest;
- (id)orderedKeysOfInterest;
- (int64_t)shortNameFormat;
- (void)dealloc;
@end

@implementation _NSPersonNameComponentsStyleFormatterShort

- (BOOL)isEnabled
{
  [(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  v4 = [(_NSPersonNameComponentsStyleFormatterShort *)self forceShortNameEnabled]|| +[NSPersonNameComponentsFormatter _shortNameIsEnabled];
  LOBYTE(v5) = 1;
  v6 = [(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] __localizedRestrictionExistsForStyle:1];
  [(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = ![(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] __localizedRestrictionExistsForShortStyle:[(_NSPersonNameComponentsStyleFormatterShort *)self shortNameFormat]];
  }

  if (v4)
  {
    return !v6 & v5;
  }

  else
  {
    return 0;
  }
}

- (_NSPersonNameComponentsStyleFormatterShortVariantGeneral)variantFormatter
{
  result = self->_variantFormatter;
  if (!result)
  {
    [(_NSPersonNameComponentsStyleFormatterShort *)self shortNameFormat];
    result = [objc_alloc(objc_opt_class()) initWithMasterFormatter:{-[_NSPersonNameComponentsStyleFormatter masterFormatter](self, "masterFormatter")}];
    self->_variantFormatter = result;
  }

  return result;
}

- (int64_t)shortNameFormat
{
  result = self->_shortNameFormat;
  if (!result)
  {
    result = [(NSPersonNameComponentsFormatter *)[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter] __computedShortNameFormat];
    self->_shortNameFormat = result;
  }

  return result;
}

- (id)orderedKeysOfInterest
{
  v5[1] = *MEMORY[0x1E69E9840];
  [(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = @"nickname";
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _NSPersonNameComponentsStyleFormatterShort;
    return [(_NSPersonNameComponentsStyleFormatter *)&v4 orderedKeysOfInterest];
  }
}

- (_NSPersonNameComponentsStyleFormatter)subFormatter
{
  result = self->_subFormatter;
  if (!result)
  {
    if (+[NSPersonNameComponentsFormatter _shouldPreferNicknames])
    {
      result = [[_NSPersonNameComponentsStyleFormatterNicknameVariant alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];
    }

    else
    {
      result = [(_NSPersonNameComponentsStyleFormatterShort *)self variantFormatter];
    }

    self->_subFormatter = result;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSPersonNameComponentsStyleFormatterShort;
  [(_NSPersonNameComponentsStyleFormatter *)&v3 dealloc];
}

- (id)fallbackStyleFormatter
{
  if (+[NSPersonNameComponentsFormatter _shouldPreferNicknames])
  {
    result = [(_NSPersonNameComponentsStyleFormatterShort *)self variantFormatter];
    if (result)
    {

      return [(_NSPersonNameComponentsStyleFormatterShort *)self variantFormatter];
    }
  }

  else
  {
    v4 = [[_NSPersonNameComponentsStyleFormatterMedium alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

    return v4;
  }

  return result;
}

- (_NSPersonNameComponentsStyleFormatterShort)initWithMasterFormatter:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSPersonNameComponentsStyleFormatterShort;
  result = [(_NSPersonNameComponentsStyleFormatter *)&v4 initWithMasterFormatter:a3];
  if (result)
  {
    result->_shortNameFormat = 0;
  }

  return result;
}

- (id)_formattedStringFromOrderedKeys:(id)a3 components:(id)a4 attributesByRange:(id)a5
{
  v8 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
  v9 = [NSPersonNameComponentsFormatter _isCJKScript:a4];
  if (v8)
  {
    if (v9 || [NSPersonNameComponentsFormatter _isMixedScript:a4])
    {
      v10 = [[_NSPersonNameComponentsStyleFormatterLong alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];
    }

    else
    {
      v10 = [(_NSPersonNameComponentsStyleFormatterShort *)self variantFormatter];
    }

    [[(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter] setFallbackStyleFormatter:v10];
  }

  else if (v9)
  {
    [(_NSPersonNameComponentsStyleFormatterShort *)self setSubFormatter:[[_NSPersonNameComponentsStyleFormatterLong alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]]];
  }

  else if (!+[NSPersonNameComponentsFormatter _shortNameIsEnabled]&& ![(_NSPersonNameComponentsStyleFormatterShort *)self forceShortNameEnabled])
  {
    return 0;
  }

  [[(_NSPersonNameComponentsStyleFormatterShort *)self variantFormatter] setFallbackStyleFormatter:[[_NSPersonNameComponentsStyleFormatterShortNameSimpleFallback alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]]];
  v12 = [(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter];

  return [(_NSPersonNameComponentsStyleFormatter *)v12 stringFromComponents:a4 attributesByRange:a5];
}

- (id)abbreviatedKeys
{
  v2 = [(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter];
  if (v2)
  {
    [(_NSPersonNameComponentsStyleFormatter *)v2 abbreviatedKeys];
  }

  return 0;
}

- (id)keysOfInterest
{
  result = self->super._keysOfInterest;
  if (!result)
  {
    result = [[(_NSPersonNameComponentsStyleFormatterShort *)self subFormatter] keysOfInterest];
    self->super._keysOfInterest = result;
  }

  return result;
}

@end