@interface ASDBetaAppFeedback
- (ASDBetaAppFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDBetaAppFeedback

- (void)encodeWithCoder:(id)a3
{
  comments = self->_comments;
  v5 = a3;
  [v5 encodeObject:comments forKey:@"A"];
  [v5 encodeObject:self->_email forKey:@"B"];
  [v5 encodeObject:self->_imagesData forKey:@"C"];
  [v5 encodeObject:self->_incidentID forKey:@"D"];
  [v5 encodeInt64:self->_timestamp forKey:@"E"];
  [v5 encodeObject:self->_bundleID forKey:@"F"];
  [v5 encodeInt64:self->_appUptime forKey:@"H"];
  [v5 encodeObject:self->_appVersion forKey:@"I"];
  [v5 encodeObject:self->_pairedWatchModel forKey:@"J"];
  [v5 encodeObject:self->_pairedWatchOSVersion forKey:@"K"];
  [v5 encodeObject:self->_architecture forKey:@"L"];
  [v5 encodeInt32:self->_batteryPercentage forKey:@"M"];
  [v5 encodeObject:self->_carrier forKey:@"N"];
  [v5 encodeObject:self->_cellularNetworkType forKey:@"O"];
  [v5 encodeObject:self->_deviceType forKey:@"P"];
  [v5 encodeInt64:self->_diskAvailable forKey:@"Q"];
  [v5 encodeInt64:self->_diskTotal forKey:@"R"];
  [v5 encodeObject:self->_locale forKey:@"S"];
  [v5 encodeObject:self->_networkConnectionType forKey:@"T"];
  [v5 encodeObject:self->_osVersion forKey:@"U"];
  [v5 encodeInt32:self->_screenHeight forKey:@"V"];
  [v5 encodeInt32:self->_screenWidth forKey:@"W"];
  [v5 encodeObject:self->_timeZone forKey:@"X"];
}

- (ASDBetaAppFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = ASDBetaAppFeedback;
  v5 = [(ASDBetaAppFeedback *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    comments = v5->_comments;
    v5->_comments = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    email = v5->_email;
    v5->_email = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"C"];
    imagesData = v5->_imagesData;
    v5->_imagesData = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    incidentID = v5->_incidentID;
    v5->_incidentID = v15;

    v5->_timestamp = [v4 decodeInt64ForKey:@"E"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v17;

    v5->_appUptime = [v4 decodeInt64ForKey:@"H"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    appVersion = v5->_appVersion;
    v5->_appVersion = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"J"];
    pairedWatchModel = v5->_pairedWatchModel;
    v5->_pairedWatchModel = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    pairedWatchOSVersion = v5->_pairedWatchOSVersion;
    v5->_pairedWatchOSVersion = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"L"];
    architecture = v5->_architecture;
    v5->_architecture = v25;

    v5->_batteryPercentage = [v4 decodeInt32ForKey:@"M"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    carrier = v5->_carrier;
    v5->_carrier = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"O"];
    cellularNetworkType = v5->_cellularNetworkType;
    v5->_cellularNetworkType = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"P"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v31;

    v5->_diskAvailable = [v4 decodeInt64ForKey:@"Q"];
    v5->_diskTotal = [v4 decodeInt64ForKey:@"R"];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    locale = v5->_locale;
    v5->_locale = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    networkConnectionType = v5->_networkConnectionType;
    v5->_networkConnectionType = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"U"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v37;

    v5->_screenHeight = [v4 decodeInt32ForKey:@"V"];
    v5->_screenWidth = [v4 decodeInt32ForKey:@"W"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"X"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v39;
  }

  return v5;
}

@end