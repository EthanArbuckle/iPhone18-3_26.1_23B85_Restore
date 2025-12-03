@interface AMSTapToRadar
+ (BOOL)openAPIWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0;
+ (id)_componentVersionForComponent:(unint64_t)component;
+ (id)_convertClassification:(unint64_t)classification;
+ (id)_convertReproducibility:(unint64_t)reproducibility;
+ (int64_t)_classificationFromAMSClassification:(unint64_t)classification;
+ (int64_t)_componentIDForComponent:(unint64_t)component;
+ (int64_t)_reproducibilityFromAMSReproducibility:(unint64_t)reproducibility;
+ (void)openURLWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0;
+ (void)openWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0;
+ (void)openWithTitle:(id)title description:(id)description classification:(unint64_t)classification reproducibility:(unint64_t)reproducibility keywordIds:(id)ids;
@end

@implementation AMSTapToRadar

+ (void)openWithTitle:(id)title description:(id)description classification:(unint64_t)classification reproducibility:(unint64_t)reproducibility keywordIds:(id)ids
{
  v12 = MEMORY[0x1E696AEC0];
  idsCopy = ids;
  descriptionCopy = description;
  titleCopy = title;
  v16 = [v12 alloc];
  v18 = +[AMSDevice buildVersion];
  v17 = [v16 initWithFormat:@"[%@] %@", v18, titleCopy, 0];

  [self openWithRadarTitle:v17 radarDescription:descriptionCopy promptTitle:@"[AMS] Fault Detected" promptDescription:@"Please consider filing a radar." classification:classification component:0 reproducibility:reproducibility keywordIds:idsCopy];
}

+ (void)openWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0
{
  titleCopy = title;
  descriptionCopy = description;
  promptTitleCopy = promptTitle;
  promptDescriptionCopy = promptDescription;
  idsCopy = ids;
  if (!+[AMSDefaults disableTapToRadar](AMSDefaults, "disableTapToRadar") && ([self openAPIWithRadarTitle:titleCopy radarDescription:descriptionCopy promptTitle:promptTitleCopy promptDescription:promptDescriptionCopy classification:classification component:component reproducibility:reproducibility keywordIds:idsCopy] & 1) == 0)
  {
    [self openURLWithRadarTitle:titleCopy radarDescription:descriptionCopy promptTitle:promptTitleCopy promptDescription:promptDescriptionCopy classification:classification component:component reproducibility:reproducibility keywordIds:idsCopy];
  }
}

