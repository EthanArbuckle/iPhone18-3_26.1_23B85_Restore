@interface BLSHBacklightEnvironmentPresentation
- (BLSHBacklightEnvironmentPresentation)initWithEnvironments:(id)environments caContext:(id)context expirationDate:(id)date;
- (BLSHBacklightEnvironmentPresentation)initWithPresentationEntries:(id)entries caContext:(id)context expirationDate:(id)date;
- (BLSHBacklightEnvironmentPresentation)initWithPresentationEntries:(id)entries flipbookContext:(id)context expirationDate:(id)date;
- (BLSHPresentationDateSpecifier)currentSpecifier;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHighLuminanceAlwaysOn;
- (BOOL)isLiveUpdating;
- (id)bls_loggingString;
- (id)bls_shortLoggingString;
- (id)debugDescription;
- (id)differenceFromPresentation:(id)presentation;
- (unint64_t)hash;
- (void)differenceFromPresentation:(id)presentation forEachRemoval:(id)removal forEachAddition:(id)addition;
- (void)invalidateContentForReason:(id)reason;
@end

@implementation BLSHBacklightEnvironmentPresentation

- (id)bls_shortLoggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendArraySection:self->_presentationEntries withName:0 skipIfEmpty:0 objectTransformer:&__block_literal_global_32];
  bls_loggingString = [(NSDate *)self->_expirationDate bls_loggingString];
  [v3 appendString:bls_loggingString withName:@"expirationDate" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

id __62__BLSHBacklightEnvironmentPresentation_bls_shortLoggingString__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 identifier];
  v5 = [v3 stringWithFormat:@"<%p:%@>", v2, v4];

  return v5;
}

- (BLSHPresentationDateSpecifier)currentSpecifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self presentationEntries];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__BLSHBacklightEnvironmentPresentation_currentSpecifier__block_invoke;
  v9[3] = &unk_2784201C0;
  v9[4] = &v10;
  v4 = [presentationEntries bs_mapNoNulls:v9];

  v5 = v11[5];
  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(v5) = [v5 isEqualToDate:distantPast2];

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [BLSHPresentationDateSpecifier specifierWithPresentationDate:v11[5] specifiers:v4];
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

