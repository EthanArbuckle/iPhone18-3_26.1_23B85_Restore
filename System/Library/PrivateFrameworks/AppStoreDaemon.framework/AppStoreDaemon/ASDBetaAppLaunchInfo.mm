@interface ASDBetaAppLaunchInfo
- (ASDBetaAppLaunchInfo)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDBetaAppLaunchInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    artistName = [(ASDBetaAppLaunchInfo *)equalCopy artistName];
    LODWORD(artistName) = [(NSString *)artistName isEqualToString:artistName];

    if (!artistName)
    {
      goto LABEL_16;
    }

    displayNames = self->_displayNames;
    displayNames = [(ASDBetaAppLaunchInfo *)equalCopy displayNames];
    LODWORD(displayNames) = [(ASDBetaAppDisplayNames *)displayNames isEqual:displayNames];

    if (!displayNames)
    {
      goto LABEL_16;
    }

    expirationDate = self->_expirationDate;
    expirationDate = [(ASDBetaAppLaunchInfo *)equalCopy expirationDate];
    LODWORD(expirationDate) = [(NSDate *)expirationDate isEqual:expirationDate];

    if (!expirationDate)
    {
      goto LABEL_16;
    }

    feedbackEnabled = self->_feedbackEnabled;
    if (feedbackEnabled != [(ASDBetaAppLaunchInfo *)equalCopy isFeedbackEnabled])
    {
      goto LABEL_16;
    }

    iconNeedsMask = self->_iconNeedsMask;
    if (iconNeedsMask != [(ASDBetaAppLaunchInfo *)equalCopy iconNeedsMask])
    {
      goto LABEL_16;
    }

    iconURLTemplate = self->_iconURLTemplate;
    iconURLTemplate = [(ASDBetaAppLaunchInfo *)equalCopy iconURLTemplate];
    LODWORD(iconURLTemplate) = [(NSString *)iconURLTemplate isEqualToString:iconURLTemplate];

    if (!iconURLTemplate)
    {
      goto LABEL_16;
    }

    if (self->_lastWelcomeScreenViewDate)
    {
      lastWelcomeScreenViewDate = [(ASDBetaAppLaunchInfo *)equalCopy lastWelcomeScreenViewDate];
      if (lastWelcomeScreenViewDate)
      {
        v17 = lastWelcomeScreenViewDate;
        lastWelcomeScreenViewDate = self->_lastWelcomeScreenViewDate;
        lastWelcomeScreenViewDate2 = [(ASDBetaAppLaunchInfo *)equalCopy lastWelcomeScreenViewDate];
        LODWORD(lastWelcomeScreenViewDate) = [(NSDate *)lastWelcomeScreenViewDate isEqualToDate:lastWelcomeScreenViewDate2];

        if (!lastWelcomeScreenViewDate)
        {
          goto LABEL_16;
        }
      }
    }

    localizedTestNotes = self->_localizedTestNotes;
    localizedTestNotes = [(ASDBetaAppLaunchInfo *)equalCopy localizedTestNotes];
    LODWORD(localizedTestNotes) = [(NSDictionary *)localizedTestNotes isEqual:localizedTestNotes];

    if (!localizedTestNotes)
    {
      goto LABEL_16;
    }

    sharedFeedback = self->_sharedFeedback;
    if (sharedFeedback == [(ASDBetaAppLaunchInfo *)equalCopy hasSharedFeedback]&& (testerEmail = self->_testerEmail, [(ASDBetaAppLaunchInfo *)equalCopy testerEmail], v24 = objc_claimAutoreleasedReturnValue(), LODWORD(testerEmail) = [(NSString *)testerEmail isEqualToString:v24], v24, testerEmail))
    {
      version = self->_version;
      version = [(ASDBetaAppLaunchInfo *)equalCopy version];
      v27 = [(ASDBetaAppVersion *)version isEqual:version];
    }

    else
    {
LABEL_16:
      v27 = 0;
    }
  }

  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  artistName = self->_artistName;
  coderCopy = coder;
  [coderCopy encodeObject:artistName forKey:@"A"];
  [coderCopy encodeObject:self->_displayNames forKey:@"B"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"C"];
  [coderCopy encodeBool:self->_feedbackEnabled forKey:@"D"];
  [coderCopy encodeBool:self->_iconNeedsMask forKey:@"E"];
  [coderCopy encodeObject:self->_iconURLTemplate forKey:@"F"];
  [coderCopy encodeObject:self->_lastWelcomeScreenViewDate forKey:@"L"];
  [coderCopy encodeBool:self->_launchScreenEnabled forKey:@"G"];
  [coderCopy encodeObject:self->_localizedTestNotes forKey:@"J"];
  [coderCopy encodeBool:self->_sharedFeedback forKey:@"H"];
  [coderCopy encodeObject:self->_testerEmail forKey:@"I"];
  [coderCopy encodeObject:self->_version forKey:@"K"];
}

- (ASDBetaAppLaunchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = ASDBetaAppLaunchInfo;
  v5 = [(ASDBetaAppLaunchInfo *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    artistName = v5->_artistName;
    v5->_artistName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    displayNames = v5->_displayNames;
    v5->_displayNames = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v10;

    v5->_feedbackEnabled = [coderCopy decodeBoolForKey:@"D"];
    v5->_iconNeedsMask = [coderCopy decodeBoolForKey:@"E"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    iconURLTemplate = v5->_iconURLTemplate;
    v5->_iconURLTemplate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"L"];
    lastWelcomeScreenViewDate = v5->_lastWelcomeScreenViewDate;
    v5->_lastWelcomeScreenViewDate = v14;

    v5->_launchScreenEnabled = [coderCopy decodeBoolForKey:@"G"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"J"];
    localizedTestNotes = v5->_localizedTestNotes;
    v5->_localizedTestNotes = v19;

    v5->_sharedFeedback = [coderCopy decodeBoolForKey:@"H"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    testerEmail = v5->_testerEmail;
    v5->_testerEmail = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    version = v5->_version;
    v5->_version = v23;
  }

  return v5;
}

@end