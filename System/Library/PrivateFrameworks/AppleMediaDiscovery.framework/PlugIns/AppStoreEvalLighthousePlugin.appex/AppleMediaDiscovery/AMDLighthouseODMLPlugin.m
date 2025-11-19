@interface AMDLighthouseODMLPlugin
+ (void)initialize;
- (AMDLighthouseODMLPlugin)init;
- (id)checkIfTaskShouldBeStopped:(id *)a3;
- (id)createMLRTaskAttachmentsObject:(id)a3 modelDirURL:(id)a4 error:(id *)a5;
- (id)downloadModel:(id)a3 outError:(id *)a4;
- (id)gatherGaussianResults:(id)a3 withPartitions:(id)a4 outError:(id *)a5;
- (id)getAttachmentURLByName:(id)a3 namespaceID:(id)a4 triClient:(id)a5 isDirectory:(BOOL)a6 error:(id *)a7;
- (id)performTask:(id)a3 outError:(id *)a4;
- (id)performTrialTask:(id)a3 outError:(id *)a4;
- (id)setUpForGenericTaskWithClient:(id)a3 outError:(id *)a4;
- (id)setupModelDirectoryWithTask:(id)a3 error:(id *)a4;
- (id)setupRecipeWithTask:(id)a3 error:(id *)a4;
- (id)targetingKeyValuePairsForKeys:(id)a3 error:(id *)a4;
- (void)stop;
@end

@implementation AMDLighthouseODMLPlugin

+ (void)initialize
{
  if (a1 == objc_opt_class())
  {
    v2 = os_log_create("com.apple.aiml.AMDLighthouseODMLPlugin", "AMDLighthouseODMLPlugin");
    v3 = sLog;
    sLog = v2;
  }
}

- (id)getAttachmentURLByName:(id)a3 namespaceID:(id)a4 triClient:(id)a5 isDirectory:(BOOL)a6 error:(id *)a7
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = a6;
  v28 = a7;
  v27 = [v30 levelForFactor:location[0] withNamespaceName:v31];
  v26 = 0;
  if (a6)
  {
    v7 = [v27 directoryValue];
  }

  else
  {
    v7 = [v27 fileValue];
  }

  v8 = v26;
  v26 = v7;

  v16 = [v26 path];
  v25 = [NSURL fileURLWithPath:?];

  v24 = +[NSFileManager defaultManager];
  v17 = [v25 path];
  v18 = [v24 fileExistsAtPath:?];

  if (v18)
  {
    v33 = v25;
  }

  else
  {
    v23 = sLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v36, location[0], v25);
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to load '%@' from %@", v36, 0x16u);
    }

    objc_storeStrong(&v23, 0);
    if (v28)
    {
      v12 = AMDLighthouseODMLPluginErrorDomain;
      v34 = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithFormat:@"'%@' level missing in Trial", location[0]];
      v35 = v15;
      v13 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = [NSError errorWithDomain:v12 code:133 userInfo:?];
      v9 = v14;
      *v28 = v14;
    }

    v33 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v10 = v33;

  return v10;
}

