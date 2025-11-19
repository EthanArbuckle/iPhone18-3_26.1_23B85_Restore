@interface CNContactDiffOptions
- (CNContactDiffOptions)init;
@end

@implementation CNContactDiffOptions

- (CNContactDiffOptions)init
{
  v7.receiver = self;
  v7.super_class = CNContactDiffOptions;
  v2 = [(CNContactDiffOptions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_ignoreUnavailableKeys = 0;
    ignoredKeys = v2->_ignoredKeys;
    v2->_ignoredKeys = MEMORY[0x1E695E0F0];

    v5 = v3;
  }

  return v3;
}

@end