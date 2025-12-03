@interface AXAuditIssueDescriptionManager
+ (id)_auditIssueTypeToLocalizationKeyLookup;
+ (id)allAuditIssueClassificationCodes;
+ (id)auditIssueTypeToAuditTestTypeMapping;
+ (id)sharedManager;
- (id)_locKeyForAuditIssueClassification:(int64_t)classification;
- (id)_locKeyWithSuffix:(id)suffix issueClassification:(int64_t)classification;
- (id)_locStringForIssue:(id)issue suffix:(id)suffix;
- (id)_locStringForKey:(id)key;
- (id)humanReadableDescriptionForAuditIssueTestType:(id)type;
- (id)humanReadableDescriptionForAuditTestType:(id)type;
- (id)longDescExtraInfoForAuditIssue:(id)issue;
- (id)shortTitleForAuditIssue:(id)issue;
- (id)suggestionDescriptionForAuditIssue:(id)issue;
@end

@implementation AXAuditIssueDescriptionManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXAuditIssueDescriptionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_4 != -1)
  {
    dispatch_once(&sharedManager_onceToken_4, block);
  }

  v2 = sharedManager_instance_4;

  return v2;
}

uint64_t __47__AXAuditIssueDescriptionManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_4 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)shortTitleForAuditIssue:(id)issue
{
  issueCopy = issue;
  mlGeneratedDescription = [issueCopy mlGeneratedDescription];

  if (mlGeneratedDescription)
  {
    mlGeneratedDescription2 = [issueCopy mlGeneratedDescription];
    v7 = -[AXAuditIssueDescriptionManager _locKeyWithSuffix:issueClassification:](self, "_locKeyWithSuffix:issueClassification:", @"title.formatter", [issueCopy issueClassification]);
    v8 = v7;
    v9 = &stru_284FBB130;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v10];

    v13 = [v11 stringWithFormat:v12, mlGeneratedDescription2];
  }

  else
  {
    v13 = [(AXAuditIssueDescriptionManager *)self _locStringForIssue:issueCopy suffix:@"title"];
  }

  return v13;
}

- (id)longDescExtraInfoForAuditIssue:(id)issue
{
  issueCopy = issue;
  longDescExtraInfo = [issueCopy longDescExtraInfo];

  if (longDescExtraInfo)
  {
    longDescExtraInfo2 = [issueCopy longDescExtraInfo];
    v7 = [longDescExtraInfo2 componentsJoinedByString:{@", "}];

    v8 = [(AXAuditIssueDescriptionManager *)self _locStringForIssue:issueCopy suffix:@"longDescExtraInfo"];
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v7];
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v10 = &stru_284FBB130;
  }

  return v10;
}

- (id)suggestionDescriptionForAuditIssue:(id)issue
{
  v34 = *MEMORY[0x277D85DE8];
  issueCopy = issue;
  suggestedSelectorsToFix = [issueCopy suggestedSelectorsToFix];
  if ([suggestedSelectorsToFix count])
  {
    v6 = -[AXAuditIssueDescriptionManager _locKeyWithSuffix:issueClassification:](self, "_locKeyWithSuffix:issueClassification:", @"suggestion.formatter", [issueCopy issueClassification]);
    if (!v6)
    {
      v15 = 0;
      v7 = 0;
      goto LABEL_19;
    }

    v7 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = suggestedSelectorsToFix;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 appendFormat:@"%@, ", *(*(&v29 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 2, 2}];
    v13 = MEMORY[0x277CCACA8];
    v14 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v6];
    v15 = [v13 stringWithFormat:v14, v7];

    if (!v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (![v15 isEqual:v6])
    {
LABEL_23:
      v24 = v15;

      goto LABEL_24;
    }

LABEL_19:
    if ([issueCopy platform] == 1)
    {
      v25 = @"defaultIOSSuggestion";
    }

    else
    {
      v25 = @"defaultMacOSSuggestion";
    }

    v26 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v25];

    v15 = v26;
    goto LABEL_23;
  }

  mlGeneratedDescription = [issueCopy mlGeneratedDescription];

  if (!mlGeneratedDescription)
  {
    v6 = -[AXAuditIssueDescriptionManager _locKeyWithSuffix:issueClassification:](self, "_locKeyWithSuffix:issueClassification:", @"suggestion", [issueCopy issueClassification]);
    v15 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v6];
    v7 = 0;
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  mlGeneratedDescription2 = [issueCopy mlGeneratedDescription];
  v18 = -[AXAuditIssueDescriptionManager _locKeyWithSuffix:issueClassification:](self, "_locKeyWithSuffix:issueClassification:", @"suggestion.formatter", [issueCopy issueClassification]);
  v19 = v18;
  v20 = &stru_284FBB130;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = MEMORY[0x277CCACA8];
  v23 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v21];

  v24 = [v22 stringWithFormat:v23, mlGeneratedDescription2];

