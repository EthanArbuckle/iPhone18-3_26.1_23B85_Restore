@interface BLSHTapToRadarDescriptor
- (BLSHTapToRadarDescriptor)initWithDesignation:(unint64_t)a3 radarTitle:(id)a4 radarDescription:(id)a5;
- (void)setTtrDisplayReason:(id)a3;
@end

@implementation BLSHTapToRadarDescriptor

- (BLSHTapToRadarDescriptor)initWithDesignation:(unint64_t)a3 radarTitle:(id)a4 radarDescription:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = BLSHTapToRadarDescriptor;
  v10 = [(BLSHTapToRadarDescriptor *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_designation = a3;
    if ([v8 length] >= 0xF1)
    {
      v12 = [v8 substringToIndex:239];

      v8 = v12;
    }

    objc_storeStrong(&v11->_radarTitle, v8);
    objc_storeStrong(&v11->_radarDescription, a5);
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];
    bundleID = v11->_bundleID;
    v11->_bundleID = v14;

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

- (void)setTtrDisplayReason:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 0x4B)
  {
    v5 = bls_backlight_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(BLSHTapToRadarDescriptor *)v4 setTtrDisplayReason:v5];
    }

    v4 = 0;
  }

  ttrDisplayReason = self->_ttrDisplayReason;
  self->_ttrDisplayReason = v4;
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