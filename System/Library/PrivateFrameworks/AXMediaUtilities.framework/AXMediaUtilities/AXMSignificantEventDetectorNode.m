@interface AXMSignificantEventDetectorNode
+ (BOOL)addSignificantEventResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6;
+ (BOOL)isSupported;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)evaluate:(id)a3 metrics:(id)a4;
@end

@implementation AXMSignificantEventDetectorNode

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 physicalMemory] > 0x773593FF;

  return v3;
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVN6Mb1ME89lyW3HpahkEygIGClass())
  {
    v5.receiver = self;
    v5.super_class = AXMSignificantEventDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(AXMSignificantEventDetectorNode *)v4 validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (void)evaluate:(id)a3 metrics:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = AXMSignificantEventDetectorNode;
  [(AXMEvaluationNode *)&v25 evaluate:v6 metrics:v7];
  context = objc_autoreleasePoolPush();
  request = self->_request;
  if (!request)
  {
    v9 = objc_alloc_init(getVN6Mb1ME89lyW3HpahkEygIGClass());
    v10 = self->_request;
    self->_request = v9;

    request = self->_request;
  }

  v27[0] = request;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [(AXMEvaluationNode *)self evaluateRequests:v11 withContext:v6 requestHandlerOptions:0 metrics:v7 error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(VN6Mb1ME89lyW3HpahkEygIG *)self->_request results];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [v17 identifier];
        [v17 confidence];
        [AXMSignificantEventDetectorNode addSignificantEventResultToContext:v6 forIdentifier:v18 confidence:0 markAsSensitiveCaptionContent:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

+ (BOOL)addSignificantEventResultToContext:(id)a3 forIdentifier:(id)a4 confidence:(double)a5 markAsSensitiveCaptionContent:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v11 = getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr_0;
  v45 = getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr_0;
  if (!getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr_0)
  {
    v12 = VisionLibrary_9();
    v43[3] = dlsym(v12, "VN3FNQUJVIs2puI1uPc9mxh7");
    getVN3FNQUJVIs2puI1uPc9mxh7SymbolLoc_ptr_0 = v43[3];
    v11 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v11)
  {
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_44:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_45:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_46:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
LABEL_47:
    __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    goto LABEL_48;
  }

  if ([v10 isEqualToString:*v11])
  {
    v13 = AXMSignificantEventCategoryBlood;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v14 = getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr_0;
  v45 = getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr_0;
  if (!getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr_0)
  {
    v15 = VisionLibrary_9();
    v43[3] = dlsym(v15, "VNSY8t4EoTztuqIL02g8uVA0");
    getVNSY8t4EoTztuqIL02g8uVA0SymbolLoc_ptr_0 = v43[3];
    v14 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v14)
  {
    goto LABEL_44;
  }

  if ([v10 isEqualToString:*v14])
  {
    v13 = AXMSignificantEventCategoryDemonstration;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v16 = getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr_0;
  v45 = getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr_0;
  if (!getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr_0)
  {
    v17 = VisionLibrary_9();
    v43[3] = dlsym(v17, "VN6XNMvaRunPpzWjGa9uUHD6");
    getVN6XNMvaRunPpzWjGa9uUHD6SymbolLoc_ptr_0 = v43[3];
    v16 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v16)
  {
    goto LABEL_45;
  }

  if ([v10 isEqualToString:*v16])
  {
    v13 = AXMSignificantEventCategoryDestruction;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v18 = getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr_0;
  v45 = getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr_0;
  if (!getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr_0)
  {
    v19 = VisionLibrary_9();
    v43[3] = dlsym(v19, "VN4QuphG8kE4qDaDycivBkX5");
    getVN4QuphG8kE4qDaDycivBkX5SymbolLoc_ptr_0 = v43[3];
    v18 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v18)
  {
    goto LABEL_46;
  }

  if ([v10 isEqualToString:*v18])
  {
    v13 = AXMSignificantEventCategoryFireDevastation;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v20 = getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr_0;
  v45 = getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr_0;
  if (!getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr_0)
  {
    v21 = VisionLibrary_9();
    v43[3] = dlsym(v21, "VN7gQUejje8mmnE9GSTsVBVV");
    getVN7gQUejje8mmnE9GSTsVBVVSymbolLoc_ptr_0 = v43[3];
    v20 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v20)
  {
    goto LABEL_47;
  }

  if ([v10 isEqualToString:*v20])
  {
    v13 = AXMSignificantEventCategoryFloodDevastation;
    goto LABEL_39;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v22 = getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr_0;
  v45 = getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr_0;
  if (!getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr_0)
  {
    v23 = VisionLibrary_9();
    v43[3] = dlsym(v23, "VNa9xpOJNvRoaW9plFGZ9Eo0");
    getVNa9xpOJNvRoaW9plFGZ9Eo0SymbolLoc_ptr_0 = v43[3];
    v22 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v22)
  {
LABEL_48:
    v41 = __77__AXMVisionFeatureFaceAttributes__AXMAgeCategoryForVisionCategoryIdentifier___block_invoke_cold_1();
    _Block_object_dispose(&v42, 8);
    _Unwind_Resume(v41);
  }

  if ([v10 isEqualToString:*v22])
  {
    v13 = AXMSignificantEventCategoryFuneral;
  }

  else
  {
    v24 = getVN2vIWnsZbk4Su55oeWfKDq1_0();
    v25 = [v10 isEqualToString:v24];

    if (v25)
    {
      v13 = AXMSignificantEventCategoryHospital;
    }

    else
    {
      v26 = getVNmNJnu0xlW8CZXt6hJ7Rpb0_0();
      v27 = [v10 isEqualToString:v26];

      if (v27)
      {
        v13 = AXMSignificantEventCategoryReligiousSetting;
      }

      else
      {
        v28 = getVN35FOB1QhtSfYGRIJvTgtTq_0();
        v29 = [v10 isEqualToString:v28];

        if (v29)
        {
          v13 = AXMSignificantEventCategoryVehicleCrash;
        }

        else
        {
          v30 = getVN6ZsEIQ9ri2eF1vhsxw5COm_0();
          v31 = [v10 isEqualToString:v30];

          if (!v31)
          {
LABEL_41:
            v39 = 0;
            goto LABEL_42;
          }

          v13 = &AXMSignificantEventCategoryWar;
        }
      }
    }
  }

LABEL_39:
  v32 = *v13;
  if (!v32)
  {
    goto LABEL_41;
  }

  v33 = v32;
  [v9 size];
  v36 = v35;
  v34 = a5;
  *&v35 = v34;
  v38 = [AXMVisionFeature significantEventClassificationWithCategory:v33 confidence:v35 canvasSize:v36, v37];
  [v38 setCaptionMayContainSensitiveContent:v6];
  [v9 appendFeature:v38];

  v39 = 1;
LABEL_42:

  return v39;
}

@end