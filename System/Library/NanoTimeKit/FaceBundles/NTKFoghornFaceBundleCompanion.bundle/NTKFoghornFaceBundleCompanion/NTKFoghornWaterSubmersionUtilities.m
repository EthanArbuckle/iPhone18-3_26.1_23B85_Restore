@interface NTKFoghornWaterSubmersionUtilities
+ (double)lastDiveMaxDepth;
@end

@implementation NTKFoghornWaterSubmersionUtilities

+ (double)lastDiveMaxDepth
{
  v3 = CFPreferencesCopyAppValue(@"lastDive", @"com.apple.Depth");
  if (v3)
  {
    v37 = 0;
    v4 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v2, v3, 0, &v37);
    v5 = v37;
    if (v5)
    {
      v6 = NTKFoghornFaceBundleLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_23BE7D410(v5, v6);
      }
    }

    objc_opt_class();
    v9 = 0.0;
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"maxDepth", v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"nominal", v13);
        if (!v14)
        {
          v14 = objc_msgSend_objectForKeyedSubscript_(v11, v15, @"shallow", v16);
          if (!v14)
          {
            v14 = objc_msgSend_objectForKeyedSubscript_(v11, v17, @"depthExceedingNominalRange", v18);
          }
        }

        v19 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objc_msgSend_allValues(v19, v20, v21, v22);
          v27 = objc_msgSend_firstObject(v23, v24, v25, v26);

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = objc_msgSend_objectForKeyedSubscript_(v27, v28, @"canonicalValue", v29);
            if (v30)
            {
              v34 = v30;
              objc_msgSend_doubleValue(v30, v31, v32, v33);
              v9 = v35;
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end