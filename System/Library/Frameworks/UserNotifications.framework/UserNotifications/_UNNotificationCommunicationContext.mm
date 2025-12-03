@interface _UNNotificationCommunicationContext
- (BOOL)isAvatarImagePossible;
- (BOOL)isEqual:(id)equal;
- (NSArray)allContacts;
- (NSString)preferredDescription;
- (NSString)preferredRecipientsSummary;
- (NSString)preferredSenderSummary;
- (_UNNotificationCommunicationContext)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier associatedObjectUri:(id)uri bundleIdentifier:(id)bundleIdentifier displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5 capabilities:(int64_t)self6 businessCorrespondence:(BOOL)self7;
- (id)_summaryFromContacts:(id)contacts effectiveCount:(unint64_t)count includeMe:(BOOL)me;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)_effectiveAllContactsCount;
- (unint64_t)_effectiveRecipientCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
    recipients2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sender = [(_UNNotificationCommunicationContext *)self sender];
    [recipients2 addObject:sender];

    recipients = [(_UNNotificationCommunicationContext *)self recipients];
    [recipients2 addObjectsFromArray:recipients];
  }

  else
  {
    recipients2 = [(_UNNotificationCommunicationContext *)self recipients];
  }

  return recipients2;
}

- (NSString)preferredSenderSummary
{
  sender = self->_sender;
  if (sender)
  {
    preferredName = [(_UNNotificationContact *)sender preferredName];
  }

  else
  {
    recipients = [(_UNNotificationCommunicationContext *)self recipients];
    preferredName = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:recipients effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveRecipientCount] includeMe:0];
  }

  return preferredName;
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
    preferredDescription = [(_UNNotificationCommunicationContext *)self preferredDescription];
    if (preferredDescription)
    {
      v8 = UNLocalizedFormatStringForKey(@"%@%@", @"COMMUNICATION_CONTEXT_CONTACT_SUMMARY_WITH_ACTION_AND_GROUP_NAME");
      v4 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, v6, preferredDescription];

LABEL_16:
      goto LABEL_17;
    }

    v10 = v6;
LABEL_15:
    v4 = v10;
    goto LABEL_16;
  }

LABEL_11:
  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  v6 = displayName;
  if (!displayName)
  {
    preferredDescription = [(_UNNotificationCommunicationContext *)self recipients];
    v10 = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:preferredDescription effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveRecipientCount] includeMe:1];
    goto LABEL_15;
  }

  v6 = displayName;
  v4 = v6;
LABEL_17:

LABEL_18:

  return v4;
}

- (unint64_t)_effectiveAllContactsCount
{
  _effectiveRecipientCount = [(_UNNotificationCommunicationContext *)self _effectiveRecipientCount];
  sender = [(_UNNotificationCommunicationContext *)self sender];
  if (sender)
  {
    v5 = _effectiveRecipientCount + 1;
  }

  else
  {
    v5 = _effectiveRecipientCount;
  }

  return v5;
}

- (unint64_t)_effectiveRecipientCount
{
  recipientCount = [(_UNNotificationCommunicationContext *)self recipientCount];
  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  v5 = [recipients count];

  if (recipientCount <= v5)
  {
    return v5;
  }

  else
  {
    return recipientCount;
  }
}

- (NSString)preferredDescription
{
  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  if ([displayName length])
  {
    displayName2 = [(_UNNotificationCommunicationContext *)self displayName];
  }

  else
  {
    allContacts = [(_UNNotificationCommunicationContext *)self allContacts];
    v6 = [(_UNNotificationCommunicationContext *)self _summaryFromContacts:allContacts effectiveCount:[(_UNNotificationCommunicationContext *)self _effectiveAllContactsCount] includeMe:0];
    v7 = v6;
    if (v6)
    {
      displayName2 = v6;
    }

    else
    {
      allContacts2 = [(_UNNotificationCommunicationContext *)self allContacts];
      firstObject = [allContacts2 firstObject];
      displayName2 = [firstObject preferredName];
    }
  }

  return displayName2;
}

