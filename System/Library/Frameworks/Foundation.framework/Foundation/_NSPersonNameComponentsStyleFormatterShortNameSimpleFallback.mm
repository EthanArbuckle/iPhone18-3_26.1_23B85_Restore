@interface _NSPersonNameComponentsStyleFormatterShortNameSimpleFallback
- (id)fallbackStyleFormatter;
- (id)keysOfInterest;
- (id)stringFromComponents:(id)a3 attributesByRange:(id)a4;
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

- (id)stringFromComponents:(id)a3 attributesByRange:(id)a4
{
  if (![(_NSPersonNameComponentsStyleFormatter *)self fullComponentsAreValid:?])
  {
    return 0;
  }

  v7 = [(_NSPersonNameComponentsStyleFormatter *)self _formattedStringFromOrderedKeys:[(_NSPersonNameComponentsStyleFormatter *)self _orderedNonEmptyKeysFromComponents:a3] components:a3 attributesByRange:a4];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      return v8;
    }
  }

  v9 = [[_NSPersonNameComponentsStyleFormatterMedium alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return [(_NSPersonNameComponentsStyleFormatter *)v9 stringFromComponents:a3 attributesByRange:a4];
}

- (id)fallbackStyleFormatter
{
  v2 = [[_NSPersonNameComponentsStyleFormatterMedium alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return v2;
}

@end