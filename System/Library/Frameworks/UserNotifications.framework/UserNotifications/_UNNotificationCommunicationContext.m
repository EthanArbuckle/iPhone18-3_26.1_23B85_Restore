@interface _UNNotificationCommunicationContext
- (BOOL)isAvatarImagePossible;
- (BOOL)isEqual:(id)a3;
- (NSArray)allContacts;
- (NSString)preferredDescription;
- (NSString)preferredRecipientsSummary;
- (NSString)preferredSenderSummary;
- (_UNNotificationCommunicationContext)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 associatedObjectUri:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15 capabilities:(int64_t)a16 businessCorrespondence:(BOOL)a17;
- (id)_summaryFromContacts:(id)a3 effectiveCount:(unint64_t)a4 includeMe:(BOOL)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)_effectiveAllContactsCount;
- (unint64_t)_effectiveRecipientCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UNNotificationCommunicationContext

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_associatedObjectUri hash]+ v3;
  v5 = [(NSString *)self->_bundleIdentifier hash];
  v6 = v4 + v5 + [(NSString *)self->_displayName hash];
  v7 = [(_UNNotificationContact *)self->_sender hash];
  v8 = v7 + [(NSArray *)self->_recipients hash];
  v9 = v6 + v8 + [(NSURL *)self->_contentURL hash];
  return v9 + [(NSString *)self->_imageName hash]+ self->_systemImage + self->_mentionsCurrentUser + self->_notifyRecipientAnyway + self->_replyToCurrentUser + self->_recipientCount + self->_capabilities + self->_businessCorrespondence;
}

- (NSArray)allContacts
{
  if (self->_sender)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [(_UNNotificationCommunicationContext *)self sender];
    [v3 addObject:v4];

    v5 = [(_UNNotificationCommunicationContext *)self recipients];
    [v3 addObjectsFromArray:v5];
  }

  else
  {
    v3 = [(_UNNotificationCommunicationContext *)self recipients];
  }

  return v3;
}

- (NSString)preferredSenderSummary
{
  sender = self->_sender;
  if (sender)
  {
    v4 = [(_UNNotificationContact *)sender preferredName];
  }

  else
  {
    v5 = [(_UNNotificationCommunicationContext *)self recipients];
    v4 = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:v5 effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveRecipientCount] includeMe:0];
  }

  return v4;
}

- (NSString)preferredRecipientsSummary
{
  if (!self->_sender || ![(_UNNotificationCommunicationContext *)self isGroup])
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (self->_replyToCurrentUser)
  {
    v3 = @"COMMUNICATION_CONTEXT_CONTACT_REPLIED_TO_YOU";
  }

  else
  {
    if (!self->_mentionsCurrentUser)
    {
      goto LABEL_11;
    }

    v3 = @"COMMUNICATION_CONTEXT_CONTACT_MENTIONED_YOU";
  }

  v5 = UNLocalizedStringForKey(v3);
  if (v5)
  {
    v6 = v5;
    v7 = [(_UNNotificationCommunicationContext *)self preferredDescription];
    if (v7)
    {
      v8 = UNLocalizedFormatStringForKey(@"%@%@", @"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_WITH_ACTION_AND_GROUP_NAME");
      v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, v6, v7];

LABEL_16:
      goto LABEL_17;
    }

    v10 = v6;
LABEL_15:
    v4 = v10;
    goto LABEL_16;
  }

LABEL_11:
  v9 = [(_UNNotificationCommunicationContext *)self displayName];
  v6 = v9;
  if (!v9)
  {
    v7 = [(_UNNotificationCommunicationContext *)self recipients];
    v10 = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:v7 effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveRecipientCount] includeMe:1];
    goto LABEL_15;
  }

  v6 = v9;
  v4 = v6;
LABEL_17:

LABEL_18:

  return v4;
}

