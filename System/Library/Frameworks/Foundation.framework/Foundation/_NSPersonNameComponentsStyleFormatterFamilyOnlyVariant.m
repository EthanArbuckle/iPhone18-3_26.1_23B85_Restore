@interface _NSPersonNameComponentsStyleFormatterFamilyOnlyVariant
- (BOOL)fullComponentsAreValid:(id)a3;
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterFamilyOnlyVariant

- (id)keysOfInterest
{
  result = self->super.super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"familyName", 0}];
    self->super.super._keysOfInterest = result;
  }

  return result;
}

- (BOOL)fullComponentsAreValid:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSPersonNameComponentsStyleFormatterFamilyOnlyVariant;
  v4 = [(_NSPersonNameComponentsStyleFormatter *)&v6 fullComponentsAreValid:?];
  if (v4)
  {
    LOBYTE(v4) = [objc_msgSend(a3 "familyName")] > 1;
  }

  return v4;
}

@end