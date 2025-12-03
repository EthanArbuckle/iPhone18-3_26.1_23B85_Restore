@interface _NSPersonNameComponentsStyleFormatterGivenInitialVariant
- (BOOL)fullComponentsAreValid:(id)valid;
- (id)abbreviatedKeys;
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterGivenInitialVariant

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

- (id)abbreviatedKeys
{
  v5[1] = *MEMORY[0x1E69E9840];
  result = self->super.super._abbreviatedKeys;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5[0] = @"givenName";
    result = [v4 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1)}];
    self->super.super._abbreviatedKeys = result;
  }

  return result;
}

- (BOOL)fullComponentsAreValid:(id)valid
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSPersonNameComponentsStyleFormatterGivenInitialVariant;
  LODWORD(givenName) = [(_NSPersonNameComponentsStyleFormatter *)&v6 fullComponentsAreValid:?];
  if (givenName)
  {
    givenName = [valid givenName];
    if (givenName)
    {
      LOBYTE(givenName) = [objc_msgSend(valid "familyName")] > 1;
    }
  }

  return givenName;
}

@end