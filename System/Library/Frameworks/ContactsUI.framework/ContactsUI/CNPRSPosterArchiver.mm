@interface CNPRSPosterArchiver
+ (id)archiveCNConfiguration:(id)a3 error:(id *)a4;
+ (id)unarchiveCNConfigurationAtURL:(id)a3 error:(id *)a4;
+ (id)unarchiveCNConfigurationFromData:(id)a3 error:(id *)a4;
@end

@implementation CNPRSPosterArchiver

+ (id)unarchiveCNConfigurationFromData:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E6996AC0];
  v6 = a3;
  v7 = [v5 sharedArchiver];
  v8 = [v7 unarchiveConfigurationFromData:v6 error:a4];

  v9 = [CNPRSPosterConfiguration alloc];
  v10 = [v8 wrappedPosterConfiguration];
  v11 = [(CNPRSPosterConfiguration *)v9 initWithPosterConfiguration:v10];

  return v11;
}

+ (id)unarchiveCNConfigurationAtURL:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0;
  v6 = [getPRSPosterArchiverClass() unarchiveConfigurationAtURL:v5 format:-1 error:&v13];

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
      v12 = [v7 localizedDescription];
      *buf = 138412290;
      v15 = v12;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "PRSPosterArchiver failed to unarchive configuration, %@", buf, 0xCu);
    }

    if (a4)
    {
      v10 = v7;
      v8 = 0;
      *a4 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)archiveCNConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
  PRSPosterArchiverClass = getPRSPosterArchiverClass();
  v7 = [v5 wrappedPosterConfiguration];

  v8 = [PRSPosterArchiverClass archiveConfiguration:v7 format:1 error:a4];

  return v8;
}

@end