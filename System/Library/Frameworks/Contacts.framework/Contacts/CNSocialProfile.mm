@interface CNSocialProfile
+ (CNSocialProfile)socialProfileWithDictionaryRepresentation:(id)representation;
+ (NSString)localizedStringForService:(NSString *)service;
- (BOOL)isEqual:(id)equal ignoreURLs:(BOOL)ls;
- (BOOL)isValid:(id *)valid;
- (CNSocialProfile)initWithCoder:(id)coder;
- (CNSocialProfile)initWithUrlString:(id)string username:(id)username userIdentifier:(id)identifier service:(id)service displayname:(id)displayname teamIdentifier:(id)teamIdentifier bundleIdentifiers:(id)identifiers;
- (NSString)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNSocialProfile

+ (NSString)localizedStringForService:(NSString *)service
{
  v4 = MEMORY[0x1E6996750];
  v5 = MEMORY[0x1E696AAE8];
  v6 = service;
  v7 = [v5 bundleForClass:self];
  v8 = [v4 localizedStringForString:v6 bundle:v7 table:@"SocialServices" returningNilIfNotFound:0];

  return v8;
}

+ (CNSocialProfile)socialProfileWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = +[CN socialProfileFromDictionaryTransform];
  v5 = (v4)[2](v4, representationCopy);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[CN socialProfileToDictionaryTransform];
  v4 = (v3)[2](v3, self);

  return v4;
}

- (CNSocialProfile)initWithUrlString:(id)string username:(id)username userIdentifier:(id)identifier service:(id)service displayname:(id)displayname teamIdentifier:(id)teamIdentifier bundleIdentifiers:(id)identifiers
{
  stringCopy = string;
  usernameCopy = username;
  identifierCopy = identifier;
  serviceCopy = service;
  displaynameCopy = displayname;
  teamIdentifierCopy = teamIdentifier;
  identifiersCopy = identifiers;
  v39.receiver = self;
  v39.super_class = CNSocialProfile;
  v22 = [(CNSocialProfile *)&v39 init];
  if (v22)
  {
    v23 = [stringCopy copy];
    urlString = v22->_urlString;
    v22->_urlString = v23;

    v25 = [usernameCopy copy];
    username = v22->_username;
    v22->_username = v25;

    v27 = [identifierCopy copy];
    userIdentifier = v22->_userIdentifier;
    v22->_userIdentifier = v27;

    v29 = [serviceCopy copy];
    service = v22->_service;
    v22->_service = v29;

    v31 = [displaynameCopy copy];
    displayname = v22->_displayname;
    v22->_displayname = v31;

    v33 = [teamIdentifierCopy copy];
    teamIdentifier = v22->_teamIdentifier;
    v22->_teamIdentifier = v33;

    v35 = [identifiersCopy copy];
    bundleIdentifiers = v22->_bundleIdentifiers;
    v22->_bundleIdentifiers = v35;

    v37 = v22;
  }

  return v22;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNMutableSocialProfile alloc];
  urlString = [(CNSocialProfile *)self urlString];
  username = [(CNSocialProfile *)self username];
  userIdentifier = [(CNSocialProfile *)self userIdentifier];
  service = [(CNSocialProfile *)self service];
  displayname = [(CNSocialProfile *)self displayname];
  teamIdentifier = [(CNSocialProfile *)self teamIdentifier];
  bundleIdentifiers = [(CNSocialProfile *)self bundleIdentifiers];
  v12 = [(CNSocialProfile *)v4 initWithUrlString:urlString username:username userIdentifier:userIdentifier service:service displayname:displayname teamIdentifier:teamIdentifier bundleIdentifiers:bundleIdentifiers];

  return v12;
}

