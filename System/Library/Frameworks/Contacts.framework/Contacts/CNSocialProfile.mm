@interface CNSocialProfile
+ (CNSocialProfile)socialProfileWithDictionaryRepresentation:(id)a3;
+ (NSString)localizedStringForService:(NSString *)service;
- (BOOL)isEqual:(id)a3 ignoreURLs:(BOOL)a4;
- (BOOL)isValid:(id *)a3;
- (CNSocialProfile)initWithCoder:(id)a3;
- (CNSocialProfile)initWithUrlString:(id)a3 username:(id)a4 userIdentifier:(id)a5 service:(id)a6 displayname:(id)a7 teamIdentifier:(id)a8 bundleIdentifiers:(id)a9;
- (NSString)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNSocialProfile

+ (NSString)localizedStringForService:(NSString *)service
{
  v4 = MEMORY[0x1E6996750];
  v5 = MEMORY[0x1E696AAE8];
  v6 = service;
  v7 = [v5 bundleForClass:a1];
  v8 = [v4 localizedStringForString:v6 bundle:v7 table:@"SocialServices" returningNilIfNotFound:0];

  return v8;
}

+ (CNSocialProfile)socialProfileWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = +[CN socialProfileFromDictionaryTransform];
  v5 = (v4)[2](v4, v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[CN socialProfileToDictionaryTransform];
  v4 = (v3)[2](v3, self);

  return v4;
}

- (CNSocialProfile)initWithUrlString:(id)a3 username:(id)a4 userIdentifier:(id)a5 service:(id)a6 displayname:(id)a7 teamIdentifier:(id)a8 bundleIdentifiers:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v39.receiver = self;
  v39.super_class = CNSocialProfile;
  v22 = [(CNSocialProfile *)&v39 init];
  if (v22)
  {
    v23 = [v15 copy];
    urlString = v22->_urlString;
    v22->_urlString = v23;

    v25 = [v16 copy];
    username = v22->_username;
    v22->_username = v25;

    v27 = [v17 copy];
    userIdentifier = v22->_userIdentifier;
    v22->_userIdentifier = v27;

    v29 = [v18 copy];
    service = v22->_service;
    v22->_service = v29;

    v31 = [v19 copy];
    displayname = v22->_displayname;
    v22->_displayname = v31;

    v33 = [v20 copy];
    teamIdentifier = v22->_teamIdentifier;
    v22->_teamIdentifier = v33;

    v35 = [v21 copy];
    bundleIdentifiers = v22->_bundleIdentifiers;
    v22->_bundleIdentifiers = v35;

    v37 = v22;
  }

  return v22;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNMutableSocialProfile alloc];
  v5 = [(CNSocialProfile *)self urlString];
  v6 = [(CNSocialProfile *)self username];
  v7 = [(CNSocialProfile *)self userIdentifier];
  v8 = [(CNSocialProfile *)self service];
  v9 = [(CNSocialProfile *)self displayname];
  v10 = [(CNSocialProfile *)self teamIdentifier];
  v11 = [(CNSocialProfile *)self bundleIdentifiers];
  v12 = [(CNSocialProfile *)v4 initWithUrlString:v5 username:v6 userIdentifier:v7 service:v8 displayname:v9 teamIdentifier:v10 bundleIdentifiers:v11];

  return v12;
}

