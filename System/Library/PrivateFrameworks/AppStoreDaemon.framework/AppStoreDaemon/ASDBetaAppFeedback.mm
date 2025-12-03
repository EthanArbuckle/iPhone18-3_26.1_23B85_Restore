@interface ASDBetaAppFeedback
- (ASDBetaAppFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDBetaAppFeedback

- (void)encodeWithCoder:(id)coder
{
  comments = self->_comments;
  coderCopy = coder;
  [coderCopy encodeObject:comments forKey:@"A"];
  [coderCopy encodeObject:self->_email forKey:@"B"];
  [coderCopy encodeObject:self->_imagesData forKey:@"C"];
  [coderCopy encodeObject:self->_incidentID forKey:@"D"];
  [coderCopy encodeInt64:self->_timestamp forKey:@"E"];
  [coderCopy encodeObject:self->_bundleID forKey:@"F"];
  [coderCopy encodeInt64:self->_appUptime forKey:@"H"];
  [coderCopy encodeObject:self->_appVersion forKey:@"I"];
  [coderCopy encodeObject:self->_pairedWatchModel forKey:@"J"];
  [coderCopy encodeObject:self->_pairedWatchOSVersion forKey:@"K"];
  [coderCopy encodeObject:self->_architecture forKey:@"L"];
  [coderCopy encodeInt32:self->_batteryPercentage forKey:@"M"];
  [coderCopy encodeObject:self->_carrier forKey:@"N"];
  [coderCopy encodeObject:self->_cellularNetworkType forKey:@"O"];
  [coderCopy encodeObject:self->_deviceType forKey:@"P"];
  [coderCopy encodeInt64:self->_diskAvailable forKey:@"Q"];
  [coderCopy encodeInt64:self->_diskTotal forKey:@"R"];
  [coderCopy encodeObject:self->_locale forKey:@"S"];
  [coderCopy encodeObject:self->_networkConnectionType forKey:@"T"];
  [coderCopy encodeObject:self->_osVersion forKey:@"U"];
  [coderCopy encodeInt32:self->_screenHeight forKey:@"V"];
  [coderCopy encodeInt32:self->_screenWidth forKey:@"W"];
  [coderCopy encodeObject:self->_timeZone forKey:@"X"];
}

- (ASDBetaAppFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = ASDBetaAppFeedback;
  v5 = [(ASDBetaAppFeedback *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    comments = v5->_comments;
    v5->_comments = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    email = v5->_email;
    v5->_email = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"C"];
    imagesData = v5->_imagesData;
    v5->_imagesData = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    incidentID = v5->_incidentID;
    v5->_incidentID = v15;

    v5->_timestamp = [coderCopy decodeInt64ForKey:@"E"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v5->_appUptime = [coderCopy decodeInt64ForKey:@"H"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    appVersion = v5->_appVersion;
    v5->_appVersion = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"J"];
    pairedWatchModel = v5->_pairedWatchModel;
    v5->_pairedWatchModel = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    pairedWatchOSVersion = v5->_pairedWatchOSVersion;
    v5->_pairedWatchOSVersion = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"L"];
    architecture = v5->_architecture;
    v5->_architecture = v25;

    v5->_batteryPercentage = [coderCopy decodeInt32ForKey:@"M"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    carrier = v5->_carrier;
    v5->_carrier = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"O"];
    cellularNetworkType = v5->_cellularNetworkType;
    v5->_cellularNetworkType = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"P"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v31;

    v5->_diskAvailable = [coderCopy decodeInt64ForKey:@"Q"];
    v5->_diskTotal = [coderCopy decodeInt64ForKey:@"R"];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    locale = v5->_locale;
    v5->_locale = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    networkConnectionType = v5->_networkConnectionType;
    v5->_networkConnectionType = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"U"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v37;

    v5->_screenHeight = [coderCopy decodeInt32ForKey:@"V"];
    v5->_screenWidth = [coderCopy decodeInt32ForKey:@"W"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"X"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v39;
  }

  return v5;
}

@end