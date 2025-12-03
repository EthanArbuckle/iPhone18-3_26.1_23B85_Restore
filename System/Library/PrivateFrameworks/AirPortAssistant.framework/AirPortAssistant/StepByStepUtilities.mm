@interface StepByStepUtilities
+ (id)findSourceBaseByName:(id)name fromParamDict:(id)dict;
+ (id)findSourceBaseByRadioName:(id)name fromParamDict:(id)dict;
+ (id)findSourceConfigByName:(id)name fromParamDict:(id)dict;
+ (id)findSourceNetworkByName:(id)name fromParamDict:(id)dict;
+ (id)getProductLocalizedStringWithFormat:(id)format fromParamDict:(id)dict;
+ (id)nameForNetworkOrDevice:(id)device;
+ (id)productIDForNetworkOrDevice:(id)device;
+ (id)selectorChoiceToReplaceOption:(int)option;
+ (int)getDeviceKindFromParamDict:(id)dict;
+ (int)matrixTagToSelectorChoice:(int64_t)choice;
+ (int64_t)autoGuessRecommendationToMatrixTag:(id)tag;
+ (int64_t)selectorChoiceToMatrixTag:(int)tag;
+ (unsigned)getProductIDFromParamDict:(id)dict;
+ (void)formatRecommendation:(id)recommendation fromParamDict:(id)dict forStep:(int)step restoreString:(id *)string restoreSpecificString:(id *)specificString dontRecommendString:(id *)recommendString;
@end

@implementation StepByStepUtilities

+ (unsigned)getProductIDFromParamDict:(id)dict
{
  v4 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_TargetBase");
  if (v4)
  {

    return sub_23EB6A2C0(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v14 = objc_msgSend_objectForKey_(dict, v5, @"kSBSKey_TargetNetwork");

    return objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v13, v14);
  }
}

+ (int)getDeviceKindFromParamDict:(id)dict
{
  v4 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_TargetBase");
  if (v4)
  {

    return sub_23EB6A294(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v14 = objc_msgSend_objectForKey_(dict, v5, @"kSBSKey_TargetNetwork");

    return objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v13, v14);
  }
}

+ (id)getProductLocalizedStringWithFormat:(id)format fromParamDict:(id)dict
{
  v7 = MEMORY[0x277CCACA8];
  ProductIDFromParamDict = objc_msgSend_getProductIDFromParamDict_(self, a2, dict);
  DeviceKindFromParamDict = objc_msgSend_getDeviceKindFromParamDict_(self, v9, dict);
  v11 = sub_23EB6CE6C(ProductIDFromParamDict, DeviceKindFromParamDict);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v7, v12, format, @"%@", 0, v11);
  if (!valid)
  {
    return &stru_285145FE8;
  }

  v14 = qword_27E383800;

  return sub_23EB6CD3C(valid, v14);
}

+ (id)findSourceBaseByName:(id)name fromParamDict:(id)dict
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_BrowseRecordList", 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v5);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_objectForKey_(v12, v8, @"name");
    if (objc_msgSend_isEqualToString_(v13, v14, name))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceBaseByRadioName:(id)name fromParamDict:(id)dict
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_BrowseRecordList", 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v5);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_objectForKey_(v12, v8, @"name");
    if (objc_msgSend_isEqualToString_(v13, v14, name))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceNetworkByName:(id)name fromParamDict:(id)dict
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_NetworkScanRecordList", 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v5);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_objectForKey_(v12, v8, @"SSID_STR");
    if (objc_msgSend_isEqualToString_(v13, v14, name))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceConfigByName:(id)name fromParamDict:(id)dict
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_PreviousConfigurationList", 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (!v7)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v17;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v17 != v10)
    {
      objc_enumerationMutation(v5);
    }

    v12 = *(*(&v16 + 1) + 8 * v11);
    v13 = objc_msgSend_objectForKey_(v12, v8, @"device");
    if (objc_msgSend_isEqualToString_(v13, v14, name))
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)selectorChoiceToReplaceOption:(int)option
{
  if ((option - 311) > 3)
  {
    return @"Restore";
  }

  else
  {
    return off_278C692D8[option - 311];
  }
}

