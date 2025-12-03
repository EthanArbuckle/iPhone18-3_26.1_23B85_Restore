@interface HUDConfiguration
+ (id)sharedInstance;
- (HUDConfiguration)init;
- (HUDConfiguration)initWithCoder:(id)coder;
- (HUDConfiguration)initWithRunloopHangTimeoutDurationMSec:(unint64_t)sec thirdPartyDevPreferredLanguages:(id)languages areProcessTerminationsMonitored:(BOOL)monitored processTerminationsFiltering:(id)filtering;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithHUDConfiguration:(id)configuration;
@end

@implementation HUDConfiguration

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F428;
  block[3] = &unk_100030840;
  block[4] = self;
  if (qword_10003E7B8 != -1)
  {
    dispatch_once(&qword_10003E7B8, block);
  }

  v2 = qword_10003E7B0;

  return v2;
}

- (HUDConfiguration)init
{
  thirdPartyDevPreferredLanguages = self->_thirdPartyDevPreferredLanguages;
  self->_runloopHangTimeoutDurationMSec = 9000;
  self->_thirdPartyDevPreferredLanguages = 0;

  self->_areProcessTerminationsMonitored = 0;
  return self;
}

- (HUDConfiguration)initWithRunloopHangTimeoutDurationMSec:(unint64_t)sec thirdPartyDevPreferredLanguages:(id)languages areProcessTerminationsMonitored:(BOOL)monitored processTerminationsFiltering:(id)filtering
{
  languagesCopy = languages;
  filteringCopy = filtering;
  v16.receiver = self;
  v16.super_class = HUDConfiguration;
  v13 = [(HUDConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_runloopHangTimeoutDurationMSec = sec;
    objc_storeStrong(&v13->_thirdPartyDevPreferredLanguages, languages);
    v14->_areProcessTerminationsMonitored = monitored;
    objc_storeStrong(&v14->_processTerminationsFiltering, filtering);
  }

  return v14;
}

- (void)updateWithHUDConfiguration:(id)configuration
{
  configurationCopy = configuration;
  self->_runloopHangTimeoutDurationMSec = [configurationCopy runloopHangTimeoutDurationMSec];
  thirdPartyDevPreferredLanguages = [configurationCopy thirdPartyDevPreferredLanguages];
  thirdPartyDevPreferredLanguages = self->_thirdPartyDevPreferredLanguages;
  self->_thirdPartyDevPreferredLanguages = thirdPartyDevPreferredLanguages;

  self->_areProcessTerminationsMonitored = [configurationCopy areProcessTerminationsMonitored];
  processTerminationsFiltering = [configurationCopy processTerminationsFiltering];

  processTerminationsFiltering = self->_processTerminationsFiltering;
  self->_processTerminationsFiltering = processTerminationsFiltering;
}

- (HUDConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"runloopHangTimeoutDurationMSec"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"thirdPartyDevPreferredLanguages"];
  v7 = [coderCopy decodeBoolForKey:@"areProcessTerminationsMonitored"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processTerminationsFiltering"];

  v9 = [(HUDConfiguration *)self initWithRunloopHangTimeoutDurationMSec:v5 thirdPartyDevPreferredLanguages:v6 areProcessTerminationsMonitored:v7 processTerminationsFiltering:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  runloopHangTimeoutDurationMSec = self->_runloopHangTimeoutDurationMSec;
  coderCopy = coder;
  [coderCopy encodeInt64:runloopHangTimeoutDurationMSec forKey:@"runloopHangTimeoutDurationMSec"];
  [coderCopy encodeObject:self->_thirdPartyDevPreferredLanguages forKey:@"thirdPartyDevPreferredLanguages"];
  [coderCopy encodeBool:self->_areProcessTerminationsMonitored forKey:@"areProcessTerminationsMonitored"];
  [coderCopy encodeObject:self->_processTerminationsFiltering forKey:@"processTerminationsFiltering"];
}

@end