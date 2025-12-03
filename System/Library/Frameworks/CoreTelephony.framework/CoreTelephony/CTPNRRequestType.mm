@interface CTPNRRequestType
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTPNRRequestType:(id)type;
- (CTPNRRequestType)init;
- (CTPNRRequestType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPNRRequestType

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  pushToken = [(CTPNRRequestType *)self pushToken];
  [v3 appendFormat:@", pushToken=%@", pushToken];

  attemptCount = [(CTPNRRequestType *)self attemptCount];
  [v3 appendFormat:@", attempt=%@", attemptCount];

  embedded = [(CTPNRRequestType *)self embedded];
  [v3 appendFormat:@", embedded=%@", embedded];

  pnrReqList = [(CTPNRRequestType *)self pnrReqList];
  [v3 appendFormat:@", requestList=%@", pnrReqList];

  sessionToken = [(CTPNRRequestType *)self sessionToken];
  [v3 appendFormat:@", sessionToken=%@", sessionToken];

  [v3 appendString:@">"];

  return v3;
}

- (CTPNRRequestType)init
{
  v5.receiver = self;
  v5.super_class = CTPNRRequestType;
  v2 = [(CTPNRRequestType *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:0];
    [(CTPNRRequestType *)v2 setAttemptCount:v3];
  }

  return v2;
}

- (BOOL)isEqualToCTPNRRequestType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    v10 = 0;
    goto LABEL_21;
  }

  pushToken = [(CTPNRRequestType *)self pushToken];
  if (pushToken || ([typeCopy pushToken], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    pushToken2 = [(CTPNRRequestType *)self pushToken];
    pushToken3 = [typeCopy pushToken];
    if (([pushToken2 isEqualToData:pushToken3] & 1) == 0)
    {

      v10 = 0;
      goto LABEL_18;
    }

    v41 = 1;
  }

  else
  {
    v41 = 0;
  }

  attemptCount = [(CTPNRRequestType *)self attemptCount];
  if (!attemptCount)
  {
    attemptCount2 = [typeCopy attemptCount];
    if (!attemptCount2)
    {
      attemptCount2 = 0;
      v39 = 0;
      goto LABEL_23;
    }
  }

  v12 = v5;
  attemptCount3 = [(CTPNRRequestType *)self attemptCount];
  attemptCount4 = [typeCopy attemptCount];
  v6 = attemptCount4;
  if (attemptCount3 == attemptCount4)
  {
    v35 = attemptCount3;
    v39 = 1;
    v5 = v12;
LABEL_23:
    embedded = [(CTPNRRequestType *)self embedded];
    if (embedded || ([typeCopy embedded], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      embedded2 = [(CTPNRRequestType *)self embedded];
      embedded3 = [typeCopy embedded];
      v38 = embedded2;
      if (![embedded2 isEqual:embedded3])
      {
        v10 = 0;
        goto LABEL_48;
      }

      v34 = 1;
    }

    else
    {
      v31 = 0;
      v34 = 0;
    }

    pnrReqList = [(CTPNRRequestType *)self pnrReqList];
    if (pnrReqList || ([typeCopy pnrReqList], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      pnrReqList2 = [(CTPNRRequestType *)self pnrReqList];
      pnrReqList3 = [typeCopy pnrReqList];
      v33 = pnrReqList2;
      if (![pnrReqList2 isEqualToArray:?])
      {
        v10 = 0;
LABEL_44:

LABEL_45:
        v24 = pnrReqList;
        if (!pnrReqList)
        {

          v24 = 0;
        }

        if (!v34)
        {
LABEL_49:
          if (!embedded)
          {
          }

          if (v39)
          {
          }

          if (!attemptCount)
          {
          }

          if (!v41)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

LABEL_48:

        goto LABEL_49;
      }

      v30 = embedded;
      v19 = 1;
    }

    else
    {
      v30 = embedded;
      v27 = 0;
      v19 = 0;
    }

    sessionToken = [(CTPNRRequestType *)self sessionToken];
    if (sessionToken || ([typeCopy sessionToken], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v19;
      v29 = v5;
      v21 = [(CTPNRRequestType *)self sessionToken:v25];
      sessionToken2 = [typeCopy sessionToken];
      v10 = [v21 isEqualToString:sessionToken2];

      if (sessionToken)
      {

        if (!v28)
        {
          v5 = v29;
          embedded = v30;
          goto LABEL_45;
        }

        v5 = v29;
        embedded = v30;
        goto LABEL_44;
      }

      v5 = v29;
      LOBYTE(v19) = v28;
      v23 = v26;
    }

    else
    {
      v23 = 0;
      v10 = 1;
    }

    embedded = v30;
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (attemptCount)
  {
  }

  else
  {
  }

  v10 = 0;
  v5 = v12;
  if (v41)
  {
LABEL_17:
  }

LABEL_18:
  if (!pushToken)
  {
  }

LABEL_21:
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRRequestType *)self isEqualToCTPNRRequestType:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTPNRRequestType allocWithZone:zone];
  [(CTPNRRequestType *)v4 setAttemptCount:self->_attemptCount];
  [(CTPNRRequestType *)v4 setPushToken:self->_pushToken];
  [(CTPNRRequestType *)v4 setEmbedded:self->_embedded];
  [(CTPNRRequestType *)v4 setPnrReqList:self->_pnrReqList];
  [(CTPNRRequestType *)v4 setSessionToken:self->_sessionToken];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  attemptCount = self->_attemptCount;
  coderCopy = coder;
  [coderCopy encodeObject:attemptCount forKey:@"attempt_count"];
  [coderCopy encodeObject:self->_pushToken forKey:@"push_token"];
  [coderCopy encodeObject:self->_embedded forKey:@"embedded"];
  [coderCopy encodeObject:self->_pnrReqList forKey:@"pnr_req"];
  [coderCopy encodeObject:self->_sessionToken forKey:@"session_token"];
}

- (CTPNRRequestType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CTPNRRequestType;
  v5 = [(CTPNRRequestType *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attempt_count"];
    attemptCount = v5->_attemptCount;
    v5->_attemptCount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"push_token"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embedded"];
    embedded = v5->_embedded;
    v5->_embedded = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"pnr_req"];
    pnrReqList = v5->_pnrReqList;
    v5->_pnrReqList = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_token"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v17;
  }

  return v5;
}

@end