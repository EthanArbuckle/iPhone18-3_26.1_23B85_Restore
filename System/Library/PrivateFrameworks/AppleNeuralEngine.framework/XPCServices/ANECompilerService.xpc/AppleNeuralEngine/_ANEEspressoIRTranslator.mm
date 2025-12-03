@interface _ANEEspressoIRTranslator
+ (BOOL)translateModelAt:(id)at key:(id)key outputPath:(id)path isEncryptedModel:(BOOL)model translationOptions:(id)options error:(id *)error;
+ (id)createErrorForPlan:(void *)plan status:(int)status;
+ (void)destroyEspresso:(void *)espresso ctx:(void *)ctx;
@end

@implementation _ANEEspressoIRTranslator

+ (id)createErrorForPlan:(void *)plan status:(int)status
{
  espresso_plan_get_error_info();
  v7 = [NSString stringWithFormat:@"_ANEEspressoIRTranslator : error %s", v6];
  v8 = +[_ANELog compiler];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10001164C(a2, v7, v8);
  }

  [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsEspressoCompilation"];
  v9 = +[_ANEStrings errorDomainEspresso];
  v13 = NSLocalizedDescriptionKey;
  v14 = v7;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [NSError errorWithDomain:v9 code:status userInfo:v10];

  return v11;
}

+ (BOOL)translateModelAt:(id)at key:(id)key outputPath:(id)path isEncryptedModel:(BOOL)model translationOptions:(id)options error:(id *)error
{
  modelCopy = model;
  atCopy = at;
  keyCopy = key;
  pathCopy = path;
  optionsCopy = options;
  context = espresso_create_context();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  allKeys = [optionsCopy allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v45 objects:v52 count:16];
  v15 = &IOSurfaceGetAllocSize_ptr;
  if (v14)
  {
    v16 = v14;
    v17 = *v46;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        [v19 UTF8String];
        v20 = [optionsCopy objectForKeyedSubscript:v19];
        [v20 intValue];
        v21 = espresso_context_set_int_option();

        if (v21)
        {
          compiler = [v15[120] compiler];
          if (os_log_type_enabled(compiler, OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(a2);
            v24 = [optionsCopy objectForKeyedSubscript:v19];
            intValue = [v24 intValue];
            *buf = 138412802;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            v50 = 1024;
            v51 = intValue;
            _os_log_error_impl(&_mh_execute_header, compiler, OS_LOG_TYPE_ERROR, "%@: Failed to set int option for %@ and value: %d", buf, 0x1Cu);

            v15 = &IOSurfaceGetAllocSize_ptr;
          }
        }
      }

      v16 = [allKeys countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v16);
  }

  if (modelCopy)
  {
    compiler2 = [v15[120] compiler];
    v28 = pathCopy;
    v27 = keyCopy;
    errorCopy2 = error;
    selfCopy2 = self;
    if (os_log_type_enabled(compiler2, OS_LOG_TYPE_INFO))
    {
      v31 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, compiler2, OS_LOG_TYPE_INFO, "%@: Creating espresso plan for encrypted model", buf, 0xCu);
    }

    v32 = atCopy;
  }

  else
  {
    v27 = keyCopy;
    v32 = atCopy;
    selfCopy2 = self;
    v28 = pathCopy;
    errorCopy2 = error;
  }

  plan = espresso_create_plan();
  *buf = 0;
  *&buf[8] = 0;
  [v32 UTF8String];
  v34 = espresso_plan_add_network();
  if (v34 || ([v27 UTF8String], v34 = espresso_network_compiler_set_metadata_key(), v34) || (v34 = espresso_plan_build(), v34))
  {
    if (errorCopy2)
    {
      *errorCopy2 = [selfCopy2 createErrorForPlan:plan status:v34];
    }

    [objc_opt_class() destroyEspresso:plan ctx:context];
    v35 = 0;
  }

  else
  {
    [v28 UTF8String];
    v37 = espresso_dump_ir();
    v35 = v37 == 0;
    if (v37 && errorCopy2)
    {
      *errorCopy2 = [selfCopy2 createErrorForPlan:plan status:v37];
    }

    [objc_opt_class() destroyEspresso:plan ctx:context];
  }

  return v35;
}

+ (void)destroyEspresso:(void *)espresso ctx:(void *)ctx
{
  espresso_plan_destroy();

  _espresso_context_destroy(ctx);
}

@end