- (CNSocialProfile)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CNSocialProfile;
  v5 = [(CNSocialProfile *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v7 = [v6 copy];
    urlString = v5->_urlString;
    v5->_urlString = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    v10 = [v9 copy];
    username = v5->_username;
    v5->_username = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
    v13 = [v12 copy];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_service"];
    v16 = [v15 copy];
    service = v5->_service;
    v5->_service = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayname"];
    v19 = [v18 copy];
    displayname = v5->_displayname;
    v5->_displayname = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_teamIdentifier"];
    v22 = [v21 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"_bundleIdentifiers"];
    v28 = [v27 copy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v28;

    v30 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  urlString = self->_urlString;
  v5 = a3;
  [v5 encodeObject:urlString forKey:@"_urlString"];
  [v5 encodeObject:self->_username forKey:@"_username"];
  [v5 encodeObject:self->_userIdentifier forKey:@"_userIdentifier"];
  [v5 encodeObject:self->_service forKey:@"_service"];
  [v5 encodeObject:self->_displayname forKey:@"_displayname"];
  [v5 encodeObject:self->_teamIdentifier forKey:@"_teamIdentifier"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"_bundleIdentifiers"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"urlString", self->_urlString, @"username", self->_username, @"userIdentifier", self->_userIdentifier, @"service", self->_service, @"displayname", self->_displayname, @"teamIdentifier", self->_teamIdentifier, @"bundleIdentifiers", self->_bundleIdentifiers, 0}];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3 ignoreURLs:(BOOL)a4
{
  if (self == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v29 = v7;
    v30 = v6;
    v31 = v5;
    v32 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(CNSocialProfile *)self teamIdentifier];
      v14 = [a3 teamIdentifier];
      if (!(v13 | v14) || (v15 = [v13 isEqual:v14]) != 0)
      {
        v16 = [(CNSocialProfile *)self bundleIdentifiers:v29];
        v17 = [a3 bundleIdentifiers];
        if (!(v16 | v17) || (v15 = [v16 isEqual:v17]) != 0)
        {
          if (a4 || (v18 = -[CNSocialProfile urlString](self, "urlString"), v19 = [a3 urlString], !(v18 | v19)) || (v15 = objc_msgSend(v18, "isEqual:", v19)) != 0)
          {
            v20 = [(CNSocialProfile *)self username];
            v21 = [a3 username];
            if (!(v20 | v21) || (v15 = [v20 isEqual:v21]) != 0)
            {
              v22 = [(CNSocialProfile *)self userIdentifier];
              v23 = [a3 userIdentifier];
              if (!(v22 | v23) || (v15 = [v22 isEqual:v23]) != 0)
              {
                v24 = [(CNSocialProfile *)self service];
                v25 = [a3 service];
                if (!(v24 | v25) || (v15 = [v24 isEqual:v25]) != 0)
                {
                  v26 = [(CNSocialProfile *)self displayname];
                  v27 = [a3 displayname];
                  if (!(v26 | v27) || (v15 = [v26 isEqual:v27]) != 0)
                  {
                    LOBYTE(v15) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNSocialProfile *)self urlString];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNSocialProfile *)self username];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  v10 = [(CNSocialProfile *)self userIdentifier];
  v11 = [v9 objectHash:v10] - v8 + 32 * v8;

  v12 = MEMORY[0x1E6996730];
  v13 = [(CNSocialProfile *)self service];
  v14 = [v12 objectHash:v13] - v11 + 32 * v11;

  v15 = MEMORY[0x1E6996730];
  v16 = [(CNSocialProfile *)self displayname];
  v17 = [v15 objectHash:v16] - v14 + 32 * v14;

  v18 = MEMORY[0x1E6996730];
  v19 = [(CNSocialProfile *)self teamIdentifier];
  v20 = [v18 objectHash:v19] - v17 + 32 * v17;

  v21 = MEMORY[0x1E6996730];
  v22 = [(CNSocialProfile *)self bundleIdentifiers];
  v23 = [v21 objectHash:v22] - v20 + 32 * v20;

  return v23 + 0x6CE5F3FACFLL;
}

- (BOOL)isValid:(id *)a3
{
  if (isValid__cn_once_token_0_2 != -1)
  {
    [CNSocialProfile isValid:];
  }

  v5 = isValid__cn_once_object_0_2;
  if (isValid__cn_once_token_1_2 != -1)
  {
    [CNSocialProfile isValid:];
  }

  v6 = isValid__cn_once_token_2_2;
  v7 = isValid__cn_once_object_1_2;
  if (v6 != -1)
  {
    [CNSocialProfile isValid:];
  }

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_2 error:a3];

  return v8;
}

uint64_t __27__CNSocialProfile_isValid___block_invoke()
{
  v0 = [&unk_1F09875B8 copy];
  v1 = isValid__cn_once_object_0_2;
  isValid__cn_once_object_0_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __27__CNSocialProfile_isValid___block_invoke_2()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:7];
  v1 = [v0 copy];
  v2 = isValid__cn_once_object_1_2;
  isValid__cn_once_object_1_2 = v1;
}

uint64_t __27__CNSocialProfile_isValid___block_invoke_3()
{
  v0 = [&unk_1F09875D0 copy];
  v1 = isValid__cn_once_object_2_2;
  isValid__cn_once_object_2_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end