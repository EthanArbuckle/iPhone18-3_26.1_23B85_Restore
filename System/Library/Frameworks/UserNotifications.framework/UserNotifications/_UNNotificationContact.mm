@interface _UNNotificationContact
+ (id)contactFromINPerson:(id)person serviceName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPreferredNameReal;
- (BOOL)isSimilar:(id)similar;
- (NSString)preferredName;
- (_UNNotificationContact)initWithCoder:(id)coder;
- (id)_initWithhandle:(id)withhandle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName displayNameSuggested:(BOOL)suggested customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)self0 cnContactIdentifierSuggested:(BOOL)self1;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UNNotificationContact

- (unint64_t)hash
{
  similarHash = [(_UNNotificationContact *)self similarHash];
  v4 = [(NSString *)self->_serviceName hash]+ similarHash;
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 + v5 + [(NSString *)self->_cnContactIdentifier hash];
  return v6 + [(NSString *)self->_cnContactFullname hash]+ self->_cnContactIdentifierSuggested;
}

- (NSString)preferredName
{
  if (-[_UNNotificationContact isDisplayNameSuggested](self, "isDisplayNameSuggested") && (-[_UNNotificationContact displayName](self, "displayName"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 length], v3, v4))
  {
    v5 = UNLocalizedFormatStringForKey(@"%@", @"CONTACT_MAYBE_PREFIX_FORMAT");
    v6 = MEMORY[0x1E696AEC0];
    displayName = [(_UNNotificationContact *)self displayName];
    v8 = [v6 localizedStringWithFormat:v5, displayName, 0];
  }

  else
  {
    displayName2 = [(_UNNotificationContact *)self displayName];
    v5 = displayName2;
    if (displayName2)
    {
      handle = displayName2;
      v5 = handle;
    }

    else
    {
      handle = [(_UNNotificationContact *)self handle];
    }

    v8 = handle;
  }

  return v8;
}

- (BOOL)isPreferredNameReal
{
  displayName = [(_UNNotificationContact *)self displayName];
  v3 = displayName != 0;

  return v3;
}

- (id)_initWithhandle:(id)withhandle handleType:(int64_t)type serviceName:(id)name displayName:(id)displayName displayNameSuggested:(BOOL)suggested customIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier cnContactFullname:(id)self0 cnContactIdentifierSuggested:(BOOL)self1
{
  withhandleCopy = withhandle;
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  contactIdentifierCopy = contactIdentifier;
  fullnameCopy = fullname;
  v37.receiver = self;
  v37.super_class = _UNNotificationContact;
  v23 = [(_UNNotificationContact *)&v37 init];
  if (v23)
  {
    v24 = [withhandleCopy copy];
    handle = v23->_handle;
    v23->_handle = v24;

    v23->_handleType = type;
    v26 = [nameCopy copy];
    serviceName = v23->_serviceName;
    v23->_serviceName = v26;

    v28 = [displayNameCopy copy];
    displayName = v23->_displayName;
    v23->_displayName = v28;

    v23->_displayNameSuggested = suggested;
    v30 = [identifierCopy copy];
    customIdentifier = v23->_customIdentifier;
    v23->_customIdentifier = v30;

    v32 = [contactIdentifierCopy copy];
    cnContactIdentifier = v23->_cnContactIdentifier;
    v23->_cnContactIdentifier = v32;

    v34 = [fullnameCopy copy];
    cnContactFullname = v23->_cnContactFullname;
    v23->_cnContactFullname = v34;

    v23->_cnContactIdentifierSuggested = identifierSuggested;
  }

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_12:
      LOBYTE(v20) = 0;
      goto LABEL_13;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_12;
  }

  if (![(_UNNotificationContact *)self isSimilar:v5])
  {
    goto LABEL_12;
  }

  serviceName = [(_UNNotificationContact *)self serviceName];
  serviceName2 = [v5 serviceName];
  v8 = UNEqualStrings(serviceName, serviceName2);

  if (!v8)
  {
    goto LABEL_12;
  }

  displayName = [(_UNNotificationContact *)self displayName];
  displayName2 = [v5 displayName];
  v11 = UNEqualStrings(displayName, displayName2);

  if (!v11)
  {
    goto LABEL_12;
  }

  isDisplayNameSuggested = [(_UNNotificationContact *)self isDisplayNameSuggested];
  if (isDisplayNameSuggested != [v5 isDisplayNameSuggested])
  {
    goto LABEL_12;
  }

  cnContactIdentifier = [(_UNNotificationContact *)self cnContactIdentifier];
  cnContactIdentifier2 = [v5 cnContactIdentifier];
  v15 = UNEqualStrings(cnContactIdentifier, cnContactIdentifier2);

  if (!v15)
  {
    goto LABEL_12;
  }

  cnContactFullname = [(_UNNotificationContact *)self cnContactFullname];
  cnContactFullname2 = [v5 cnContactFullname];
  v18 = UNEqualStrings(cnContactFullname, cnContactFullname2);

  if (!v18)
  {
    goto LABEL_12;
  }

  isCNContactIdentifierSuggested = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v20 = isCNContactIdentifierSuggested ^ [v5 isCNContactIdentifierSuggested] ^ 1;
