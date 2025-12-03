@interface UserProfileSectionFooterViewModel
- (UserProfileSectionFooterViewModel)initWithContentString:(id)string;
@end

@implementation UserProfileSectionFooterViewModel

- (UserProfileSectionFooterViewModel)initWithContentString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = UserProfileSectionFooterViewModel;
  v6 = [(UserProfileSectionFooterViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentString, string);
  }

  return v7;
}

@end