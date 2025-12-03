@interface BLSHTapToRadarDescriptor
- (BLSHTapToRadarDescriptor)initWithDesignation:(unint64_t)designation radarTitle:(id)title radarDescription:(id)description;
- (void)setTtrDisplayReason:(id)reason;
@end

@implementation BLSHTapToRadarDescriptor

- (BLSHTapToRadarDescriptor)initWithDesignation:(unint64_t)designation radarTitle:(id)title radarDescription:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  v20.receiver = self;
  v20.super_class = BLSHTapToRadarDescriptor;
  v10 = [(BLSHTapToRadarDescriptor *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_designation = designation;
    if ([titleCopy length] >= 0xF1)
    {
      v12 = [titleCopy substringToIndex:239];

      titleCopy = v12;
    }

    objc_storeStrong(&v11->_radarTitle, titleCopy);
    objc_storeStrong(&v11->_radarDescription, description);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleID = v11->_bundleID;
    v11->_bundleID = bundleIdentifier;

    componentName = v11->_componentName;
    v11->_componentName = @"BacklightServices";

    componentVersion = v11->_componentVersion;
    v11->_componentVersion = @"All";

    v11->_componentID = 1331578;
    ttrPromptHeader = v11->_ttrPromptHeader;
    v11->_ttrPromptHeader = @"Internal Only";
  }

  return v11;
}

- (void)setTtrDisplayReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy length] >= 0x4B)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BLSHTapToRadarDescriptor *)reasonCopy setTtrDisplayReason:v5];
    }

    reasonCopy = 0;
  }

  ttrDisplayReason = self->_ttrDisplayReason;
  self->_ttrDisplayReason = reasonCopy;
}

- (void)setTtrDisplayReason:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "ttrDisplayReason must be < 75 characters: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end