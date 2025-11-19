@interface AXAuditDeduplicatorHeuristics
- (AXAuditDeduplicatorHeuristics)init;
- (BOOL)compareIssues:(id)a3 and:(id)a4;
- (int)deduplicateIssues:(id)a3 forFeatureHashGroup:(id)a4;
- (void)setPlatformThreshold:(id)a3;
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
    v4 = [MEMORY[0x277CBEB18] array];
    [(AXAuditDeduplicatorHeuristics *)v2 setHashGroups:v4];
  }

  return v2;
}

- (BOOL)compareIssues:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 issueClassification];
  if (v7 != [v6 issueClassification])
  {
    goto LABEL_18;
  }

  v8 = [v5 auditTestType];
  if ([v8 isEqualToString:@"testTypeNone"])
  {
  }

  else
  {
    v9 = [v6 auditTestType];
    v10 = [v9 isEqualToString:@"testTypeNone"];

    if (v10)
    {
      goto LABEL_18;
    }

    v11 = [v5 auditTestType];
    v12 = [v6 auditTestType];
    v13 = [v11 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = [v5 elementText];
    if (v14)
    {
      v15 = v14;
      v16 = [v6 elementText];
      if (v16)
      {
        v17 = v16;
        v18 = [v5 elementText];
        v19 = [v6 elementText];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v21 = [v5 elementDescription];
    if (v21)
    {
      v22 = v21;
      v23 = [v6 elementDescription];
      if (v23)
      {
        v24 = v23;
        v25 = [v5 elementDescription];
        v26 = [v6 elementDescription];
        v27 = [v25 isEqualToString:v26];

        if (!v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    [v5 elementRect];
    v29 = v28;
    [v6 elementRect];
    if (vabdd_f64(v29, v30) <= 5.0)
    {
      [v5 elementRect];
      v32 = v31;
      [v6 elementRect];
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

- (int)deduplicateIssues:(id)a3 forFeatureHashGroup:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = a4;
  v21 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
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
        v13 = [v23 issues];
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v13);
              }

              if ([(AXAuditDeduplicatorHeuristics *)self compareIssues:v12 and:*(*(&v24 + 1) + 8 * j)])
              {

                [v12 setIsDuplicate:1];
                ++v9;
                goto LABEL_16;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        [v21 addObject:v12];
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

  v18 = [v23 issues];
  [v18 addObjectsFromArray:v21];

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setPlatformThreshold:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 localizedCaseInsensitiveContainsString:@"AppleTV"])
  {
    v5 = 0.45;
  }

  else if ([v4 localizedCaseInsensitiveContainsString:@"Watch"])
  {
    v5 = 0.648;
  }

  else
  {
    v5 = 0.4;
    if (([v4 localizedCaseInsensitiveContainsString:@"iPhone"] & 1) == 0 && (objc_msgSend(v4, "localizedCaseInsensitiveContainsString:", @"iPad") & 1) == 0 && (objc_msgSend(v4, "localizedCaseInsensitiveContainsString:", @"iPod") & 1) == 0)
    {
      if ([v4 localizedCaseInsensitiveContainsString:@"RealityDevice"])
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
    v12 = v4;
    _os_log_impl(&dword_23D6FE000, v6, OS_LOG_TYPE_DEFAULT, "Setting threshold to %fl for platform: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end