- (id)_initWithIdentifier:(id)identifier associatedObjectUri:(id)uri bundleIdentifier:(id)bundleIdentifier displayName:(id)name sender:(id)sender recipients:(id)recipients contentURL:(id)l imageName:(id)self0 systemImage:(BOOL)self1 mentionsCurrentUser:(BOOL)self2 notifyRecipientAnyway:(BOOL)self3 replyToCurrentUser:(BOOL)self4 recipientCount:(unint64_t)self5 capabilities:(int64_t)self6 businessCorrespondence:(BOOL)self7
{
  identifierCopy = identifier;
  uriCopy = uri;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  senderCopy = sender;
  recipientsCopy = recipients;
  lCopy = l;
  imageNameCopy = imageName;
  v49.receiver = self;
  v49.super_class = _UNNotificationCommunicationContext;
  v31 = [(_UNNotificationCommunicationContext *)&v49 init];
  if (v31)
  {
    v32 = [identifierCopy copy];
    identifier = v31->_identifier;
    v31->_identifier = v32;

    v34 = [uriCopy copy];
    associatedObjectUri = v31->_associatedObjectUri;
    v31->_associatedObjectUri = v34;

    v36 = [bundleIdentifierCopy copy];
    bundleIdentifier = v31->_bundleIdentifier;
    v31->_bundleIdentifier = v36;

    v38 = [nameCopy copy];
    displayName = v31->_displayName;
    v31->_displayName = v38;

    v40 = [senderCopy copy];
    sender = v31->_sender;
    v31->_sender = v40;

    v42 = [recipientsCopy copy];
    recipients = v31->_recipients;
    v31->_recipients = v42;

    v44 = [lCopy copy];
    contentURL = v31->_contentURL;
    v31->_contentURL = v44;

    v46 = [imageNameCopy copy];
    imageName = v31->_imageName;
    v31->_imageName = v46;

    v31->_systemImage = image;
    v31->_mentionsCurrentUser = user;
    v31->_notifyRecipientAnyway = anyway;
    v31->_replyToCurrentUser = currentUser;
    v31->_recipientCount = count;
    v31->_capabilities = capabilities;
    v31->_businessCorrespondence = correspondence;
  }

  return v31;
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
LABEL_20:
      LOBYTE(v37) = 0;
      goto LABEL_21;
    }
  }

  v5 = equalCopy;
  if (!v5)
  {
    goto LABEL_20;
  }

  identifier = [(_UNNotificationCommunicationContext *)self identifier];
  identifier2 = [v5 identifier];
  v8 = UNEqualStrings(identifier, identifier2);

  if (!v8)
  {
    goto LABEL_20;
  }

  associatedObjectUri = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  associatedObjectUri2 = [v5 associatedObjectUri];
  v11 = UNEqualStrings(associatedObjectUri, associatedObjectUri2);

  if (!v11)
  {
    goto LABEL_20;
  }

  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  bundleIdentifier2 = [v5 bundleIdentifier];
  v14 = UNEqualStrings(bundleIdentifier, bundleIdentifier2);

  if (!v14)
  {
    goto LABEL_20;
  }

  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  displayName2 = [v5 displayName];
  v17 = UNEqualStrings(displayName, displayName2);

  if (!v17)
  {
    goto LABEL_20;
  }

  sender = [(_UNNotificationCommunicationContext *)self sender];
  sender2 = [v5 sender];
  v20 = UNEqualObjects(sender, sender2);

  if (!v20)
  {
    goto LABEL_20;
  }

  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  recipients2 = [v5 recipients];
  v23 = UNEqualObjects(recipients, recipients2);

  if (!v23)
  {
    goto LABEL_20;
  }

  contentURL = [(_UNNotificationCommunicationContext *)self contentURL];
  contentURL2 = [v5 contentURL];
  v26 = UNEqualObjects(contentURL, contentURL2);

  if (!v26)
  {
    goto LABEL_20;
  }

  imageName = [(_UNNotificationCommunicationContext *)self imageName];
  imageName2 = [v5 imageName];
  v29 = UNEqualObjects(imageName, imageName2);

  if (!v29)
  {
    goto LABEL_20;
  }

  isSystemImage = [(_UNNotificationCommunicationContext *)self isSystemImage];
  if (isSystemImage != [v5 isSystemImage])
  {
    goto LABEL_20;
  }

  mentionsCurrentUser = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  if (mentionsCurrentUser != [v5 mentionsCurrentUser])
  {
    goto LABEL_20;
  }

  notifyRecipientAnyway = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  if (notifyRecipientAnyway != [v5 notifyRecipientAnyway])
  {
    goto LABEL_20;
  }

  isReplyToCurrentUser = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  if (isReplyToCurrentUser != [v5 isReplyToCurrentUser])
  {
    goto LABEL_20;
  }

  recipientCount = [(_UNNotificationCommunicationContext *)self recipientCount];
  if (recipientCount != [v5 recipientCount])
  {
    goto LABEL_20;
  }

  capabilities = [(_UNNotificationCommunicationContext *)self capabilities];
  if (capabilities != [v5 capabilities])
  {
    goto LABEL_20;
  }

  isBusinessCorrespondence = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  v37 = isBusinessCorrespondence ^ [v5 isBusinessCorrespondence] ^ 1;