- (id)createMLRTaskAttachmentsObject:(id)a3 modelDirURL:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21[1] = a5;
  v21[0] = [location[0] objectForKey:AttachmentKeys];
  v20 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v14 = v21[0];
  v15 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(__b[1] + 8 * v10);
      v17 = [v22 URLByAppendingPathComponent:v19];
      [v20 addObject:v17];
      objc_storeStrong(&v17, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v14 countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v5 = [MLRTaskAttachments alloc];
  v16 = [v5 initWithURLs:v20];
  v7 = v16;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)setupRecipeWithTask:(id)a3 error:(id *)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29[1] = a4;
  [(AMDLighthouseODMLPlugin *)v31 setClient:location[0]];
  v17 = v31;
  v15 = RecipeAttachmentKey;
  v16 = TrialNamespace;
  v18 = [(AMDLighthouseODMLPlugin *)v31 client];
  v29[0] = [AMDLighthouseODMLPlugin getAttachmentURLByName:v17 namespaceID:"getAttachmentURLByName:namespaceID:triClient:isDirectory:error:" triClient:v15 isDirectory:v16 error:?];

  if (v29[0])
  {
    v27 = sLog;
    v26 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v13 = [v29[0] path];
      __os_log_helper_16_2_1_8_64(v35, v13);
      _os_log_impl(&_mh_execute_header, v27, v26, "recipe path: %@", v35, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    v25 = 0;
    v7 = [NSData alloc];
    v9 = [v29[0] path];
    v23 = v25;
    v8 = [v7 initWithContentsOfFile:? options:? error:?];
    objc_storeStrong(&v25, v23);
    v24 = v8;

    v22 = v25;
    v10 = [NSJSONSerialization JSONObjectWithData:v24 options:0 error:&v22];
    objc_storeStrong(&v25, v22);
    [(AMDLighthouseODMLPlugin *)v31 setRecipe:v10];

    v11 = [(AMDLighthouseODMLPlugin *)v31 recipe];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = sLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v6 = [(AMDLighthouseODMLPlugin *)v31 recipe];
        __os_log_helper_16_2_1_8_64(v33, v6);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Loaded JSON recipe: %@", v33, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      v32 = &off_10002DF00;
      v28 = 1;
    }

    else
    {
      v21 = sLog;
      v20 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v34, v25);
        _os_log_error_impl(&_mh_execute_header, v21, v20, "Failed to load recipe json with error: %@", v34, 0xCu);
      }

      objc_storeStrong(&v21, 0);
      v32 = 0;
      v28 = 1;
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v32 = 0;
    v28 = 1;
  }

  objc_storeStrong(v29, 0);
  objc_storeStrong(location, 0);
  v4 = v32;

  return v4;
}