- (unint64_t)_effectiveAllContactsCount
{
  v3 = [(_UNNotificationCommunicationContext *)self _effectiveRecipientCount];
  v4 = [(_UNNotificationCommunicationContext *)self sender];
  if (v4)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (unint64_t)_effectiveRecipientCount
{
  v3 = [(_UNNotificationCommunicationContext *)self recipientCount];
  v4 = [(_UNNotificationCommunicationContext *)self recipients];
  v5 = [v4 count];

  if (v3 <= v5)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (NSString)preferredDescription
{
  v3 = [(_UNNotificationCommunicationContext *)self displayName];
  if ([v3 length])
  {
    v4 = [(_UNNotificationCommunicationContext *)self displayName];
  }

  else
  {
    v5 = [(_UNNotificationCommunicationContext *)self allContacts];
    v6 = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:v5 effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveAllContactsCount] includeMe:0];
    v7 = v6;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v8 = [(_UNNotificationCommunicationContext *)self allContacts];
      v9 = [v8 firstObject];
      v4 = [v9 preferredName];
    }
  }

  return v4;
}

- (id)_initWithIdentifier:(id)a3 associatedObjectUri:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 sender:(id)a7 recipients:(id)a8 contentURL:(id)a9 imageName:(id)a10 systemImage:(BOOL)a11 mentionsCurrentUser:(BOOL)a12 notifyRecipientAnyway:(BOOL)a13 replyToCurrentUser:(BOOL)a14 recipientCount:(unint64_t)a15 capabilities:(int64_t)a16 businessCorrespondence:(BOOL)a17
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v30 = a10;
  v49.receiver = self;
  v49.super_class = _UNNotificationCommunicationContext;
  v31 = [(_UNNotificationCommunicationContext *)&v49 init];
  if (v31)
  {
    v32 = [v23 copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [v24 copy];
    associatedObjectUri = v31->_associatedObjectUri;
    v31->_associatedObjectUri = v34;

    v36 = [v25 copy];
    bundleIdentifier = v31->_bundleIdentifier;
    v31->_bundleIdentifier = v36;

    v38 = [v26 copy];
    displayName = v31->_displayName;
    v31->_displayName = v38;

    v40 = [v27 copy];
    sender = v31->_sender;
    v31->_sender = v40;

    v42 = [v28 copy];
    recipients = v31->_recipients;
    v31->_recipients = v42;

    v44 = [v29 copy];
    contentURL = v31->_contentURL;
    v31->_contentURL = v44;

    v46 = [v30 copy];
    imageName = v31->_imageName;
    v31->_imageName = v46;

    v31->_systemImage = a11;
    v31->_mentionsCurrentUser = a12;
    v31->_notifyRecipientAnyway = a13;
    v31->_replyToCurrentUser = a14;
    v31->_recipientCount = a15;
    v31->_capabilities = a16;
    v31->_businessCorrespondence = a17;
  }

  return v31;
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
LABEL_20:
      LOBYTE(v37) = 0;
      goto LABEL_21;
    }
  }

  v5 = v4;
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [(_UNNotificationCommunicationContext *)self identifier];
  v7 = [v5 identifier];
  v8 = UNEqualStrings(v6, v7);

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  v10 = [v5 associatedObjectUri];
  v11 = UNEqualStrings(v9, v10);

  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  v13 = [v5 bundleIdentifier];
  v14 = UNEqualStrings(v12, v13);

  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = [(_UNNotificationCommunicationContext *)self displayName];
  v16 = [v5 displayName];
  v17 = UNEqualStrings(v15, v16);

  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = [(_UNNotificationCommunicationContext *)self sender];
  v19 = [v5 sender];
  v20 = UNEqualObjects(v18, v19);

  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = [(_UNNotificationCommunicationContext *)self recipients];
  v22 = [v5 recipients];
  v23 = UNEqualObjects(v21, v22);

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = [(_UNNotificationCommunicationContext *)self contentURL];
  v25 = [v5 contentURL];
  v26 = UNEqualObjects(v24, v25);

  if (!v26)
  {
    goto LABEL_20;
  }

  v27 = [(_UNNotificationCommunicationContext *)self imageName];
  v28 = [v5 imageName];
  v29 = UNEqualObjects(v27, v28);

  if (!v29)
  {
    goto LABEL_20;
  }

  v30 = [(_UNNotificationCommunicationContext *)self isSystemImage];
  if (v30 != [v5 isSystemImage])
  {
    goto LABEL_20;
  }

  v31 = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  if (v31 != [v5 mentionsCurrentUser])
  {
    goto LABEL_20;
  }

  v32 = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  if (v32 != [v5 notifyRecipientAnyway])
  {
    goto LABEL_20;
  }

  v33 = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  if (v33 != [v5 isReplyToCurrentUser])
  {
    goto LABEL_20;
  }

  v34 = [(_UNNotificationCommunicationContext *)self recipientCount];
  if (v34 != [v5 recipientCount])
  {
    goto LABEL_20;
  }

  v35 = [(_UNNotificationCommunicationContext *)self capabilities];
  if (v35 != [v5 capabilities])
  {
    goto LABEL_20;
  }

  v36 = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  v37 = v36 ^ [v5 isBusinessCorrespondence] ^ 1;
