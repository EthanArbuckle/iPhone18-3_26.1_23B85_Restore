@interface WFTakeScreenshotAction
- (id)disabledOnPlatforms;
- (id)parameterSummary;
- (id)screenshotDisplay:(id)a3 error:(id *)a4;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)cancel;
- (void)notifyVisibleScenesOfScreenshot:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)takeScreenshot;
@end

@implementation WFTakeScreenshotAction

- (void)notifyVisibleScenesOfScreenshot:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v6 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__WFTakeScreenshotAction_notifyVisibleScenesOfScreenshot___block_invoke;
  v10[3] = &unk_278C1A900;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  [v6 setTransitionHandler:v10];
  v9 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v6];
  [(WFTakeScreenshotAction *)self setDisplayLayoutMonitor:v9];
}

void __58__WFTakeScreenshotAction_notifyVisibleScenesOfScreenshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v20 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [a3 elements];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      v10 = *MEMORY[0x277D0ABD0];
      v11 = *MEMORY[0x277D0ABF0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 isUIApplicationElement])
          {
            v14 = [v13 bundleIdentifier];
            getUIDidTakeScreenshotActionClass();
            v15 = objc_opt_new();
            v26 = v15;
            v27[0] = v10;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
            v27[1] = v11;
            v28[0] = v16;
            v28[1] = MEMORY[0x277CBEC38];
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

            v18 = [MEMORY[0x277D0AD60] optionsWithDictionary:v17];
            [*(a1 + 32) openApplication:v14 withOptions:v18 completion:0];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v8);
    }

    v5 = v20;
    [v20 invalidate];
    [*(a1 + 40) setDisplayLayoutMonitor:0];
    (*(*(a1 + 48) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)screenshotDisplay:(id)a3 error:(id *)a4
{
  v70[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v64 = *MEMORY[0x277CBF3A0];
  v65 = v5;
  v60 = v4;
  [v4 displayId];
  if (CARenderServerGetDisplayLogicalBounds())
  {
    height = v65.height;
    width = v65.width;
  }

  else
  {
    [v60 bounds];
    height = v8;
    *&v64 = v9;
    *(&v64 + 1) = v10;
    v65.width = width;
    v65.height = v8;
  }

  v11 = *MEMORY[0x277D85F88];
  v69[0] = *MEMORY[0x277CD2B88];
  v58 = width;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  v70[0] = v12;
  v69[1] = *MEMORY[0x277CD2A28];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  v14 = (4 * v58 + 63) & 0xFFFFFFFFFFFFFFC0;
  v70[1] = v13;
  v15 = *MEMORY[0x277CD2960];
  v69[2] = *MEMORY[0x277CD2A70];
  v69[3] = v15;
  v70[2] = &unk_28509B0D8;
  v70[3] = &unk_28509B0F0;
  v69[4] = *MEMORY[0x277CD2968];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v14];
  v17 = v11 + v14 * height;
  v70[4] = v16;
  v69[5] = *MEMORY[0x277CD2948];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17 & ~v11];
  v70[5] = v18;
  v69[6] = *MEMORY[0x277CD2970];
  v70[6] = &unk_28509B108;
  properties = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:7];

  v19 = IOSurfaceCreate(properties);
  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB38]);
    v21 = *MEMORY[0x277CDA8D0];
    v22 = *MEMORY[0x277CDA870];
    v67[0] = *MEMORY[0x277CDA8C8];
    v67[1] = v22;
    v68[0] = v21;
    v68[1] = v19;
    v67[2] = *MEMORY[0x277CDA888];
    v23 = [v60 name];
    v68[2] = v23;
    v67[3] = *MEMORY[0x277CDA8F0];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:*&v64];
    v68[3] = v24;
    v67[4] = *MEMORY[0x277CDA8F8];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:*(&v64 + 1)];
    v68[4] = v25;
    v26 = *MEMORY[0x277CDA8A8];
    v67[5] = *MEMORY[0x277CDA898];
    v67[6] = v26;
    v68[5] = MEMORY[0x277CBEC38];
    v68[6] = MEMORY[0x277CBEC38];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:7];
    v28 = [v20 initWithDictionary:v27];

    v29 = [(WFTakeScreenshotAction *)self parameterValueForKey:@"WFTakeScreenshotIgnoreContextualAssistanceLayers" ofClass:objc_opt_class()];
    LODWORD(v27) = [v29 BOOLValue];

    if (v27)
    {
      [v28 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA8A0]];
    }

    CARenderServerSnapshot();
    IOSurfaceLock(v19, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v19);
    v31 = CGDataProviderCreateWithData(v19, BaseAddress, v17 & ~v11, release_surface_data);
    v32 = v31;
    if (!v31)
    {
      v33 = getWFActionsLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.a) = 136315138;
        *(&buf.a + 4) = "[WFTakeScreenshotAction screenshotDisplay:error:]";
        _os_log_impl(&dword_23DE30000, v33, OS_LOG_TYPE_ERROR, "%s Failed to create new data provider.", &buf, 0xCu);
      }

      v37 = 0;
      goto LABEL_24;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__WFTakeScreenshotAction_screenshotDisplay_error___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v31;
    v33 = _Block_copy(aBlock);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __50__WFTakeScreenshotAction_screenshotDisplay_error___block_invoke_2;
    v62[3] = &__block_descriptor_40_e5_v8__0l;
    v62[4] = DeviceRGB;
    v35 = _Block_copy(v62);
    v36 = CGImageCreate(v58, height, 8uLL, 0x20uLL, v14, DeviceRGB, 0x2002u, v32, 0, 1, kCGRenderingIntentDefault);
    v37 = v36;
    if (!v36)
    {
LABEL_23:
      v35[2](v35);

      (*(v33 + 16))(v33);
LABEL_24:

      goto LABEL_25;
    }

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __50__WFTakeScreenshotAction_screenshotDisplay_error___block_invoke_3;
    v61[3] = &__block_descriptor_40_e5_v8__0l;
    v61[4] = v36;
    v38 = _Block_copy(v61);
    v39 = [v60 currentOrientation];
    v40 = [v39 isEqualToString:*MEMORY[0x277CDA198]];

    if (v40)
    {
      v41 = 1.57079633;
    }

    else
    {
      v42 = [v60 currentOrientation];
      v43 = [v42 isEqualToString:*MEMORY[0x277CDA190]];

      if (v43)
      {
        v41 = -1.57079633;
      }

      else
      {
        v44 = [v60 currentOrientation];
        v45 = [v44 isEqualToString:*MEMORY[0x277CDA188]];

        if ((v45 & 1) == 0)
        {
          v37 = [objc_alloc(MEMORY[0x277D79FC8]) initWithCGImage:v37 scale:1 orientation:1.0];
          goto LABEL_22;
        }

        v41 = 3.14159265;
      }
    }

    v46 = v65;
    CGAffineTransformMakeRotation(&buf, v41);
    v72.origin.x = 0.0;
    v72.origin.y = 0.0;
    v72.size = v46;
    v73 = CGRectApplyAffineTransform(v72, &buf);
    v47 = v73.size.width;
    v48 = v73.size.height;
    v49 = [MEMORY[0x277D79DF8] HDRCapableContextWithSize:v73.size.width scale:{v73.size.height, 1.0}];
    v50 = v49;
    CGContextTranslateCTM([v49 CGContext], v47 * 0.5, v48 * 0.5);
    v51 = v49;
    CGContextRotateCTM([v49 CGContext], v41);
    v52 = v49;
    CGContextScaleCTM([v49 CGContext], 1.0, -1.0);
    v53 = v49;
    v54 = [v49 CGContext];
    v74.size = v65;
    v74.origin.x = ceil(v65.width * -0.5);
    v74.origin.y = ceil(v65.height * -0.5);
    CGContextDrawImage(v54, v74, v37);
    v37 = [v49 image];

