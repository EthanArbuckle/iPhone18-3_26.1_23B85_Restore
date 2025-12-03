@interface ASActivitySharingPlugin
- (ASActivitySharingPlugin)init;
- (id)databaseEntitiesForProtectionClass:(int64_t)class;
- (id)extensionForProfile:(id)profile;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class;
- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator;
@end

@implementation ASActivitySharingPlugin

- (ASActivitySharingPlugin)init
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x29EDBE0D8];
  if (os_log_type_enabled(*MEMORY[0x29EDBE0D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29E9F9000, v3, OS_LOG_TYPE_DEFAULT, "Activity Sharing plugin loaded.", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = ASActivitySharingPlugin;
  return [(ASActivitySharingPlugin *)&v5 init];
}

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];
  supportsActivitySharing = [behavior supportsActivitySharing];

  if ((supportsActivitySharing & 1) == 0)
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x29EDBE0D8];
    if (os_log_type_enabled(*MEMORY[0x29EDBE0D8], OS_LOG_TYPE_ERROR))
    {
      sub_29E9FB354(v11);
    }

    goto LABEL_10;
  }

  profileType = [profileCopy profileType];
  ASLoggingInitialize();
  v8 = *MEMORY[0x29EDBE0D8];
  v9 = *MEMORY[0x29EDBE0D8];
  if (profileType != 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_29E9FB398(v8);
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_29E9F9000, v8, OS_LOG_TYPE_DEFAULT, "Health Daemon supports Activity Sharing, creating profile extension.", v13, 2u);
  }

  v10 = [objc_alloc(MEMORY[0x29EDBE178]) initWithProfile:profileCopy];
LABEL_11:

  return v10;
}

- (id)taskServerClasses
{
  v11 = *MEMORY[0x29EDCA608];
  if (ASActivitySharingDaemonEnabled())
  {
    v10 = objc_opt_class();
    v2 = MEMORY[0x29EDB8D80];
    v3 = &v10;
    v4 = 1;
  }

  else
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v2 = MEMORY[0x29EDB8D80];
    v3 = &v8;
    v4 = 2;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v8, v9, v10, v11}];
  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)class
{
  if (class == 2)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (id)databaseEntitiesForProtectionClass:(int64_t)class
{
  v6[2] = *MEMORY[0x29EDCA608];
  if (class == 2)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:2];
  }

  else
  {
    v3 = MEMORY[0x29EDB8E90];
  }

  v4 = *MEMORY[0x29EDCA608];

  return v3;
}

- (void)registerMigrationStepsForProtectionClass:(int64_t)class migrator:(id)migrator
{
  if (class == 2)
  {
    v13[5] = v7;
    v13[6] = v6;
    v13[11] = v4;
    v13[12] = v5;
    v9 = *MEMORY[0x29EDBE0F0];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = sub_29E9FA964;
    v13[3] = &unk_29F3771E8;
    v13[4] = self;
    migratorCopy = migrator;
    [migratorCopy addMigrationForSchema:v9 toVersion:1 foreignKeyStatus:0 handler:v13];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = sub_29E9FAB64;
    v12[3] = &unk_29F3771E8;
    v12[4] = self;
    [migratorCopy addMigrationForSchema:v9 toVersion:2 foreignKeyStatus:0 handler:v12];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = sub_29E9FAD74;
    v11[3] = &unk_29F3771E8;
    v11[4] = self;
    [migratorCopy addMigrationForSchema:v9 toVersion:3 foreignKeyStatus:0 handler:v11];
    [migratorCopy addMigrationForSchema:v9 toVersion:4 foreignKeyStatus:0 handler:&unk_2A2520C80];
    [migratorCopy addMigrationForSchema:v9 toVersion:5 foreignKeyStatus:0 handler:&unk_2A2520CA0];
  }
}

@end