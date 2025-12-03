@interface VSIdentityProvider
- (BOOL)isEqual:(id)equal;
- (BOOL)isFullySupportedForRequestsExpectingAuthenticationSchemes:(id)schemes;
- (BOOL)supportsRequestsExpectingAuthenticationSchemes:(id)schemes;
- (NSArray)supportedAuthenticationSchemes;
- (NSArray)supportedTemplates;
- (VSIdentityProvider)init;
- (VSIdentityProvider)initWithApplicationProvider:(id)provider;
- (VSIdentityProvider)initWithCoder:(id)coder;
- (VSOptional)displayName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDeveloper:(BOOL)developer;
- (void)setNameForSorting:(id)sorting;
@end

@implementation VSIdentityProvider

- (VSIdentityProvider)init
{
  v5.receiver = self;
  v5.super_class = VSIdentityProvider;
  v2 = [(VSIdentityProvider *)&v5 init];
  if (v2)
  {
    v3 = VSIdentityProviderValueType();
    VSValueTypeInit(v3, v2);
  }

  return v2;
}

- (VSIdentityProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = VSIdentityProvider;
  v5 = [(VSIdentityProvider *)&v8 init];
  if (v5)
  {
    v6 = VSIdentityProviderValueType();
    VSValueTypeInitWithCoder(v6, v5, coderCopy);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = VSIdentityProviderValueType();
  VSValueTypeEncodeWithCoder(v5, self, coderCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = VSIdentityProviderValueType();
  v6 = VSValueTypeCopyWithZone(v5, self, zone);

  return v6;
}

- (unint64_t)hash
{
  v3 = VSIdentityProviderValueType();
  v4 = VSValueTypeHash(v3, self);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = VSIdentityProviderValueType();
  LOBYTE(self) = VSValueTypeIsEqual(v5, self, equalCopy);

  return self;
}

- (id)description
{
  v3 = VSIdentityProviderValueType();
  v4 = VSValueTypeDescription(v3, self);

  return v4;
}

- (VSIdentityProvider)initWithApplicationProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(VSIdentityProvider *)self init];
  if (v5)
  {
    v6 = VSIdentityProviderValueType();
    VSValueTypeInit(v6, v5);

    v5->_application = 1;
    identifier = [providerCopy identifier];
    v8 = [VSOptional optionalWithObject:identifier];
    providerID = v5->_providerID;
    v5->_providerID = v8;

    localizedDisplayName = [providerCopy localizedDisplayName];
    nameForSorting = v5->_nameForSorting;
    v5->_nameForSorting = localizedDisplayName;

    supportedAuthenticationSchemes = v5->_supportedAuthenticationSchemes;
    v5->_supportedAuthenticationSchemes = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)setNameForSorting:(id)sorting
{
  if (self->_nameForSorting != sorting)
  {
    sortingCopy = sorting;
    [(VSIdentityProvider *)self willChangeValueForKey:@"displayName"];
    v6 = [sortingCopy copy];

    nameForSorting = self->_nameForSorting;
    self->_nameForSorting = v6;

    displayName = self->_displayName;
    self->_displayName = 0;

    [(VSIdentityProvider *)self didChangeValueForKey:@"displayName"];
  }
}

- (void)setDeveloper:(BOOL)developer
{
  if (self->_developer != developer)
  {
    [(VSIdentityProvider *)self willChangeValueForKey:@"displayName"];
    self->_developer = developer;
    displayName = self->_displayName;
    self->_displayName = 0;

    [(VSIdentityProvider *)self didChangeValueForKey:@"displayName"];
  }
}

- (VSOptional)displayName
{
  p_displayName = &self->_displayName;
  v4 = self->_displayName;
  if (!v4)
  {
    nameForSorting = [(VSIdentityProvider *)self nameForSorting];
    if (nameForSorting)
    {
      if ([(VSIdentityProvider *)self isDeveloper])
      {
        v6 = [@"🚧 " stringByAppendingString:nameForSorting];
        v4 = [v6 copy];
      }

      else
      {
        v4 = [nameForSorting copy];
      }
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(p_displayName, v4);
  }

  v7 = [VSOptional optionalWithObject:v4];

  return v7;
}

- (NSArray)supportedTemplates
{
  v5[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_supportedTemplates;
  if (!v3)
  {
    v5[0] = @"authenticationTemplate";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    objc_storeStrong(&selfCopy->_supportedTemplates, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSArray)supportedAuthenticationSchemes
{
  v5[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_supportedAuthenticationSchemes;
  if (!v3)
  {
    v5[0] = @"SAML";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    objc_storeStrong(&selfCopy->_supportedAuthenticationSchemes, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (BOOL)supportsRequestsExpectingAuthenticationSchemes:(id)schemes
{
  v4 = MEMORY[0x277CBEB98];
  schemesCopy = schemes;
  v6 = [v4 alloc];
  supportedAuthenticationSchemes = [(VSIdentityProvider *)self supportedAuthenticationSchemes];
  v8 = [v6 initWithArray:supportedAuthenticationSchemes];

  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:schemesCopy];
  LOBYTE(schemesCopy) = [v8 intersectsSet:v9];

  return schemesCopy;
}

- (BOOL)isFullySupportedForRequestsExpectingAuthenticationSchemes:(id)schemes
{
  v11 = *MEMORY[0x277D85DE8];
  schemesCopy = schemes;
  if ([(VSIdentityProvider *)self isProhibitedByStore])
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[VSIdentityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:]";
      v6 = "%s: prohibited by store";
LABEL_9:
      _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (schemesCopy && ![(VSIdentityProvider *)self supportsRequestsExpectingAuthenticationSchemes:schemesCopy])
  {
    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[VSIdentityProvider isFullySupportedForRequestsExpectingAuthenticationSchemes:]";
      v6 = "%s: does not support expected auth schemes";
      goto LABEL_9;
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  v7 = 1;
LABEL_11:

  return v7;
}

@end