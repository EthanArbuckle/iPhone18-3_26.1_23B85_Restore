@interface ACHEarnedInstanceDuplicateUtility
- (ACHEarnedInstanceDuplicateUtility)initWithTemplateStore:(id)a3;
- (ACHTemplateStore)templateStore;
- (id)earnedInstancesLimitedByEarnLimit:(id)a3;
- (id)earnedInstancesWithoutDuplicates:(id)a3;
@end

@implementation ACHEarnedInstanceDuplicateUtility

- (ACHEarnedInstanceDuplicateUtility)initWithTemplateStore:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ACHEarnedInstanceDuplicateUtility;
  v5 = [(ACHEarnedInstanceDuplicateUtility *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_templateStore, v4);
    v7 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v6->_gregorianCalendar;
    v6->_gregorianCalendar = v7;
  }

  return v6;
}

- (id)earnedInstancesWithoutDuplicates:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hk_map:&__block_literal_global_16];
  if ([v5 count] != 1)
  {
    v6 = ACHLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceDuplicateUtility *)v5 earnedInstancesWithoutDuplicates:v6];
    }
  }

  v7 = [(ACHEarnedInstanceDuplicateUtility *)self templateStore];
  v8 = [v4 anyObject];
  v9 = [v8 templateUniqueName];
  v10 = [v7 templateForUniqueName:v9];

  v63 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [(ACHEarnedInstanceDuplicateUtility *)self gregorianCalendar];
  v65 = HKFirstDayOfWeekForWeeklyGoalCalculations();
  v12 = v4;
  v62 = v12;
  if ([v12 count])
  {
    v71 = v10;
    v75 = v11;
    do
    {
      context = objc_autoreleasePoolPush();
      v79 = [v12 anyObject];
      v77 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = v12;
      v80 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
      if (!v80)
      {
        goto LABEL_46;
      }

      v78 = *v83;
      do
      {
        v13 = 0;
        do
        {
          if (*v83 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v82 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = v10;
          v17 = v11;
          v18 = v79;
          v19 = v14;
          if ([v18 isEqual:v19])
          {
LABEL_13:

LABEL_14:
            [v77 addObject:v19];
            goto LABEL_42;
          }

          if ([v16 duplicateRemovalStrategy] == 4)
          {
            v20 = [v18 externalIdentifier];
            v21 = [v19 externalIdentifier];
            v22 = [v20 isEqual:v21];
            goto LABEL_17;
          }

          if (![v16 duplicateRemovalCalendarUnit])
          {
            goto LABEL_41;
          }

          v23 = [v16 duplicateRemovalCalendarUnit];
          v24 = [v18 packedEarnedDateComponents];
          v25 = [v19 packedEarnedDateComponents];
          v26 = v24 & 0xFFFFFFFFFFLL;
          v27 = v25 & 0xFFFFFFFFFFLL;
          v72 = (v24 >> 16) & 0xFFFFFF;
          v28 = (v25 >> 16) & 0xFFFFFF;
          v29 = v17;
          if (v23 > 15)
          {
            if (v23 == 16)
            {
              if (v27 != v26 || v28 != v72)
              {

                v10 = v71;
                v11 = v75;
LABEL_41:

                goto LABEL_42;
              }

              v30 = (v27 ^ v26) & 0xFF000000;
LABEL_24:

              v10 = v71;
              v11 = v75;
              if (v30)
              {
                goto LABEL_41;
              }

              goto LABEL_33;
            }

            if (v23 != 0x2000)
            {
LABEL_30:
              v35 = v29;
              v74 = ACHDateComponentsForPackedDateComponents(v26);
              v67 = [v35 dateFromComponents:v74];
              v70 = ACHDateComponentsForPackedDateComponents(v27);
              v36 = [v35 dateFromComponents:v70];
              v37 = [v35 isDate:v67 equalToDate:v36 toUnitGranularity:v23];

              v10 = v71;
              v11 = v75;
              if ((v37 & 1) == 0)
              {
                goto LABEL_41;
              }

              goto LABEL_33;
            }

            v31 = v29;
            v73 = ACHDateComponentsForPackedDateComponents(v26);
            v68 = v31;
            v66 = [v31 dateFromComponents:v73];
            v69 = ACHDateComponentsForPackedDateComponents(v27);
            v32 = [v31 dateFromComponents:v69];
            v33 = [v31 hk_startOfWeekWithFirstWeekday:v65 beforeDate:v66 addingWeeks:0];
            v34 = [v31 hk_startOfWeekWithFirstWeekday:v65 beforeDate:v32 addingWeeks:0];
            LOBYTE(v31) = [v33 isEqual:v34];

            v10 = v71;
            v11 = v75;
            if ((v31 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v23 != 2)
            {
              if (v23 != 8)
              {
                goto LABEL_30;
              }

              v30 = (v27 ^ v26) | (v28 ^ v72);
              goto LABEL_24;
            }

            v10 = v71;
            v11 = v75;
          }

LABEL_33:
          v38 = [v16 duplicateRemovalStrategy];
          if ((v38 - 1) < 2)
          {
            goto LABEL_13;
          }

          if (v38 != 3)
          {
            goto LABEL_41;
          }

          v39 = [v18 value];
          if (!v39)
          {
            goto LABEL_41;
          }

          v40 = v39;
          v41 = [v19 value];

          if (!v41)
          {
            goto LABEL_41;
          }

          v20 = [v18 value];
          v21 = [v19 value];
          v22 = [v20 compare:v21] == 0;
LABEL_17:

          v11 = v75;
          if (v22)
          {
            goto LABEL_14;
          }

LABEL_42:
          objc_autoreleasePoolPop(v15);
          v13 = v13 + 1;
        }

        while (v80 != v13);
        v42 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
        v80 = v42;
      }

      while (v42);
LABEL_46:

      v43 = v10;
      v44 = v11;
      v45 = v77;
      v46 = [v45 anyObject];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v81 = v45;
      v47 = [v81 countByEnumeratingWithState:&v86 objects:v91 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v87;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v87 != v49)
            {
              objc_enumerationMutation(v81);
            }

            v51 = *(*(&v86 + 1) + 8 * i);
            v52 = v43;
            v53 = v44;
            v54 = v46;
            v55 = v51;
            v56 = [v54 isEqual:v55];
            v57 = v54;
            if ((v56 & 1) == 0)
            {
              if (ACHComparisonForEarnedInstances(v52, v53, v54, v55) == -1)
              {
                v57 = v55;
              }

              else
              {
                v57 = v54;
              }
            }

            v46 = v57;
          }

          v48 = [v81 countByEnumeratingWithState:&v86 objects:v91 count:16];
        }

        while (v48);
      }

      [v63 addObject:v46];
      v12 = [obj hk_minus:v81];

      objc_autoreleasePoolPop(context);
      v10 = v71;
      v11 = v75;
    }

    while ([v12 count]);
  }

  v58 = [v63 copy];

  v59 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)earnedInstancesLimitedByEarnLimit:(id)a3
{
  v4 = a3;
  v5 = [v4 hk_map:&__block_literal_global_295];
  if ([v5 count] != 1)
  {
    v6 = ACHLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceDuplicateUtility *)v5 earnedInstancesWithoutDuplicates:v6];
    }
  }

  v7 = [(ACHEarnedInstanceDuplicateUtility *)self templateStore];
  v8 = [v4 anyObject];
  v9 = [v8 templateUniqueName];
  v10 = [v7 templateForUniqueName:v9];

  v11 = [v10 earnLimit];
  if (*MEMORY[0x277CE8C58] == v11)
  {
    v12 = v4;
  }

  else
  {
    v13 = v11;
    v14 = [v4 allObjects];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __71__ACHEarnedInstanceDuplicateUtility_earnedInstancesLimitedByEarnLimit___block_invoke_296;
    v21 = &unk_278491AF8;
    v22 = v10;
    v23 = self;
    v15 = [v14 sortedArrayUsingComparator:&v18];

    v16 = [v15 subarrayWithRange:{objc_msgSend(v15, "count", v18, v19, v20, v21) - v13, v13}];
    v12 = [MEMORY[0x277CBEB98] setWithArray:v16];
  }

  return v12;
}

uint64_t __71__ACHEarnedInstanceDuplicateUtility_earnedInstancesLimitedByEarnLimit___block_invoke_296(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 gregorianCalendar];
  v9 = ACHComparisonForEarnedInstances(v4, v8, v7, v6);

  return v9;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

- (void)earnedInstancesWithoutDuplicates:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "-earnedInstancesWithoutDuplicates: called with instances of multiple templates, template names: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end