- (CNSocialProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CNSocialProfile;
  v5 = [(CNSocialProfile *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_urlString"];
    v7 = [v6 copy];
    urlString = v5->_urlString;
    v5->_urlString = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    v10 = [v9 copy];
    username = v5->_username;
    v5->_username = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_userIdentifier"];
    v13 = [v12 copy];
    userIdentifier = v5->_userIdentifier;
    v5->_userIdentifier = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_service"];
    v16 = [v15 copy];
    service = v5->_service;
    v5->_service = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayname"];
    v19 = [v18 copy];
    displayname = v5->_displayname;
    v5->_displayname = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_teamIdentifier"];
    v22 = [v21 copy];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"_bundleIdentifiers"];
    v28 = [v27 copy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v28;

    v30 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  urlString = self->_urlString;
  coderCopy = coder;
  [coderCopy encodeObject:urlString forKey:@"_urlString"];
  [coderCopy encodeObject:self->_username forKey:@"_username"];
  [coderCopy encodeObject:self->_userIdentifier forKey:@"_userIdentifier"];
  [coderCopy encodeObject:self->_service forKey:@"_service"];
  [coderCopy encodeObject:self->_displayname forKey:@"_displayname"];
  [coderCopy encodeObject:self->_teamIdentifier forKey:@"_teamIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifiers forKey:@"_bundleIdentifiers"];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"urlString", self->_urlString, @"username", self->_username, @"userIdentifier", self->_userIdentifier, @"service", self->_service, @"displayname", self->_displayname, @"teamIdentifier", self->_teamIdentifier, @"bundleIdentifiers", self->_bundleIdentifiers, 0}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal ignoreURLs:(BOOL)ls
{
  if (self == equal)
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
      teamIdentifier = [(CNSocialProfile *)self teamIdentifier];
      teamIdentifier2 = [equal teamIdentifier];
      if (!(teamIdentifier | teamIdentifier2) || (v15 = [teamIdentifier isEqual:teamIdentifier2]) != 0)
      {
        v16 = [(CNSocialProfile *)self bundleIdentifiers:v29];
        bundleIdentifiers = [equal bundleIdentifiers];
        if (!(v16 | bundleIdentifiers) || (v15 = [v16 isEqual:bundleIdentifiers]) != 0)
        {
          if (ls || (v18 = -[CNSocialProfile urlString](self, "urlString"), v19 = [equal urlString], !(v18 | v19)) || (v15 = objc_msgSend(v18, "isEqual:", v19)) != 0)
          {
            username = [(CNSocialProfile *)self username];
            username2 = [equal username];
            if (!(username | username2) || (v15 = [username isEqual:username2]) != 0)
            {
              userIdentifier = [(CNSocialProfile *)self userIdentifier];
              userIdentifier2 = [equal userIdentifier];
              if (!(userIdentifier | userIdentifier2) || (v15 = [userIdentifier isEqual:userIdentifier2]) != 0)
              {
                service = [(CNSocialProfile *)self service];
                service2 = [equal service];
                if (!(service | service2) || (v15 = [service isEqual:service2]) != 0)
                {
                  displayname = [(CNSocialProfile *)self displayname];
                  displayname2 = [equal displayname];
                  if (!(displayname | displayname2) || (v15 = [displayname isEqual:displayname2]) != 0)
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
  urlString = [(CNSocialProfile *)self urlString];
  v5 = [v3 objectHash:urlString];

  v6 = MEMORY[0x1E6996730];
  username = [(CNSocialProfile *)self username];
  v8 = [v6 objectHash:username] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  userIdentifier = [(CNSocialProfile *)self userIdentifier];
  v11 = [v9 objectHash:userIdentifier] - v8 + 32 * v8;

  v12 = MEMORY[0x1E6996730];
  service = [(CNSocialProfile *)self service];
  v14 = [v12 objectHash:service] - v11 + 32 * v11;

  v15 = MEMORY[0x1E6996730];
  displayname = [(CNSocialProfile *)self displayname];
  v17 = [v15 objectHash:displayname] - v14 + 32 * v14;

  v18 = MEMORY[0x1E6996730];
  teamIdentifier = [(CNSocialProfile *)self teamIdentifier];
  v20 = [v18 objectHash:teamIdentifier] - v17 + 32 * v17;

  v21 = MEMORY[0x1E6996730];
  bundleIdentifiers = [(CNSocialProfile *)self bundleIdentifiers];
  v23 = [v21 objectHash:bundleIdentifiers] - v20 + 32 * v20;

  return v23 + 0x6CE5F3FACFLL;
}

- (BOOL)isValid:(id *)valid
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

  v8 = [CN areValidKeyPaths:v5 forObject:self expectedClasses:v7 allowNil:isValid__cn_once_object_2_2 error:valid];

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