+ (BOOL)openAPIWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0
{
  titleCopy = title;
  descriptionCopy = description;
  promptDescriptionCopy = promptDescription;
  v18 = _MergedGlobals_77[0]();
  if (v18)
  {
    shared = [(objc_class *)v18 shared];
    if (shared)
    {
      v20 = objc_alloc(off_1ED6DF228[0]());
      v21 = [self _componentNameForComponent:component];
      v22 = [self _componentVersionForComponent:component];
      v23 = [v20 initWithName:v21 version:v22 identifier:{objc_msgSend(self, "_componentIDForComponent:", component)}];

      v24 = objc_alloc_init(off_1ED6DF230());
      [v24 setClassification:{objc_msgSend(self, "_classificationFromAMSClassification:", classification)}];
      [v24 setComponent:v23];
      [v24 setIsUserInitiated:0];
      [v24 setProblemDescription:descriptionCopy];
      [v24 setReproducibility:{objc_msgSend(self, "_reproducibilityFromAMSReproducibility:", reproducibility)}];
      v25 = [MEMORY[0x1E695DF00] now];
      [v24 setTimeOfIssue:v25];

      [v24 setTitle:titleCopy];
      v26 = +[AMSProcessInfo currentProcess];
      executableName = [v26 executableName];
      v31 = 0;
      [shared createDraft:v24 forProcessNamed:executableName withDisplayReason:promptDescriptionCopy error:&v31];
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

+ (void)openURLWithRadarTitle:(id)title radarDescription:(id)description promptTitle:(id)promptTitle promptDescription:(id)promptDescription classification:(unint64_t)classification component:(unint64_t)component reproducibility:(unint64_t)reproducibility keywordIds:(id)self0
{
  v43[7] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  promptTitleCopy = promptTitle;
  promptDescriptionCopy = promptDescription;
  v20 = [MEMORY[0x1E695DFF8] URLWithString:@"tap-to-radar://new"];
  if (v20)
  {
    v21 = &stru_1F071BA78;
    v42[0] = @"Title";
    v42[1] = @"Description";
    if (titleCopy)
    {
      v22 = titleCopy;
    }

    else
    {
      v22 = &stru_1F071BA78;
    }

    if (descriptionCopy)
    {
      v21 = descriptionCopy;
    }

    v43[0] = v22;
    v43[1] = v21;
    v42[2] = @"ComponentID";
    v39 = promptTitleCopy;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(self, "_componentIDForComponent:", component)];
    v43[2] = v23;
    v42[3] = @"ComponentName";
    [self _componentNameForComponent:component];
    v38 = descriptionCopy;
    v24 = titleCopy;
    v26 = v25 = promptDescriptionCopy;
    v43[3] = v26;
    v42[4] = @"ComponentVersion";
    v27 = [self _componentVersionForComponent:component];
    v43[4] = v27;
    v42[5] = @"Reproducibility";
    v28 = [self _convertReproducibility:reproducibility];
    v43[5] = v28;
    v42[6] = @"Classification";
    v29 = [self _convertClassification:classification];
    v43[6] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:7];
    v31 = [v20 ams_URLByReplacingQueryParameters:v30];

    promptDescriptionCopy = v25;
    titleCopy = v24;
    descriptionCopy = v38;

    promptTitleCopy = v39;
    v32 = [[AMSDialogRequest alloc] initWithTitle:v39 message:promptDescriptionCopy];
    v33 = [AMSDialogAction actionWithTitle:@"Cancel" style:2];
    [(AMSDialogRequest *)v32 addButtonAction:v33];

    v34 = [AMSDialogAction actionWithTitle:@"Tap-To-Radar" identifier:@"Ok"];
    [(AMSDialogRequest *)v32 addButtonAction:v34];

    v35 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v32];
    present = [(AMSSystemAlertDialogTask *)v35 present];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __138__AMSTapToRadar_openURLWithRadarTitle_radarDescription_promptTitle_promptDescription_classification_component_reproducibility_keywordIds___block_invoke;
    v40[3] = &unk_1E73B3D40;
    v41 = v31;
    v37 = v31;
    [present addFinishBlock:v40];
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

+ (int64_t)_componentIDForComponent:(unint64_t)component
{
  if (component - 1 > 2)
  {
    return 954976;
  }

  else
  {
    return qword_193016B18[component - 1];
  }
}

+ (id)_componentVersionForComponent:(unint64_t)component
{
  if (component - 1 > 2)
  {
    return @"New Bugs";
  }

  else
  {
    return off_1E73BC890[component - 1];
  }
}

+ (int64_t)_classificationFromAMSClassification:(unint64_t)classification
{
  if (classification - 1 < 9)
  {
    return classification + 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_convertClassification:(unint64_t)classification
{
  if (classification - 1 > 8)
  {
    return @"Security";
  }

  else
  {
    return off_1E73BC8A8[classification - 1];
  }
}

+ (int64_t)_reproducibilityFromAMSReproducibility:(unint64_t)reproducibility
{
  if (reproducibility - 1 < 5)
  {
    return reproducibility + 1;
  }

  else
  {
    return 1;
  }
}

+ (id)_convertReproducibility:(unint64_t)reproducibility
{
  if (reproducibility - 1 > 4)
  {
    return @"Always";
  }

  else
  {
    return off_1E73BC8F0[reproducibility - 1];
  }
}

@end