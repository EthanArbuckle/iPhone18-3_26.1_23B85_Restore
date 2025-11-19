@interface UserProfileSectionFooterViewModel
- (UserProfileSectionFooterViewModel)initWithContentString:(id)a3;
@end

@implementation UserProfileSectionFooterViewModel

- (UserProfileSectionFooterViewModel)initWithContentString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UserProfileSectionFooterViewModel;
  v6 = [(UserProfileSectionFooterViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentString, a3);
  }

  return v7;
}

@end