LABEL_13:

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_UNMutableNotificationContact allocWithZone:zone];
  handle = [(_UNNotificationContact *)self handle];
  handleType = [(_UNNotificationContact *)self handleType];
  serviceName = [(_UNNotificationContact *)self serviceName];
  displayName = [(_UNNotificationContact *)self displayName];
  isDisplayNameSuggested = [(_UNNotificationContact *)self isDisplayNameSuggested];
  customIdentifier = [(_UNNotificationContact *)self customIdentifier];
  cnContactIdentifier = [(_UNNotificationContact *)self cnContactIdentifier];
  cnContactFullname = [(_UNNotificationContact *)self cnContactFullname];
  LOBYTE(v15) = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v13 = [(_UNNotificationContact *)v4 _initWithhandle:handle handleType:handleType serviceName:serviceName displayName:displayName displayNameSuggested:isDisplayNameSuggested customIdentifier:customIdentifier cnContactIdentifier:cnContactIdentifier cnContactFullname:cnContactFullname cnContactIdentifierSuggested:v15];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(_UNNotificationContact *)self handle];
  [coderCopy encodeObject:handle forKey:@"handle"];

  [coderCopy encodeInteger:-[_UNNotificationContact handleType](self forKey:{"handleType"), @"handleType"}];
  serviceName = [(_UNNotificationContact *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"serviceName"];

  displayName = [(_UNNotificationContact *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  [coderCopy encodeBool:-[_UNNotificationContact isDisplayNameSuggested](self forKey:{"isDisplayNameSuggested"), @"displayNameSuggested"}];
  customIdentifier = [(_UNNotificationContact *)self customIdentifier];
  [coderCopy encodeObject:customIdentifier forKey:@"customIdentifier"];

  cnContactIdentifier = [(_UNNotificationContact *)self cnContactIdentifier];
  [coderCopy encodeObject:cnContactIdentifier forKey:@"cnContactIdentifier"];

  cnContactFullname = [(_UNNotificationContact *)self cnContactFullname];
  [coderCopy encodeObject:cnContactFullname forKey:@"cnContactFullname"];

  [coderCopy encodeBool:-[_UNNotificationContact isCNContactIdentifierSuggested](self forKey:{"isCNContactIdentifierSuggested"), @"cnContactSuggested"}];
}

- (_UNNotificationContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  v5 = [coderCopy decodeIntegerForKey:@"handleType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [coderCopy decodeBoolForKey:@"displayNameSuggested"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cnContactIdentifier"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cnContactFullname"];
  v12 = [coderCopy decodeBoolForKey:@"cnContactSuggested"];

  LOBYTE(v15) = v12;
  v13 = [(_UNNotificationContact *)self _initWithhandle:v4 handleType:v5 serviceName:v6 displayName:v7 displayNameSuggested:v8 customIdentifier:v9 cnContactIdentifier:v10 cnContactFullname:v11 cnContactIdentifierSuggested:v15];

  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UNNotificationContact *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___UNNotificationContact_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7CFF910;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UNNotificationContact *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  handle = [(_UNNotificationContact *)self handle];
  un_logDigest = [handle un_logDigest];
  v6 = [v3 appendObject:un_logDigest withName:@"handle"];

  displayName = [(_UNNotificationContact *)self displayName];
  un_logDigest2 = [displayName un_logDigest];
  v9 = [v3 appendObject:un_logDigest2 withName:@"displayName"];

  v10 = [v3 appendBool:-[_UNNotificationContact isDisplayNameSuggested](self withName:{"isDisplayNameSuggested"), @"isDisplayNameSuggested"}];
  serviceName = [(_UNNotificationContact *)self serviceName];
  un_logDigest3 = [serviceName un_logDigest];
  v13 = [v3 appendObject:un_logDigest3 withName:@"serviceName"];

  customIdentifier = [(_UNNotificationContact *)self customIdentifier];
  un_logDigest4 = [customIdentifier un_logDigest];
  v16 = [v3 appendObject:un_logDigest4 withName:@"customIdentifier"];

  cnContactIdentifier = [(_UNNotificationContact *)self cnContactIdentifier];
  v18 = [v3 appendObject:cnContactIdentifier withName:@"cnContactIdentifier"];

  cnContactFullname = [(_UNNotificationContact *)self cnContactFullname];
  un_logDigest5 = [cnContactFullname un_logDigest];
  v21 = [v3 appendObject:un_logDigest5 withName:@"cnContactFullname"];

  v22 = [v3 appendBool:-[_UNNotificationContact isCNContactIdentifierSuggested](self withName:{"isCNContactIdentifierSuggested"), @"isCNContactIdentifierSuggested"}];

  return v3;
}

- (BOOL)isSimilar:(id)similar
{
  similarCopy = similar;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }
  }

  v5 = similarCopy;
  if (!v5)
  {
    goto LABEL_8;
  }

  handle = [(_UNNotificationContact *)self handle];
  handle2 = [v5 handle];
  v8 = UNEqualStrings(handle, handle2);

  if (!v8)
  {
    goto LABEL_8;
  }

  handleType = [(_UNNotificationContact *)self handleType];
  if (handleType != [v5 handleType])
  {
    goto LABEL_8;
  }

  customIdentifier = [(_UNNotificationContact *)self customIdentifier];
  customIdentifier2 = [v5 customIdentifier];
  v12 = UNEqualStrings(customIdentifier, customIdentifier2);

LABEL_9:
  return v12;
}

+ (id)contactFromINPerson:(id)person serviceName:(id)name
{
  personCopy = person;
  nameCopy = name;
  if ([personCopy isMe])
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(_UNMutableNotificationContact);
    personHandle = [personCopy personHandle];
    value = [personHandle value];

    [(_UNMutableNotificationContact *)v7 setHandle:value];
    [(_UNMutableNotificationContact *)v7 setServiceName:nameCopy];
    personHandle2 = [personCopy personHandle];
    type = [personHandle2 type];

    if (type == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = type == 1;
    }

    [(_UNMutableNotificationContact *)v7 setHandleType:v12];
    displayName = [personCopy displayName];
    if (([displayName isEqualToString:value] & 1) == 0)
    {
      [(_UNMutableNotificationContact *)v7 setDisplayName:displayName];
    }

    if (objc_opt_respondsToSelector())
    {
      isContactSuggestion = [personCopy isContactSuggestion];
    }

    else
    {
      isContactSuggestion = 0;
    }

    [(_UNMutableNotificationContact *)v7 setDisplayNameSuggested:isContactSuggestion];
    customIdentifier = [personCopy customIdentifier];
    [(_UNMutableNotificationContact *)v7 setCustomIdentifier:customIdentifier];

    contactIdentifier = [personCopy contactIdentifier];
    [(_UNMutableNotificationContact *)v7 setCnContactIdentifier:contactIdentifier];
  }

  return v7;
}

@end