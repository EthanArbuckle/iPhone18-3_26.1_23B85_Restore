@interface CLKDeviceHasNanoRegistryEntitlement
@end

@implementation CLKDeviceHasNanoRegistryEntitlement

void ___CLKDeviceHasNanoRegistryEntitlement_block_invoke()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = xpc_copy_entitlements_for_self();
  v1 = v0;
  if (v0 && MEMORY[0x2383C4E30](v0) == MEMORY[0x277D86468])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    *&applier = MEMORY[0x277D85DD0];
    *(&applier + 1) = 3221225472;
    v22 = ___CLKDeviceEntitlementWithPrefix_block_invoke;
    v23 = &unk_278A1F268;
    v24 = @"com.apple.nano.nanoregistry";
    v25 = &v11;
    v26 = &v15;
    xpc_dictionary_apply(v1, &applier);
    v2 = v16[5];
    v4 = v2;
    v3 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v5 = v2;
  _CLKDeviceHasNanoRegistryEntitlement_hasEntitlement = v3 & 1;
  v6 = CLKLoggingObjectForDomain(0);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v7)
    {
      LODWORD(applier) = 138412290;
      *(&applier + 4) = v5;
      v8 = "Has NanoRegistry entitlement %@";
      v9 = v6;
      v10 = 12;
LABEL_10:
      _os_log_impl(&dword_23702D000, v9, OS_LOG_TYPE_DEFAULT, v8, &applier, v10);
    }
  }

  else if (v7)
  {
    LOWORD(applier) = 0;
    v8 = "Doesn't have NanoRegistry entitlement";
    v9 = v6;
    v10 = 2;
    goto LABEL_10;
  }
}

@end