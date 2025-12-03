@interface AAFAnalyticsEvent(AuthKit)
+ (id)ak_analyticsEventWithContext:()AuthKit client:eventName:error:;
+ (id)ak_analyticsEventWithContext:()AuthKit eventName:error:;
+ (id)ak_analyticsEventWithEventName:()AuthKit account:error:;
+ (id)ak_analyticsEventWithEventName:()AuthKit error:;
+ (id)ak_analyticsEventWithRUITelemetryElement:()AuthKit eventName:error:;
+ (id)encodedURLWithPrefix:()AuthKit url:;
+ (uint64_t)elementIndex:()AuthKit;
+ (void)encodeElementNameWithIndexPostFix:()AuthKit prefix:element:activeElements:;
+ (void)encodedElementNameWithDomainPrefix:()AuthKit element:activeElements:;
- (void)ak_updateTelemetryIdWithAccount:()AuthKit;
- (void)ak_updateWithAuthenticationResults:()AuthKit authContext:error:;
@end

@implementation AAFAnalyticsEvent(AuthKit)

+ (id)ak_analyticsEventWithEventName:()AuthKit error:
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [(AKAccountManager *)v8 primaryAuthKitAccount];
  v6 = [selfCopy ak_analyticsEventWithEventName:location[0] account:primaryAuthKitAccount error:v9];
  objc_storeStrong(&primaryAuthKitAccount, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)ak_analyticsEventWithEventName:()AuthKit account:error:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = objc_alloc(MEMORY[0x1E6985DB0]);
  v10 = [v5 initWithEventName:location[0] eventCategory:0x1F07B4E98 initData:0];
  if (v11)
  {
    [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
  }

  else
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
  }

  [v10 populateUnderlyingErrorsStartingWithRootError:v11];
  [v10 ak_updateTelemetryIdWithAccount:v12];
  v7 = MEMORY[0x1E69E5928](v10);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)ak_updateTelemetryIdWithAccount:()AuthKit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if (location[0])
  {
    v5 = [selfCopy objectForKeyedSubscript:*MEMORY[0x1E6985E38]];
    MEMORY[0x1E69E5920](v5);
    if (!v5)
    {
      v8 = +[AKAccountManager sharedInstance];
      v4 = [(AKAccountManager *)v8 telemetryDeviceSessionIDForAccount:location[0]];
      v3 = *MEMORY[0x1E6985E38];
      [selfCopy setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v4);
      objc_storeStrong(&v8, 0);
    }

    v9 = 0;
  }

  else
  {
    v12 = _AKLogSystem();
    v11 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_debug_impl(&dword_193225000, log, type, "Not updating analytics event with nil account", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    v9 = 1;
  }

  objc_storeStrong(location, 0);
}

+ (id)ak_analyticsEventWithContext:()AuthKit eventName:error:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = [location[0] authKitAccount:0];
  v17 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:v20 account:v18 error:v19];
  telemetryFlowID = [location[0] telemetryFlowID];
  MEMORY[0x1E69E5920](telemetryFlowID);
  if (!telemetryFlowID)
  {
    v16 = _AKLogSystem();
    v15 = 2;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_debug_impl(&dword_193225000, log, type, "Received nil flowId in AKAppleIDAuthenticationContext", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
  }

  telemetryFlowID2 = [location[0] telemetryFlowID];
  v5 = *MEMORY[0x1E6985E50];
  [v17 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](telemetryFlowID2);
  v8 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)ak_analyticsEventWithContext:()AuthKit client:eventName:error:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v12 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithContext:location[0] eventName:v14 error:v13];
  name = [v15 name];
  [v12 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](name);
  v11 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (void)ak_updateWithAuthenticationResults:()AuthKit authContext:error:
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = 0;
  v14 = 0;
  v10 = [v18 authKitAccount:&v14];
  objc_storeStrong(&v16, v14);
  v15 = v10;
  if (!v10 || v16)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v21, v17);
      _os_log_debug_impl(&dword_193225000, v13, v12, "Error getting account from context during auth for telemetry: %@", v21, 0xCu);
    }

    objc_storeStrong(&v13, 0);
  }

  telemetryFlowID = [v18 telemetryFlowID];
  v5 = *MEMORY[0x1E6985E50];
  [selfCopy setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](telemetryFlowID);
  [selfCopy ak_updateTelemetryIdWithAccount:v15];
  if (location[0])
  {
    [selfCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
  }

  else
  {
    [selfCopy setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    [selfCopy populateUnderlyingErrorsStartingWithRootError:v17];
  }

  v11 = +[AKAccountManager sharedInstance];
  if (v15)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "securityLevelForAccount:", v15)}];
    [selfCopy setObject:? forKeyedSubscript:?];
    MEMORY[0x1E69E5920](v6);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (id)encodedURLWithPrefix:()AuthKit url:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  if (v13 && (v10 = [v13 host], MEMORY[0x1E69E5920](v10), v10))
  {
    pathComponents = [v13 pathComponents];
    v12 = [pathComponents mutableCopy];
    MEMORY[0x1E69E5920](pathComponents);
    if ([v12 count] <= 1)
    {
      v15 = MEMORY[0x1E69E5928](location[0]);
    }

    else
    {
      [v12 removeObjectAtIndex:0];
      v7 = MEMORY[0x1E696AEC0];
      v6 = location[0];
      v8 = [v12 componentsJoinedByString:@"_"];
      v15 = [v7 stringWithFormat:@"%@%@%@", v6, @".", v8];
      MEMORY[0x1E69E5920](v8);
    }

    objc_storeStrong(&v12, 0);
  }

  else
  {
    v15 = MEMORY[0x1E69E5928](&stru_1F0781300);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  v4 = v15;

  return v4;
}