id __56__BLSHBacklightEnvironmentPresentation_currentSpecifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 currentSpecifier];
  v4 = [v3 dateSpecifier];
  v5 = [v4 date];

  if (v5)
  {
    v6 = [*(*(*(a1 + 32) + 8) + 40) laterDate:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v3;
}

- (id)bls_loggingString
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendArraySection:self->_presentationEntries withName:@"presentationEntries" skipIfEmpty:0 objectTransformer:&__block_literal_global_43_0];
  v4 = [v3 appendObject:self->_flipbookContext withName:@"context"];
  bls_loggingString = [(NSDate *)self->_expirationDate bls_loggingString];
  [v3 appendString:bls_loggingString withName:@"expirationDate" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

id __57__BLSHBacklightEnvironmentPresentation_bls_loggingString__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 environment];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 identifier];
  v5 = [v3 stringWithFormat:@"<%p:%@>", v2, v4];

  return v5;
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_presentationEntries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        environment = [*(*(&v10 + 1) + 8 * i) environment];
        hasUnrestrictedFramerateUpdates = [environment hasUnrestrictedFramerateUpdates];

        if (hasUnrestrictedFramerateUpdates)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BLSHBacklightEnvironmentPresentation)initWithPresentationEntries:(id)entries flipbookContext:(id)context expirationDate:(id)date
{
  v87 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  contextCopy = context;
  dateCopy = date;
  v78.receiver = self;
  v78.super_class = BLSHBacklightEnvironmentPresentation;
  v59 = [(BLSHBacklightEnvironmentPresentation *)&v78 init];
  if (v59)
  {
    if (!entriesCopy)
    {
      [BLSHBacklightEnvironmentPresentation initWithPresentationEntries:v59 flipbookContext:a2 expirationDate:?];
    }

    v55 = a2;
    v57 = contextCopy;
    v11 = [entriesCopy copy];
    presentationEntries = v59->_presentationEntries;
    v59->_presentationEntries = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(entriesCopy, "count")}];
    v65 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(entriesCopy, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v14 = entriesCopy;
    v15 = [v14 countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v75;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v75 != v17)
          {
            objc_enumerationMutation(v14);
          }

          environment = [*(*(&v74 + 1) + 8 * i) environment];
          [v13 addObject:environment];
          identifier = [environment identifier];
          [v65 addObject:identifier];
        }

        v16 = [v14 countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v16);
    }

    v21 = [v13 copy];
    environmentsSet = v59->_environmentsSet;
    v59->_environmentsSet = v21;

    objc_storeStrong(&v59->_flipbookContext, context);
    objc_storeStrong(&v59->_expirationDate, date);
    v23 = [v65 count];
    if (v23 != [v14 count] || (v24 = objc_msgSend(v13, "count"), v24 != objc_msgSend(v14, "count")))
    {
      v56 = entriesCopy;
      v25 = objc_alloc(MEMORY[0x277CF0C78]);
      v26 = [v13 count];
      sortByInsertionOrder = [MEMORY[0x277CF0C98] sortByInsertionOrder];
      v28 = [v25 initWithCapacity:v26 keyOrderingStrategy:sortByInsertionOrder];

      v62 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = v14;
      v64 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
      if (v64)
      {
        v29 = 0;
        v63 = *v71;
        v61 = v28;
        do
        {
          for (j = 0; j != v64; ++j)
          {
            if (*v71 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v70 + 1) + 8 * j);
            environment2 = [v31 environment];
            identifier2 = [environment2 identifier];
            v34 = [v28 objectForKey:identifier2];
            v35 = v34;
            if (v34)
            {
              v36 = v13;
              environment3 = [v34 environment];
              environment4 = [v31 environment];

              if (v35 == v31)
              {
                v43 = bls_backlight_log();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218498;
                  v82 = v59;
                  v83 = 1024;
                  *v84 = v29;
                  *&v84[4] = 2114;
                  *&v84[6] = v31;
                  _os_log_error_impl(&dword_21FD11000, v43, OS_LOG_TYPE_ERROR, "%p entry appears twice, index:%d %{public}@", buf, 0x1Cu);
                }

                v44 = v62;
              }

              else
              {
                v39 = bls_backlight_log();
                v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
                if (environment3 == environment4)
                {
                  if (v40)
                  {
                    *buf = 134218498;
                    v82 = v59;
                    v83 = 2114;
                    *v84 = v35;
                    *&v84[8] = 2114;
                    *&v84[10] = v31;
                    _os_log_error_impl(&dword_21FD11000, v39, OS_LOG_TYPE_ERROR, "%p duplicate entries for same environment: %{public}@ %{public}@", buf, 0x20u);
                  }
                }

                else if (v40)
                {
                  environment5 = [v35 environment];
                  environment6 = [v31 environment];
                  *buf = 134218498;
                  v82 = v59;
                  v83 = 2114;
                  *v84 = environment5;
                  *&v84[8] = 2114;
                  *&v84[10] = environment6;
                  _os_log_error_impl(&dword_21FD11000, v39, OS_LOG_TYPE_ERROR, "%p two environments have the same identifier: %{public}@ %{public}@", buf, 0x20u);
                }

                [v62 addObject:v35];
                v44 = v62;
              }

              [v44 addObject:v31];
              v13 = v36;
              v28 = v61;
            }

            else
            {
              [v28 setObject:v31 forKey:identifier2];
            }

            ++v29;
          }

          v64 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
        }

        while (v64);
      }

      if (!os_variant_has_internal_diagnostics())
      {
        goto LABEL_36;
      }

      v45 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.BacklightServices"];
      v79 = @"crashOnInvalidPresentation";
      v80 = MEMORY[0x277CBEC28];
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      [v45 registerDefaults:v46];

      v47 = [v45 BOOLForKey:@"crashOnInvalidPresentation"];
      if (v47)
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p bad presentation created, duplicate entries: %@", v59, v62];
        BLSHRecordCriticalAssertFailure(v48, 1, 0);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __99__BLSHBacklightEnvironmentPresentation_initWithPresentationEntries_flipbookContext_expirationDate___block_invoke;
        v66[3] = &unk_27841E510;
        v67 = v59;
        v68 = v62;
        v69 = v55;
        v49 = MEMORY[0x223D70730](v66);
        if (BLSHIsUnitTestRunning())
        {
          v49[2](v49);
        }

        else
        {
          v50 = dispatch_time(0, 1000000000);
          dispatch_after(v50, MEMORY[0x277D85CD0], v49);
        }

        entriesCopy = v56;
      }

      else
      {
LABEL_36:
        v48 = bls_backlight_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          [BLSHBacklightEnvironmentPresentation initWithPresentationEntries:v59 flipbookContext:v62 expirationDate:v48];
        }

        entriesCopy = v56;
      }

      allValues = [v28 allValues];
      v52 = v59->_presentationEntries;
      v59->_presentationEntries = allValues;
    }

    contextCopy = v57;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v59;
}

void __99__BLSHBacklightEnvironmentPresentation_initWithPresentationEntries_flipbookContext_expirationDate___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p bad presentation created, duplicate entries: %@", *(a1 + 32), *(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    *buf = 138544642;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"BLSHBacklightEnvironmentPresentation.m";
    v17 = 1024;
    v18 = 86;
    v19 = 2114;
    v20 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightEnvironmentPresentation)initWithPresentationEntries:(id)entries caContext:(id)context expirationDate:(id)date
{
  dateCopy = date;
  contextCopy = context;
  entriesCopy = entries;
  v11 = [[BLSHFlipbookContext alloc] initWithCAContext:contextCopy wantsTransform:0 inverted:0];

  v12 = [(BLSHBacklightEnvironmentPresentation *)self initWithPresentationEntries:entriesCopy flipbookContext:v11 expirationDate:dateCopy];
  return v12;
}

