@interface _NSPersonNameComponentsStyleFormatterFamilyInitialVariant
- (BOOL)fullComponentsAreValid:(id)a3;
- (id)abbreviatedKeys;
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterFamilyInitialVariant

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
    v5[0] = @"familyName";
    result = [v4 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1)}];
    self->super.super._abbreviatedKeys = result;
  }

  return result;
}

- (BOOL)fullComponentsAreValid:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSPersonNameComponentsStyleFormatterFamilyInitialVariant;
  LODWORD(v4) = [(_NSPersonNameComponentsStyleFormatter *)&v6 fullComponentsAreValid:?];
  if (v4)
  {
    v4 = [a3 familyName];
    if (v4)
    {
      LOBYTE(v4) = [objc_msgSend(a3 "givenName")] > 1;
    }
  }

  return v4;
}

@end