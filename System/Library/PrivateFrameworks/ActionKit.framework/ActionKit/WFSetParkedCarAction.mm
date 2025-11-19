@interface WFSetParkedCarAction
- (BOOL)locationParameterIsCurrentLocation;
- (id)missingLocationError;
- (id)resizedCompressedJPEGImageDataWithWFImage:(id)a3;
- (void)fetchLastParkedCarContentItemWithCompletionHandler:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFSetParkedCarAction

- (BOOL)locationParameterIsCurrentLocation
{
  v2 = [(WFSetParkedCarAction *)self parameterStateForKey:@"WFLocation"];
  v3 = [v2 value];
  v4 = [v3 isCurrentLocation];

  return v4;
}

- (void)fetchLastParkedCarContentItemWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 500000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C22448;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v7);
}

void __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [getRTRoutineManagerClass() defaultManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_278C21AE8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchLastVehicleEventsWithHandler:v4];
}

void __75__WFSetParkedCarAction_fetchLastParkedCarContentItemWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 firstObject];
  if (v6)
  {
    v7 = MEMORY[0x277CFC2F8];
    v8 = MEMORY[0x277CFC238];
    v9 = [*(a1 + 32) appDescriptor];
    v10 = [v8 locationWithAppDescriptor:v9];
    v11 = [v7 itemWithObject:v6 origin:v10 disclosureLevel:1];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[WFSetParkedCarAction fetchLastParkedCarContentItemWithCompletionHandler:]_block_invoke_2";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s No RTVehicleEvent found, error = %@", &v14, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)resizedCompressedJPEGImageDataWithWFImage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [a3 UIImage];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v6 = v5;

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  [v3 size];
  v12 = v11;
  [v3 size];
  v14 = v13;
  [v3 size];
  if (v12 <= v14)
  {
    v15 = v16;
  }

  v17 = v15 / v10 * 0.5;
  if (v17 >= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  [v3 size];
  v20 = v19 / v18;
  [v3 size];
  v38.size.height = v21 / v18;
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v20;
  v39 = CGRectIntegral(v38);
  width = v39.size.width;
  height = v39.size.height;
  [v3 scale];
  v25 = v24;
  v37.width = width;
  v37.height = height;
  UIGraphicsBeginImageContextWithOptions(v37, 1, v25);
  [v3 drawInRect:{0.0, 0.0, width, height}];
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v26)
  {
    v27 = UIImageJPEGRepresentation(v26, 0.699999988);
    if (v27)
    {
      v28 = v27;
      v29 = v28;
      goto LABEL_18;
    }

    v30 = getWFActionsLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315138;
      v34 = "[WFSetParkedCarAction resizedCompressedJPEGImageDataWithWFImage:]";
      _os_log_impl(&dword_23DE30000, v30, OS_LOG_TYPE_ERROR, "%s Failed to convert UIImage to JPEG data.", &v33, 0xCu);
    }

    v28 = 0;
  }

  else
  {
    v28 = getWFActionsLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = 136315138;
      v34 = "[WFSetParkedCarAction resizedCompressedJPEGImageDataWithWFImage:]";
      _os_log_impl(&dword_23DE30000, v28, OS_LOG_TYPE_ERROR, "%s Failed to resize UIImage for save.", &v33, 0xCu);
    }
  }

  v29 = 0;
LABEL_18:

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)missingLocationError
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedString(@"No Car Location Provided");
  v3 = WFLocalizedString(@"Please provide a location for the parked car.");
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D7CB30];
  v6 = *MEMORY[0x277CCA450];
  v11[0] = *MEMORY[0x277CCA470];
  v11[1] = v6;
  v12[0] = v2;
  v12[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v4 errorWithDomain:v5 code:6 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 numberOfItems])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke;
    v10[3] = &unk_278C1A7B8;
    v10[4] = self;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v5 = getCLLocationClass_softClass_11713;
    v14 = getCLLocationClass_softClass_11713;
    if (!getCLLocationClass_softClass_11713)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v16 = __getCLLocationClass_block_invoke_11714;
      v17 = &unk_278C222B8;
      v18 = &v11;
      __getCLLocationClass_block_invoke_11714(&buf);
      v5 = v12[3];
    }

    v6 = v5;
    _Block_object_dispose(&v11, 8);
    [v4 getObjectRepresentation:v10 forClass:objc_opt_class()];
  }

  else
  {
    v7 = getWFActionsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFSetParkedCarAction runAsynchronouslyWithInput:]";
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_ERROR, "%s No input provided to WFSetParkedCarAction", &buf, 0xCu);
    }

    v8 = [(WFSetParkedCarAction *)self missingLocationError];
    [(WFSetParkedCarAction *)self finishRunningWithError:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFSetParkedCarNotes" ofClass:objc_opt_class()];
    v9 = [getRTRoutineManagerClass() defaultManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_169;
    v12[3] = &unk_278C221F8;
    v12[4] = *(a1 + 32);
    [v9 vehicleEventAtLocation:v6 notes:v8 handler:v12];
  }

  else
  {
    v10 = getWFActionsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      _os_log_impl(&dword_23DE30000, v10, OS_LOG_TYPE_ERROR, "%s Failed to coerce location content collection to CLLocation.", buf, 0xCu);
    }

    [*(a1 + 32) finishRunningWithError:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_169(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = getWFActionsLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_ERROR, "%s CoreRoutine error setting vehicle event: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_170;
    v7[3] = &unk_278C1A768;
    v7[4] = v5;
    [v5 fetchLastParkedCarContentItemWithCompletionHandler:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_170(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [*(a1 + 32) parameterValueForKey:@"WFImage" ofClass:objc_opt_class()];
    if ([v8 numberOfItems])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_173;
      v12[3] = &unk_278C1A790;
      v12[4] = *(a1 + 32);
      v13 = v7;
      [v8 getObjectRepresentation:v12 forClass:objc_opt_class()];
    }

    else
    {
      v10 = [*(a1 + 32) output];
      [v10 addItem:v7];

      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {

    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s No car content item found after saving it: %@", buf, 0x16u);
    }

    [*(a1 + 32) finishRunningWithError:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_173(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) resizedCompressedJPEGImageDataWithWFImage:a2];
    if (v7)
    {
      v8 = [getRTRoutineManagerClass() defaultManager];
      v9 = [*(a1 + 40) vehicleEvent];
      v10 = [v9 identifier];
      [v8 updateVehicleEventWithIdentifier:v10 photo:v7];

      v11 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_174;
      v17[3] = &unk_278C1A768;
      v17[4] = v11;
      [v11 fetchLastParkedCarContentItemWithCompletionHandler:v17];
    }

    else
    {
      v14 = getWFActionsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v19 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
        _os_log_impl(&dword_23DE30000, v14, OS_LOG_TYPE_ERROR, "%s Failed to resize/compress parked car image.", buf, 0xCu);
      }

      v15 = [*(a1 + 32) output];
      [v15 addItem:*(a1 + 40)];

      [*(a1 + 32) finishRunningWithError:0];
    }
  }

  else
  {
    v12 = getWFActionsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFSetParkedCarAction runAsynchronouslyWithInput:]_block_invoke";
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_ERROR, "%s Failed to coerce imageCollection to WFImage with error: %@", buf, 0x16u);
    }

    v13 = [*(a1 + 32) output];
    [v13 addItem:*(a1 + 40)];

    [*(a1 + 32) finishRunningWithError:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __51__WFSetParkedCarAction_runAsynchronouslyWithInput___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 output];
    [v7 addItem:v6];
  }

  [*(a1 + 32) finishRunningWithError:v8];
}

@end