@interface AXMSignificantEventDetectorNode
+ (BOOL)addSignificantEventResultToContext:(id)context forIdentifier:(id)identifier confidence:(double)confidence markAsSensitiveCaptionContent:(BOOL)content;
+ (BOOL)isSupported;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
@end

@implementation AXMSignificantEventDetectorNode

+ (BOOL)isSupported
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v3 = [processInfo physicalMemory] > 0x773593FF;

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

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  v27[1] = *MEMORY[0x1E69E9840];
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v25.receiver = self;
  v25.super_class = AXMSignificantEventDetectorNode;
  [(AXMEvaluationNode *)&v25 evaluate:evaluateCopy metrics:metricsCopy];
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
  [(AXMEvaluationNode *)self evaluateRequests:v11 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  results = [(VN6Mb1ME89lyW3HpahkEygIG *)self->_request results];
  v13 = [results countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(results);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        identifier = [v17 identifier];
        [v17 confidence];
        [AXMSignificantEventDetectorNode addSignificantEventResultToContext:evaluateCopy forIdentifier:identifier confidence:0 markAsSensitiveCaptionContent:v19];
      }

      v14 = [results countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

+ (BOOL)addSignificantEventResultToContext:(id)context forIdentifier:(id)identifier confidence:(double)confidence markAsSensitiveCaptionContent:(BOOL)content
{
  contentCopy = content;
  contextCopy = context;
  identifierCopy = identifier;
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

  if ([identifierCopy isEqualToString:*v11])
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

  if ([identifierCopy isEqualToString:*v14])
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

  if ([identifierCopy isEqualToString:*v16])
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

  if ([identifierCopy isEqualToString:*v18])
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

  if ([identifierCopy isEqualToString:*v20])
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

  if ([identifierCopy isEqualToString:*v22])
  {
    v13 = AXMSignificantEventCategoryFuneral;
  }

  else
  {
    v24 = getVN2vIWnsZbk4Su55oeWfKDq1_0();
    v25 = [identifierCopy isEqualToString:v24];

    if (v25)
    {
      v13 = AXMSignificantEventCategoryHospital;
    }

    else
    {
      v26 = getVNmNJnu0xlW8CZXt6hJ7Rpb0_0();
      v27 = [identifierCopy isEqualToString:v26];

      if (v27)
      {
        v13 = AXMSignificantEventCategoryReligiousSetting;
      }

      else
      {
        v28 = getVN35FOB1QhtSfYGRIJvTgtTq_0();
        v29 = [identifierCopy isEqualToString:v28];

        if (v29)
        {
          v13 = AXMSignificantEventCategoryVehicleCrash;
        }

        else
        {
          v30 = getVN6ZsEIQ9ri2eF1vhsxw5COm_0();
          v31 = [identifierCopy isEqualToString:v30];

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
  [contextCopy size];
  v36 = v35;
  confidenceCopy = confidence;
  *&v35 = confidenceCopy;
  v38 = [AXMVisionFeature significantEventClassificationWithCategory:v33 confidence:v35 canvasSize:v36, v37];
  [v38 setCaptionMayContainSensitiveContent:contentCopy];
  [contextCopy appendFeature:v38];

  v39 = 1;
LABEL_42:

  return v39;
}

@end