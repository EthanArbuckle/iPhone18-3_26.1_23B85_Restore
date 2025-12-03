@interface CNSNaPSuggestionsGalleryName
- (CNSNaPSuggestionsGalleryName)initWithGivenName:(id)name familyName:(id)familyName;
@end

@implementation CNSNaPSuggestionsGalleryName

- (CNSNaPSuggestionsGalleryName)initWithGivenName:(id)name familyName:(id)familyName
{
  nameCopy = name;
  familyNameCopy = familyName;
  v13.receiver = self;
  v13.super_class = CNSNaPSuggestionsGalleryName;
  v9 = [(CNSNaPSuggestionsGalleryName *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_given, name);
    objc_storeStrong(&v10->_family, familyName);
    v11 = v10;
  }

  return v10;
}

@end