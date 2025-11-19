@interface CTLazuliGroupChatInformation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatInformation:(id)a3;
- (CTLazuliGroupChatInformation)initWithCoder:(id)a3;
- (CTLazuliGroupChatInformation)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTLazuliGroupChatInformation

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatInformation *)self participants];
  [v3 appendFormat:@", participants = %@", v4];

  v5 = [(CTLazuliGroupChatInformation *)self conversationID];
  [v3 appendFormat:@", conversationID = %@", v5];

  v6 = [(CTLazuliGroupChatInformation *)self contributionID];
  [v3 appendFormat:@", contributionID = %@", v6];

  v7 = [(CTLazuliGroupChatInformation *)self remoteUri];
  [v3 appendFormat:@", remoteUri = %@", v7];

  v8 = [(CTLazuliGroupChatInformation *)self subject];
  [v3 appendFormat:@", subject = %@", v8];

  v9 = [(CTLazuliGroupChatInformation *)self icon];
  [v3 appendFormat:@", icon = %@", v9];

  v10 = [(CTLazuliGroupChatInformation *)self mastermind];
  [v3 appendFormat:@", mastermind = %@", v10];

  v11 = [(CTLazuliGroupChatInformation *)self secure];
  v12 = "no";
  if (v11)
  {
    v12 = "yes";
  }

  [v3 appendFormat:@", secure = %s", v12];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatInformation:(id)a3
{
  v5 = a3;
  v6 = [(CTLazuliGroupChatInformation *)self participants];
  v7 = [v5 participants];
  if (v6 != v7)
  {
    v42 = [(CTLazuliGroupChatInformation *)self participants];
    v39 = [v5 participants];
    if (![v42 isEqualToCTLazuliGroupChatParticipantList:?])
    {
      LOBYTE(v8) = 0;
LABEL_35:

      goto LABEL_36;
    }
  }

  v9 = [(CTLazuliGroupChatInformation *)self conversationID];
  v10 = [v5 conversationID];
  if (v9 == v10 || (-[CTLazuliGroupChatInformation conversationID](self, "conversationID"), v40 = objc_claimAutoreleasedReturnValue(), [v5 conversationID], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "isEqualToCTLazuliGroupChatConversationID:")))
  {
    v41 = [(CTLazuliGroupChatInformation *)self contributionID];
    v11 = [v5 contributionID];
    if (v41 != v11)
    {
      v37 = [(CTLazuliGroupChatInformation *)self contributionID];
      v32 = [v5 contributionID];
      if (![v37 isEqualToCTLazuliGroupChatContributionID:?])
      {
        LOBYTE(v8) = 0;
        v12 = v41;
LABEL_31:

LABEL_32:
        if (v9 == v10)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    v38 = [(CTLazuliGroupChatInformation *)self remoteUri];
    v34 = [v5 remoteUri];
    if (v38 != v34)
    {
      v33 = [(CTLazuliGroupChatInformation *)self remoteUri];
      v28 = [v5 remoteUri];
      if (![v33 isEqualToCTLazuliGroupChatUri:?])
      {
        LOBYTE(v8) = 0;
        v13 = v38;
        v14 = v34;
LABEL_29:

LABEL_30:
        v12 = v41;
        if (v41 == v11)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    v35 = [(CTLazuliGroupChatInformation *)self subject];
    v30 = [v5 subject];
    if (v35 != v30)
    {
      v29 = [(CTLazuliGroupChatInformation *)self subject];
      v25 = [v5 subject];
      if (![v29 isEqualToCTLazuliGroupChatSubject:?])
      {
        LOBYTE(v8) = 0;
        v15 = v35;
        v16 = v30;
LABEL_27:

LABEL_28:
        v13 = v38;
        v14 = v34;
        if (v38 == v34)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v31 = [(CTLazuliGroupChatInformation *)self icon];
    v27 = [v5 icon];
    if (v31 != v27)
    {
      v26 = [(CTLazuliGroupChatInformation *)self icon];
      v23 = [v5 icon];
      if (![v26 isEqualToCTLazuliGroupChatIcon:?])
      {
        LOBYTE(v8) = 0;
        v17 = v31;
        v18 = v27;
LABEL_25:

LABEL_26:
        v15 = v35;
        v16 = v30;
        if (v35 == v30)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    v19 = [(CTLazuliGroupChatInformation *)self mastermind];
    v20 = [v5 mastermind];
    if (v19 == v20 || (-[CTLazuliGroupChatInformation mastermind](self, "mastermind"), v24 = objc_claimAutoreleasedReturnValue(), [v5 mastermind], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "isEqualToCTLazuliGroupChatParticipant:", v3)))
    {
      v21 = [(CTLazuliGroupChatInformation *)self secure];
      v8 = v21 ^ [v5 secure] ^ 1;
      if (v19 == v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_24:
    v17 = v31;
    v18 = v27;
    if (v31 == v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  LOBYTE(v8) = 0;
LABEL_33:

LABEL_34:
  if (v6 != v7)
  {
    goto LABEL_35;
  }

LABEL_36:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatInformation *)self isEqualToCTLazuliGroupChatInformation:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatInformation allocWithZone:?];
  v6 = [(CTLazuliGroupChatParticipantList *)self->_participants copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setParticipants:v6];

  v7 = [(CTLazuliGroupChatConversationID *)self->_conversationID copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setConversationID:v7];

  v8 = [(CTLazuliGroupChatContributionID *)self->_contributionID copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setContributionID:v8];

  v9 = [(CTLazuliGroupChatUri *)self->_remoteUri copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setRemoteUri:v9];

  v10 = [(CTLazuliGroupChatSubject *)self->_subject copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setSubject:v10];

  v11 = [(CTLazuliGroupChatIcon *)self->_icon copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setIcon:v11];

  v12 = [(CTLazuliGroupChatParticipant *)self->_mastermind copyWithZone:a3];
  [(CTLazuliGroupChatInformation *)v5 setMastermind:v12];

  [(CTLazuliGroupChatInformation *)v5 setSecure:self->_secure];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_participants forKey:@"kParticipantsKey"];
  [v4 encodeObject:self->_conversationID forKey:@"kConversationIDKey"];
  [v4 encodeObject:self->_contributionID forKey:@"kContributionIDKey"];
  [v4 encodeObject:self->_remoteUri forKey:@"kRemoteUriKey"];
  [v4 encodeObject:self->_subject forKey:@"kSubjectKey"];
  [v4 encodeObject:self->_icon forKey:@"kIconKey"];
  [v4 encodeObject:self->_mastermind forKey:@"kMastermindKey"];
  [v4 encodeBool:self->_secure forKey:@"kSecureKey"];
}

- (CTLazuliGroupChatInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CTLazuliGroupChatInformation;
  v5 = [(CTLazuliGroupChatInformation *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kParticipantsKey"];
    participants = v5->_participants;
    v5->_participants = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kConversationIDKey"];
    conversationID = v5->_conversationID;
    v5->_conversationID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kContributionIDKey"];
    contributionID = v5->_contributionID;
    v5->_contributionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteUriKey"];
    remoteUri = v5->_remoteUri;
    v5->_remoteUri = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSubjectKey"];
    subject = v5->_subject;
    v5->_subject = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIconKey"];
    icon = v5->_icon;
    v5->_icon = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMastermindKey"];
    mastermind = v5->_mastermind;
    v5->_mastermind = v18;

    v5->_secure = [v4 decodeBoolForKey:@"kSecureKey"];
  }

  return v5;
}

- (CTLazuliGroupChatInformation)initWithReflection:(const void *)a3
{
  v24.receiver = self;
  v24.super_class = CTLazuliGroupChatInformation;
  v4 = [(CTLazuliGroupChatInformation *)&v24 init];
  if (v4)
  {
    v5 = [[CTLazuliGroupChatParticipantList alloc] initWithReflection:a3];
    participants = v4->_participants;
    v4->_participants = v5;

    v7 = [[CTLazuliGroupChatConversationID alloc] initWithReflection:a3 + 48];
    conversationID = v4->_conversationID;
    v4->_conversationID = v7;

    v9 = [[CTLazuliGroupChatContributionID alloc] initWithReflection:a3 + 72];
    contributionID = v4->_contributionID;
    v4->_contributionID = v9;

    if (*(a3 + 168) == 1)
    {
      v11 = [CTLazuliGroupChatUri alloc];
      if ((*(a3 + 168) & 1) == 0)
      {
        goto LABEL_16;
      }

      v12 = [(CTLazuliGroupChatUri *)v11 initWithReflection:a3 + 96];
    }

    else
    {
      v12 = 0;
    }

    remoteUri = v4->_remoteUri;
    v4->_remoteUri = v12;

    if (*(a3 + 200) == 1)
    {
      v14 = [CTLazuliGroupChatSubject alloc];
      if ((*(a3 + 200) & 1) == 0)
      {
        goto LABEL_16;
      }

      v15 = [(CTLazuliGroupChatSubject *)v14 initWithReflection:a3 + 176];
    }

    else
    {
      v15 = 0;
    }

    subject = v4->_subject;
    v4->_subject = v15;

    if (*(a3 + 280) != 1)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v17 = [CTLazuliGroupChatIcon alloc];
    if (*(a3 + 280))
    {
      v18 = [(CTLazuliGroupChatIcon *)v17 initWithReflection:a3 + 208];
LABEL_14:
      icon = v4->_icon;
      v4->_icon = v18;

      v20 = [[CTLazuliGroupChatParticipant alloc] initWithReflection:a3 + 288];
      mastermind = v4->_mastermind;
      v4->_mastermind = v20;

      v4->_secure = *(a3 + 320);
      return v4;
    }

LABEL_16:
    v23 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v23);
  }

  return v4;
}

@end