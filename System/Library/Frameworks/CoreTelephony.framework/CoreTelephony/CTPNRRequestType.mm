@interface CTPNRRequestType
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTPNRRequestType:(id)a3;
- (CTPNRRequestType)init;
- (CTPNRRequestType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPNRRequestType

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTPNRRequestType *)self pushToken];
  [v3 appendFormat:@", pushToken=%@", v4];

  v5 = [(CTPNRRequestType *)self attemptCount];
  [v3 appendFormat:@", attempt=%@", v5];

  v6 = [(CTPNRRequestType *)self embedded];
  [v3 appendFormat:@", embedded=%@", v6];

  v7 = [(CTPNRRequestType *)self pnrReqList];
  [v3 appendFormat:@", requestList=%@", v7];

  v8 = [(CTPNRRequestType *)self sessionToken];
  [v3 appendFormat:@", sessionToken=%@", v8];

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

- (BOOL)isEqualToCTPNRRequestType:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v10 = 0;
    goto LABEL_21;
  }

  v9 = [(CTPNRRequestType *)self pushToken];
  if (v9 || ([v8 pushToken], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CTPNRRequestType *)self pushToken];
    v4 = [v8 pushToken];
    if (([v3 isEqualToData:v4] & 1) == 0)
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

  v11 = [(CTPNRRequestType *)self attemptCount];
  if (!v11)
  {
    v40 = [v8 attemptCount];
    if (!v40)
    {
      v40 = 0;
      v39 = 0;
      goto LABEL_23;
    }
  }

  v12 = v5;
  v13 = [(CTPNRRequestType *)self attemptCount];
  v14 = [v8 attemptCount];
  v6 = v14;
  if (v13 == v14)
  {
    v35 = v13;
    v39 = 1;
    v5 = v12;
LABEL_23:
    v16 = [(CTPNRRequestType *)self embedded];
    if (v16 || ([v8 embedded], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = [(CTPNRRequestType *)self embedded];
      v37 = [v8 embedded];
      v38 = v17;
      if (![v17 isEqual:v37])
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

    v36 = [(CTPNRRequestType *)self pnrReqList];
    if (v36 || ([v8 pnrReqList], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [(CTPNRRequestType *)self pnrReqList];
      v32 = [v8 pnrReqList];
      v33 = v18;
      if (![v18 isEqualToArray:?])
      {
        v10 = 0;
LABEL_44:

LABEL_45:
        v24 = v36;
        if (!v36)
        {

          v24 = 0;
        }

        if (!v34)
        {
LABEL_49:
          if (!v16)
          {
          }

          if (v39)
          {
          }

          if (!v11)
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

      v30 = v16;
      v19 = 1;
    }

    else
    {
      v30 = v16;
      v27 = 0;
      v19 = 0;
    }

    v20 = [(CTPNRRequestType *)self sessionToken];
    if (v20 || ([v8 sessionToken], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = v19;
      v29 = v5;
      v21 = [(CTPNRRequestType *)self sessionToken:v25];
      v22 = [v8 sessionToken];
      v10 = [v21 isEqualToString:v22];

      if (v20)
      {

        if (!v28)
        {
          v5 = v29;
          v16 = v30;
          goto LABEL_45;
        }

        v5 = v29;
        v16 = v30;
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

    v16 = v30;
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v11)
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
  if (!v9)
  {
  }

LABEL_21:
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRRequestType *)self isEqualToCTPNRRequestType:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTPNRRequestType allocWithZone:a3];
  [(CTPNRRequestType *)v4 setAttemptCount:self->_attemptCount];
  [(CTPNRRequestType *)v4 setPushToken:self->_pushToken];
  [(CTPNRRequestType *)v4 setEmbedded:self->_embedded];
  [(CTPNRRequestType *)v4 setPnrReqList:self->_pnrReqList];
  [(CTPNRRequestType *)v4 setSessionToken:self->_sessionToken];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  attemptCount = self->_attemptCount;
  v5 = a3;
  [v5 encodeObject:attemptCount forKey:@"attempt_count"];
  [v5 encodeObject:self->_pushToken forKey:@"push_token"];
  [v5 encodeObject:self->_embedded forKey:@"embedded"];
  [v5 encodeObject:self->_pnrReqList forKey:@"pnr_req"];
  [v5 encodeObject:self->_sessionToken forKey:@"session_token"];
}

- (CTPNRRequestType)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CTPNRRequestType;
  v5 = [(CTPNRRequestType *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attempt_count"];
    attemptCount = v5->_attemptCount;
    v5->_attemptCount = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"push_token"];
    pushToken = v5->_pushToken;
    v5->_pushToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embedded"];
    embedded = v5->_embedded;
    v5->_embedded = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"pnr_req"];
    pnrReqList = v5->_pnrReqList;
    v5->_pnrReqList = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session_token"];
    sessionToken = v5->_sessionToken;
    v5->_sessionToken = v17;
  }

  return v5;
}

@end