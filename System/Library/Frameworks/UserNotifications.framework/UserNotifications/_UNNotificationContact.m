@interface _UNNotificationContact
+ (id)contactFromINPerson:(id)a3 serviceName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPreferredNameReal;
- (BOOL)isSimilar:(id)a3;
- (NSString)preferredName;
- (_UNNotificationContact)initWithCoder:(id)a3;
- (id)_initWithhandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 displayNameSuggested:(BOOL)a7 customIdentifier:(id)a8 cnContactIdentifier:(id)a9 cnContactFullname:(id)a10 cnContactIdentifierSuggested:(BOOL)a11;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UNNotificationContact

- (unint64_t)hash
{
  v3 = [(_UNNotificationContact *)self similarHash];
  v4 = [(NSString *)self->_serviceName hash]+ v3;
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
    v7 = [(_UNNotificationContact *)self displayName];
    v8 = [v6 localizedStringWithFormat:v5, v7, 0];
  }

  else
  {
    v9 = [(_UNNotificationContact *)self displayName];
    v5 = v9;
    if (v9)
    {
      v10 = v9;
      v5 = v10;
    }

    else
    {
      v10 = [(_UNNotificationContact *)self handle];
    }

    v8 = v10;
  }

  return v8;
}

- (BOOL)isPreferredNameReal
{
  v2 = [(_UNNotificationContact *)self displayName];
  v3 = v2 != 0;

  return v3;
}

- (id)_initWithhandle:(id)a3 handleType:(int64_t)a4 serviceName:(id)a5 displayName:(id)a6 displayNameSuggested:(BOOL)a7 customIdentifier:(id)a8 cnContactIdentifier:(id)a9 cnContactFullname:(id)a10 cnContactIdentifierSuggested:(BOOL)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v37.receiver = self;
  v37.super_class = _UNNotificationContact;
  v23 = [(_UNNotificationContact *)&v37 init];
  if (v23)
  {
    v24 = [v17 copy];
    handle = v23->_handle;
    v23->_handle = v24;

    v23->_handleType = a4;
    v26 = [v18 copy];
    serviceName = v23->_serviceName;
    v23->_serviceName = v26;

    v28 = [v19 copy];
    displayName = v23->_displayName;
    v23->_displayName = v28;

    v23->_displayNameSuggested = a7;
    v30 = [v20 copy];
    customIdentifier = v23->_customIdentifier;
    v23->_customIdentifier = v30;

    v32 = [v21 copy];
    cnContactIdentifier = v23->_cnContactIdentifier;
    v23->_cnContactIdentifier = v32;

    v34 = [v22 copy];
    cnContactFullname = v23->_cnContactFullname;
    v23->_cnContactFullname = v34;

    v23->_cnContactIdentifierSuggested = a11;
  }

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  if (!v5)
  {
    goto LABEL_12;
  }

  if (![(_UNNotificationContact *)self isSimilar:v5])
  {
    goto LABEL_12;
  }

  v6 = [(_UNNotificationContact *)self serviceName];
  v7 = [v5 serviceName];
  v8 = UNEqualStrings(v6, v7);

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [(_UNNotificationContact *)self displayName];
  v10 = [v5 displayName];
  v11 = UNEqualStrings(v9, v10);

  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = [(_UNNotificationContact *)self isDisplayNameSuggested];
  if (v12 != [v5 isDisplayNameSuggested])
  {
    goto LABEL_12;
  }

  v13 = [(_UNNotificationContact *)self cnContactIdentifier];
  v14 = [v5 cnContactIdentifier];
  v15 = UNEqualStrings(v13, v14);

  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = [(_UNNotificationContact *)self cnContactFullname];
  v17 = [v5 cnContactFullname];
  v18 = UNEqualStrings(v16, v17);

  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v20 = v19 ^ [v5 isCNContactIdentifierSuggested] ^ 1;
LABEL_13:

  return v20;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_UNMutableNotificationContact allocWithZone:a3];
  v5 = [(_UNNotificationContact *)self handle];
  v6 = [(_UNNotificationContact *)self handleType];
  v7 = [(_UNNotificationContact *)self serviceName];
  v8 = [(_UNNotificationContact *)self displayName];
  v9 = [(_UNNotificationContact *)self isDisplayNameSuggested];
  v10 = [(_UNNotificationContact *)self customIdentifier];
  v11 = [(_UNNotificationContact *)self cnContactIdentifier];
  v12 = [(_UNNotificationContact *)self cnContactFullname];
  LOBYTE(v15) = [(_UNNotificationContact *)self isCNContactIdentifierSuggested];
  v13 = [(_UNNotificationContact *)v4 _initWithhandle:v5 handleType:v6 serviceName:v7 displayName:v8 displayNameSuggested:v9 customIdentifier:v10 cnContactIdentifier:v11 cnContactFullname:v12 cnContactIdentifierSuggested:v15];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(_UNNotificationContact *)self handle];
  [v10 encodeObject:v4 forKey:@"handle"];

  [v10 encodeInteger:-[_UNNotificationContact handleType](self forKey:{"handleType"), @"handleType"}];
  v5 = [(_UNNotificationContact *)self serviceName];
  [v10 encodeObject:v5 forKey:@"serviceName"];

  v6 = [(_UNNotificationContact *)self displayName];
  [v10 encodeObject:v6 forKey:@"displayName"];

  [v10 encodeBool:-[_UNNotificationContact isDisplayNameSuggested](self forKey:{"isDisplayNameSuggested"), @"displayNameSuggested"}];
  v7 = [(_UNNotificationContact *)self customIdentifier];
  [v10 encodeObject:v7 forKey:@"customIdentifier"];

  v8 = [(_UNNotificationContact *)self cnContactIdentifier];
  [v10 encodeObject:v8 forKey:@"cnContactIdentifier"];

  v9 = [(_UNNotificationContact *)self cnContactFullname];
  [v10 encodeObject:v9 forKey:@"cnContactFullname"];

  [v10 encodeBool:-[_UNNotificationContact isCNContactIdentifierSuggested](self forKey:{"isCNContactIdentifierSuggested"), @"cnContactSuggested"}];
}

