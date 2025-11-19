@interface HKEntitlements
@end

@implementation HKEntitlements

void __67___HKEntitlements__containerAppExtensionEntitlementsForCurrentTask__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    _HKInitializeLogging();
    v7 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __67___HKEntitlements__containerAppExtensionEntitlementsForCurrentTask__block_invoke_cold_1(v6, v7);
    }
  }

  v8 = [v5 copy];
  v9 = _containerAppExtensionEntitlementsForCurrentTask_currentTaskEntitlements;
  _containerAppExtensionEntitlementsForCurrentTask_currentTaskEntitlements = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42___HKEntitlements__allowedEntitlementsSet__block_invoke()
{
  v5[48] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5[0] = @"com.apple.private.healthkit.analytics-agreements.control";
  v5[1] = @"com.apple.private.healthkit.os_version";
  v5[2] = @"application-identifier";
  v5[3] = @"com.apple.private.healthkit.authorization_bypass";
  v5[4] = @"com.apple.private.healthkit.authorization_manager";
  v5[5] = @"com.apple.private.healthkit.background-workout-start";
  v5[6] = @"com.apple.private.healthkit.contributor";
  v5[7] = @"com.apple.private.healthkit.hkctl";
  v5[8] = @"com.apple.private.healthkit.source.default";
  v5[9] = @"com.apple.private.healthkit.feature-availability.read";
  v5[10] = @"com.apple.private.healthkit.feature-availability.read-any";
  v5[11] = @"com.apple.private.healthkit.feature-availability.read-write";
  v5[12] = @"com.apple.private.healthkit.feature-availability.read-write-any";
  v5[13] = @"com.apple.private.healthkit.health-app-source";
  v5[14] = @"com.apple.developer.healthkit.access";
  v5[15] = @"com.apple.developer.healthkit";
  v5[16] = @"com.apple.developer.healthkit.background-delivery";
  v5[17] = @"com.apple.developer.healthkit.recalibrate-estimates";
  v5[18] = @"com.apple.private.healthkit.healthlite";
  v5[19] = @"com.apple.private.healthkit.healthrecords.account-info";
  v5[20] = @"com.apple.private.healthkit.heartbeat-series-feature-status.read-only";
  v5[21] = @"com.apple.private.healthkit.key-value.protected-local.read-write";
  v5[22] = @"com.apple.private.healthkit.key-value.protected-ubiquitous.read-write";
  v5[23] = @"com.apple.private.healthkit.key-value.ubiquitous.read-write";
  v5[24] = @"com.apple.private.healthkit.source_override";
  v5[25] = @"com.apple.private.healthkit.local-device-source";
  v5[26] = @"com.apple.private.healthkit.medicaliddata";
  v5[27] = @"com.apple.private.healthkit.medication-doseEvent.read-write";
  v5[28] = @"com.apple.private.healthkit.menstrual-cycles-diagnostics";
  v5[29] = @"com.apple.private.healthkit.mobility-walking-steadiness-feature-status.read-only";
  v5[30] = @"com.apple.developer.healthkit.nikefuel-source";
  v5[31] = @"com.apple.private.healthkit.notification-sync.read-write";
  v5[32] = @"com.apple.private.healthkit.obliteration";
  v5[33] = @"com.apple.private.healthkit.preferred_source";
  v5[34] = @"com.apple.private.healthkit.attachments";
  v5[35] = @"com.apple.private.healthkit.access";
  v5[36] = @"com.apple.private.healthkit";
  v5[37] = @"com.apple.private.healthkit.metadata.private";
  v5[38] = @"com.apple.private.healthkit.sync";
  v5[39] = @"com.apple.private.healthkit.read_authorization_bypass";
  v5[40] = @"com.apple.private.healthkit.read_authorization_override";
  v5[41] = @"com.apple.private.healthkit.source.research-study";
  v5[42] = @"com.apple.private.healthkit.skip-insertion-filter";
  v5[43] = @"com.apple.private.healthkit.source.creation";
  v5[44] = @"com.apple.private.healthkit.source.identities";
  v5[45] = @"com.apple.private.healthkit.source.owner";
  v5[46] = @"com.apple.private.healthkit.write_authorization_override";
  v5[47] = @"com.apple.private.healthkit.database-accessibility-assertion";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:48];
  v2 = [v0 initWithArray:v1];
  v3 = _allowedEntitlementsSet_entitlementKeySet;
  _allowedEntitlementsSet_entitlementKeySet = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __67___HKEntitlements__containerAppExtensionEntitlementsForCurrentTask__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "fetchContainerAppExtensionEntitlementsWithCompletion: failed with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end