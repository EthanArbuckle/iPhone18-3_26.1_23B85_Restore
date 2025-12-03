@interface CNUnifiedContactPosterDataRequestFactory
- (CNUnifiedContactPosterDataRequestFactory)init;
- (CNUnifiedContactPosterDataRequestFactory)initWithContactStore:(id)store;
- (CNUnifiedContactPosterDataRequestFactory)initWithIdentifierExpander:(id)expander;
- (id)createImages:(id)images forContact:(id)contact;
- (id)createPosters:(id)posters forContact:(id)contact;
- (id)currentImagesForContactWithIdentifier:(id)identifier;
- (id)currentPostersForContactWithIdentifier:(id)identifier;
- (id)recentImagesForContact:(id)contact;
- (id)recentImagesForContactWithIdentifier:(id)identifier;
- (id)recentPostersForContact:(id)contact;
- (id)recentPostersForContactWithIdentifier:(id)identifier;
@end

@implementation CNUnifiedContactPosterDataRequestFactory

- (CNUnifiedContactPosterDataRequestFactory)init
{
  v3 = objc_alloc_init(CNContactStore);
  v4 = [(CNUnifiedContactPosterDataRequestFactory *)self initWithContactStore:v3];

  return v4;
}

- (CNUnifiedContactPosterDataRequestFactory)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = [[CNRefetchingContactIdentifierExpander alloc] initWithContactStore:storeCopy];

  v6 = [(CNUnifiedContactPosterDataRequestFactory *)self initWithIdentifierExpander:v5];
  return v6;
}

- (CNUnifiedContactPosterDataRequestFactory)initWithIdentifierExpander:(id)expander
{
  expanderCopy = expander;
  v10.receiver = self;
  v10.super_class = CNUnifiedContactPosterDataRequestFactory;
  v6 = [(CNUnifiedContactPosterDataRequestFactory *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expander, expander);
    v8 = v7;
  }

  return v7;
}

- (id)recentPostersForContact:(id)contact
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContact:contact];
  v4 = [CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentPostersForContactWithIdentifier:(id)identifier
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:identifier];
  v4 = [CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)currentPostersForContactWithIdentifier:(id)identifier
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:identifier];
  v4 = [CNContactPosterFetchRequest currentPostersRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentImagesForContact:(id)contact
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContact:contact];
  v4 = [CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)recentImagesForContactWithIdentifier:(id)identifier
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:identifier];
  v4 = [CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)currentImagesForContactWithIdentifier:(id)identifier
{
  v3 = [(CNContactPosterUnifiedContactIdentifierExpansion *)self->_expander expandIdentifiersForContactWithIdentifier:identifier];
  v4 = [CNContactImageFetchRequest currentImagesRequestForContactIdentifiers:v3];

  return v4;
}

- (id)createPosters:(id)posters forContact:(id)contact
{
  postersCopy = posters;
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)self preferredIdentifierForImagesForContact:contact];
  v8 = [CNContactPosterCreateRequest requestToCreatePosters:postersCopy forContactIdentifier:v7];

  return v8;
}

- (id)createImages:(id)images forContact:(id)contact
{
  imagesCopy = images;
  v7 = [(CNUnifiedContactPosterDataRequestFactory *)self preferredIdentifierForImagesForContact:contact];
  v8 = [CNContactImageCreateRequest requestToCreateImages:imagesCopy forContactIdentifier:v7];

  return v8;
}

@end