LABEL_21:

  return v37;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v22 = [_UNMutableNotificationCommunicationContext allocWithZone:zone];
  identifier = [(_UNNotificationCommunicationContext *)self identifier];
  associatedObjectUri = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  sender = [(_UNNotificationCommunicationContext *)self sender];
  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  contentURL = [(_UNNotificationCommunicationContext *)self contentURL];
  imageName = [(_UNNotificationCommunicationContext *)self imageName];
  isSystemImage = [(_UNNotificationCommunicationContext *)self isSystemImage];
  mentionsCurrentUser = [(_UNNotificationCommunicationContext *)self mentionsCurrentUser];
  notifyRecipientAnyway = [(_UNNotificationCommunicationContext *)self notifyRecipientAnyway];
  isReplyToCurrentUser = [(_UNNotificationCommunicationContext *)self isReplyToCurrentUser];
  recipientCount = [(_UNNotificationCommunicationContext *)self recipientCount];
  capabilities = [(_UNNotificationCommunicationContext *)self capabilities];
  LOBYTE(v16) = [(_UNNotificationCommunicationContext *)self isBusinessCorrespondence];
  BYTE3(v15) = isReplyToCurrentUser;
  BYTE2(v15) = notifyRecipientAnyway;
  BYTE1(v15) = mentionsCurrentUser;
  LOBYTE(v15) = isSystemImage;
  v13 = [_UNNotificationCommunicationContext _initWithIdentifier:v22 associatedObjectUri:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" bundleIdentifier:identifier displayName:associatedObjectUri sender:bundleIdentifier recipients:displayName contentURL:sender imageName:recipients systemImage:contentURL mentionsCurrentUser:imageName notifyRecipientAnyway:v15 replyToCurrentUser:recipientCount recipientCount:capabilities capabilities:v16 businessCorrespondence:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_UNNotificationCommunicationContext *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  associatedObjectUri = [(_UNNotificationCommunicationContext *)self associatedObjectUri];
  [coderCopy encodeObject:associatedObjectUri forKey:@"associatedObjectUri"];

  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];

  sender = [(_UNNotificationCommunicationContext *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  contentURL = [(_UNNotificationCommunicationContext *)self contentURL];
  [coderCopy encodeObject:contentURL forKey:@"contentURL"];

  imageName = [(_UNNotificationCommunicationContext *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];

  [coderCopy encodeBool:-[_UNNotificationCommunicationContext isSystemImage](self forKey:{"isSystemImage"), @"systemImage"}];
  [coderCopy encodeBool:-[_UNNotificationCommunicationContext mentionsCurrentUser](self forKey:{"mentionsCurrentUser"), @"mentionsCurrentUser"}];
  [coderCopy encodeBool:-[_UNNotificationCommunicationContext notifyRecipientAnyway](self forKey:{"notifyRecipientAnyway"), @"notifyRecipientAnyway"}];
  [coderCopy encodeBool:-[_UNNotificationCommunicationContext isReplyToCurrentUser](self forKey:{"isReplyToCurrentUser"), @"replyToCurrentUser"}];
  [coderCopy encodeInteger:-[_UNNotificationCommunicationContext recipientCount](self forKey:{"recipientCount"), @"recipientCount"}];
  [coderCopy encodeInteger:-[_UNNotificationCommunicationContext capabilities](self forKey:{"capabilities"), @"capabilities"}];
  [coderCopy encodeBool:-[_UNNotificationCommunicationContext isBusinessCorrespondence](self forKey:{"isBusinessCorrespondence"), @"businessCorrespondence"}];
}

- (_UNNotificationCommunicationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedObjectUri"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v19 = [coderCopy decodeObjectOfClasses:v6 forKey:@"recipients"];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
  v9 = [coderCopy decodeBoolForKey:@"systemImage"];
  v10 = [coderCopy decodeBoolForKey:@"mentionsCurrentUser"];
  v11 = [coderCopy decodeBoolForKey:@"notifyRecipientAnyway"];
  v12 = [coderCopy decodeBoolForKey:@"replyToCurrentUser"];
  v13 = [coderCopy decodeIntegerForKey:@"recipientCount"];
  v14 = [coderCopy decodeIntegerForKey:@"capabilities"];
  LOBYTE(v4) = [coderCopy decodeBoolForKey:@"businessCorrespondence"];

  LOBYTE(v18) = v4;
  BYTE3(v17) = v12;
  BYTE2(v17) = v11;
  BYTE1(v17) = v10;
  LOBYTE(v17) = v9;
  v15 = [_UNNotificationCommunicationContext _initWithIdentifier:"_initWithIdentifier:associatedObjectUri:bundleIdentifier:displayName:sender:recipients:contentURL:imageName:systemImage:mentionsCurrentUser:notifyRecipientAnyway:replyToCurrentUser:recipientCount:capabilities:businessCorrespondence:" associatedObjectUri:v24 bundleIdentifier:v23 displayName:v22 sender:v21 recipients:v20 contentURL:v19 imageName:v7 systemImage:v8 mentionsCurrentUser:v17 notifyRecipientAnyway:v13 replyToCurrentUser:v14 recipientCount:v18 capabilities:? businessCorrespondence:?];

  return v15;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UNNotificationCommunicationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
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
  v10[2] = __77___UNNotificationCommunicationContext_descriptionBuilderWithMultilinePrefix___block_invoke;
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
  succinctDescriptionBuilder = [(_UNNotificationCommunicationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(_UNNotificationCommunicationContext *)self identifier];
  un_logDigest = [identifier un_logDigest];
  v6 = [v3 appendObject:un_logDigest withName:@"identifier"];

  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  v8 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  displayName = [(_UNNotificationCommunicationContext *)self displayName];
  un_logDigest2 = [displayName un_logDigest];
  v11 = [v3 appendObject:un_logDigest2 withName:@"displayName"];

  recipients = [(_UNNotificationCommunicationContext *)self recipients];
  v13 = [v3 appendInteger:objc_msgSend(recipients withName:{"count"), @"recipientsArrayCount"}];

  sender = [(_UNNotificationCommunicationContext *)self sender];
  v15 = [v3 appendBool:sender != 0 withName:@"hasSender"];

  contentURL = [(_UNNotificationCommunicationContext *)self contentURL];
  v17 = [v3 appendObject:contentURL withName:@"contentURL"];

  imageName = [(_UNNotificationCommunicationContext *)self imageName];
  v19 = [v3 appendObject:imageName withName:@"imageName"];

  v20 = [v3 appendBool:-[_UNNotificationCommunicationContext isSystemImage](self withName:{"isSystemImage"), @"isSystemImage"}];
  v21 = [v3 appendBool:-[_UNNotificationCommunicationContext mentionsCurrentUser](self withName:{"mentionsCurrentUser"), @"mentionsCurrentUser"}];
  v22 = [v3 appendBool:-[_UNNotificationCommunicationContext notifyRecipientAnyway](self withName:{"notifyRecipientAnyway"), @"notifyRecipientAnyway"}];
  v23 = [v3 appendBool:-[_UNNotificationCommunicationContext isReplyToCurrentUser](self withName:{"isReplyToCurrentUser"), @"isReplyToCurrentUser"}];
  v24 = [v3 appendInteger:-[_UNNotificationCommunicationContext recipientCount](self withName:{"recipientCount"), @"recipientCount"}];
  capabilities = [(_UNNotificationCommunicationContext *)self capabilities];
  v26 = &stru_1F308F460;
  if (!capabilities)
  {
    v26 = @"Unspecified";
  }

  if (capabilities)
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

- (id)_summaryFromContacts:(id)contacts effectiveCount:(unint64_t)count includeMe:(BOOL)me
{
  meCopy = me;
  v46 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v8 = count + meCopy;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (meCopy)
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
  v13 = contactsCopy;
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

      preferredName = [v18 preferredName];
      if (preferredName)
      {
        if ([v18 isPreferredNameReal])
        {
          v20 = v9;
        }

        else
        {
          v20 = v10;
        }

        [v20 addObject:preferredName];
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
  selfCopy = self;
  bundleIdentifier = [(_UNNotificationCommunicationContext *)self bundleIdentifier];
  LOBYTE(selfCopy) = [(_UNNotificationCommunicationContext *)selfCopy isAvatarImagePossibleForBundleIdentifier:bundleIdentifier];

  return selfCopy;
}

@end