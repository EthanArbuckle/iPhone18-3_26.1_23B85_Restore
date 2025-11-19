@interface AXAuditIssue
+ (id)auditIssueForClassification:(int64_t)a3;
+ (void)registerTransportableObjectWithManager:(id)a3;
- (AXAuditIssue)init;
- (BOOL)_isSameRelativeLocationAsAuditIssue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)containerOrigin;
- (CGRect)elementRect;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)foundLogMessage;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setIssueClassification:(int64_t)a3;
@end

@implementation AXAuditIssue

+ (id)auditIssueForClassification:(int64_t)a3
{
  v4 = [objc_allocWithZone(objc_msgSend(a1 "_auditIssueClassForType:"init""))];
  [v4 setIssueClassification:a3];
  v5 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v6 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v7 = [v5 objectForKey:v6];

  [v4 setAuditTestType:v7];

  return v4;
}

- (AXAuditIssue)init
{
  v3.receiver = self;
  v3.super_class = AXAuditIssue;
  result = [(AXAuditIssue *)&v3 init];
  if (result)
  {
    result->_containerOrigin = *MEMORY[0x277CCA860];
    result->_fontSize = 0.0;
  }

  return result;
}

- (void)setIssueClassification:(int64_t)a3
{
  self->_issueClassification = a3;
  v4 = [(AXAuditIssue *)self _platformForClassification:?];

  [(AXAuditIssue *)self setPlatform:v4];
}

- (id)foundLogMessage
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = +[AXAuditIssueDescriptionManager sharedManager];
  [(AXAuditIssue *)self setDescManager:v4];

  v5 = [(AXAuditIssue *)self descManager];
  v6 = [v5 longDescriptionForAuditIssue:self];

  v7 = [(AXAuditIssue *)self descManager];
  v8 = [v7 longDescExtraInfoForAuditIssue:self];

  v9 = [(AXAuditIssue *)self auditElement];
  [v3 appendFormat:@"Found Issue %li:", -[AXAuditIssue issueClassification](self, "issueClassification")];
  v10 = [(AXAuditIssue *)self auditTestType];

  if (v10)
  {
    v11 = [(AXAuditIssue *)self auditTestType];
    [v3 appendFormat:@" %@", v11];
  }

  if ([v6 length])
  {
    [v3 appendFormat:@" %@", v6];
  }

  if ([v8 length])
  {
    [v3 appendFormat:@" %@", v8];
  }

  if (v9)
  {
    [v3 appendFormat:@" %@", v9];
  }

  [(AXAuditIssue *)self elementRect];
  v12 = NSStringFromRect(v32);
  [v3 appendFormat:@" %@", v12];

  v13 = [(AXAuditIssue *)self suggestedSelectorsToFix];
  if ([v13 count])
  {
    [v3 appendFormat:@", Suggested selectors to fix: %@", v13];
  }

  v14 = [(AXAuditIssue *)self foregroundColor];

  if (v14)
  {
    v15 = [(AXAuditIssue *)self foregroundColor];
    [v3 appendFormat:@" ForegroundColor:%@", v15];
  }

  v16 = [(AXAuditIssue *)self backgroundColor];

  if (v16)
  {
    v17 = [(AXAuditIssue *)self backgroundColor];
    [v3 appendFormat:@" BackgroundColor:%@", v17];
  }

  [(AXAuditIssue *)self fontSize];
  if (v18 > 0.0)
  {
    [(AXAuditIssue *)self fontSize];
    [v3 appendFormat:@" FontSize:%.1f", v19];
  }

  v20 = [(AXAuditIssue *)self elementText];

  if (v20)
  {
    v21 = [(AXAuditIssue *)self elementText];
    [v3 appendFormat:@" ElementText :%@", v21];
  }

  v22 = [(AXAuditIssue *)self screenGroupId];

  if (v22)
  {
    v23 = [(AXAuditIssue *)self screenGroupId];
    [v3 appendFormat:@" ScreenGroupID :%@", v23];
  }

  if ([(AXAuditIssue *)self isDuplicate])
  {
    v24 = @" Known Duplicate ";
  }

  else
  {
    v24 = @" New Issue ";
  }

  [v3 appendFormat:v24];
  v25 = [(AXAuditIssue *)self mlGeneratedDescription];

  if (v25)
  {
    v26 = [(AXAuditIssue *)self mlGeneratedDescription];
    [v3 appendFormat:@" ML Generated Description :%@", v26];
  }

  v27 = [(AXAuditIssue *)self timeStamp];

  if (v27)
  {
    v28 = [(AXAuditIssue *)self timeStamp];
    [v3 appendFormat:@" timestamp :%@", v28];
  }

  v29 = [v3 copy];

  return v29;
}