LABEL_24:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_locStringForKey:(id)key
{
  v3 = _locStringForKey__onceToken_0;
  keyCopy = key;
  if (v3 != -1)
  {
    [AXAuditIssueDescriptionManager _locStringForKey:];
  }

  v5 = [_locStringForKey__myBundle_0 localizedStringForKey:keyCopy value:keyCopy table:@"AuditIssues"];

  return v5;
}

uint64_t __51__AXAuditIssueDescriptionManager__locStringForKey___block_invoke()
{
  _locStringForKey__myBundle_0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)_locStringForIssue:(id)issue suffix:(id)suffix
{
  suffixCopy = suffix;
  issueCopy = issue;
  v8 = -[AXAuditIssueDescriptionManager _locKeyWithSuffix:issueClassification:](self, "_locKeyWithSuffix:issueClassification:", suffixCopy, [issueCopy issueClassification]);

  elementDescription = [issueCopy elementDescription];

  if (!elementDescription)
  {
    elementDescription = [(AXAuditIssueDescriptionManager *)self _locStringForKey:@"element"];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v8];
  v12 = [v10 stringWithFormat:v11, elementDescription];

  if ([v12 isEqual:v8])
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;

  return v13;
}

- (id)_locKeyWithSuffix:(id)suffix issueClassification:(int64_t)classification
{
  suffixCopy = suffix;
  v7 = [(AXAuditIssueDescriptionManager *)self _locKeyForAuditIssueClassification:classification];
  if (v7)
  {
    suffixCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, suffixCopy];
  }

  else
  {
    suffixCopy = 0;
  }

  return suffixCopy;
}

- (id)_locKeyForAuditIssueClassification:(int64_t)classification
{
  v4 = +[AXAuditIssueDescriptionManager _auditIssueTypeToLocalizationKeyLookup];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:classification];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (id)_auditIssueTypeToLocalizationKeyLookup
{
  if (_auditIssueTypeToLocalizationKeyLookup_onceToken != -1)
  {
    +[AXAuditIssueDescriptionManager _auditIssueTypeToLocalizationKeyLookup];
  }

  v3 = _auditIssueTypeToLocalizationKeyLookup__AuditIssueTypeToLocalizationKeyLookup;

  return v3;
}

