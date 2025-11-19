@interface _ANEEspressoIRTranslator
+ (BOOL)translateModelAt:(id)a3 key:(id)a4 outputPath:(id)a5 isEncryptedModel:(BOOL)a6 translationOptions:(id)a7 error:(id *)a8;
+ (id)createErrorForPlan:(void *)a3 status:(int)a4;
+ (void)destroyEspresso:(void *)a3 ctx:(void *)a4;
@end

@implementation _ANEEspressoIRTranslator

+ (id)createErrorForPlan:(void *)a3 status:(int)a4
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
  v11 = [NSError errorWithDomain:v9 code:a4 userInfo:v10];

  return v11;
}

+ (BOOL)translateModelAt:(id)a3 key:(id)a4 outputPath:(id)a5 isEncryptedModel:(BOOL)a6 translationOptions:(id)a7 error:(id *)a8
{
  v38 = a6;
  v43 = a3;
  v42 = a4;
  v41 = a5;
  v11 = a7;
  context = espresso_create_context();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v13 = [v11 allKeys];
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
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
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        [v19 UTF8String];
        v20 = [v11 objectForKeyedSubscript:v19];
        [v20 intValue];
        v21 = espresso_context_set_int_option();

        if (v21)
        {
          v22 = [v15[120] compiler];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(a2);
            v24 = [v11 objectForKeyedSubscript:v19];
            v25 = [v24 intValue];
            *buf = 138412802;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v19;
            v50 = 1024;
            v51 = v25;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@: Failed to set int option for %@ and value: %d", buf, 0x1Cu);

            v15 = &IOSurfaceGetAllocSize_ptr;
          }
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v16);
  }

  if (v38)
  {
    v26 = [v15[120] compiler];
    v28 = v41;
    v27 = v42;
    v30 = a8;
    v29 = a1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v31 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@: Creating espresso plan for encrypted model", buf, 0xCu);
    }

    v32 = v43;
  }

  else
  {
    v27 = v42;
    v32 = v43;
    v29 = a1;
    v28 = v41;
    v30 = a8;
  }

  plan = espresso_create_plan();
  *buf = 0;
  *&buf[8] = 0;
  [v32 UTF8String];
  v34 = espresso_plan_add_network();
  if (v34 || ([v27 UTF8String], v34 = espresso_network_compiler_set_metadata_key(), v34) || (v34 = espresso_plan_build(), v34))
  {
    if (v30)
    {
      *v30 = [v29 createErrorForPlan:plan status:v34];
    }

    [objc_opt_class() destroyEspresso:plan ctx:context];
    v35 = 0;
  }

  else
  {
    [v28 UTF8String];
    v37 = espresso_dump_ir();
    v35 = v37 == 0;
    if (v37 && v30)
    {
      *v30 = [v29 createErrorForPlan:plan status:v37];
    }

    [objc_opt_class() destroyEspresso:plan ctx:context];
  }

  return v35;
}

+ (void)destroyEspresso:(void *)a3 ctx:(void *)a4
{
  espresso_plan_destroy();

  _espresso_context_destroy(a4);
}

@end