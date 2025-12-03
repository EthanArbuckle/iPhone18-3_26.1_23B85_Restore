@interface AXAuditDeduplicatorHeuristics
- (AXAuditDeduplicatorHeuristics)init;
- (BOOL)compareIssues:(id)issues and:(id)and;
- (int)deduplicateIssues:(id)issues forFeatureHashGroup:(id)group;
- (void)setPlatformThreshold:(id)threshold;
@end

@implementation AXAuditDeduplicatorHeuristics

- (AXAuditDeduplicatorHeuristics)init
{
  v6.receiver = self;
  v6.super_class = AXAuditDeduplicatorHeuristics;
  v2 = [(AXAuditDeduplicatorHeuristics *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("AXAuditDeduplicator", "Heuristics");
    [(AXAuditDeduplicatorHeuristics *)v2 setLog:v3];

    [(AXAuditDeduplicatorHeuristics *)v2 setTargetThreshold:0.4];
    array = [MEMORY[0x277CBEB18] array];
    [(AXAuditDeduplicatorHeuristics *)v2 setHashGroups:array];
  }

  return v2;
}

- (BOOL)compareIssues:(id)issues and:(id)and
{
  issuesCopy = issues;
  andCopy = and;
  issueClassification = [issuesCopy issueClassification];
  if (issueClassification != [andCopy issueClassification])
  {
    goto LABEL_18;
  }

  auditTestType = [issuesCopy auditTestType];
  if ([auditTestType isEqualToString:@"testTypeNone"])
  {
  }

  else
  {
    auditTestType2 = [andCopy auditTestType];
    v10 = [auditTestType2 isEqualToString:@"testTypeNone"];

    if (v10)
    {
      goto LABEL_18;
    }

    auditTestType3 = [issuesCopy auditTestType];
    auditTestType4 = [andCopy auditTestType];
    v13 = [auditTestType3 isEqualToString:auditTestType4];

    if (!v13)
    {
      goto LABEL_18;
    }

    elementText = [issuesCopy elementText];
    if (elementText)
    {
      v15 = elementText;
      elementText2 = [andCopy elementText];
      if (elementText2)
      {
        v17 = elementText2;
        elementText3 = [issuesCopy elementText];
        elementText4 = [andCopy elementText];
        v20 = [elementText3 isEqualToString:elementText4];

        if (!v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    elementDescription = [issuesCopy elementDescription];
    if (elementDescription)
    {
      v22 = elementDescription;
      elementDescription2 = [andCopy elementDescription];
      if (elementDescription2)
      {
        v24 = elementDescription2;
        elementDescription3 = [issuesCopy elementDescription];
        elementDescription4 = [andCopy elementDescription];
        v27 = [elementDescription3 isEqualToString:elementDescription4];

        if (!v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    [issuesCopy elementRect];
    v29 = v28;
    [andCopy elementRect];
    if (vabdd_f64(v29, v30) <= 5.0)
    {
      [issuesCopy elementRect];
      v32 = v31;
      [andCopy elementRect];
      if (vabdd_f64(v32, v33) <= 5.0)
      {
        v34 = 1;
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v34 = 0;
LABEL_19:

  return v34;
}

- (int)deduplicateIssues:(id)issues forFeatureHashGroup:(id)group
{
  v34 = *MEMORY[0x277D85DE8];
  issuesCopy = issues;
  groupCopy = group;
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = issuesCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        issues = [groupCopy issues];
        v14 = [issues countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(issues);
              }

              if ([(AXAuditDeduplicatorHeuristics *)self compareIssues:v12 and:*(*(&v24 + 1) + 8 * j)])
              {

                [v12 setIsDuplicate:1];
                ++v9;
                goto LABEL_16;
              }
            }

            v15 = [issues countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        [array addObject:v12];
LABEL_16:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  issues2 = [groupCopy issues];
  [issues2 addObjectsFromArray:array];

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setPlatformThreshold:(id)threshold
{
  v13 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  if ([thresholdCopy localizedCaseInsensitiveContainsString:@"AppleTV"])
  {
    v5 = 0.45;
  }

  else if ([thresholdCopy localizedCaseInsensitiveContainsString:@"Watch"])
  {
    v5 = 0.648;
  }

  else
  {
    v5 = 0.4;
    if (([thresholdCopy localizedCaseInsensitiveContainsString:@"iPhone"] & 1) == 0 && (objc_msgSend(thresholdCopy, "localizedCaseInsensitiveContainsString:", @"iPad") & 1) == 0 && (objc_msgSend(thresholdCopy, "localizedCaseInsensitiveContainsString:", @"iPod") & 1) == 0)
    {
      if ([thresholdCopy localizedCaseInsensitiveContainsString:@"RealityDevice"])
      {
        v5 = 0.4;
      }

      else
      {
        v5 = 0.25;
      }
    }
  }

  [(AXAuditDeduplicatorHeuristics *)self setTargetThreshold:v5];
  v6 = [(AXAuditDeduplicatorHeuristics *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [(AXAuditDeduplicatorHeuristics *)self targetThreshold];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = thresholdCopy;
    _os_log_impl(&dword_23D6FE000, v6, OS_LOG_TYPE_DEFAULT, "Setting threshold to %fl for platform: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end