void __72__AXAuditIssueDescriptionManager__auditIssueTypeToLocalizationKeyLookup__block_invoke()
{
  v4[37] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284FC3AD8;
  v3[1] = &unk_284FC3AF0;
  v4[0] = @"contrastUnknown";
  v4[1] = @"contrastAAPass";
  v3[2] = &unk_284FC3B08;
  v3[3] = &unk_284FC3B20;
  v4[2] = @"contrastAAPartialPass";
  v4[3] = @"contrastAAFail";
  v3[4] = &unk_284FC3B38;
  v3[5] = &unk_284FC3B50;
  v4[4] = @"contrastAAAPass";
  v4[5] = @"contrastAAAPartialPass";
  v3[6] = &unk_284FC3B68;
  v3[7] = &unk_284FC3B80;
  v4[6] = @"contrastAAAFail";
  v4[7] = @"hitRegionTooSmall";
  v3[8] = &unk_284FC3B98;
  v3[9] = &unk_284FC3BB0;
  v4[8] = @"elementLabelAndValueEmptyWithMLGeneratedDesc";
  v4[9] = @"elementLabelAndValueEmpty";
  v3[10] = &unk_284FC3BC8;
  v3[11] = &unk_284FC3BE0;
  v4[10] = @"elementLabelUsesImageName";
  v4[11] = @"elementLabelNotHumanReadable";
  v3[12] = &unk_284FC3BF8;
  v3[13] = &unk_284FC3C10;
  v4[12] = @"elementMissingTraitNotEnabled";
  v4[13] = @"elementLabelDuplicateTraitString";
  v3[14] = &unk_284FC3C28;
  v3[15] = &unk_284FC3C40;
  v4[14] = @"elementValueDuplicateTraitString";
  v4[15] = @"potentialElement";
  v3[16] = &unk_284FC3C58;
  v3[17] = &unk_284FC3C70;
  v4[16] = @"potentialTextElement";
  v4[17] = @"hitTestButNotInSwipeOrder";
  v3[18] = &unk_284FC3C88;
  v3[19] = &unk_284FC3CA0;
  v4[18] = @"inSwipeOrderButNotHitTested";
  v4[19] = @"swipeOrderForwardReverseMismatch";
  v3[20] = &unk_284FC3CB8;
  v3[21] = &unk_284FC3CD0;
  v4[20] = @"dynamicTextUnsupported";
  v4[21] = @"dynamicTextPartiallyUnsupported";
  v3[22] = &unk_284FC3CE8;
  v3[23] = &unk_284FC3D00;
  v4[22] = @"textIsClipped";
  v4[23] = @"elementLabelAndValueEmpty";
  v3[24] = &unk_284FC3D18;
  v3[25] = &unk_284FC3D30;
  v4[24] = @"elementImageHasNoLabel";
  v4[25] = @"elementLabelUsesImageName";
  v3[26] = &unk_284FC3D48;
  v3[27] = &unk_284FC3D60;
  v4[26] = @"missingParent";
  v4[27] = @"notChildOfParent";
  v3[28] = &unk_284FC3D78;
  v3[29] = &unk_284FC3D90;
  v4[28] = @"potentialElement";
  v4[29] = @"elementLabelAndValueEmpty";
  v3[30] = &unk_284FC3DA8;
  v3[31] = &unk_284FC3DC0;
  v4[30] = @"elementLabelNotHumanReadable";
  v4[31] = @"elementImageHasNoLabel";
  v3[32] = &unk_284FC3DD8;
  v3[33] = &unk_284FC3DF0;
  v4[32] = @"elementLabelDuplicateRoleDescription";
  v4[33] = @"elementCouldUseTitle";
  v3[34] = &unk_284FC3E08;
  v3[35] = &unk_284FC3E20;
  v4[34] = @"actionMissing";
  v4[35] = @"unknownRole";
  v3[36] = &unk_284FC3E38;
  v4[36] = @"potentialTextElement";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:37];
  v1 = _auditIssueTypeToLocalizationKeyLookup__AuditIssueTypeToLocalizationKeyLookup;
  _auditIssueTypeToLocalizationKeyLookup__AuditIssueTypeToLocalizationKeyLookup = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)humanReadableDescriptionForAuditIssueTestType:(id)type
{
  issueClassification = [type issueClassification];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:issueClassification];
  v6 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v7 = [v6 objectForKey:v5];

  v8 = [(AXAuditIssueDescriptionManager *)self humanReadableDescriptionForAuditTestType:v7];

  return v8;
}

- (id)humanReadableDescriptionForAuditTestType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"testTypeContrast"])
  {
    v5 = @"contrast";
  }

  else if ([typeCopy isEqualToString:@"testTypeHitRegion"])
  {
    v5 = @"hitRegion";
  }

  else if ([typeCopy isEqualToString:@"testTypeSufficientElementDescription"])
  {
    v5 = @"elementDescription";
  }

  else if ([typeCopy isEqualToString:@"testTypeAction"])
  {
    v5 = @"action";
  }

  else if ([typeCopy isEqualToString:@"testTypeTrait"])
  {
    v5 = @"trait";
  }

  else if ([typeCopy isEqualToString:@"testTypeElementDetection"])
  {
    v5 = @"elementDetection";
  }

  else if ([typeCopy isEqualToString:@"testTypeSwipeOrder"])
  {
    v5 = @"swipeOrder";
  }

  else if ([typeCopy isEqualToString:@"testTypeDynamicText"])
  {
    v5 = @"dynamicText";
  }

  else if ([typeCopy isEqualToString:@"testTypeTextClipped"])
  {
    v5 = @"textClipped";
  }

  else if ([typeCopy isEqualToString:@"testTypeParentChild"])
  {
    v5 = @"parentChild";
  }

  else
  {
    v5 = 0;
  }

  if ([(__CFString *)v5 length])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"auditTestType.%@", v5];
    v7 = [(AXAuditIssueDescriptionManager *)self _locStringForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)auditIssueTypeToAuditTestTypeMapping
{
  if (auditIssueTypeToAuditTestTypeMapping_onceToken != -1)
  {
    +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  }

  v3 = auditIssueTypeToAuditTestTypeMapping__AuditIssueTypeToAuditTestTypeMapping;

  return v3;
}

