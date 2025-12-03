@interface _NSPersonNameComponentsStyleFormatterGivenOnlyVariant
- (BOOL)fullComponentsAreValid:(id)valid;
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterGivenOnlyVariant

- (id)keysOfInterest
{
  result = self->super.super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"givenName", 0}];
    self->super.super._keysOfInterest = result;
  }

  return result;
}

- (BOOL)fullComponentsAreValid:(id)valid
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSPersonNameComponentsStyleFormatterGivenOnlyVariant;
  v4 = [(_NSPersonNameComponentsStyleFormatter *)&v6 fullComponentsAreValid:?];
  if (v4)
  {
    LOBYTE(v4) = [objc_msgSend(valid "givenName")] > 1;
  }

  return v4;
}

@end