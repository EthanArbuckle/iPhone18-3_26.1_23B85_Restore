@interface ASDBetaAppLaunchInfo
- (ASDBetaAppLaunchInfo)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDBetaAppLaunchInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v27 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_16;
    }

    artistName = self->_artistName;
    v7 = [(ASDBetaAppLaunchInfo *)v4 artistName];
    LODWORD(artistName) = [(NSString *)artistName isEqualToString:v7];

    if (!artistName)
    {
      goto LABEL_16;
    }

    displayNames = self->_displayNames;
    v9 = [(ASDBetaAppLaunchInfo *)v4 displayNames];
    LODWORD(displayNames) = [(ASDBetaAppDisplayNames *)displayNames isEqual:v9];

    if (!displayNames)
    {
      goto LABEL_16;
    }

    expirationDate = self->_expirationDate;
    v11 = [(ASDBetaAppLaunchInfo *)v4 expirationDate];
    LODWORD(expirationDate) = [(NSDate *)expirationDate isEqual:v11];

    if (!expirationDate)
    {
      goto LABEL_16;
    }

    feedbackEnabled = self->_feedbackEnabled;
    if (feedbackEnabled != [(ASDBetaAppLaunchInfo *)v4 isFeedbackEnabled])
    {
      goto LABEL_16;
    }

    iconNeedsMask = self->_iconNeedsMask;
    if (iconNeedsMask != [(ASDBetaAppLaunchInfo *)v4 iconNeedsMask])
    {
      goto LABEL_16;
    }

    iconURLTemplate = self->_iconURLTemplate;
    v15 = [(ASDBetaAppLaunchInfo *)v4 iconURLTemplate];
    LODWORD(iconURLTemplate) = [(NSString *)iconURLTemplate isEqualToString:v15];

    if (!iconURLTemplate)
    {
      goto LABEL_16;
    }

    if (self->_lastWelcomeScreenViewDate)
    {
      v16 = [(ASDBetaAppLaunchInfo *)v4 lastWelcomeScreenViewDate];
      if (v16)
      {
        v17 = v16;
        lastWelcomeScreenViewDate = self->_lastWelcomeScreenViewDate;
        v19 = [(ASDBetaAppLaunchInfo *)v4 lastWelcomeScreenViewDate];
        LODWORD(lastWelcomeScreenViewDate) = [(NSDate *)lastWelcomeScreenViewDate isEqualToDate:v19];

        if (!lastWelcomeScreenViewDate)
        {
          goto LABEL_16;
        }
      }
    }

    localizedTestNotes = self->_localizedTestNotes;
    v21 = [(ASDBetaAppLaunchInfo *)v4 localizedTestNotes];
    LODWORD(localizedTestNotes) = [(NSDictionary *)localizedTestNotes isEqual:v21];

    if (!localizedTestNotes)
    {
      goto LABEL_16;
    }

    sharedFeedback = self->_sharedFeedback;
    if (sharedFeedback == [(ASDBetaAppLaunchInfo *)v4 hasSharedFeedback]&& (testerEmail = self->_testerEmail, [(ASDBetaAppLaunchInfo *)v4 testerEmail], v24 = objc_claimAutoreleasedReturnValue(), LODWORD(testerEmail) = [(NSString *)testerEmail isEqualToString:v24], v24, testerEmail))
    {
      version = self->_version;
      v26 = [(ASDBetaAppLaunchInfo *)v4 version];
      v27 = [(ASDBetaAppVersion *)version isEqual:v26];
    }

    else
    {
LABEL_16:
      v27 = 0;
    }
  }

  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  artistName = self->_artistName;
  v5 = a3;
  [v5 encodeObject:artistName forKey:@"A"];
  [v5 encodeObject:self->_displayNames forKey:@"B"];
  [v5 encodeObject:self->_expirationDate forKey:@"C"];
  [v5 encodeBool:self->_feedbackEnabled forKey:@"D"];
  [v5 encodeBool:self->_iconNeedsMask forKey:@"E"];
  [v5 encodeObject:self->_iconURLTemplate forKey:@"F"];
  [v5 encodeObject:self->_lastWelcomeScreenViewDate forKey:@"L"];
  [v5 encodeBool:self->_launchScreenEnabled forKey:@"G"];
  [v5 encodeObject:self->_localizedTestNotes forKey:@"J"];
  [v5 encodeBool:self->_sharedFeedback forKey:@"H"];
  [v5 encodeObject:self->_testerEmail forKey:@"I"];
  [v5 encodeObject:self->_version forKey:@"K"];
}

- (ASDBetaAppLaunchInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ASDBetaAppLaunchInfo;
  v5 = [(ASDBetaAppLaunchInfo *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    artistName = v5->_artistName;
    v5->_artistName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    displayNames = v5->_displayNames;
    v5->_displayNames = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v5->_feedbackEnabled = [v4 decodeBoolForKey:@"D"];
    v5->_iconNeedsMask = [v4 decodeBoolForKey:@"E"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    iconURLTemplate = v5->_iconURLTemplate;
    v5->_iconURLTemplate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"L"];
    lastWelcomeScreenViewDate = v5->_lastWelcomeScreenViewDate;
    v5->_lastWelcomeScreenViewDate = v14;

    v5->_launchScreenEnabled = [v4 decodeBoolForKey:@"G"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"J"];
    localizedTestNotes = v5->_localizedTestNotes;
    v5->_localizedTestNotes = v19;

    v5->_sharedFeedback = [v4 decodeBoolForKey:@"H"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    testerEmail = v5->_testerEmail;
    v5->_testerEmail = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    version = v5->_version;
    v5->_version = v23;
  }

  return v5;
}

@end