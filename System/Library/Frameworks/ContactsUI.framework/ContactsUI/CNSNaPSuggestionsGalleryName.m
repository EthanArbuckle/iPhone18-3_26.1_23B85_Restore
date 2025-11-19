@interface CNSNaPSuggestionsGalleryName
- (CNSNaPSuggestionsGalleryName)initWithGivenName:(id)a3 familyName:(id)a4;
@end

@implementation CNSNaPSuggestionsGalleryName

- (CNSNaPSuggestionsGalleryName)initWithGivenName:(id)a3 familyName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNSNaPSuggestionsGalleryName;
  v9 = [(CNSNaPSuggestionsGalleryName *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_given, a3);
    objc_storeStrong(&v10->_family, a4);
    v11 = v10;
  }

  return v10;
}

@end