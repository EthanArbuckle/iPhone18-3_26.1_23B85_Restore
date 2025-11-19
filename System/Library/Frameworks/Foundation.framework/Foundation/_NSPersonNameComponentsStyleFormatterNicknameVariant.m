@interface _NSPersonNameComponentsStyleFormatterNicknameVariant
- (id)keysOfInterest;
- (id)orderedTemplate;
@end

@implementation _NSPersonNameComponentsStyleFormatterNicknameVariant

- (id)keysOfInterest
{
  result = self->super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"nickname", 0}];
    self->super._keysOfInterest = result;
  }

  return result;
}

- (id)orderedTemplate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"nickname";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

@end