LABEL_22:
    v38[2](v38);

    goto LABEL_23;
  }

  v28 = getWFActionsLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.a) = 136315138;
    *(&buf.a + 4) = "[WFTakeScreenshotAction screenshotDisplay:error:]";
    _os_log_impl(&dword_23DE30000, v28, OS_LOG_TYPE_ERROR, "%s Failed to create IOSurface.", &buf, 0xCu);
  }

  v37 = 0;
LABEL_25:

  v55 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)takeScreenshot
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [MEMORY[0x277CD9E40] displays];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = *MEMORY[0x277CFC6C0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (([v9 isCloning] & 1) == 0)
        {
          v21 = 0;
          v10 = [(WFTakeScreenshotAction *)self screenshotDisplay:v9 error:&v21];
          v11 = v21;
          v12 = v11;
          if (v10)
          {
            v13 = 1;
          }

          else
          {
            v13 = v11 == 0;
          }

          if (!v13)
          {
            [(WFTakeScreenshotAction *)self finishRunningWithError:v11];

            goto LABEL_18;
          }

          if (v10)
          {
            [MEMORY[0x277CFC3F8] log:v7];
            v14 = MEMORY[0x277CFC410];
            v15 = [MEMORY[0x277CFC318] screenshotLocation];
            v16 = [v14 itemWithObject:v10 origin:v15 disclosureLevel:1];

            [v16 setIsScreenshot:1];
            v17 = [(WFTakeScreenshotAction *)self output];
            [v17 addItem:v16];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = softLinkSBSSpringBoardServerPort();
  softLinkSBFlashColor(v18, 1.0, 1.0, 1.0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__WFTakeScreenshotAction_takeScreenshot__block_invoke;
  v20[3] = &unk_278C224A0;
  v20[4] = self;
  [(WFTakeScreenshotAction *)self notifyVisibleScenesOfScreenshot:v20];
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a5;
  v7 = WFLocalizedString(@"Allow “%1$@” to take a screenshot?");
  v8 = [v5 localizedStringWithFormat:v7, v6];

  return v8;
}

- (id)parameterSummary
{
  v2 = objc_alloc(MEMORY[0x277D7C0C0]);
  v3 = WFLocalizedStringResourceWithKey(@"Take screenshot", @"Take screenshot");
  v4 = [v2 initWithString:v3];

  return v4;
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = WFTakeScreenshotAction;
  [(WFTakeScreenshotAction *)&v2 cancel];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFC450] defaultProfile];
  v5 = [v4 isScreenShotAllowed];

  if (v5)
  {
    v6 = [(WFTakeScreenshotAction *)self variableSource];
    v7 = [v6 workflowStartDate];

    v8 = [(WFTakeScreenshotAction *)self variableSource];
    v9 = [v8 contentForPrivateVariableKey:@"WFTakeScreenshotActionConfirmed"];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v15 = v10;

    v16 = [v15 BOOLValue];
    if (v7 && (v16 & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEA80] currentCalendar];
      v18 = [v17 dateByAddingUnit:64 value:10 toDate:v7 options:0];

      v19 = [MEMORY[0x277CBEAA8] date];
      v20 = [v19 compare:v18];

      if (v20 == 1)
      {
        v21 = [(WFTakeScreenshotAction *)self workflow];
        if ([v21 hiddenFromLibraryAndSync])
        {
        }

        else
        {
          v22 = [(WFTakeScreenshotAction *)self workflow];
          v23 = [v22 name];

          if (v23)
          {
            v24 = MEMORY[0x277CCACA8];
            v25 = WFLocalizedString(@"The shortcut “%@” wants to take a screenshot. Do you want to allow it?");
            v26 = [v24 localizedStringWithFormat:v25, v23];

LABEL_18:
            v27 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
            v28 = [(WFTakeScreenshotAction *)self localizedName];
            [v27 setTitle:v28];

            [v27 setMessage:v26];
            v29 = MEMORY[0x277CFC220];
            v30 = WFLocalizedString(@"Don’t Allow");
            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __53__WFTakeScreenshotAction_runAsynchronouslyWithInput___block_invoke;
            v38[3] = &unk_278C224A0;
            v38[4] = self;
            v31 = [v29 buttonWithTitle:v30 style:1 handler:v38];
            [v27 addButton:v31];

            v32 = MEMORY[0x277CFC220];
            v33 = WFLocalizedString(@"OK");
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __53__WFTakeScreenshotAction_runAsynchronouslyWithInput___block_invoke_2;
            v37[3] = &unk_278C224A0;
            v37[4] = self;
            v34 = [v32 buttonWithTitle:v33 style:0 preferred:1 handler:v37];
            [v27 addButton:v34];

            v35 = [(WFTakeScreenshotAction *)self userInterface];
            [v35 presentAlert:v27];

            goto LABEL_19;
          }
        }

        v26 = WFLocalizedString(@"This shortcut wants to take a screenshot. Do you want to allow it?");
        goto LABEL_18;
      }
    }

    [(WFTakeScreenshotAction *)self takeScreenshot];
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D7CB30];
    v39 = *MEMORY[0x277CCA450];
    v7 = WFLocalizedString(@"Your administrator doesn't allow taking screenshots.");
    v40[0] = v7;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v14 = [v11 errorWithDomain:v12 code:8 userInfo:v13];
    [(WFTakeScreenshotAction *)self finishRunningWithError:v14];
  }

LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
}

void __53__WFTakeScreenshotAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishRunningWithError:v2];
}

uint64_t __53__WFTakeScreenshotAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) variableSource];
  [v2 setContent:MEMORY[0x277CBEC38] forPrivateVariableKey:@"WFTakeScreenshotActionConfirmed"];

  v3 = *(a1 + 32);

  return [v3 takeScreenshot];
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFTakeScreenshotAction;
  v2 = [(WFTakeScreenshotAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end