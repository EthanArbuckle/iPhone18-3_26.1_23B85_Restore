@interface ENExposureNotification
- (ENExposureNotification)initWithCoder:(id)a3;
- (NSDate)date;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENExposureNotification

- (ENExposureNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ENExposureNotification *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classification"];
    classification = v5->_classification;
    v5->_classification = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    legacyDate = v5->_legacyDate;
    v5->_legacyDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 copy];
      identifier = v5->_identifier;
      v5->_identifier = v12;

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnMoreURL"];
      learnMoreURL = v5->_learnMoreURL;
      v5->_learnMoreURL = v14;

      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textBody"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 copy];
        localizedBodyText = v5->_localizedBodyText;
        v5->_localizedBodyText = v18;

        v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailsTextBody"];
        localizedDetailBodyText = v5->_localizedDetailBodyText;
        v5->_localizedDetailBodyText = v20;

        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textSubject"];
        v23 = v22;
        if (v22 && ((v24 = [v22 copy], localizedSubjectText = v5->_localizedSubjectText, v5->_localizedSubjectText = v24, localizedSubjectText, objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"notificationDate"), (v26 = objc_claimAutoreleasedReturnValue()) != 0) || (v26 = v5->_legacyDate) != 0))
        {
          v27 = v26;
          v28 = [(NSDate *)v26 copy];
          notificationDate = v5->_notificationDate;
          v5->_notificationDate = v28;

          v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
          if (v30)
          {
            objc_storeStrong(&v5->_region, v30);
            v5->_revoked = [v4 decodeBoolForKey:@"revoked"];
            v31 = v5;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (NSDate)date
{
  v3 = self->_legacyDate;
  if (!v3)
  {
    v3 = [(ENExposureClassification *)self->_classification date];
    if (!v3)
    {
      v3 = self->_notificationDate;
    }
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  classification = self->_classification;
  v5 = a3;
  [v5 encodeObject:classification forKey:@"classification"];
  [v5 encodeObject:self->_identifier forKey:@"id"];
  [v5 encodeObject:self->_learnMoreURL forKey:@"learnMoreURL"];
  [v5 encodeObject:self->_localizedBodyText forKey:@"textBody"];
  [v5 encodeObject:self->_localizedDetailBodyText forKey:@"detailsTextBody"];
  [v5 encodeObject:self->_localizedSubjectText forKey:@"textSubject"];
  [v5 encodeObject:self->_notificationDate forKey:@"notificationDate"];
  [v5 encodeObject:self->_region forKey:@"reg"];
  [v5 encodeBool:self->_revoked forKey:@"revoked"];
}

@end