- (_UNNotificationContact)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
  v5 = [v3 decodeIntegerForKey:@"handleType"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v8 = [v3 decodeBoolForKey:@"displayNameSuggested"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cnContactIdentifier"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cnContactFullname"];
  v12 = [v3 decodeBoolForKey:@"cnContactSuggested"];

  LOBYTE(v15) = v12;
  v13 = [(_UNNotificationContact *)self _initWithhandle:v4 handleType:v5 serviceName:v6 displayName:v7 displayNameSuggested:v8 customIdentifier:v9 cnContactIdentifier:v10 cnContactFullname:v11 cnContactIdentifierSuggested:v15];

  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UNNotificationContact *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___UNNotificationContact_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E7CFF910;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

  v8 = v7;
  return v7;
}

- (id)succinctDescription
{
  v2 = [(_UNNotificationContact *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_UNNotificationContact *)self handle];
  v5 = [v4 un_logDigest];
  v6 = [v3 appendObject:v5 withName:@"handle"];

  v7 = [(_UNNotificationContact *)self displayName];
  v8 = [v7 un_logDigest];
  v9 = [v3 appendObject:v8 withName:@"displayName"];

  v10 = [v3 appendBool:-[_UNNotificationContact isDisplayNameSuggested](self withName:{"isDisplayNameSuggested"), @"isDisplayNameSuggested"}];
  v11 = [(_UNNotificationContact *)self serviceName];
  v12 = [v11 un_logDigest];
  v13 = [v3 appendObject:v12 withName:@"serviceName"];

  v14 = [(_UNNotificationContact *)self customIdentifier];
  v15 = [v14 un_logDigest];
  v16 = [v3 appendObject:v15 withName:@"customIdentifier"];

  v17 = [(_UNNotificationContact *)self cnContactIdentifier];
  v18 = [v3 appendObject:v17 withName:@"cnContactIdentifier"];

  v19 = [(_UNNotificationContact *)self cnContactFullname];
  v20 = [v19 un_logDigest];
  v21 = [v3 appendObject:v20 withName:@"cnContactFullname"];

  v22 = [v3 appendBool:-[_UNNotificationContact isCNContactIdentifierSuggested](self withName:{"isCNContactIdentifierSuggested"), @"isCNContactIdentifierSuggested"}];

  return v3;
}

- (BOOL)isSimilar:(id)a3
{
  v4 = a3;
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

  v5 = v4;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(_UNNotificationContact *)self handle];
  v7 = [v5 handle];
  v8 = UNEqualStrings(v6, v7);

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [(_UNNotificationContact *)self handleType];
  if (v9 != [v5 handleType])
  {
    goto LABEL_8;
  }

  v10 = [(_UNNotificationContact *)self customIdentifier];
  v11 = [v5 customIdentifier];
  v12 = UNEqualStrings(v10, v11);

LABEL_9:
  return v12;
}

+ (id)contactFromINPerson:(id)a3 serviceName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMe])
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(_UNMutableNotificationContact);
    v8 = [v5 personHandle];
    v9 = [v8 value];

    [(_UNMutableNotificationContact *)v7 setHandle:v9];
    [(_UNMutableNotificationContact *)v7 setServiceName:v6];
    v10 = [v5 personHandle];
    v11 = [v10 type];

    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11 == 1;
    }

    [(_UNMutableNotificationContact *)v7 setHandleType:v12];
    v13 = [v5 displayName];
    if (([v13 isEqualToString:v9] & 1) == 0)
    {
      [(_UNMutableNotificationContact *)v7 setDisplayName:v13];
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [v5 isContactSuggestion];
    }

    else
    {
      v14 = 0;
    }

    [(_UNMutableNotificationContact *)v7 setDisplayNameSuggested:v14];
    v15 = [v5 customIdentifier];
    [(_UNMutableNotificationContact *)v7 setCustomIdentifier:v15];

    v16 = [v5 contactIdentifier];
    [(_UNMutableNotificationContact *)v7 setCnContactIdentifier:v16];
  }

  return v7;
}

@end