@interface _NSPersonNameComponentsStyleFormatterMedium
- (id)keysOfInterest;
@end

@implementation _NSPersonNameComponentsStyleFormatterMedium

- (id)keysOfInterest
{
  result = self->super._keysOfInterest;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"givenName", @"familyName", 0}];
    self->super._keysOfInterest = result;
  }

  return result;
}

@end