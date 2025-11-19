@interface CNContactPosterCreateRequest
+ (id)requestToCreatePoster:(id)a3 forContactIdentifier:(id)a4;
+ (id)requestToCreatePosters:(id)a3 forContactIdentifier:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNContactPosterCreateRequest)initWithCoder:(id)a3;
- (CNContactPosterCreateRequest)initWithContactPosters:(id)a3 contactIdentifier:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactPosterCreateRequest

- (CNContactPosterCreateRequest)initWithContactPosters:(id)a3 contactIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNContactPosterCreateRequest;
  v8 = [(CNContactPosterCreateRequest *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    posters = v8->_posters;
    v8->_posters = v9;

    v11 = [v7 copy];
    contactIdentifier = v8->_contactIdentifier;
    v8->_contactIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)requestToCreatePosters:(id)a3 forContactIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNContactPosterCreateRequest alloc] initWithContactPosters:v6 contactIdentifier:v5];

  return v7;
}

+ (id)requestToCreatePoster:(id)a3 forContactIdentifier:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v11 count:1];
  v9 = [CNContactPosterCreateRequest requestToCreatePosters:v8 forContactIdentifier:v6, v11, v12];

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContactPosterCreateRequest *)self contactIdentifier];
  v5 = [v3 appendName:@"identifier" object:v4];

  v6 = [v3 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (contactIdentifier = self->_contactIdentifier, contactIdentifier | v4->_contactIdentifier) && ![(NSString *)contactIdentifier isEqual:?]|| (posters = self->_posters, posters | v4->_posters) && ![(NSArray *)posters isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  posters = self->_posters;
  v5 = a3;
  [v5 encodeObject:posters forKey:@"posters"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
}

- (CNContactPosterCreateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"posters"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];

  v7 = [(CNContactPosterCreateRequest *)self initWithContactPosters:v5 contactIdentifier:v6];
  return v7;
}

@end