LABEL_21:

  return v37;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v22 = [_UNMutableNotificationCommunicationContext allocWithZone:a3];
  v21 = [(_UNNotificationCommunicationContext *)self identifier];
  v20 = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  v19 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  v18 = [(_UNNotificationCommunicationContext *)self displayName];
  v17 = [(_UNNotificationCommunicationContext *)self sender];
  v4 = [(_UNNotificationCommunicationContext *)self recipients];
  v5 = [(_UNNotificationCommunicationContext *)self contentURL];
  v6 = [(_UNNotificationCommunicationContext *)self imageName];
  v7 = [(_UNNotificationCommunicationContext *)self isSystemImage];
  v8 = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  v9 = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  v10 = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  v11 = [(_UNNotificationCommunicationContext *)self recipientCount];
  v12 = [(_UNNotificationCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = v10;
  BYTE2(v15) = v9;
  BYTE1(v15) = v8;
  LOBYTE(v15) = v7;
  v13 = [_UNNotificationCommunicationContext _initWithIdentifier:v22 associatedObjectUri:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:v21 displayName:v20 sender:v19 recipients:v18 contentURL:v17 imageName:v4 systemImage:v5 mentionsCurrentUser:v6 notifyRecipientAnyway:v15 replyToCurrentUser:v11 recipientCount:v12 capabilities:v16 businessCorrespondence:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(_UNNotificationCommunicationContext *)self identifier];
  [v12 encodeObject:v4 forKey:@"identifier"];

  v5 = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  [v12 encodeObject:v5 forKey:@"associatedObjectUri"];

  v6 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  [v12 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(_UNNotificationCommunicationContext *)self displayName];
  [v12 encodeObject:v7 forKey:@"displayName"];

  v8 = [(_UNNotificationCommunicationContext *)self recipients];
  [v12 encodeObject:v8 forKey:@"recipients"];

  v9 = [(_UNNotificationCommunicationContext *)self sender];
  [v12 encodeObject:v9 forKey:@"sender"];

  v10 = [(_UNNotificationCommunicationContext *)self contentURL];
  [v12 encodeObject:v10 forKey:@"contentURL"];

  v11 = [(_UNNotificationCommunicationContext *)self imageName];
  [v12 encodeObject:v11 forKey:@"imageName"];

  [v12 encodeBool:-[_UNNotificationCommunicationContext isSystemImage](self forKey:{"isSystemImage"), @"systemImage"}];
  [v12 encodeBool:-[_UNNotificationCommunicationContext mentionsCurrentUser](self forKey:{"mentionsCurrentUser"), @"mentionsCurrentUser"}];
  [v12 encodeBool:-[_UNNotificationCommunicationContext notifyRecipientAnyway](self forKey:{"notifyRecipientAnyway"), @"notifyRecipientAnyway"}];
  [v12 encodeBool:-[_UNNotificationCommunicationContext isReplyToCurrentUser](self forKey:{"isReplyToCurrentUser"), @"replyToCurrentUser"}];
  [v12 encodeInteger:-[_UNNotificationCommunicationContext recipientCount](self forKey:{"recipientCount"), @"recipientCount"}];
  [v12 encodeInteger:-[_UNNotificationCommunicationContext capabilities](self forKey:{"capabilities"), @"capabilities"}];
  [v12 encodeBool:-[_UNNotificationCommunicationContext isBusinessCorrespondence](self forKey:{"isBusinessCorrespondence"), @"businessCorrespondence"}];
}

- (_UNNotificationCommunicationContext)initWithCoder:(id)a3
{
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"associatedObjectUri"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v19 = [v3 decodeObjectOfClasses:v6 forKey:@"recipients"];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v9 = [v3 decodeBoolForKey:@"systemImage"];
  v10 = [v3 decodeBoolForKey:@"mentionsCurrentUser"];
  v11 = [v3 decodeBoolForKey:@"notifyRecipientAnyway"];
  v12 = [v3 decodeBoolForKey:@"replyToCurrentUser"];
  v13 = [v3 decodeIntegerForKey:@"recipientCount"];
  v14 = [v3 decodeIntegerForKey:@"capabilities"];
  LOBYTE(v4) = [v3 decodeBoolForKey:@"businessCorrespondence"];

  LOBYTE(v18) = v4;
  BYTE3(v17) = v12;
  BYTE2(v17) = v11;
  BYTE1(v17) = v10;
  LOBYTE(v17) = v9;
  v15 = [_UNNotificationCommunicationContext _initWithIdentifier:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" associatedObjectUri:v24 bundleIdentifier:v23 displayName:v22 sender:v21 recipients:v20 contentURL:v19 imageName:v7 systemImage:v8 mentionsCurrentUser:v17 notifyRecipientAnyway:v13 replyToCurrentUser:v14 recipientCount:v18 capabilities:? businessCorrespondence:?];

  return v15;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UNNotificationCommunicationContext *)self descriptionBuilderWithMultilinePrefix:a3];
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
  v10[2] = __77___UNNotificationCommunicationContext_descriptionBuilderWithMultilinePrefix___block_invoke;
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
  v2 = [(_UNNotificationCommunicationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(_UNNotificationCommunicationContext *)self identifier];
  v5 = [v4 un_logDigest];
  v6 = [v3 appendObject:v5 withName:@"identifier"];

  v7 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  v8 = [v3 appendObject:v7 withName:@"bundleIdentifier"];

  v9 = [(_UNNotificationCommunicationContext *)self displayName];
  v10 = [v9 un_logDigest];
  v11 = [v3 appendObject:v10 withName:@"displayName"];

  v12 = [(_UNNotificationCommunicationContext *)self recipients];
  v13 = [v3 appendInteger:objc_msgSend(v12 withName:{"count"), @"recipientsArrayCount"}];

  v14 = [(_UNNotificationCommunicationContext *)self sender];
  v15 = [v3 appendBool:v14 != 0 withName:@"hasSender"];

  v16 = [(_UNNotificationCommunicationContext *)self contentURL];
  v17 = [v3 appendObject:v16 withName:@"contentURL"];

  v18 = [(_UNNotificationCommunicationContext *)self imageName];
  v19 = [v3 appendObject:v18 withName:@"imageName"];

  v20 = [v3 appendBool:-[_UNNotificationCommunicationContext isSystemImage](self withName:{"isSystemImage"), @"isSystemImage"}];
  v21 = [v3 appendBool:-[_UNNotificationCommunicationContext mentionsCurrentUser](self withName:{"mentionsCurrentUser"), @"mentionsCurrentUser"}];
  v22 = [v3 appendBool:-[_UNNotificationCommunicationContext notifyRecipientAnyway](self withName:{"notifyRecipientAnyway"), @"notifyRecipientAnyway"}];
  v23 = [v3 appendBool:-[_UNNotificationCommunicationContext isReplyToCurrentUser](self withName:{"isReplyToCurrentUser"), @"isReplyToCurrentUser"}];
  v24 = [v3 appendInteger:-[_UNNotificationCommunicationContext recipientCount](self withName:{"recipientCount"), @"recipientCount"}];
  v25 = [(_UNNotificationCommunicationContext *)self capabilities];
  v26 = &stru_1F308F460;
  if (!v25)
  {
    v26 = @"Unspecified";
  }

  if (v25)
  {
    v27 = @"Video";
  }

  else
  {
    v27 = v26;
  }

  [v3 appendString:v27 withName:@"capabilities"];
  v28 = [v3 appendBool:-[_UNNotificationCommunicationContext isBusinessCorrespondence](self withName:{"isBusinessCorrespondence"), @"isBusinessCorrespondence"}];

  return v3;
}

- (id)_summaryFromContacts:(id)a3 effectiveCount:(unint64_t)a4 includeMe:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4 + v5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v11 = UNLocalizedStringForKey(@"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_TO_YOU");
    [v9 addObject:v11];
  }

  v43 = 0u;
  v44 = 0u;
  if (v8 > 3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  v41 = 0uLL;
  v42 = 0uLL;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v42 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v41 + 1) + 8 * v17);
      if ([v9 count] >= v12)
      {
        break;
      }

      v19 = [v18 preferredName];
      if (v19)
      {
        if ([v18 isPreferredNameReal])
        {
          v20 = v9;
        }

        else
        {
          v20 = v10;
        }

        [v20 addObject:v19];
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v15)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v21 = v12 - [v9 count];
  v22 = [v10 count];
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    for (i = 0; i < v27; ++i)
    {
      v25 = [v10 objectAtIndex:i];
      [v9 addObject:v25];

      v26 = [v10 count];
      if (v26 >= v21)
      {
        v27 = v21;
      }

      else
      {
        v27 = v26;
      }
    }
  }

  v28 = [v9 count];
  v29 = v8 - v28;
  if (v8 != v28)
  {
    if (v29 >> 4 < 0x271)
    {
      v31 = UNLocalizedFormatStringForKey(@"%lu", @"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_OTHERS_FORMAT");
      v30 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v31, v29, 0];
    }

    else
    {
      v30 = UNLocalizedStringForKey(@"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_MANY_OTHERS");
    }

    [v9 addObject:v30];
  }

  if ([v9 count] == 1)
  {
    v32 = [v9 objectAtIndex:0];
    goto LABEL_41;
  }

  if ([v9 count] == 2)
  {
    v33 = UNLocalizedFormatStringForKey(@"%@%@", @"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_TWO_NAMES_FORMAT");
    v34 = MEMORY[0x1E696AEC0];
    v35 = [v9 objectAtIndex:0];
    v36 = [v9 objectAtIndex:1];
    v32 = [v34 localizedStringWithFormat:v33, v35, v36, 0];
LABEL_39:

    goto LABEL_41;
  }

  if ([v9 count] == 3)
  {
    v33 = UNLocalizedFormatStringForKey(@"%@%@%@", @"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_THREE_NAMES_FORMAT");
    v37 = MEMORY[0x1E696AEC0];
    v35 = [v9 objectAtIndex:0];
    v36 = [v9 objectAtIndex:1];
    v38 = [v9 objectAtIndex:2];
    v32 = [v37 localizedStringWithFormat:v33, v35, v36, v38, 0, v41];

    goto LABEL_39;
  }

  v32 = 0;
LABEL_41:

  v39 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BOOL)isAvatarImagePossible
{
  v2 = self;
  v3 = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  LOBYTE(v2) = [(_UNNotificationCommunicationContext *)v2 isAvatarImagePossibleForBundleIdentifier:v3];

  return v2;
}

@end