@interface CPTripPreviewTextConfiguration
- (CPTripPreviewTextConfiguration)initWithCoder:(id)a3;
- (CPTripPreviewTextConfiguration)initWithStartButtonTitle:(NSString *)startButtonTitle additionalRoutesButtonTitle:(NSString *)additionalRoutesButtonTitle overviewButtonTitle:(NSString *)overviewButtonTitle;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPTripPreviewTextConfiguration

- (CPTripPreviewTextConfiguration)initWithStartButtonTitle:(NSString *)startButtonTitle additionalRoutesButtonTitle:(NSString *)additionalRoutesButtonTitle overviewButtonTitle:(NSString *)overviewButtonTitle
{
  v9 = startButtonTitle;
  v10 = additionalRoutesButtonTitle;
  v11 = overviewButtonTitle;
  v15.receiver = self;
  v15.super_class = CPTripPreviewTextConfiguration;
  v12 = [(CPTripPreviewTextConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_startButtonTitle, startButtonTitle);
    objc_storeStrong(&v13->_additionalRoutesButtonTitle, additionalRoutesButtonTitle);
    objc_storeStrong(&v13->_overviewButtonTitle, overviewButtonTitle);
  }

  return v13;
}

- (CPTripPreviewTextConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPTripPreviewTextConfiguration;
  v5 = [(CPTripPreviewTextConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationStartButtonTitle"];
    startButtonTitle = v5->_startButtonTitle;
    v5->_startButtonTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationAdditionalRoutesButtonTitle"];
    additionalRoutesButtonTitle = v5->_additionalRoutesButtonTitle;
    v5->_additionalRoutesButtonTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationOverviewButtonTitle"];
    overviewButtonTitle = v5->_overviewButtonTitle;
    v5->_overviewButtonTitle = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPTripPreviewTextConfiguration *)self startButtonTitle];
  [v4 encodeObject:v5 forKey:@"CPTripPreviewTextConfigurationStartButtonTitle"];

  v6 = [(CPTripPreviewTextConfiguration *)self additionalRoutesButtonTitle];
  [v4 encodeObject:v6 forKey:@"CPTripPreviewTextConfigurationAdditionalRoutesButtonTitle"];

  v7 = [(CPTripPreviewTextConfiguration *)self overviewButtonTitle];
  [v4 encodeObject:v7 forKey:@"CPTripPreviewTextConfigurationOverviewButtonTitle"];
}

@end