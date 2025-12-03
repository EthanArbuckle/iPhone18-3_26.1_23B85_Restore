@interface AAUIPSSpecifier
+ (BOOL)_startSpinnerWithSpecifier:(id)specifier;
+ (BOOL)_stopSpinnerWithSpecifier:(id)specifier;
@end

@implementation AAUIPSSpecifier

+ (BOOL)_startSpinnerWithSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:*MEMORY[0x1E69C5990]];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [v4 setColor:systemGrayColor];

    [v4 startAnimating];
    [v3 setAccessoryView:v4];
  }

  return v3 != 0;
}

+ (BOOL)_stopSpinnerWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:*MEMORY[0x1E69C5990]];
  if (v4)
  {
    v5 = [specifierCopy propertyForKey:*MEMORY[0x1E69C5898]];
    [v4 setAccessoryView:v5];
  }

  return v4 != 0;
}

@end