+ (int64_t)selectorChoiceToMatrixTag:(int)tag
{
  v3 = 1131570529;
  if (tag == 200)
  {
    v3 = 1165522021;
  }

  if (tag == 300)
  {
    v3 = 1382379628;
  }

  if (tag == 400)
  {
    return 1382380404;
  }

  else
  {
    return v3;
  }
}

+ (int)matrixTagToSelectorChoice:(int64_t)choice
{
  if (choice == 1165522021)
  {
    v3 = 200;
  }

  else
  {
    v3 = 100;
  }

  if (choice == 1382379628)
  {
    v3 = 300;
  }

  if (choice == 1382380404)
  {
    return 400;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)autoGuessRecommendationToMatrixTag:(id)tag
{
  if (objc_msgSend_isEqualToString_(tag, a2, @"BSSetupRecommend_OfferCreate"))
  {
    return 1131570529;
  }

  v5 = 1165522021;
  if ((objc_msgSend_isEqualToString_(tag, v4, @"BSSetupRecommend_OfferExtendOverEthernet") & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v6, @"BSSetupRecommend_OfferExtendWirelessly") & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v7, @"BSSetupRecommend_OfferJoinNetwork") & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v8, @"BSSetupRecommend_AskUserChooseBaseWired") & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v9, @"BSSetupRecommend_AskUserChooseBaseWireless") & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v10, @"BSSetupRecommend_AskUserChooseNetworkToJoin") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(tag, v11, @"BSSetupRecommend_OfferReplace"))
    {
      return 1382379628;
    }

    v5 = 1131570529;
    if (objc_msgSend_isEqualToString_(tag, v12, @"BSSetupRecommend_OfferReplaceConfiguration"))
    {
      return 1382379628;
    }
  }

  return v5;
}

+ (void)formatRecommendation:(id)recommendation fromParamDict:(id)dict forStep:(int)step restoreString:(id *)string restoreSpecificString:(id *)specificString dontRecommendString:(id *)recommendString
{
  recommendationCopy = recommendation;
  if (recommendation || (v14 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_RestoreRecommendation"), (recommendationCopy = v14) != 0))
  {
    recommendStringCopy = recommendString;
    v15 = objc_msgSend_objectForKey_(recommendationCopy, a2, @"BSAutoGuess_Recommendation");
    v17 = objc_msgSend_objectForKey_(recommendationCopy, v16, @"BSAutoGuess_RestoreData");
    v19 = objc_msgSend_objectForKey_(recommendationCopy, v18, @"BSAutoGuess_RestoreNetworkMode");
    v22 = objc_msgSend_integerValue(v19, v20, v21);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v23, @"BSSetupRecommend_OfferRestore");
    valid = 0;
    if (v22 <= 2)
    {
      if (!v22)
      {
        if (objc_msgSend_length(v17, v24, v25))
        {
          if (step == 16)
          {
            ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v43, @"WillRestoreToCreateNetworkSpecific%@", dict);
          }

          else
          {
            ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v43, @"CanRestoreToCreateNetworkSpecific%@", dict);
          }

          v45 = sub_23EB6CD3C(ProductLocalizedStringWithFormat_fromParamDict, qword_27E383800);
          valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v46, v45, @"%@", 0, v17);
        }

        else
        {
          valid = 0;
        }

        v49 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v43, @"CanRestoreToCreateNetwork%@", dict);
        goto LABEL_49;
      }

      v28 = 0;
      if (v22 != 1)
      {
        goto LABEL_50;
      }

      if (objc_msgSend_length(v17, v24, v25))
      {
        if (step == 16)
        {
          v33 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"WillRestoreToJoinNetworkSpecific%@", dict);
        }

        else
        {
          v33 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"CanRestoreToJoinNetworkSpecific%@", dict);
        }

        v34 = sub_23EB6CD3C(v33, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v35, v34, @"%@", 0, v17);
      }

      else
      {
        valid = 0;
      }

      v47 = @"CanRestoreToJoinNetwork%@";
      v48 = @"WillRestoreToJoinNetwork%@";
    }

    else if (v22 == 3)
    {
      if (objc_msgSend_length(v17, v24, v25))
      {
        if (step == 16)
        {
          v36 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"WillRestoreToWirelessDisabledSpecific%@", dict);
        }

        else
        {
          v36 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"CanRestoreToWirelessDisabledSpecific%@", dict);
        }

        v37 = sub_23EB6CD3C(v36, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v38, v37, @"%@", 0, v17);
      }

      else
      {
        valid = 0;
      }

      v47 = @"CanRestoreToWirelessDisabled%@";
      v48 = @"WillRestoreToWirelessDisabled%@";
    }

    else
    {
      if (v22 == 10)
      {
        if (objc_msgSend_length(v17, v24, v25))
        {
          if (step == 16)
          {
            v40 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v39, @"WillRestoreToExtendNetworkSpecific%@", dict);
          }

          else
          {
            v40 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v39, @"CanRestoreToExtendNetworkSpecific%@", dict);
          }

          v41 = sub_23EB6CD3C(v40, qword_27E383800);
          valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v42, v41, @"%@", 0, v17);
        }

        else
        {
          valid = 0;
        }

        v49 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v39, @"CanRestoreToExtendNetwork%@", dict);
        goto LABEL_49;
      }

      v28 = 0;
      if (v22 != 20)
      {
        goto LABEL_50;
      }

      if (objc_msgSend_length(v17, v24, v25))
      {
        if (step == 16)
        {
          v30 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"WillRestoreToExtendNetworkSpecific%@", dict);
        }

        else
        {
          v30 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, @"CanRestoreToExtendNetworkSpecific%@", dict);
        }

        v31 = sub_23EB6CD3C(v30, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v32, v31, @"%@", 0, v17);
      }

      else
      {
        valid = 0;
      }

      v47 = @"CanRestoreToExtendNetwork%@";
      v48 = @"WillRestoreToExtendNetwork%@";
    }

    if (step == 16)
    {
      v49 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, v48, dict);
    }

    else
    {
      v49 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v29, v47, dict);
    }

