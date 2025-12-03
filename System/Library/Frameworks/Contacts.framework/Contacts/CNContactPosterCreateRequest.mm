@interface CNContactPosterCreateRequest
+ (id)requestToCreatePoster:(id)poster forContactIdentifier:(id)identifier;
+ (id)requestToCreatePosters:(id)posters forContactIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (CNContactPosterCreateRequest)initWithCoder:(id)coder;
- (CNContactPosterCreateRequest)initWithContactPosters:(id)posters contactIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactPosterCreateRequest

- (CNContactPosterCreateRequest)initWithContactPosters:(id)posters contactIdentifier:(id)identifier
{
  postersCopy = posters;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CNContactPosterCreateRequest;
  v8 = [(CNContactPosterCreateRequest *)&v15 init];
  if (v8)
  {
    v9 = [postersCopy copy];
    posters = v8->_posters;
    v8->_posters = v9;

    v11 = [identifierCopy copy];
    contactIdentifier = v8->_contactIdentifier;
    v8->_contactIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)requestToCreatePosters:(id)posters forContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  postersCopy = posters;
  v7 = [[CNContactPosterCreateRequest alloc] initWithContactPosters:postersCopy contactIdentifier:identifierCopy];

  return v7;
}

+ (id)requestToCreatePoster:(id)poster forContactIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  v5 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  posterCopy2 = poster;
  v8 = [v5 arrayWithObjects:&posterCopy count:1];
  v9 = [CNContactPosterCreateRequest requestToCreatePosters:v8 forContactIdentifier:identifierCopy, posterCopy, v12];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactIdentifier = [(CNContactPosterCreateRequest *)self contactIdentifier];
  v5 = [v3 appendName:@"identifier" object:contactIdentifier];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (contactIdentifier = self->_contactIdentifier, contactIdentifier | equalCopy->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?]|| (posters = self->_posters, posters | equalCopy->_posters) && ![(NSArray *)posters isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  posters = self->_posters;
  coderCopy = coder;
  [coderCopy encodeObject:posters forKey:@"posters"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (CNContactPosterCreateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"posters"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];

  v7 = [(CNContactPosterCreateRequest *)self initWithContactPosters:v5 contactIdentifier:v6];
  return v7;
}

@end