- (id)setupModelDirectoryWithTask:(id)a3 error:(id *)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17[1] = a4;
  v17[0] = [(AMDLighthouseODMLPlugin *)v19 getAttachmentURLByName:ModelsDirectoryKey namespaceID:TrialNamespace triClient:location[0] isDirectory:1 error:a4];
  if (v17[0])
  {
    v10 = [(AMDLighthouseODMLPlugin *)v19 worker];
    [(AMDLighthouseODMLWorker *)v10 setModelsURL:v17[0]];

    v15 = sLog;
    v14 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v9 = [v17[0] path];
      __os_log_helper_16_2_1_8_64(v21, v9);
      _os_log_impl(&_mh_execute_header, v15, v14, "model path: %@", v21, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v13 = 0;
    v6 = v19;
    v8 = [(AMDLighthouseODMLPlugin *)v19 recipe];
    obj = v13;
    v7 = [AMDLighthouseODMLPlugin createMLRTaskAttachmentsObject:v6 modelDirURL:"createMLRTaskAttachmentsObject:modelDirURL:error:" error:?];
    objc_storeStrong(&v13, obj);
    [(AMDLighthouseODMLPlugin *)v19 setAttachments:v7];

    v20 = &off_10002DF00;
    v16 = 1;
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v20 = 0;
    v16 = 1;
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(location, 0);
  v4 = v20;

  return v4;
}

- (id)gatherGaussianResults:(id)a3 withPartitions:(id)a4 outError:(id *)a5
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = a5;
  v36 = objc_alloc_init(NSMutableDictionary);
  v35 = objc_alloc_init(NSMutableDictionary);
  memset(__b, 0, sizeof(__b));
  v24 = location[0];
  v25 = [v24 countByEnumeratingWithState:__b objects:v43 count:16];
  if (v25)
  {
    v19 = *__b[2];
    v20 = 0;
    v21 = v25;
    while (1)
    {
      v18 = v20;
      if (*__b[2] != v19)
      {
        objc_enumerationMutation(v24);
      }

      v34 = *(__b[1] + 8 * v20);
      v32 = [v34 objectForKey:ModelMetrics];
      v31 = [v34 objectForKey:ModelName];
      memset(v29, 0, sizeof(v29));
      v16 = v32;
      v17 = [v16 countByEnumeratingWithState:v29 objects:v42 count:16];
      if (v17)
      {
        v13 = *v29[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*v29[2] != v13)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(v29[1] + 8 * v14);
          v11 = [(AMDLighthouseODMLPlugin *)v40 checkIfTaskShouldBeStopped:v37];

          if (!v11)
          {
            break;
          }

          v27 = [v32 objectForKey:v30];
          v26 = [NSString stringWithFormat:@"%@:%@", v31, v30];
          if ([v38 containsObject:v26])
          {
            v8 = v35;
            [v27 floatValue];
            v9 = [NSNumber numberWithFloat:?];
            [v8 setObject:? forKey:?];
          }

          else
          {
            [v27 floatValue];
            v10 = [NSNumber numberWithFloat:?];
            [v36 setObject:? forKeyedSubscript:?];
          }

          objc_storeStrong(&v26, 0);
          objc_storeStrong(&v27, 0);
          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [v16 countByEnumeratingWithState:v29 objects:v42 count:16];
            if (!v15)
            {
              goto LABEL_16;
            }
          }
        }

        v41 = 0;
        v28 = 1;
      }

      else
      {
LABEL_16:
        v28 = 0;
      }

      if (!v28)
      {
        v28 = 0;
      }

      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
      if (v28)
      {
        break;
      }

      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [v24 countByEnumeratingWithState:__b objects:v43 count:16];
        if (!v21)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  if (!v28)
  {
    v5 = [MLRTrialDediscoTaskResult alloc];
    v41 = [v5 initWithJSONResult:v36 namespaceName:TrialNamespace factorName:@"recipe" additionalKeyVariables:v35];
    v28 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  v6 = v41;

  return v6;
}

- (id)downloadModel:(id)a3 outError:(id *)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = dispatch_semaphore_create(0);
  NSLog(@"Calling downloadLevelsForFactors");
  v16 = [(AMDLighthouseODMLPlugin *)v24 client];
  v26 = location[0];
  v15 = [NSArray arrayWithObjects:&v26 count:1];
  v13 = TrialNamespace;
  v14 = objc_opt_new();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __50__AMDLighthouseODMLPlugin_downloadModel_outError___block_invoke;
  v18[3] = &unk_10002C320;
  v19 = location[0];
  v20 = v21;
  [(TRIClient *)v16 downloadLevelsForFactors:v15 withNamespace:v13 queue:0 options:v14 progress:0 completion:v18];

  dsema = v21;
  v4 = dispatch_time(0, 600000000000);
  if (dispatch_semaphore_wait(dsema, v4))
  {
    v5 = [NSError alloc];
    v11 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:149 userInfo:0];
    v6 = v11;
    *v22 = v11;
    v25 = 0;
  }

  else
  {
    v10 = [(AMDLighthouseODMLPlugin *)v24 checkIfTaskShouldBeStopped:v22];

    if (v10)
    {
      v9 = [(AMDLighthouseODMLPlugin *)v24 client];
      [(TRIClient *)v9 refresh];

      v25 = [NSNumber numberWithLong:1];
    }

    else
    {
      v25 = 0;
    }
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v7 = v25;

  return v7;
}

void __50__AMDLighthouseODMLPlugin_downloadModel_outError___block_invoke(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if ((v5 & 1) == 1)
  {
    NSLog(@"succeeded to download factor level %@", *(a1 + 32));
  }

  else
  {
    NSLog(@"failed to download factor level %@", *(a1 + 32));
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_storeStrong(&location, 0);
}

- (id)targetingKeyValuePairsForKeys:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = objc_alloc_init(AMDDODMLCustomTargetingHelper);
  v6 = [v7[0] mainTargetingResolver:location[0] error:a4];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)checkIfTaskShouldBeStopped:(id *)a3
{
  if ([(NSNumber *)self->_taskShouldBeStopped intValue]== 1)
  {
    v3 = [NSError alloc];
    v6 = [v3 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:148 userInfo:0];
    v4 = v6;
    *a3 = v6;
    v8 = 0;
  }

  else
  {
    v8 = [NSNumber numberWithLong:1];
  }

  return v8;
}