+ (void)registerTransportableObjectWithManager:(id)a3
{
  v3 = a3;
  v20 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditIssue_v1"];
  v19 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v19];
  [(AXAuditObjectTransportPropertyEntry *)v19 setTransportKey:@"IssueClassificationValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v19 setLocalValueToTransportValue:&__block_literal_global_12];
  [(AXAuditObjectTransportPropertyEntry *)v19 setPopulateLocalObjectWithTransportValue:&__block_literal_global_48_0];
  v18 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v18];
  [(AXAuditObjectTransportPropertyEntry *)v18 setTransportKey:@"auditTestTypeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v18 setLocalValueToTransportValue:&__block_literal_global_54_0];
  [(AXAuditObjectTransportPropertyEntry *)v18 setPopulateLocalObjectWithTransportValue:&__block_literal_global_57_1];
  v17 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v17];
  [(AXAuditObjectTransportPropertyEntry *)v17 setTransportKey:@"ElementRectValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v17 setLocalValueToTransportValue:&__block_literal_global_64_1];
  [(AXAuditObjectTransportPropertyEntry *)v17 setPopulateLocalObjectWithTransportValue:&__block_literal_global_68];
  v16 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v16];
  [(AXAuditObjectTransportPropertyEntry *)v16 setTransportKey:@"ElementDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v16 setLocalValueToTransportValue:&__block_literal_global_73];
  [(AXAuditObjectTransportPropertyEntry *)v16 setPopulateLocalObjectWithTransportValue:&__block_literal_global_75];
  v15 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v15];
  [(AXAuditObjectTransportPropertyEntry *)v15 setTransportKey:@"ElementLongDescExtraInfo_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v15 setLocalValueToTransportValue:&__block_literal_global_81];
  [(AXAuditObjectTransportPropertyEntry *)v15 setPopulateLocalObjectWithTransportValue:&__block_literal_global_84];
  v14 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v14];
  [(AXAuditObjectTransportPropertyEntry *)v14 setTransportKey:@"AuditElementValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v14 setLocalValueToTransportValue:&__block_literal_global_91];
  [(AXAuditObjectTransportPropertyEntry *)v14 setPopulateLocalObjectWithTransportValue:&__block_literal_global_94];
  v13 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v13];
  [(AXAuditObjectTransportPropertyEntry *)v13 setTransportKey:@"suggestedSelectorsToFix_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v13 setLocalValueToTransportValue:&__block_literal_global_100];
  [(AXAuditObjectTransportPropertyEntry *)v13 setPopulateLocalObjectWithTransportValue:&__block_literal_global_102];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"ForegroundColorValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_107];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_109];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"BackgroundColorValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_114];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_116];
  v6 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v6];
  [(AXAuditObjectTransportPropertyEntry *)v6 setTransportKey:@"FontSizeValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v6 setLocalValueToTransportValue:&__block_literal_global_121];
  [(AXAuditObjectTransportPropertyEntry *)v6 setPopulateLocalObjectWithTransportValue:&__block_literal_global_123];
  v7 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v7];
  [(AXAuditObjectTransportPropertyEntry *)v7 setTransportKey:@"ElementTextValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v7 setLocalValueToTransportValue:&__block_literal_global_128];
  [(AXAuditObjectTransportPropertyEntry *)v7 setPopulateLocalObjectWithTransportValue:&__block_literal_global_130];
  v8 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v8];
  [(AXAuditObjectTransportPropertyEntry *)v8 setTransportKey:@"ScreenGroupIDValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v8 setLocalValueToTransportValue:&__block_literal_global_135];
  [(AXAuditObjectTransportPropertyEntry *)v8 setPopulateLocalObjectWithTransportValue:&__block_literal_global_137];
  v9 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v9];
  [(AXAuditObjectTransportPropertyEntry *)v9 setTransportKey:@"IsDuplicateValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v9 setLocalValueToTransportValue:&__block_literal_global_142];
  [(AXAuditObjectTransportPropertyEntry *)v9 setPopulateLocalObjectWithTransportValue:&__block_literal_global_144];
  v10 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v10];
  [(AXAuditObjectTransportPropertyEntry *)v10 setTransportKey:@"MLGeneratedDescriptionValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v10 setLocalValueToTransportValue:&__block_literal_global_149];
  [(AXAuditObjectTransportPropertyEntry *)v10 setPopulateLocalObjectWithTransportValue:&__block_literal_global_151];
  v11 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v11];
  [(AXAuditObjectTransportPropertyEntry *)v11 setTransportKey:@"ImageIdentifierValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v11 setLocalValueToTransportValue:&__block_literal_global_156];
  [(AXAuditObjectTransportPropertyEntry *)v11 setPopulateLocalObjectWithTransportValue:&__block_literal_global_158];
  v12 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v20 addPropertyEntry:v12];
  [(AXAuditObjectTransportPropertyEntry *)v12 setTransportKey:@"TimeStampValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v12 setLocalValueToTransportValue:&__block_literal_global_163];
  [(AXAuditObjectTransportPropertyEntry *)v12 setPopulateLocalObjectWithTransportValue:&__block_literal_global_165];
  [v3 registerTransportInfoPropertyBased:v20];
}