LABEL_49:
    v28 = sub_23EB6CD3C(v49, qword_27E383800);
LABEL_50:
    if (isEqualToString)
    {
LABEL_51:
      v14 = 0;
      goto LABEL_61;
    }

    v50 = objc_msgSend_objectForKey_(recommendationCopy, v24, @"BSAutoGuess_NoRestoreReason");
    v53 = objc_msgSend_integerValue(v50, v51, v52);
    switch(v53)
    {
      case 4:
        v58 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v54, @"CannotRecommendRestoreDHCPRangeConflict%@", dict);
        break;
      case 3:
        v58 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v54, @"CannotRecommendRestoreDisabledNoWanLink%@", dict);
        break;
      case 2:
        v14 = 0;
        if (v22 <= 0x14 && ((1 << v22) & 0x100402) != 0)
        {
          v55 = sub_23EB6CD3C(@"CannotRecommendRestoreCantFindWiFi", qword_27E383800);
          v56 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
          v14 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v57, v56, @"%@", 0, v55);
        }

LABEL_61:
        recommendString = recommendStringCopy;
        if (!string)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      default:
        goto LABEL_51;
    }

    v14 = sub_23EB6CD3C(v58, qword_27E383800);
    goto LABEL_61;
  }

  valid = 0;
  v28 = 0;
  if (string)
  {
LABEL_62:
    *string = v28;
  }

LABEL_63:
  if (specificString)
  {
    *specificString = valid;
  }

  if (recommendString)
  {
    *recommendString = v14;
  }
}

+ (id)nameForNetworkOrDevice:(id)device
{
  v4 = objc_msgSend_valueForKey_(device, a2, @"SSID_STR");
  if (objc_msgSend_length(v4, v5, v6))
  {
    return v4;
  }

  return objc_msgSend_valueForKey_(device, v7, @"name");
}

+ (id)productIDForNetworkOrDevice:(id)device
{
  v3 = MEMORY[0x277CCABB0];
  v5 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, device);

  return objc_msgSend_numberWithInteger_(v3, v4, v5);
}

@end