void __70__AXAuditIssueDescriptionManager_auditIssueTypeToAuditTestTypeMapping__block_invoke()
{
  v4[37] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_284FC3AD8;
  v3[1] = &unk_284FC3AF0;
  v4[0] = @"testTypeContrast";
  v4[1] = @"testTypeContrast";
  v3[2] = &unk_284FC3B08;
  v3[3] = &unk_284FC3B20;
  v4[2] = @"testTypeContrast";
  v4[3] = @"testTypeContrast";
  v3[4] = &unk_284FC3B38;
  v3[5] = &unk_284FC3B50;
  v4[4] = @"testTypeContrast";
  v4[5] = @"testTypeContrast";
  v3[6] = &unk_284FC3B68;
  v3[7] = &unk_284FC3B80;
  v4[6] = @"testTypeContrast";
  v4[7] = @"testTypeHitRegion";
  v3[8] = &unk_284FC3B98;
  v3[9] = &unk_284FC3BB0;
  v4[8] = @"testTypeSufficientElementDescription";
  v4[9] = @"testTypeSufficientElementDescription";
  v3[10] = &unk_284FC3BC8;
  v3[11] = &unk_284FC3BE0;
  v4[10] = @"testTypeSufficientElementDescription";
  v4[11] = @"testTypeSufficientElementDescription";
  v3[12] = &unk_284FC3BF8;
  v3[13] = &unk_284FC3C10;
  v4[12] = @"testTypeTrait";
  v4[13] = @"testTypeTrait";
  v3[14] = &unk_284FC3C28;
  v3[15] = &unk_284FC3C40;
  v4[14] = @"testTypeTrait";
  v4[15] = @"testTypeElementDetection";
  v3[16] = &unk_284FC3C58;
  v3[17] = &unk_284FC3C70;
  v4[16] = @"testTypeElementDetection";
  v4[17] = @"testTypeSwipeOrder";
  v3[18] = &unk_284FC3C88;
  v3[19] = &unk_284FC3CA0;
  v4[18] = @"testTypeSwipeOrder";
  v4[19] = @"testTypeSwipeOrder";
  v3[20] = &unk_284FC3CB8;
  v3[21] = &unk_284FC3CD0;
  v4[20] = @"testTypeDynamicText";
  v4[21] = @"testTypeDynamicText";
  v3[22] = &unk_284FC3CE8;
  v3[23] = &unk_284FC3D00;
  v4[22] = @"testTypeTextClipped";
  v4[23] = @"testTypeSufficientElementDescription";
  v3[24] = &unk_284FC3D18;
  v3[25] = &unk_284FC3D30;
  v4[24] = @"testTypeSufficientElementDescription";
  v4[25] = @"testTypeSufficientElementDescription";
  v3[26] = &unk_284FC3D48;
  v3[27] = &unk_284FC3D60;
  v4[26] = @"testTypeParentChild";
  v4[27] = @"testTypeParentChild";
  v3[28] = &unk_284FC3D78;
  v3[29] = &unk_284FC3D90;
  v4[28] = @"testTypeElementDetection";
  v4[29] = @"testTypeSufficientElementDescription";
  v3[30] = &unk_284FC3DA8;
  v3[31] = &unk_284FC3DC0;
  v4[30] = @"testTypeSufficientElementDescription";
  v4[31] = @"testTypeSufficientElementDescription";
  v3[32] = &unk_284FC3DD8;
  v3[33] = &unk_284FC3DF0;
  v4[32] = @"testTypeSufficientElementDescription";
  v4[33] = @"testTypeSufficientElementDescription";
  v3[34] = &unk_284FC3E08;
  v3[35] = &unk_284FC3E20;
  v4[34] = @"testTypeAction";
  v4[35] = @"testTypeSufficientElementDescription";
  v3[36] = &unk_284FC3E38;
  v4[36] = @"testTypeElementDetection";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:37];
  v1 = auditIssueTypeToAuditTestTypeMapping__AuditIssueTypeToAuditTestTypeMapping;
  auditIssueTypeToAuditTestTypeMapping__AuditIssueTypeToAuditTestTypeMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)allAuditIssueClassificationCodes
{
  _auditIssueTypeToLocalizationKeyLookup = [objc_opt_class() _auditIssueTypeToLocalizationKeyLookup];
  allKeys = [_auditIssueTypeToLocalizationKeyLookup allKeys];

  return allKeys;
}

@end