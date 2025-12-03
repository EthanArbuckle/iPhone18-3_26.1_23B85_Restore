@interface _NSPersonNameComponentsStyleFormatterShortNameSimpleFallback
- (id)fallbackStyleFormatter;
- (id)keysOfInterest;
- (id)stringFromComponents:(id)components attributesByRange:(id)range;
@end

@implementation _NSPersonNameComponentsStyleFormatterShortNameSimpleFallback

- (id)keysOfInterest
{
  result = self->super.super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"familyName", @"givenName", 0}];
    self->super.super._keysOfInterest = result;
  }

  return result;
}

- (id)stringFromComponents:(id)components attributesByRange:(id)range
{
  if (![(_NSPersonNameComponentsStyleFormatter *)self fullComponentsAreValid:?])
  {
    return 0;
  }

  v7 = [(_NSPersonNameComponentsStyleFormatter *)self _formattedStringFromOrderedKeys:[(_NSPersonNameComponentsStyleFormatter *)self _orderedNonEmptyKeysFromComponents:components] components:components attributesByRange:range];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      return v8;
    }
  }

  v9 = [[_NSPersonNameComponentsStyleFormatterMedium alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return [(_NSPersonNameComponentsStyleFormatter *)v9 stringFromComponents:components attributesByRange:range];
}

- (id)fallbackStyleFormatter
{
  v2 = [[_NSPersonNameComponentsStyleFormatterMedium alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return v2;
}

@end