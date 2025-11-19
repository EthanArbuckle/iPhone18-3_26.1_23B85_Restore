@interface CNSocialProfileContactPredicate
- (BOOL)isEqual:(id)a3;
- (CNSocialProfileContactPredicate)initWithCoder:(id)a3;
- (CNSocialProfileContactPredicate)initWithSocialProfile:(id)a3;
- (NSString)description;
- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNSocialProfileContactPredicate

- (id)sgContactMatchesWithSortOrder:(int64_t)a3 mutableObjects:(BOOL)a4 service:(id)a5 error:(id *)a6
{
  v7 = MEMORY[0x1E6999220];
  v32 = a5;
  v34 = [v7 extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
  v8 = [MEMORY[0x1E6999288] recordIdWithNumericValue:-1];
  v26 = objc_alloc(MEMORY[0x1E6999298]);
  v30 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v9 = [v30 username];
  v29 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v10 = [v29 userIdentifier];
  v28 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v27 = [v28 bundleIdentifiers];
  v11 = [v27 firstObject];
  v12 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v13 = [v12 displayname];
  v14 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v15 = [v14 service];
  v16 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v17 = [v16 teamIdentifier];
  v33 = v8;
  v25 = v8;
  v18 = v9;
  v19 = [v26 initWithUsername:v9 userIdentifier:v10 bundleIdentifier:v11 displayName:v13 service:v15 teamIdentifier:v17 label:0 extractionInfo:v34 recordId:v25];

  v20 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v21 = [v20 completionHandlerAdapter];
  [v32 contactMatchesBySocialProfile:v19 withCompletion:v21];

  v22 = [v20 future];
  v23 = [v22 resultWithTimeout:a6 error:*&CNSuggestionsServiceDefaultTimeout];

  if (!v23 && [MEMORY[0x1E6996708] isTimeoutError:*a6])
  {
    CNSetError(a6, 1001, 0);
  }

  return v23;
}

- (CNSocialProfileContactPredicate)initWithSocialProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNSocialProfileContactPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v5 = [(CNSocialProfileContactPredicate *)self socialProfile];
  v6 = [v5 dictionaryRepresentation];
  v7 = [v3 appendName:@"socialProfile" object:v6];

  v8 = [v3 build];

  return v8;
}

- (CNSocialProfileContactPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CNSocialProfileContactPredicate;
  v5 = [(CNPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_socialProfile"];
    v7 = [v6 copy];
    socialProfile = v5->_socialProfile;
    v5->_socialProfile = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNSocialProfileContactPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_socialProfile forKey:{@"_socialProfile", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CNSocialProfileContactPredicate_isEqual___block_invoke;
  v8[3] = &unk_1E7412228;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
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