- (id)setUpForGenericTaskWithClient:(id)a3 outError:(id *)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  v4 = [NSNumber numberWithInt:0];
  taskShouldBeStopped = v27->_taskShouldBeStopped;
  v27->_taskShouldBeStopped = v4;

  v24 = sLog;
  v23 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    log = v24;
    type = v23;
    __os_log_helper_16_0_0(v22);
    _os_log_impl(&_mh_execute_header, log, type, "AMDLighthouseODMLPlugin: Start task", v22, 2u);
  }

  objc_storeStrong(&v24, 0);
  v21 = [(AMDLighthouseODMLPlugin *)v27 setupRecipeWithTask:location[0] error:v25];
  if (v21)
  {
    v10 = [(AMDLighthouseODMLPlugin *)v27 worker];
    v9 = [(AMDLighthouseODMLPlugin *)v27 recipe];
    v19 = [AMDLighthouseODMLWorker checkIfModelShouldBeDownloaded:v10 outError:"checkIfModelShouldBeDownloaded:outError:"];

    v18 = [v19 getCoreDictionary];
    if (v18)
    {
      v17 = [v19 processRecipe:v25 errorDomain:AMDLighthouseODMLPluginErrorDomain];
      if (v17)
      {
        v8 = [(AMDLighthouseODMLPlugin *)v27 recipe];
        v16 = [(NSDictionary *)v8 objectForKeyedSubscript:ModelDirectoryName];

        if (!v16)
        {
          objc_storeStrong(&v16, ModelsDirectoryKey);
        }

        v15 = [(AMDLighthouseODMLPlugin *)v27 downloadModel:v16 outError:v25];
        if (v15)
        {
          v20 = 0;
        }

        else
        {
          v28 = 0;
          v20 = 1;
        }

        objc_storeStrong(&v15, 0);
        objc_storeStrong(&v16, 0);
        if (!v20)
        {
          v14 = [(AMDLighthouseODMLPlugin *)v27 setupModelDirectoryWithTask:location[0] error:v25];
          if (v14)
          {
            v28 = v18;
          }

          else
          {
            v28 = 0;
          }

          v20 = 1;
          objc_storeStrong(&v14, 0);
        }
      }

      else
      {
        v28 = 0;
        v20 = 1;
      }

      objc_storeStrong(&v17, 0);
    }

    else
    {
      v28 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v28 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v6 = v28;

  return v6;
}

- (AMDLighthouseODMLPlugin)init
{
  v4 = a2;
  location = 0;
  v3.receiver = self;
  v3.super_class = AMDLighthouseODMLPlugin;
  location = [(AMDLighthouseODMLPlugin *)&v3 init];
  if (location)
  {
    v6 = location;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&location, 0);
  return v6;
}

- (id)performTrialTask:(id)a3 outError:(id *)a4
{
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = a4;
  v30 = objc_alloc_init(AMDLighthouseODMLWorker);
  [(AMDLighthouseODMLPlugin *)v51 setWorker:?];

  v48 = [location[0] triClient];
  v47 = [(AMDLighthouseODMLPlugin *)v51 setUpForGenericTaskWithClient:v48 outError:a4];
  v31 = [(AMDLighthouseODMLPlugin *)v51 client];
  v46 = [(TRIClient *)v31 experimentIdentifiersWithNamespaceName:TrialNamespace];

  v32 = [(AMDLighthouseODMLPlugin *)v51 worker];
  [(AMDLighthouseODMLWorker *)v32 setTriExperimentIdentifiers:v46];

  if (*a4)
  {
    v45 = sLog;
    v44 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v53, *v49);
      _os_log_error_impl(&_mh_execute_header, v45, v44, "Encountered error when setting up for generic task: %@", v53, 0xCu);
    }

    objc_storeStrong(&v45, 0);
    v52 = 0;
    v43 = 1;
  }

  else
  {
    v28 = [(AMDLighthouseODMLPlugin *)v51 worker];
    v27 = [(AMDLighthouseODMLPlugin *)v51 recipe];
    v26 = [(AMDLighthouseODMLPlugin *)v51 attachments];
    v42 = [AMDLighthouseODMLWorker gatherMetricsToReturn:v28 withRecipe:"gatherMetricsToReturn:withRecipe:withAttachments:outError:" withAttachments:v47 outError:v27];

    if (v42)
    {
      v24 = [(AMDLighthouseODMLPlugin *)v51 recipe];
      v23 = [(NSDictionary *)v24 objectForKeyedSubscript:LoggingStrategies];
      v25 = [v23 containsObject:GaussianDeDisco];

      if (v25)
      {
        v21 = [(AMDLighthouseODMLPlugin *)v51 recipe];
        v20 = [(NSDictionary *)v21 objectForKeyedSubscript:LoggingStrategies];
        v22 = [v20 count];

        if (v22 <= 1)
        {
          goto LABEL_15;
        }

        v19 = [(AMDLighthouseODMLPlugin *)v51 worker];
        v18 = [(AMDLighthouseODMLPlugin *)v51 recipe];
        v17 = [(NSDictionary *)v18 objectForKeyedSubscript:LoggingStrategies];
        v41 = [AMDLighthouseODMLWorker logAllResultsToCoreAnalyticsOrDeDisco:v19 withLoggingStrategies:"logAllResultsToCoreAnalyticsOrDeDisco:withLoggingStrategies:outError:" outError:v42];

        if (v41)
        {
          v40 = sLog;
          v39 = 1;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v15 = v40;
            type = v39;
            __os_log_helper_16_0_0(v38);
            _os_log_impl(&_mh_execute_header, v15, type, "AMDLighthouseODMLPlugin: Finished task", v38, 2u);
          }

          objc_storeStrong(&v40, 0);
          v43 = 0;
        }

        else
        {
          v52 = 0;
          v43 = 1;
        }

        objc_storeStrong(&v41, 0);
        if (!v43)
        {
LABEL_15:
          v12 = v51;
          v11 = v42;
          v14 = [(AMDLighthouseODMLPlugin *)v51 recipe];
          v13 = [(NSDictionary *)v14 objectForKeyedSubscript:GaussianDeDiscoPartitions];
          v37 = [AMDLighthouseODMLPlugin gatherGaussianResults:v12 withPartitions:"gatherGaussianResults:withPartitions:outError:" outError:v11];

          if (v37)
          {
            v52 = v37;
          }

          else
          {
            v52 = 0;
          }

          v43 = 1;
          objc_storeStrong(&v37, 0);
        }
      }

      else
      {
        v10 = [(AMDLighthouseODMLPlugin *)v51 worker];
        v9 = [(AMDLighthouseODMLPlugin *)v51 recipe];
        v8 = [(NSDictionary *)v9 objectForKeyedSubscript:LoggingStrategies];
        v36 = [AMDLighthouseODMLWorker logAllResultsToCoreAnalyticsOrDeDisco:v10 withLoggingStrategies:"logAllResultsToCoreAnalyticsOrDeDisco:withLoggingStrategies:outError:" outError:v42];

        if (v36)
        {
          v35 = sLog;
          v34 = 1;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v6 = v35;
            v7 = v34;
            __os_log_helper_16_0_0(v33);
            _os_log_impl(&_mh_execute_header, v6, v7, "AMDLighthouseODMLPlugin: Finished task", v33, 2u);
          }

          objc_storeStrong(&v35, 0);
          v52 = objc_opt_new();
          v43 = 1;
        }

        else
        {
          v52 = 0;
          v43 = 1;
        }

        objc_storeStrong(&v36, 0);
      }
    }

    else
    {
      v52 = 0;
      v43 = 1;
    }

    objc_storeStrong(&v42, 0);
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  v4 = v52;

  return v4;
}

