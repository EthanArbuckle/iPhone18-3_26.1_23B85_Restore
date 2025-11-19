@interface ASDBetaAppFeedbackMetadata
- (ASDBetaAppFeedbackMetadata)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDBetaAppFeedbackMetadata

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v9 = [(ASDBetaAppFeedbackMetadata *)self incidentID];
    if (v9 || ([(ASDBetaAppFeedbackMetadata *)v5 incidentID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(ASDBetaAppFeedbackMetadata *)self incidentID];
      v11 = [(ASDBetaAppFeedbackMetadata *)v5 incidentID];
      v12 = [v10 isEqualToString:v11];

      if (v9)
      {

        if (!v12)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v12 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v13 = [(ASDBetaAppFeedbackMetadata *)self email];
    if (v13 || ([(ASDBetaAppFeedbackMetadata *)v5 email], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [(ASDBetaAppFeedbackMetadata *)self email];
      v15 = [(ASDBetaAppFeedbackMetadata *)v5 email];
      v16 = [v14 isEqualToString:v15];

      if (v13)
      {

        if (!v16)
        {
          goto LABEL_3;
        }
      }

      else
      {

        if ((v16 & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    v17 = [(ASDBetaAppFeedbackMetadata *)self version];
    v18 = [(ASDBetaAppFeedbackMetadata *)v5 version];
    v7 = [v17 isEqual:v18];

    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_5:

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  incidentID = self->_incidentID;
  v5 = a3;
  [v5 encodeObject:incidentID forKey:@"A"];
  [v5 encodeObject:self->_email forKey:@"B"];
  [v5 encodeObject:self->_version forKey:@"C"];
}

- (ASDBetaAppFeedbackMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDBetaAppFeedbackMetadata;
  v5 = [(ASDBetaAppFeedbackMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    incidentID = v5->_incidentID;
    v5->_incidentID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    email = v5->_email;
    v5->_email = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    version = v5->_version;
    v5->_version = v10;
  }

  return v5;
}

@end