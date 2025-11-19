@interface AMSTapToRadar
+ (BOOL)openAPIWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10;
+ (id)_componentVersionForComponent:(unint64_t)a3;
+ (id)_convertClassification:(unint64_t)a3;
+ (id)_convertReproducibility:(unint64_t)a3;
+ (int64_t)_classificationFromAMSClassification:(unint64_t)a3;
+ (int64_t)_componentIDForComponent:(unint64_t)a3;
+ (int64_t)_reproducibilityFromAMSReproducibility:(unint64_t)a3;
+ (void)openURLWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10;
+ (void)openWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10;
+ (void)openWithTitle:(id)a3 description:(id)a4 classification:(unint64_t)a5 reproducibility:(unint64_t)a6 keywordIds:(id)a7;
@end

@implementation AMSTapToRadar

+ (void)openWithTitle:(id)a3 description:(id)a4 classification:(unint64_t)a5 reproducibility:(unint64_t)a6 keywordIds:(id)a7
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = [v12 alloc];
  v18 = +[AMSDevice buildVersion];
  v17 = [v16 initWithFormat:@"[%@] %@", v18, v15, 0];

  [a1 openWithRadarTitle:v17 radarDescription:v14 promptTitle:@"[AMS] Fault Detected" promptDescription:@"Please consider filing a radar." classification:a5 component:0 reproducibility:a6 keywordIds:v13];
}

+ (void)openWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10
{
  v20 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a10;
  if (!+[AMSDefaults disableTapToRadar](AMSDefaults, "disableTapToRadar") && ([a1 openAPIWithRadarTitle:v20 radarDescription:v16 promptTitle:v17 promptDescription:v18 classification:a7 component:a8 reproducibility:a9 keywordIds:v19] & 1) == 0)
  {
    [a1 openURLWithRadarTitle:v20 radarDescription:v16 promptTitle:v17 promptDescription:v18 classification:a7 component:a8 reproducibility:a9 keywordIds:v19];
  }
}

+ (BOOL)openAPIWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = _MergedGlobals_77[0]();
  if (v18)
  {
    v19 = [(objc_class *)v18 shared];
    if (v19)
    {
      v20 = objc_alloc(off_1ED6DF228[0]());
      v21 = [a1 _componentNameForComponent:a8];
      v22 = [a1 _componentVersionForComponent:a8];
      v23 = [v20 initWithName:v21 version:v22 identifier:{objc_msgSend(a1, "_componentIDForComponent:", a8)}];

      v24 = objc_alloc_init(off_1ED6DF230());
      [v24 setClassification:{objc_msgSend(a1, "_classificationFromAMSClassification:", a7)}];
      [v24 setComponent:v23];
      [v24 setIsUserInitiated:0];
      [v24 setProblemDescription:v16];
      [v24 setReproducibility:{objc_msgSend(a1, "_reproducibilityFromAMSReproducibility:", a9)}];
      v25 = [MEMORY[0x1E695DF00] now];
      [v24 setTimeOfIssue:v25];

      [v24 setTitle:v15];
      v26 = +[AMSProcessInfo currentProcess];
      v27 = [v26 executableName];
      v31 = 0;
      [v19 createDraft:v24 forProcessNamed:v27 withDisplayReason:v17 error:&v31];
      v28 = v31;

      v29 = v28 == 0;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (void)openURLWithRadarTitle:(id)a3 radarDescription:(id)a4 promptTitle:(id)a5 promptDescription:(id)a6 classification:(unint64_t)a7 component:(unint64_t)a8 reproducibility:(unint64_t)a9 keywordIds:(id)a10
{
  v43[7] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = [MEMORY[0x1E695DFF8] URLWithString:@"tap-to-radar://new"];
  if (v20)
  {
    v21 = &stru_1F071BA78;
    v42[0] = @"Title";
    v42[1] = @"Description";
    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = &stru_1F071BA78;
    }

    if (v17)
    {
      v21 = v17;
    }

    v43[0] = v22;
    v43[1] = v21;
    v42[2] = @"ComponentID";
    v39 = v18;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(a1, "_componentIDForComponent:", a8)];
    v43[2] = v23;
    v42[3] = @"ComponentName";
    [a1 _componentNameForComponent:a8];
    v38 = v17;
    v24 = v16;
    v26 = v25 = v19;
    v43[3] = v26;
    v42[4] = @"ComponentVersion";
    v27 = [a1 _componentVersionForComponent:a8];
    v43[4] = v27;
    v42[5] = @"Reproducibility";
    v28 = [a1 _convertReproducibility:a9];
    v43[5] = v28;
    v42[6] = @"Classification";
    v29 = [a1 _convertClassification:a7];
    v43[6] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:7];
    v31 = [v20 ams_URLByReplacingQueryParameters:v30];

    v19 = v25;
    v16 = v24;
    v17 = v38;

    v18 = v39;
    v32 = [[AMSDialogRequest alloc] initWithTitle:v39 message:v19];
    v33 = [AMSDialogAction actionWithTitle:@"Cancel" style:2];
    [(AMSDialogRequest *)v32 addButtonAction:v33];

    v34 = [AMSDialogAction actionWithTitle:@"Tap-To-Radar" identifier:@"Ok"];
    [(AMSDialogRequest *)v32 addButtonAction:v34];

    v35 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v32];
    v36 = [(AMSSystemAlertDialogTask *)v35 present];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __138__AMSTapToRadar_openURLWithRadarTitle_radarDescription_promptTitle_promptDescription_classification_component_reproducibility_keywordIds___block_invoke;
    v40[3] = &unk_1E73B3D40;
    v41 = v31;
    v37 = v31;
    [v36 addFinishBlock:v40];
  }
}

void __138__AMSTapToRadar_openURLWithRadarTitle_radarDescription_promptTitle_promptDescription_classification_component_reproducibility_keywordIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 selectedActionIdentifier];
  v4 = [v3 isEqualToString:@"Ok"];

  if (v4)
  {
    v5 = *(a1 + 32);

    [AMSOpenURL openStandardURL:v5];
  }
}

+ (int64_t)_componentIDForComponent:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 954976;
  }

  else
  {
    return qword_193016B18[a3 - 1];
  }
}

+ (id)_componentVersionForComponent:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"New Bugs";
  }

  else
  {
    return off_1E73BC890[a3 - 1];
  }
}

+ (int64_t)_classificationFromAMSClassification:(unint64_t)a3
{
  if (a3 - 1 < 9)
  {
    return a3 + 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_convertClassification:(unint64_t)a3
{
  if (a3 - 1 > 8)
  {
    return @"Security";
  }

  else
  {
    return off_1E73BC8A8[a3 - 1];
  }
}

+ (int64_t)_reproducibilityFromAMSReproducibility:(unint64_t)a3
{
  if (a3 - 1 < 5)
  {
    return a3 + 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_convertReproducibility:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"Always";
  }

  else
  {
    return off_1E73BC8F0[a3 - 1];
  }
}

@end