- (id)performTask:(id)a3 outError:(id *)a4
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v15 = objc_alloc_init(AMDLighthouseODMLWorker);
  [(AMDLighthouseODMLPlugin *)v28 setWorker:?];

  v25 = [TRIClient mlr_clientWithMLRTask:location[0]];
  v24 = [(AMDLighthouseODMLPlugin *)v28 setUpForGenericTaskWithClient:v25 outError:a4];
  if (*a4)
  {
    v23 = sLog;
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v30, *v26);
      _os_log_error_impl(&_mh_execute_header, v23, v22, "Encountered error when setting up for generic task: %@", v30, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v29 = 0;
    v21 = 1;
  }

  else
  {
    v13 = [(AMDLighthouseODMLPlugin *)v28 worker];
    v12 = [(AMDLighthouseODMLPlugin *)v28 recipe];
    v11 = [(AMDLighthouseODMLPlugin *)v28 attachments];
    v20 = [AMDLighthouseODMLWorker gatherMetricsToReturn:v13 withRecipe:"gatherMetricsToReturn:withRecipe:withAttachments:outError:" withAttachments:v24 outError:v12];

    if (v20)
    {
      v10 = [(AMDLighthouseODMLPlugin *)v28 worker];
      v9 = [(AMDLighthouseODMLPlugin *)v28 recipe];
      v8 = [(NSDictionary *)v9 objectForKeyedSubscript:LoggingStrategies];
      v19 = [AMDLighthouseODMLWorker logAllResultsToCoreAnalyticsOrDeDisco:v10 withLoggingStrategies:"logAllResultsToCoreAnalyticsOrDeDisco:withLoggingStrategies:outError:" outError:v20];

      if (v19)
      {
        v18 = sLog;
        v17 = 1;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v6 = v18;
          v7 = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&_mh_execute_header, v6, v7, "AMDLighthouseODMLPlugin: Finished task", v16, 2u);
        }

        objc_storeStrong(&v18, 0);
        v29 = [[MLRTaskResult alloc] initWithJSONResult:&off_10002DF28 unprivatizedVector:0];
        v21 = 1;
      }

      else
      {
        v29 = 0;
        v21 = 1;
      }

      objc_storeStrong(&v19, 0);
    }

    else
    {
      v29 = 0;
      v21 = 1;
    }

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  v4 = v29;

  return v4;
}

- (void)stop
{
  v2 = [NSNumber numberWithInt:1];
  taskShouldBeStopped = self->_taskShouldBeStopped;
  self->_taskShouldBeStopped = v2;

  v7 = [(AMDLighthouseODMLPlugin *)self worker];
  if (v7)
  {
    v6 = [(AMDLighthouseODMLPlugin *)self worker];
    [(AMDLighthouseODMLWorker *)v6 stop];
  }

  v5 = [(AMDLighthouseODMLPlugin *)self client];
  v9 = ModelsDirectoryKey;
  v4 = [NSArray arrayWithObjects:&v9 count:1];
  [TRIClient removeLevelsForFactors:v5 withNamespace:"removeLevelsForFactors:withNamespace:queue:completion:" queue:? completion:?];
}

void __31__AMDLighthouseODMLPlugin_stop__block_invoke(id a1, BOOL a2, NSError *a3)
{
  v5 = a1;
  v4 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  if (v4)
  {
    NSLog(@"succeeded cancel/undo download %@", ModelsDirectoryKey);
  }

  else
  {
    NSLog(@"failed to cancel/undo download %@", ModelsDirectoryKey);
  }

  objc_storeStrong(&location, 0);
}

@end