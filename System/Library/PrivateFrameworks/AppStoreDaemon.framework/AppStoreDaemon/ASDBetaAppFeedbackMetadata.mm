@interface ASDBetaAppFeedbackMetadata
- (ASDBetaAppFeedbackMetadata)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDBetaAppFeedbackMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_5;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    incidentID = [(ASDBetaAppFeedbackMetadata *)self incidentID];
    if (incidentID || ([(ASDBetaAppFeedbackMetadata *)equalCopy incidentID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      incidentID2 = [(ASDBetaAppFeedbackMetadata *)self incidentID];
      incidentID3 = [(ASDBetaAppFeedbackMetadata *)equalCopy incidentID];
      v12 = [incidentID2 isEqualToString:incidentID3];

      if (incidentID)
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

    email = [(ASDBetaAppFeedbackMetadata *)self email];
    if (email || ([(ASDBetaAppFeedbackMetadata *)equalCopy email], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      email2 = [(ASDBetaAppFeedbackMetadata *)self email];
      email3 = [(ASDBetaAppFeedbackMetadata *)equalCopy email];
      v16 = [email2 isEqualToString:email3];

      if (email)
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

    version = [(ASDBetaAppFeedbackMetadata *)self version];
    version2 = [(ASDBetaAppFeedbackMetadata *)equalCopy version];
    v7 = [version isEqual:version2];

    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_5:

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  incidentID = self->_incidentID;
  coderCopy = coder;
  [coderCopy encodeObject:incidentID forKey:@"A"];
  [coderCopy encodeObject:self->_email forKey:@"B"];
  [coderCopy encodeObject:self->_version forKey:@"C"];
}

- (ASDBetaAppFeedbackMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDBetaAppFeedbackMetadata;
  v5 = [(ASDBetaAppFeedbackMetadata *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    incidentID = v5->_incidentID;
    v5->_incidentID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    email = v5->_email;
    v5->_email = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    version = v5->_version;
    v5->_version = v10;
  }

  return v5;
}

@end