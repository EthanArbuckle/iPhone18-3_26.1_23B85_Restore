@interface CPTripPreviewTextConfiguration
- (CPTripPreviewTextConfiguration)initWithCoder:(id)coder;
- (CPTripPreviewTextConfiguration)initWithStartButtonTitle:(NSString *)startButtonTitle additionalRoutesButtonTitle:(NSString *)additionalRoutesButtonTitle overviewButtonTitle:(NSString *)overviewButtonTitle;
- (void)encodeWithCoder:(id)coder;
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

- (CPTripPreviewTextConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPTripPreviewTextConfiguration;
  v5 = [(CPTripPreviewTextConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationStartButtonTitle"];
    startButtonTitle = v5->_startButtonTitle;
    v5->_startButtonTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationAdditionalRoutesButtonTitle"];
    additionalRoutesButtonTitle = v5->_additionalRoutesButtonTitle;
    v5->_additionalRoutesButtonTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPTripPreviewTextConfigurationOverviewButtonTitle"];
    overviewButtonTitle = v5->_overviewButtonTitle;
    v5->_overviewButtonTitle = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startButtonTitle = [(CPTripPreviewTextConfiguration *)self startButtonTitle];
  [coderCopy encodeObject:startButtonTitle forKey:@"CPTripPreviewTextConfigurationStartButtonTitle"];

  additionalRoutesButtonTitle = [(CPTripPreviewTextConfiguration *)self additionalRoutesButtonTitle];
  [coderCopy encodeObject:additionalRoutesButtonTitle forKey:@"CPTripPreviewTextConfigurationAdditionalRoutesButtonTitle"];

  overviewButtonTitle = [(CPTripPreviewTextConfiguration *)self overviewButtonTitle];
  [coderCopy encodeObject:overviewButtonTitle forKey:@"CPTripPreviewTextConfigurationOverviewButtonTitle"];
}

@end