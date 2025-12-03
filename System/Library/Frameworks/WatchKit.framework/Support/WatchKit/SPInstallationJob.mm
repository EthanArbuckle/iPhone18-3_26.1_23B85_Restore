@interface SPInstallationJob
+ (id)newDataInstallationJobFromIconsInstallationJob:(id)job;
+ (id)newIcondsInstallationJobForApplicationID:(id)d installerID:(id)iD idsPriority:(int64_t)priority;
- (id)_initWithApplicationID:(id)d installerID:(id)iD idsPriority:(int64_t)priority jobType:(int64_t)type;
- (id)description;
@end

@implementation SPInstallationJob

+ (id)newIcondsInstallationJobForApplicationID:(id)d installerID:(id)iD idsPriority:(int64_t)priority
{
  iDCopy = iD;
  dCopy = d;
  v9 = [[SPInstallationJob alloc] _initWithApplicationID:dCopy installerID:iDCopy idsPriority:priority jobType:0];

  return v9;
}

+ (id)newDataInstallationJobFromIconsInstallationJob:(id)job
{
  jobCopy = job;
  v4 = [SPInstallationJob alloc];
  applicationID = [jobCopy applicationID];
  installer = [jobCopy installer];
  v7 = -[SPInstallationJob _initWithApplicationID:installerID:idsPriority:jobType:](v4, "_initWithApplicationID:installerID:idsPriority:jobType:", applicationID, installer, [jobCopy idsPriority], 1);

  applicationInstallationInfo = [jobCopy applicationInstallationInfo];
  [v7 setApplicationInstallationInfo:applicationInstallationInfo];

  completion = [jobCopy completion];

  [v7 setCompletion:completion];
  return v7;
}

- (id)_initWithApplicationID:(id)d installerID:(id)iD idsPriority:(int64_t)priority jobType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = SPInstallationJob;
  v13 = [(SPInstallationJob *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_applicationID, d);
    objc_storeStrong(&v14->_installer, iD);
    v14->_idsPriority = priority;
    v14->_jobType = type;
  }

  return v14;
}

- (id)description
{
  applicationID = [(SPInstallationJob *)self applicationID];
  installer = [(SPInstallationJob *)self installer];
  jobType = [(SPInstallationJob *)self jobType];
  v6 = @"application data";
  if (!jobType)
  {
    v6 = @"placeholder";
  }

  v7 = [NSString stringWithFormat:@"Job [%p] for applicationID: %@, installer: %@, type: %@", self, applicationID, installer, v6];

  return v7;
}

@end