@interface CTLazuliGroupChatInformation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatInformation:(id)information;
- (CTLazuliGroupChatInformation)initWithCoder:(id)coder;
- (CTLazuliGroupChatInformation)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTLazuliGroupChatInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  participants = [(CTLazuliGroupChatInformation *)self participants];
  [v3 appendFormat:@", participants = %@", participants];

  conversationID = [(CTLazuliGroupChatInformation *)self conversationID];
  [v3 appendFormat:@", conversationID = %@", conversationID];

  contributionID = [(CTLazuliGroupChatInformation *)self contributionID];
  [v3 appendFormat:@", contributionID = %@", contributionID];

  remoteUri = [(CTLazuliGroupChatInformation *)self remoteUri];
  [v3 appendFormat:@", remoteUri = %@", remoteUri];

  subject = [(CTLazuliGroupChatInformation *)self subject];
  [v3 appendFormat:@", subject = %@", subject];

  icon = [(CTLazuliGroupChatInformation *)self icon];
  [v3 appendFormat:@", icon = %@", icon];

  mastermind = [(CTLazuliGroupChatInformation *)self mastermind];
  [v3 appendFormat:@", mastermind = %@", mastermind];

  secure = [(CTLazuliGroupChatInformation *)self secure];
  v12 = "no";
  if (secure)
  {
    v12 = "yes";
  }

  [v3 appendFormat:@", secure = %s", v12];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatInformation:(id)information
{
  informationCopy = information;
  participants = [(CTLazuliGroupChatInformation *)self participants];
  participants2 = [informationCopy participants];
  if (participants != participants2)
  {
    participants3 = [(CTLazuliGroupChatInformation *)self participants];
    participants4 = [informationCopy participants];
    if (![participants3 isEqualToCTLazuliGroupChatParticipantList:?])
    {
      LOBYTE(v8) = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  conversationID = [(CTLazuliGroupChatInformation *)self conversationID];
  conversationID2 = [informationCopy conversationID];
  if (conversationID == conversationID2 || (-[CTLazuliGroupChatInformation conversationID](self, "conversationID"), v40 = objc_claimAutoreleasedReturnValue(), [informationCopy conversationID], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "isEqualToCTLazuliGroupChatConversationID:")))
  {
    contributionID = [(CTLazuliGroupChatInformation *)self contributionID];
    contributionID2 = [informationCopy contributionID];
    if (contributionID != contributionID2)
    {
      contributionID3 = [(CTLazuliGroupChatInformation *)self contributionID];
      contributionID4 = [informationCopy contributionID];
      if (![contributionID3 isEqualToCTLazuliGroupChatContributionID:?])
      {
        LOBYTE(v8) = 0;
        v12 = contributionID;
LABEL_31:

LABEL_32:
        if (conversationID == conversationID2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    remoteUri = [(CTLazuliGroupChatInformation *)self remoteUri];
    remoteUri2 = [informationCopy remoteUri];
    if (remoteUri != remoteUri2)
    {
      remoteUri3 = [(CTLazuliGroupChatInformation *)self remoteUri];
      remoteUri4 = [informationCopy remoteUri];
      if (![remoteUri3 isEqualToCTLazuliGroupChatUri:?])
      {
        LOBYTE(v8) = 0;
        v13 = remoteUri;
        v14 = remoteUri2;
LABEL_29:

LABEL_30:
        v12 = contributionID;
        if (contributionID == contributionID2)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    subject = [(CTLazuliGroupChatInformation *)self subject];
    subject2 = [informationCopy subject];
    if (subject != subject2)
    {
      subject3 = [(CTLazuliGroupChatInformation *)self subject];
      subject4 = [informationCopy subject];
      if (![subject3 isEqualToCTLazuliGroupChatSubject:?])
      {
        LOBYTE(v8) = 0;
        v15 = subject;
        v16 = subject2;
LABEL_27:

LABEL_28:
        v13 = remoteUri;
        v14 = remoteUri2;
        if (remoteUri == remoteUri2)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    icon = [(CTLazuliGroupChatInformation *)self icon];
    icon2 = [informationCopy icon];
    if (icon != icon2)
    {
      icon3 = [(CTLazuliGroupChatInformation *)self icon];
      icon4 = [informationCopy icon];
      if (![icon3 isEqualToCTLazuliGroupChatIcon:?])
      {
        LOBYTE(v8) = 0;
        v17 = icon;
        v18 = icon2;
LABEL_25:

LABEL_26:
        v15 = subject;
        v16 = subject2;
        if (subject == subject2)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    mastermind = [(CTLazuliGroupChatInformation *)self mastermind];
    mastermind2 = [informationCopy mastermind];
    if (mastermind == mastermind2 || (-[CTLazuliGroupChatInformation mastermind](self, "mastermind"), v24 = objc_claimAutoreleasedReturnValue(), [informationCopy mastermind], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "isEqualToCTLazuliGroupChatParticipant:", v3)))
    {
      secure = [(CTLazuliGroupChatInformation *)self secure];
      v8 = secure ^ [informationCopy secure] ^ 1;
      if (mastermind == mastermind2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_24:
    v17 = icon;
    v18 = icon2;
    if (icon == icon2)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  LOBYTE(v8) = 0;
LABEL_33:

LABEL_34:
  if (participants != participants2)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatInformation *)self isEqualToCTLazuliGroupChatInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatInformation allocWithZone:?];
  v6 = [(CTLazuliGroupChatParticipantList *)self->_participants copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setParticipants:v6];

  v7 = [(CTLazuliGroupChatConversationID *)self->_conversationID copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setConversationID:v7];

  v8 = [(CTLazuliGroupChatContributionID *)self->_contributionID copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setContributionID:v8];

  v9 = [(CTLazuliGroupChatUri *)self->_remoteUri copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setRemoteUri:v9];

  v10 = [(CTLazuliGroupChatSubject *)self->_subject copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setSubject:v10];

  v11 = [(CTLazuliGroupChatIcon *)self->_icon copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setIcon:v11];

  v12 = [(CTLazuliGroupChatParticipant *)self->_mastermind copyWithZone:zone];
  [(CTLazuliGroupChatInformation *)v5 setMastermind:v12];

  [(CTLazuliGroupChatInformation *)v5 setSecure:self->_secure];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_participants forKey:@"kParticipantsKey"];
  [coderCopy encodeObject:self->_conversationID forKey:@"kConversationIDKey"];
  [coderCopy encodeObject:self->_contributionID forKey:@"kContributionIDKey"];
  [coderCopy encodeObject:self->_remoteUri forKey:@"kRemoteUriKey"];
  [coderCopy encodeObject:self->_subject forKey:@"kSubjectKey"];
  [coderCopy encodeObject:self->_icon forKey:@"kIconKey"];
  [coderCopy encodeObject:self->_mastermind forKey:@"kMastermindKey"];
  [coderCopy encodeBool:self->_secure forKey:@"kSecureKey"];
}

- (CTLazuliGroupChatInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CTLazuliGroupChatInformation;
  v5 = [(CTLazuliGroupChatInformation *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kParticipantsKey"];
    participants = v5->_participants;
    v5->_participants = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kConversationIDKey"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kContributionIDKey"];
    contributionID = v5->_contributionID;
    v5->_contributionID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteUriKey"];
    remoteUri = v5->_remoteUri;
    v5->_remoteUri = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSubjectKey"];
    subject = v5->_subject;
    v5->_subject = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIconKey"];
    icon = v5->_icon;
    v5->_icon = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMastermindKey"];
    mastermind = v5->_mastermind;
    v5->_mastermind = v18;

    v5->_secure = [coderCopy decodeBoolForKey:@"kSecureKey"];
  }

  return v5;
}

- (CTLazuliGroupChatInformation)initWithReflection:(const void *)reflection
{
  v24.receiver = self;
  v24.super_class = CTLazuliGroupChatInformation;
  v4 = [(CTLazuliGroupChatInformation *)&v24 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatParticipantList alloc] initWithReflection:reflection];
    participants = v4->_participants;
    v4->_participants = v5;

    v7 = [[CTLazuliGroupChatConversationID alloc] initWithReflection:reflection + 48];
    conversationID = v4->_conversationID;
    v4->_conversationID = v7;

    v9 = [[CTLazuliGroupChatContributionID alloc] initWithReflection:reflection + 72];
    contributionID = v4->_contributionID;
    v4->_contributionID = v9;

    if (*(reflection + 168) == 1)
    {
      v11 = [CTLazuliGroupChatUri alloc];
      if ((*(reflection + 168) & 1) == 0)
      {
        goto LABEL_16;
      }

      v12 = [(CTLazuliGroupChatUri *)v11 initWithReflection:reflection + 96];
    }

    else
    {
      v12 = 0;
    }

    remoteUri = v4->_remoteUri;
    v4->_remoteUri = v12;

    if (*(reflection + 200) == 1)
    {
      v14 = [CTLazuliGroupChatSubject alloc];
      if ((*(reflection + 200) & 1) == 0)
      {
        goto LABEL_16;
      }

      v15 = [(CTLazuliGroupChatSubject *)v14 initWithReflection:reflection + 176];
    }

    else
    {
      v15 = 0;
    }

    subject = v4->_subject;
    v4->_subject = v15;

    if (*(reflection + 280) != 1)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v17 = [CTLazuliGroupChatIcon alloc];
    if (*(reflection + 280))
    {
      v18 = [(CTLazuliGroupChatIcon *)v17 initWithReflection:reflection + 208];
LABEL_14:
      icon = v4->_icon;
      v4->_icon = v18;

      v20 = [[CTLazuliGroupChatParticipant alloc] initWithReflection:reflection + 288];
      mastermind = v4->_mastermind;
      v4->_mastermind = v20;

      v4->_secure = *(reflection + 320);
      return v4;
    }

LABEL_16:
    v23 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v23);
  }

  return v4;
}

@end