- (BLSHBacklightEnvironmentPresentation)initWithEnvironments:(id)environments caContext:(id)context expirationDate:(id)date
{
  dateCopy = date;
  contextCopy = context;
  v10 = [environments bs_mapNoNulls:&__block_literal_global_17];
  v11 = [(BLSHBacklightEnvironmentPresentation *)self initWithPresentationEntries:v10 caContext:contextCopy expirationDate:dateCopy];

  return v11;
}

BLSHPresentationEntry *__86__BLSHBacklightEnvironmentPresentation_initWithEnvironments_caContext_expirationDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BLSHPresentationEntry alloc] initWithEnvironment:v2 userObject:0];

  return v3;
}

- (BOOL)isLiveUpdating
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_presentationEntries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        environment = [*(*(&v10 + 1) + 8 * i) environment];
        isLiveUpdating = [environment isLiveUpdating];

        if (isLiveUpdating)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isHighLuminanceAlwaysOn
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_presentationEntries;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        environment = [v6 environment];
        if (objc_opt_respondsToSelector())
        {
          environment2 = [v6 environment];
          isHighLuminanceAlwaysOn = [environment2 isHighLuminanceAlwaysOn];

          if (isHighLuminanceAlwaysOn)
          {

            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendArraySection:self->_presentationEntries withName:@"presentationEntries" skipIfEmpty:0 objectTransformer:&__block_literal_global_49];
  v4 = [v3 appendObject:self->_flipbookContext withName:@"context"];
  bls_loggingString = [(NSDate *)self->_expirationDate bls_loggingString];
  [v3 appendString:bls_loggingString withName:@"expirationDate" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_presentationEntries];
  v5 = [builder appendObject:self->_flipbookContext];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  presentationEntries = self->_presentationEntries;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__BLSHBacklightEnvironmentPresentation_isEqual___block_invoke;
  v18[3] = &unk_27841EB40;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:presentationEntries counterpart:v18];
  flipbookContext = self->_flipbookContext;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__BLSHBacklightEnvironmentPresentation_isEqual___block_invoke_2;
  v16 = &unk_27841EB40;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:flipbookContext counterpart:&v13];
  LOBYTE(flipbookContext) = [v5 isEqual];

  return flipbookContext;
}

- (id)differenceFromPresentation:(id)presentation
{
  v39 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  environmentsSet = [presentationCopy environmentsSet];
  v6 = [(NSSet *)self->_environmentsSet mutableCopy];
  v7 = v6;
  if (environmentsSet)
  {
    [v6 minusSet:environmentsSet];
  }

  v8 = [environmentsSet mutableCopy];
  [v8 minusSet:self->_environmentsSet];
  if ([v7 count])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v8 count] != 0;
  }

  v27 = v9;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = self->_presentationEntries;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        environment = [*(*(&v33 + 1) + 8 * i) environment];
        if ([v7 containsObject:environment])
        {
          [v10 addObject:environment];
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = presentationCopy;
  presentationEntries = [presentationCopy presentationEntries];
  v19 = [presentationEntries countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v30;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment2 = [*(*(&v29 + 1) + 8 * j) environment];
        if ([v8 containsObject:environment2])
        {
          [v17 addObject:environment2];
        }
      }

      v20 = [presentationEntries countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v20);
  }

  v24 = [[BLSHPresentationDifference alloc] initWithHasChanges:v27 insertedEnvironments:v10 removedEnvironments:v17];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)differenceFromPresentation:(id)presentation forEachRemoval:(id)removal forEachAddition:(id)addition
{
  v32 = *MEMORY[0x277D85DE8];
  removalCopy = removal;
  additionCopy = addition;
  v10 = [(BLSHBacklightEnvironmentPresentation *)self differenceFromPresentation:presentation];
  if ([v10 hasChanges])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    removals = [v10 removals];
    v12 = [removals countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(removals);
          }

          removalCopy[2](removalCopy, *(*(&v26 + 1) + 8 * v15++));
        }

        while (v13 != v15);
        v13 = [removals countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    insertions = [v10 insertions];
    v17 = [insertions countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(insertions);
          }

          additionCopy[2](additionCopy, *(*(&v22 + 1) + 8 * v20++));
        }

        while (v18 != v20);
        v18 = [insertions countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invalidateContentForReason:(id)reason
{
  v17 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_presentationEntries;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        environment = [*(*(&v12 + 1) + 8 * v9) environment];
        [environment invalidateContentForReason:reasonCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithPresentationEntries:(uint64_t)a1 flipbookContext:(uint64_t)a2 expirationDate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_21FD11000, log, OS_LOG_TYPE_FAULT, "%p bad presentation created, duplicate entries: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithPresentationEntries:(uint64_t)a1 flipbookContext:(const char *)a2 expirationDate:.cold.2(uint64_t a1, const char *a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p cannot initialize with nil presentationEntries, %@", a1, a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a1;
    v14 = 2114;
    v15 = @"BLSHBacklightEnvironmentPresentation.m";
    v16 = 1024;
    v17 = 26;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end