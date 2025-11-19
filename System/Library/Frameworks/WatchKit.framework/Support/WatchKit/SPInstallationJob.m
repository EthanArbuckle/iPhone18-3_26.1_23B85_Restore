@interface SPInstallationJob
+ (id)newDataInstallationJobFromIconsInstallationJob:(id)a3;
+ (id)newIcondsInstallationJobForApplicationID:(id)a3 installerID:(id)a4 idsPriority:(int64_t)a5;
- (id)_initWithApplicationID:(id)a3 installerID:(id)a4 idsPriority:(int64_t)a5 jobType:(int64_t)a6;
- (id)description;
@end

@implementation SPInstallationJob

+ (id)newIcondsInstallationJobForApplicationID:(id)a3 installerID:(id)a4 idsPriority:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[SPInstallationJob alloc] _initWithApplicationID:v8 installerID:v7 idsPriority:a5 jobType:0];

  return v9;
}

+ (id)newDataInstallationJobFromIconsInstallationJob:(id)a3
{
  v3 = a3;
  v4 = [SPInstallationJob alloc];
  v5 = [v3 applicationID];
  v6 = [v3 installer];
  v7 = -[SPInstallationJob _initWithApplicationID:installerID:idsPriority:jobType:](v4, "_initWithApplicationID:installerID:idsPriority:jobType:", v5, v6, [v3 idsPriority], 1);

  v8 = [v3 applicationInstallationInfo];
  [v7 setApplicationInstallationInfo:v8];

  v9 = [v3 completion];

  [v7 setCompletion:v9];
  return v7;
}

- (id)_initWithApplicationID:(id)a3 installerID:(id)a4 idsPriority:(int64_t)a5 jobType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = SPInstallationJob;
  v13 = [(SPInstallationJob *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_applicationID, a3);
    objc_storeStrong(&v14->_installer, a4);
    v14->_idsPriority = a5;
    v14->_jobType = a6;
  }

  return v14;
}

- (id)description
{
  v3 = [(SPInstallationJob *)self applicationID];
  v4 = [(SPInstallationJob *)self installer];
  v5 = [(SPInstallationJob *)self jobType];
  v6 = @"application data";
  if (!v5)
  {
    v6 = @"placeholder";
  }

  v7 = [NSString stringWithFormat:@"Job [%p] for applicationID: %@, installer: %@, type: %@", self, v3, v4, v6];

  return v7;
}

@end