@interface INExplicitAppTrustCache
- (BOOL)enterpriseAppTrustAllowed;
- (NSArray)managedBundleIdentifiers;
- (NSArray)trustedCodeSigningIdentities;
- (NSSet)signingIdentitiesRequiringExplicitTrust;
@end

@implementation INExplicitAppTrustCache

- (NSArray)managedBundleIdentifiers
{
  if (!self->_loadedManagedBundleIdentifiers)
  {
    v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = [v3 managedAppIDs];
    managedBundleIdentifiers = self->_managedBundleIdentifiers;
    self->_managedBundleIdentifiers = v4;

    self->_loadedManagedBundleIdentifiers = 1;
  }

  v6 = self->_managedBundleIdentifiers;

  return v6;
}

- (NSArray)trustedCodeSigningIdentities
{
  if (!self->_loadedTrustedCodeSigningIdentities)
  {
    v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v4 = [v3 trustedCodeSigningIdentities];
    trustedCodeSigningIdentities = self->_trustedCodeSigningIdentities;
    self->_trustedCodeSigningIdentities = v4;

    self->_loadedTrustedCodeSigningIdentities = 1;
  }

  v6 = self->_trustedCodeSigningIdentities;

  return v6;
}

- (NSSet)signingIdentitiesRequiringExplicitTrust
{
  p_signingIdentitiesRequiringExplicitTrust = &self->_signingIdentitiesRequiringExplicitTrust;
  signingIdentitiesRequiringExplicitTrust = self->_signingIdentitiesRequiringExplicitTrust;
  if (!signingIdentitiesRequiringExplicitTrust)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26998;
    v9 = __Block_byref_object_dispose__26999;
    v10 = [MEMORY[0x1E695DFA8] set];
    MISEnumerateInstalledProvisioningProfiles();
    objc_storeStrong(p_signingIdentitiesRequiringExplicitTrust, v6[5]);
    _Block_object_dispose(&v5, 8);

    signingIdentitiesRequiringExplicitTrust = *p_signingIdentitiesRequiringExplicitTrust;
  }

  return signingIdentitiesRequiringExplicitTrust;
}

uint64_t __66__INExplicitAppTrustCache_signingIdentitiesRequiringExplicitTrust__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  MISProvisioningProfileGetDeveloperCertificates();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = SecCertificateCreateWithData(0, *(*(&v17 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          v8 = SecCertificateCopySubjectSummary(v6);
          if (v8)
          {
            v9 = MISProvisioningProfileProvisionsAllDevices();
            Value = MISProfileGetValue();
            if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFBooleanGetTypeID()))
            {
              v13 = CFBooleanGetValue(v11) != 0;
              if (v9)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v13 = 0;
              if (v9)
              {
                goto LABEL_18;
              }
            }

            if (v13)
            {
LABEL_18:
              [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
              CFRelease(v7);

              goto LABEL_19;
            }
          }

          CFRelease(v7);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)enterpriseAppTrustAllowed
{
  if (!self->_enterpriseAppTrustAllowedLoaded)
  {
    v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
    self->_enterpriseAppTrustAllowed = [v3 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE58]] != 2;

    self->_enterpriseAppTrustAllowedLoaded = 1;
  }

  return self->_enterpriseAppTrustAllowed;
}

@end