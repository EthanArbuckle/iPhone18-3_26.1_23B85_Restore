@interface CNPRSPosterArchiver
+ (id)archiveCNConfiguration:(id)configuration error:(id *)error;
+ (id)unarchiveCNConfigurationAtURL:(id)l error:(id *)error;
+ (id)unarchiveCNConfigurationFromData:(id)data error:(id *)error;
@end

@implementation CNPRSPosterArchiver

+ (id)unarchiveCNConfigurationFromData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E6996AC0];
  dataCopy = data;
  sharedArchiver = [v5 sharedArchiver];
  v8 = [sharedArchiver unarchiveConfigurationFromData:dataCopy error:error];

  v9 = [CNPRSPosterConfiguration alloc];
  wrappedPosterConfiguration = [v8 wrappedPosterConfiguration];
  v11 = [(CNPRSPosterConfiguration *)v9 initWithPosterConfiguration:wrappedPosterConfiguration];

  return v11;
}

+ (id)unarchiveCNConfigurationAtURL:(id)l error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v13 = 0;
  v6 = [getPRSPosterArchiverClass() unarchiveConfigurationAtURL:lCopy format:-1 error:&v13];

  v7 = v13;
  if (v6)
  {
    v8 = [[CNPRSPosterConfiguration alloc] initWithPosterConfiguration:v6];
  }

  else
  {
    v9 = CNUILogPosters();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v7 localizedDescription];
      *buf = 138412290;
      v15 = localizedDescription;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "PRSPosterArchiver failed to unarchive configuration, %@", buf, 0xCu);
    }

    if (error)
    {
      v10 = v7;
      v8 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)archiveCNConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  PRSPosterArchiverClass = getPRSPosterArchiverClass();
  wrappedPosterConfiguration = [configurationCopy wrappedPosterConfiguration];

  v8 = [PRSPosterArchiverClass archiveConfiguration:wrappedPosterConfiguration format:1 error:error];

  return v8;
}

@end