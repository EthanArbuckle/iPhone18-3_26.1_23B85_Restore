@interface ANEDataReporter
@end

@implementation ANEDataReporter

id __42___ANEDataReporter_addValue_forScalarKey___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v6 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:v1];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void __50___ANEDataReporter_reportTelemetryToPPS_playload___block_invoke()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = reportTelemetryToPPS_playload__ppsIDMapping;
  reportTelemetryToPPS_playload__ppsIDMapping = v0;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = +[_ANEStrings ppsCategoryForANE];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [reportTelemetryToPPS_playload__ppsIDMapping objectForKey:{v8, v16}];
        v10 = +[_ANELog common];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v23 = v8;
          _os_log_debug_impl(&dword_1AD246000, v10, OS_LOG_TYPE_DEBUG, "Telemetry: add identifier %@.", buf, 0xCu);
        }

        v11 = +[_ANEStrings ppsSubsystemForANE];
        v12 = PPSCreateTelemetryIdentifier();

        v17 = v12;
        if (v12)
        {
          v13 = [MEMORY[0x1E696B098] value:&v17 withObjCType:"^{PPSTelemetryIdentifier=}"];

          [reportTelemetryToPPS_playload__ppsIDMapping setObject:v13 forKeyedSubscript:v8];
          v9 = v13;
        }

        else
        {
          v14 = +[_ANELog common];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v23 = v8;
            _os_log_error_impl(&dword_1AD246000, v14, OS_LOG_TYPE_ERROR, "Telemetry: could not create ppsId for %@!", buf, 0xCu);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end