@interface CNUnifiedContactPosterDataRequestFactory
- (CNUnifiedContactPosterDataRequestFactory)init;
- (CNUnifiedContactPosterDataRequestFactory)initWithContactStore:(id)a3;
- (CNUnifiedContactPosterDataRequestFactory)initWithIdentifierExpander:(id)a3;
- (id)createImages:(id)a3 forContact:(id)a4;
- (id)createPosters:(id)a3 forContact:(id)a4;
- (id)currentImagesForContactWithIdentifier:(id)a3;
- (id)currentPostersForContactWithIdentifier:(id)a3;
- (id)recentImagesForContact:(id)a3;
- (id)recentImagesForContactWithIdentifier:(id)a3;
- (id)recentPostersForContact:(id)a3;
- (id)recentPostersForContactWithIdentifier:(id)a3;
@end

@implementation CNUnifiedContactPosterDataRequestFactory

- (CNUnifiedContactPosterDataRequestFactory)init
{
  v3 = objc_alloc_init(CNContactStore);
  v4 = [(CNUnifiedContactPosterDataRequestFactory *)self initWithContactStore:v3];

  return v4;
}

- (CNUnifiedContactPosterDataRequestFactory)initWithContactStore:(id)a3
{
  v4 = a3;
  v5 = [[CNRefetchingContactIdentifierExpander alloc] initWithContactStore:v4];

  v6 = [(CNUnifiedContactPosterDataRequestFactory *)self initWithIdentifierExpander:v5];
  return v6;
}

- (CNUnifiedContactPosterDataRequestFactory)initWithIdentifierExpander:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUnifiedContactPosterDataRequestFactory;
  v6 = [(CNUnifiedContactPosterDataRequestFactory *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expander, a3);
    v8 = v7;
  }

  return v7;
}

- (id)recentPostersForContact:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContact:a3];
  v4 = [CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentPostersForContactWithIdentifier:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:a3];
  v4 = [CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)currentPostersForContactWithIdentifier:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:a3];
  v4 = [CNContactPosterFetchRequest currentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentImagesForContact:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContact:a3];
  v4 = [CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentImagesForContactWithIdentifier:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:a3];
  v4 = [CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)currentImagesForContactWithIdentifier:(id)a3
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:a3];
  v4 = [CNContactImageFetchRequest currentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)createPosters:(id)a3 forContact:(id)a4
{
  v6 = a3;
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)self preferredIdentifierForImagesForContact:a4];
  v8 = [CNContactPosterCreateRequest requestToCreatePosters:v6 forContactIdentifier:v7];

  return v8;
}

- (id)createImages:(id)a3 forContact:(id)a4
{
  v6 = a3;
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)self preferredIdentifierForImagesForContact:a4];
  v8 = [CNContactImageCreateRequest requestToCreateImages:v6 forContactIdentifier:v7];

  return v8;
}

@end