+ (void)encodeElementNameWithIndexPostFix:()AuthKit prefix:element:activeElements:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v45 = 0;
  objc_storeStrong(&v45, a4);
  v44 = 0;
  objc_storeStrong(&v44, a5);
  v43 = 0;
  objc_storeStrong(&v43, a6);
  v42 = 0;
  children = [v44 children];
  v30 = [children count];
  MEMORY[0x1E69E5920](children);
  if (v30)
  {
    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    children2 = [v44 children];
    v31 = MEMORY[0x1E69E9820];
    v32 = -1073741824;
    v33 = 0;
    v34 = __94__AAFAnalyticsEvent_AuthKit__encodeElementNameWithIndexPostFix_prefix_element_activeElements___block_invoke;
    v35 = &unk_1E73D89A8;
    v36 = MEMORY[0x1E69E5928](v39);
    v37 = MEMORY[0x1E69E5928](v45);
    v38 = MEMORY[0x1E69E5928](v43);
    [children2 enumerateObjectsUsingBlock:&v31];
    MEMORY[0x1E69E5920](children2);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v39, 0);
    v40 = 0;
  }

  else
  {
    v11 = location[0];
    name = [v44 name];
    v6 = [v11 objectForKeyedSubscript:?];
    v7 = v42;
    v42 = v6;
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](name);
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v42, "intValue") + 1}];
    v9 = v42;
    v42 = v8;
    MEMORY[0x1E69E5920](v9);
    v13 = location[0];
    name2 = [v44 name];
    [v13 setObject:v42 forKeyedSubscript:?];
    MEMORY[0x1E69E5920](name2);
    v16 = MEMORY[0x1E6985DB0];
    v15 = v45;
    v17 = [v44 url];
    v41 = [v16 encodedURLWithPrefix:v15 url:?];
    MEMORY[0x1E69E5920](v17);
    v21 = v43;
    v20 = MEMORY[0x1E696AEC0];
    v19 = v41;
    name3 = [v44 name];
    v18 = location[0];
    name4 = [v44 name];
    v23 = [v18 objectForKeyedSubscript:?];
    v22 = [v20 stringWithFormat:@"%@_%@_%@", v19, name3, v23];
    [v21 addObject:?];
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v23);
    MEMORY[0x1E69E5920](name4);
    MEMORY[0x1E69E5920](name3);
    v40 = 1;
    objc_storeStrong(&v41, 0);
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
}

+ (void)encodedElementNameWithDomainPrefix:()AuthKit element:activeElements:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [MEMORY[0x1E6985DB0] encodeElementNameWithIndexPostFix:v7 prefix:location[0] element:v9 activeElements:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (uint64_t)elementIndex:()AuthKit
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  parent = [location[0] parent];
  if (parent)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x20000000;
    v14 = 32;
    v15 = 0;
    children = [parent children];
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __43__AAFAnalyticsEvent_AuthKit__elementIndex___block_invoke;
    v9 = &unk_1E73D89D0;
    v10[0] = MEMORY[0x1E69E5928](location[0]);
    v10[1] = &v11;
    [children enumerateObjectsUsingBlock:&v5];
    MEMORY[0x1E69E5920](children);
    v19 = v12[3];
    v16 = 1;
    objc_storeStrong(v10, 0);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(&parent, 0);
  objc_storeStrong(location, 0);
  return v19;
}

+ (id)ak_analyticsEventWithRUITelemetryElement:()AuthKit eventName:error:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = MEMORY[0x1E69E5928](@"com.apple.remoteui");
  v21 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:v24 error:v23];
  v15 = MEMORY[0x1E6985DB0];
  v16 = [location[0] url];
  v20 = [v15 encodedURLWithPrefix:v22 url:?];
  MEMORY[0x1E69E5920](v16);
  v19 = [MEMORY[0x1E6985DB0] elementIndex:location[0]];
  name = [location[0] name];
  v18 = [name length];
  MEMORY[0x1E69E5920](name);
  if (v18)
  {
    if (v19)
    {
      v10 = MEMORY[0x1E696AEC0];
      name2 = [location[0] name];
      v11 = [v10 stringWithFormat:@"%@_%@_%lu", v20, name2, v19];
      [v21 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](name2);
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      name3 = [location[0] name];
      v8 = [v7 stringWithFormat:@"%@_%@", v20, name3];
      [v21 setObject:? forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](name3);
    }
  }

  else
  {
    [v21 setObject:v20 forKeyedSubscript:@"elementIdentifier"];
  }

  if (v23)
  {
    [v21 populateUnderlyingErrorsStartingWithRootError:v23];
  }

  v6 = MEMORY[0x1E69E5928](v21);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end