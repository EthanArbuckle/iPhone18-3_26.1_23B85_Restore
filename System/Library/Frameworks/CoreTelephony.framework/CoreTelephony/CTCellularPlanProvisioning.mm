@interface CTCellularPlanProvisioning
- (BOOL)supportsCellularPlan;
- (CTCellularPlanProvisioning)init;
- (void)addPlanWith:(CTCellularPlanProvisioningRequest *)request completionHandler:(void *)completionHandler;
- (void)addPlanWithRequest:(id)a3 properties:(id)a4 completionHandler:(id)a5;
- (void)updateCellularPlanProperties:(id)a3 completionHandler:(id)a4;
@end

@implementation CTCellularPlanProvisioning

- (CTCellularPlanProvisioning)init
{
  v7.receiver = self;
  v7.super_class = CTCellularPlanProvisioning;
  v2 = [(CTCellularPlanProvisioning *)&v7 init];
  if (v2)
  {
    v3 = [CoreTelephonyClient alloc];
    v4 = [(CoreTelephonyClient *)v3 initWithQueue:MEMORY[0x1E69E96A0]];
    client = v2->_client;
    v2->_client = v4;

    v2->_supportsEmbeddedSIM = [(CoreTelephonyClient *)v2->_client supportsEmbeddedSIM];
  }

  return v2;
}

- (BOOL)supportsCellularPlan
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKey:@"SmdpUrl"];

  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 infoDictionary];
  v8 = [v7 objectForKey:@"IccidPrefix"];

  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 infoDictionary];
  v11 = [v10 objectForKey:@"CarrierDescriptors"];

  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];

  if ([v11 count] < 0x10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v25 = 138413058;
      v26 = v5;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v13;
      v31 = 2048;
      v32 = [v11 count];
      _os_log_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SMDP Url: [%@], Iccid Prefix: [%@], Bundle ID: [%@], Carrier Descriptors count: %lu", &v25, 0x2Au);
    }

    v22 = [(CoreTelephonyClient *)self->_client supportsPlanProvisioning:0 carrierDescriptors:v11 smdpUrl:v5 iccidPrefix:v8 bundleId:v13];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 supportsCellularPlan:v15];
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)addPlanWith:(CTCellularPlanProvisioningRequest *)request completionHandler:(void *)completionHandler
{
  v6 = request;
  v7 = completionHandler;
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 infoDictionary];
  v10 = [v9 objectForKey:@"CFBundleDisplayName"];

  if (v10)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 infoDictionary];
  v10 = [v12 objectForKey:@"CFBundleName"];

  if (v10)
  {
LABEL_3:
    client = self->_client;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__CTCellularPlanProvisioning_addPlanWith_completionHandler___block_invoke;
    v22[3] = &unk_1E6A45E60;
    v23 = v7;
    [(CoreTelephonyClient *)client addPlanWith:v6 appName:v10 appType:0 completionHandler:v22];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 addPlanWith:v15 completionHandler:v16, v17, v18, v19, v20, v21];
    }

    (*(v7 + 2))(v7, 1);
  }
}

- (void)addPlanWithRequest:(id)a3 properties:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 infoDictionary];
  v13 = [v12 objectForKey:@"CFBundleDisplayName"];

  if (v13)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x1E696AAE8] mainBundle];
  v15 = [v14 infoDictionary];
  v13 = [v15 objectForKey:@"CFBundleName"];

  if (v13)
  {
LABEL_3:
    client = self->_client;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__CTCellularPlanProvisioning_addPlanWithRequest_properties_completionHandler___block_invoke;
    v25[3] = &unk_1E6A45E60;
    v26 = v10;
    [(CoreTelephonyClient *)client addPlanWith:v8 appName:v13 appType:0 properties:v9 completionHandler:v25];
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      [(CTCellularPlanProvisioning *)v17 addPlanWith:v18 completionHandler:v19, v20, v21, v22, v23, v24];
    }

    (*(v10 + 2))(v10, 1);
  }
}

- (void)updateCellularPlanProperties:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 infoDictionary];
  v10 = [v9 objectForKey:@"CFBundleDisplayName"];

  if (v10)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 infoDictionary];
  v10 = [v12 objectForKey:@"CFBundleName"];

  if (v10)
  {
LABEL_3:
    client = self->_client;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__CTCellularPlanProvisioning_updateCellularPlanProperties_completionHandler___block_invoke;
    v22[3] = &unk_1E6A43CC8;
    v23 = v7;
    [(CoreTelephonyClient *)client updateCellularPlanProperties:v6 appName:v10 appType:0 completionHandler:v22];
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      [(CTCellularPlanProvisioning *)v14 addPlanWith:v15 completionHandler:v16, v17, v18, v19, v20, v21];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v7 + 2))(v7, v10);
  }
}

@end