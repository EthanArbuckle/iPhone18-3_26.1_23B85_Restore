@interface OSSystemExtensionsWorkspace
+ (OSSystemExtensionsWorkspace)sharedWorkspace;
- (OSSystemExtensionsWorkspace)init;
- (id)systemExtensionsForApplicationWithBundleID:(id)d error:(id *)error;
@end

@implementation OSSystemExtensionsWorkspace

- (OSSystemExtensionsWorkspace)init
{
  v3.receiver = self;
  v3.super_class = OSSystemExtensionsWorkspace;
  return [(OSSystemExtensionsWorkspace *)&v3 init];
}

+ (OSSystemExtensionsWorkspace)sharedWorkspace
{
  if (sharedWorkspace_onceToken != -1)
  {
    +[OSSystemExtensionsWorkspace sharedWorkspace];
  }

  v3 = sharedWorkspace_workspace;

  return v3;
}

uint64_t __46__OSSystemExtensionsWorkspace_sharedWorkspace__block_invoke()
{
  sharedWorkspace_workspace = objc_alloc_init(OSSystemExtensionsWorkspace);

  return MEMORY[0x2821F96F8]();
}

- (id)systemExtensionsForApplicationWithBundleID:(id)d error:(id *)error
{
  v61[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  error = 0;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:dCopy];

  if ((v8 & 1) == 0)
  {
    v29 = MEMORY[0x277CCA9B8];
    v60 = *MEMORY[0x277CCA450];
    v61[0] = @"Apps can only query for system extensions embedded within them";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v28 = [v29 errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:v30];

LABEL_19:
    v12 = 0;
    v10 = 0;
LABEL_20:
    obj = 0;
    v16 = 0;
    goto LABEL_21;
  }

  v9 = SecTaskCreateFromSelf(0);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [OSSystemExtensionsWorkspace systemExtensionsForApplicationWithBundleID:error:];
    }

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:0];
    goto LABEL_19;
  }

  v10 = v9;
  v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.system-extension.install", &error);
  if (!v11)
  {
    errorCopy = error;
    if (error)
    {
      [(__CFError *)error localizedDescription];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing the %@ entitlement", @"com.apple.developer.system-extension.install"];
    }
    v38 = ;
    v39 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59 = v38;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v28 = [v39 errorWithDomain:@"OSSystemExtensionErrorDomain" code:2 userInfo:v40];

    v12 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 != CFBooleanGetTypeID() || !CFBooleanGetValue(v12))
  {
    v35 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57 = @"Require com.apple.developer.system-extension.install:true in entitlement";
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v28 = [v35 errorWithDomain:@"OSSystemExtensionErrorDomain" code:2 userInfo:v36];

    goto LABEL_20;
  }

  mEMORY[0x277D06988] = [MEMORY[0x277D06988] sharedManager];
  v15 = [mEMORY[0x277D06988] driverApprovalStatesForThirdPartyApp:dCopy];

  if (!v15)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DriverManagement returned nil for %@", dCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [OSSystemExtensionsWorkspace systemExtensionsForApplicationWithBundleID:dCopy error:?];
    }

    v42 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55 = dCopy;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v28 = [v42 errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:v43];

    goto LABEL_20;
  }

  v44 = v10;
  errorCopy2 = error;
  v46 = dCopy;
  v16 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        v22 = [OSSystemExtensionProperties alloc];
        bundleIdentifier2 = [v21 bundleIdentifier];
        driverIsApproved = [v21 driverIsApproved];
        displayName = [v21 displayName];
        usageText = [v21 usageText];
        v27 = [(OSSystemExtensionProperties *)v22 initWithBundleIdentifier:bundleIdentifier2 isEnabled:driverIsApproved displayName:displayName usageDescription:usageText];

        [v16 addObject:v27];
      }

      v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v18);
  }

  v28 = 0;
  error = errorCopy2;
  dCopy = v46;
  v10 = v44;
LABEL_21:
  if (error && !v16)
  {
    v31 = v28;
    *error = v28;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v32 = [v16 copy];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)systemExtensionsForApplicationWithBundleID:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23AAC5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end