@interface CNSocialProfileContactPredicate
- (BOOL)isEqual:(id)equal;
- (CNSocialProfileContactPredicate)initWithCoder:(id)coder;
- (CNSocialProfileContactPredicate)initWithSocialProfile:(id)profile;
- (NSString)description;
- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNSocialProfileContactPredicate

- (id)sgContactMatchesWithSortOrder:(int64_t)order mutableObjects:(BOOL)objects service:(id)service error:(id *)error
{
  v7 = MEMORY[0x1E6999220];
  serviceCopy = service;
  v34 = [v7 extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
  v8 = [MEMORY[0x1E6999288] recordIdWithNumericValue:-1];
  v26 = objc_alloc(MEMORY[0x1E6999298]);
  socialProfile = [(CNSocialProfileContactPredicate *)self socialProfile];
  username = [socialProfile username];
  socialProfile2 = [(CNSocialProfileContactPredicate *)self socialProfile];
  userIdentifier = [socialProfile2 userIdentifier];
  socialProfile3 = [(CNSocialProfileContactPredicate *)self socialProfile];
  bundleIdentifiers = [socialProfile3 bundleIdentifiers];
  firstObject = [bundleIdentifiers firstObject];
  socialProfile4 = [(CNSocialProfileContactPredicate *)self socialProfile];
  displayname = [socialProfile4 displayname];
  socialProfile5 = [(CNSocialProfileContactPredicate *)self socialProfile];
  service = [socialProfile5 service];
  socialProfile6 = [(CNSocialProfileContactPredicate *)self socialProfile];
  teamIdentifier = [socialProfile6 teamIdentifier];
  v33 = v8;
  v25 = v8;
  v18 = username;
  v19 = [v26 initWithUsername:username userIdentifier:userIdentifier bundleIdentifier:firstObject displayName:displayname service:service teamIdentifier:teamIdentifier label:0 extractionInfo:v34 recordId:v25];

  v20 = objc_alloc_init(MEMORY[0x1E69967D0]);
  completionHandlerAdapter = [v20 completionHandlerAdapter];
  [serviceCopy contactMatchesBySocialProfile:v19 withCompletion:completionHandlerAdapter];

  future = [v20 future];
  v23 = [future resultWithTimeout:error error:*&CNSuggestionsServiceDefaultTimeout];

  if (!v23 && [MEMORY[0x1E6996708] isTimeoutError:*error])
  {
    CNSetError(error, 1001, 0);
  }

  return v23;
}

- (CNSocialProfileContactPredicate)initWithSocialProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = CNSocialProfileContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [profileCopy copy];
    socialProfile = v5->_socialProfile;
    v5->_socialProfile = v6;

    v8 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"kind" object:@"-[CNContact predicateForContactsMatchingSocialProfile:]"];
  socialProfile = [(CNSocialProfileContactPredicate *)self socialProfile];
  dictionaryRepresentation = [socialProfile dictionaryRepresentation];
  v7 = [v3 appendName:@"socialProfile" object:dictionaryRepresentation];

  build = [v3 build];

  return build;
}

- (CNSocialProfileContactPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CNSocialProfileContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_socialProfile"];
    v7 = [v6 copy];
    socialProfile = v5->_socialProfile;
    v5->_socialProfile = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNSocialProfileContactPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_socialProfile forKey:{@"_socialProfile", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNSocialProfileContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:v6 memberOfSameClassAndEqualTo:self withBlocks:{v8, 0}];

  return self;
}

uint64_t __43__CNSocialProfileContactPredicate_isEqual___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69966F0];
  v3 = [*(a1 + 32) socialProfile];
  v4 = [*(a1 + 40) socialProfile];
  v5 = [v2 isObject:v3 equalToOther:v4];

  return v5;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CNSocialProfileContactPredicate_hash__block_invoke;
  v3[3] = &unk_1E7412250;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __39__CNSocialProfileContactPredicate_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) socialProfile];
  v3 = [v1 objectHash:v2];

  return v3;
}

@end