uint64_t __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 issueClassification];

  return [v2 numberWithLong:v3];
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setIssueClassification:{objc_msgSend(v4, "integerValue")}];
    v5 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
    v6 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v8, "issueClassification")}];
    v7 = [v5 objectForKey:v6];

    [v8 setAuditTestType:v7];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAuditTestType:v4];
  }
}

uint64_t __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  [a2 elementRect];

  return [v2 valueWithRect:?];
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 rectValue];
    [v5 setElementRect:?];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setElementDescription:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setLongDescExtraInfo:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAuditElement:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSuggestedSelectorsToFix:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setForegroundColor:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setBackgroundColor:v4];
  }
}

uint64_t __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  [a2 fontSize];

  return [v2 numberWithDouble:?];
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    [v5 setFontSize:?];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setElementText:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setScreenGroupId:v4];
  }
}

uint64_t __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isDuplicate];

  return [v2 numberWithBool:v3];
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setIsDuplicate:{objc_msgSend(v4, "BOOLValue")}];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setMlGeneratedDescription:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setImageIdentifier:v4];
  }
}

void __55__AXAuditIssue_registerTransportableObjectWithManager___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setTimeStamp:v4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIssueClassification:{-[AXAuditIssue issueClassification](self, "issueClassification")}];
  v5 = [(AXAuditIssue *)self auditTestType];
  [v4 setAuditTestType:v5];

  v6 = [(AXAuditIssue *)self auditElement];
  [v4 setAuditElement:v6];

  v7 = [(AXAuditIssue *)self elementDescription];
  [v4 setElementDescription:v7];

  [(AXAuditIssue *)self elementRect];
  [v4 setElementRect:?];
  v8 = [(AXAuditIssue *)self suggestedSelectorsToFix];
  [v4 setSuggestedSelectorsToFix:v8];

  v9 = [(AXAuditIssue *)self longDescExtraInfo];
  [v4 setLongDescExtraInfo:v9];

  v10 = [(AXAuditIssue *)self foregroundColor];
  [v4 setForegroundColor:v10];

  v11 = [(AXAuditIssue *)self backgroundColor];
  [v4 setBackgroundColor:v11];

  [(AXAuditIssue *)self fontSize];
  [v4 setFontSize:?];
  v12 = [(AXAuditIssue *)self elementText];
  [v4 setElementText:v12];

  v13 = [(AXAuditIssue *)self screenGroupId];
  [v4 setScreenGroupId:v13];

  [v4 setIsDuplicate:{-[AXAuditIssue isDuplicate](self, "isDuplicate")}];
  v14 = [(AXAuditIssue *)self mlGeneratedDescription];
  [v4 setMlGeneratedDescription:v14];

  v15 = [(AXAuditIssue *)self imageIdentifier];
  [v4 setImageIdentifier:v15];

  v16 = [(AXAuditIssue *)self timeStamp];
  [v4 setTimeStamp:v16];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AXAuditIssue *)v5 issueClassification];
      if (v6 != [(AXAuditIssue *)self issueClassification])
      {
        v15 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v7 = [(AXAuditIssue *)self elementDescription];
      v8 = [(AXAuditIssue *)v5 elementDescription];
      v9 = [(AXAuditIssue *)self elementText];
      v10 = [(AXAuditIssue *)v5 elementText];
      v11 = [(AXAuditIssue *)self screenGroupId];
      v71 = [(AXAuditIssue *)v5 screenGroupId];
      v12 = [(AXAuditIssue *)self mlGeneratedDescription];
      *(&v72 + 1) = [(AXAuditIssue *)self auditTestType];
      *&v72 = [(AXAuditIssue *)v5 auditTestType];
      v13 = [(AXAuditIssue *)v5 mlGeneratedDescription];
      [(AXAuditIssue *)self isDuplicate];
      [(AXAuditIssue *)v5 isDuplicate];
      if (v7 | v8 && ![v7 isEqual:v8] || v9 | v10 && !objc_msgSend(v9, "isEqual:", v10) || v12 | v13 && !objc_msgSend(v12, "isEqual:", v13) || v72 != 0 && !objc_msgSend(*(&v72 + 1), "isEqual:", v72) || v11 | v71 && !objc_msgSend(v11, "isEqualToString:", v71))
      {
        v15 = 0;
        goto LABEL_20;
      }

      v70 = v11;
      v14 = [(AXAuditIssue *)self isDuplicate];
      if (v14 != [(AXAuditIssue *)v5 isDuplicate])
      {
        v15 = 0;
        v11 = v70;
LABEL_20:

        goto LABEL_21;
      }

      v17 = [(AXAuditIssue *)self auditElement];
      v68 = [(AXAuditIssue *)v5 auditElement];
      v69 = v17;
      v18 = v17 | v68;
      v11 = v70;
      if (v18 && ![v69 isEqual:v68])
      {
        goto LABEL_36;
      }

      [(AXAuditIssue *)self elementRect];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(AXAuditIssue *)v5 elementRect];
      v76.origin.x = v27;
      v76.origin.y = v28;
      v30 = v29;
      v32 = v31;
      v75.origin.x = v20;
      v75.origin.y = v22;
      v75.size.width = v24;
      v75.size.height = v26;
      v76.size.width = v30;
      v76.size.height = v32;
      if (!NSEqualRects(v75, v76))
      {
        v73.width = v24;
        v73.height = v26;
        v74.width = v30;
        v74.height = v32;
        if (!NSEqualSizes(v73, v74) || ![(AXAuditIssue *)self _isSameRelativeLocationAsAuditIssue:v5])
        {
LABEL_36:
          v15 = 0;
LABEL_56:

          goto LABEL_20;
        }
      }

      v66 = v12;
      v33 = [(AXAuditIssue *)self suggestedSelectorsToFix];
      v34 = [(AXAuditIssue *)v5 suggestedSelectorsToFix];
      v67 = v33;
      v35 = v33;
      v36 = v34;
      v65 = v34;
      if (([v35 count] || objc_msgSend(v36, "count")) && !objc_msgSend(v67, "isEqual:", v36))
      {
        v15 = 0;
        v12 = v66;
LABEL_55:

        goto LABEL_56;
      }

      [(AXAuditIssue *)self longDescExtraInfo];
      v60 = v12 = v66;
      if (v60 || ([(AXAuditIssue *)v5 longDescExtraInfo], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v51 = [(AXAuditIssue *)self longDescExtraInfo];
        v37 = [(AXAuditIssue *)v5 longDescExtraInfo];
        v55 = [v51 isEqualToArray:?];

        if (v60)
        {

          v11 = v70;
          if (!v55)
          {
            goto LABEL_54;
          }
        }

        else
        {

          v11 = v70;
          if ((v55 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      v61 = [(AXAuditIssue *)self foregroundColor];
      if (v61 || ([(AXAuditIssue *)v5 foregroundColor], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v52 = [(AXAuditIssue *)self foregroundColor];
        v38 = [(AXAuditIssue *)v5 foregroundColor];
        v56 = [v52 isEqualToString:?];

        if (v61)
        {

          v11 = v70;
          if (!v56)
          {
            goto LABEL_54;
          }
        }

        else
        {

          v11 = v70;
          if ((v56 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      v62 = [(AXAuditIssue *)self backgroundColor];
      if (v62 || ([(AXAuditIssue *)v5 backgroundColor], (v50 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v53 = [(AXAuditIssue *)self backgroundColor];
        v39 = [(AXAuditIssue *)v5 backgroundColor];
        v57 = [v53 isEqualToString:?];

        if (v62)
        {

          v11 = v70;
          if (!v57)
          {
            goto LABEL_54;
          }
        }

        else
        {

          v11 = v70;
          if ((v57 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      [(AXAuditIssue *)self fontSize];
      v41 = v40;
      [(AXAuditIssue *)v5 fontSize];
      if (vabdd_f64(v41, v42) < 0.000001)
      {
        v63 = [(AXAuditIssue *)self imageIdentifier];
        v43 = [(AXAuditIssue *)v5 imageIdentifier];
        v58 = [v63 compare:v43];

        if (v58)
        {
LABEL_53:
          v15 = 0;
LABEL_62:
          v11 = v70;
          goto LABEL_55;
        }

        v44 = [(AXAuditIssue *)self timeStamp];
        v45 = [(AXAuditIssue *)v5 timeStamp];
        if (v44 == v45)
        {
        }

        else
        {
          v59 = v45;
          [(AXAuditIssue *)self timeStamp];
          v46 = v64 = v44;
          v47 = [(AXAuditIssue *)v5 timeStamp];
          v54 = [v46 isEqualToString:v47];

          if (!v54)
          {
            goto LABEL_53;
          }
        }

        v15 = 1;
        goto LABEL_62;
      }

LABEL_54:
      v15 = 0;
      goto LABEL_55;
    }

    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (BOOL)_isSameRelativeLocationAsAuditIssue:(id)a3
{
  v4 = a3;
  [(AXAuditIssue *)self containerOrigin];
  v6 = v5;
  v8 = v7;
  [v4 containerOrigin];
  v10 = v9;
  v12 = v11;
  [(AXAuditIssue *)self elementRect];
  v14 = v13;
  v16 = v15;
  [v4 elementRect];
  v18 = v17;
  v20 = v19;

  return vabdd_f64(v14 - v6, v18 - v10) < 0.100000001 && vabdd_f64(v16 - v8, v20 - v12) < 0.100000001;
}

- (unint64_t)hash
{
  [(AXAuditIssue *)self elementRect];
  v7 = (v6 + v5 + v3 + v4);
  v8 = [(AXAuditIssue *)self issueClassification];
  v9 = [(AXAuditIssue *)self auditElement];
  v10 = [v9 hash];
  v11 = [(AXAuditIssue *)self elementDescription];
  v12 = v10 ^ v8 ^ [v11 hash];

  return v12 ^ v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditIssue *)self issueClassification];
  v6 = [v4 issueClassification];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = AXAuditIssue;
  v3 = [(AXAuditIssue *)&v7 description];
  v4 = [(AXAuditIssue *)self foundLogMessage];
  v5 = [v3 stringByAppendingFormat:@" %@", v4];

  return v5;
}

- (CGRect)elementRect
{
  x = self->_elementRect.origin.x;
  y = self->_elementRect.origin.y;
  width = self->_elementRect.size.width;
  height = self->_elementRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)containerOrigin
{
  x = self->_containerOrigin.x;
  y = self->_containerOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end