void sub_DE8(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v15 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1D30(*(a1 + 32), v11);
  if (v14)
  {
LABEL_3:
    [*(a1 + 32) appendFormat:@"Error querying for meds and meds list: %@", v14];
  }

LABEL_4:
  if (a5)
  {
    dispatch_group_leave(*(*(a1 + 32) + 24));
  }
}

void sub_EB8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 48), a2);
  if (v6)
  {
    [*(a1 + 32) appendFormat:@"Error fetching schedules: %@", v6];
  }

  dispatch_group_leave(*(*(a1 + 32) + 24));
}

id sub_F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUID];
  v5 = [*(a1 + 32) targetUUID];
  if (v4 == v5)
  {
    v9 = &dword_0 + 1;
  }

  else
  {
    v6 = [*(a1 + 32) targetUUID];
    if (v6)
    {
      v7 = [v3 UUID];
      v8 = [*(a1 + 32) targetUUID];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

int64_t sub_1030(id a1, HKListUserDomainConcept *a2, HKListUserDomainConcept *a3)
{
  v4 = a3;
  v5 = [(HKListUserDomainConcept *)a2 modificationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(HKListUserDomainConcept *)v4 modificationDate];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v7 >= v10)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

id sub_10B0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v28 = [v2 UUID];
  v27 = [v28 UUIDString];
  v29[0] = v27;
  v26 = [v2 creationDate];
  v25 = HKDiagnosticStringFromDate();
  v29[1] = v25;
  v3 = [NSString alloc];
  v24 = [v2 creationDate];
  [v24 timeIntervalSinceReferenceDate];
  v23 = [v3 initWithFormat:@"%f", v4];
  v29[2] = v23;
  v22 = [v2 modificationDate];
  v21 = HKDiagnosticStringFromDate();
  v29[3] = v21;
  v5 = [NSString alloc];
  v20 = [v2 modificationDate];
  [v20 timeIntervalSinceReferenceDate];
  v19 = [v5 initWithFormat:@"%f", v6];
  v29[4] = v19;
  v18 = [v2 codingCollection];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 count]);
  v8 = [v7 stringValue];
  v29[5] = v8;
  v9 = [v2 linkCollection];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 count]);
  v11 = [v10 stringValue];
  v29[6] = v11;
  v12 = [v2 propertyCollection];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 count]);
  v14 = [v13 stringValue];
  v29[7] = v14;
  v15 = [v2 listName];

  v29[8] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:9];

  return v16;
}

id sub_138C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v40 = [v2 UUID];
  v39 = [v40 UUIDString];
  v41[0] = v39;
  v38 = [v2 creationDate];
  v37 = HKDiagnosticStringFromDate();
  v41[1] = v37;
  v3 = [NSString alloc];
  v36 = [v2 creationDate];
  [v36 timeIntervalSinceReferenceDate];
  v35 = [v3 initWithFormat:@"%f", v4];
  v41[2] = v35;
  v34 = [v2 modificationDate];
  v33 = HKDiagnosticStringFromDate();
  v41[3] = v33;
  v5 = [NSString alloc];
  v32 = [v2 modificationDate];
  [v32 timeIntervalSinceReferenceDate];
  v31 = [v5 initWithFormat:@"%f", v6];
  v41[4] = v31;
  v30 = [v2 codingCollection];
  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v30 count]);
  v28 = [v29 stringValue];
  v41[5] = v28;
  v27 = [v2 linkCollection];
  v26 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 count]);
  v25 = [v26 stringValue];
  v41[6] = v25;
  v24 = [v2 propertyCollection];
  v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 count]);
  v22 = [v23 stringValue];
  v41[7] = v22;
  v21 = [v2 firstOntologyCoding];
  v20 = HKStringFromBool();
  v41[8] = v20;
  v19 = HKStringFromBool();
  v41[9] = v19;
  v7 = HKStringFromBool();
  v41[10] = v7;
  v8 = [v2 userSpecifiedName];
  v9 = HKStringFromBool();
  v41[11] = v9;
  v10 = [v2 userSpecifiedNotes];
  v11 = HKStringFromBool();
  v41[12] = v11;
  v12 = [v2 userVisualizationConfigJSONString];
  v13 = HKStringFromBool();
  v41[13] = v13;
  v14 = [v2 semanticIdentifier];

  v15 = [v14 stringValue];
  v16 = [v15 hk_SHA256Hash];
  v41[14] = v16;
  v18 = [NSArray arrayWithObjects:v41 count:15];

  return v18;
}

id sub_17B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 medicationUUID];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = &dword_0 + 1;
  }

  else if (v5)
  {
    v6 = [v3 medicationUUID];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_1838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 medicationIdentifier];
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v7 = &dword_0 + 1;
  }

  else if (v5)
  {
    v6 = [v3 medicationIdentifier];
    v7 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A30(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    [a1 log:{@"%@", v3}];
    [a1 appendString:v3];
  }
}

void sub_1A98(void *a1)
{
  if (a1)
  {
    sub_1E2C(a1, @"MEDICATIONS");
    sub_1E90(a1);
    sub_1E2C(a1, @"SCHEDULES");

    sub_2108(a1);
  }
}

void sub_1AF8(uint64_t a1)
{
  if (a1)
  {
    v2 = +[HKUserDomainConceptTypeIdentifier medicationUserDomainConceptTypeIdentifier];
    v3 = [HKQuery predicateForUserDomainConceptsWithTypeIdentifier:v2];
    v9[0] = v3;
    v4 = [HKQuery predicateForListUserDomainConceptWithListType:2];
    v9[1] = v4;
    v5 = [NSArray arrayWithObjects:v9 count:2];
    v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

    dispatch_group_enter(*(a1 + 24));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_DE8;
    v8[3] = &unk_41E0;
    v8[4] = a1;
    v7 = [[HKUserDomainConceptQuery alloc] initWithPredicate:v6 anchor:0 limit:0 sortDescriptors:0 resultsHandler:v8];
    [*(a1 + 8) executeQuery:v7];
  }
}

void sub_1C90(uint64_t a1)
{
  if (a1)
  {
    v2 = [[HKMedicationScheduleControl alloc] initWithHealthStore:*(a1 + 8)];
    dispatch_group_enter(*(a1 + 24));
    sub_1964();
    v4 = 3221225472;
    v5 = sub_EB8;
    v6 = &unk_4208;
    v7 = a1;
    [v2 fetchAllSchedulesWithCompletion:v3];
  }
}

void sub_1D30(uint64_t a1, void *a2)
{
  v9 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 32);
      if (!v3)
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = *(a1 + 32);
        *(a1 + 32) = v4;

        v3 = *(a1 + 32);
      }

      [v3 addObject:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = *(a1 + 40);
      if (!v6)
      {
        v7 = objc_alloc_init(NSMutableArray);
        v8 = *(a1 + 40);
        *(a1 + 40) = v7;

        v6 = *(a1 + 40);
      }

      [v6 addObject:v9];
    }
  }
}

id sub_1E2C(id result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    [v2 appendStrongSeparator];
    [v2 appendString:v3];

    [v2 appendStrongSeparator];

    return [v2 appendNewline];
  }

  return result;
}

void sub_1E90(id *a1)
{
  if (a1)
  {
    v2 = &off_8000;
    if (a1[5])
    {
      v3 = sub_2458(a1);
      v14 = [a1[5] mutableCopy];
      v13 = objc_alloc_init(NSMutableArray);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = [v3 linkCollection];
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v17;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v16 + 1) + 8 * i);
            v10 = v2;
            v11 = *(a1 + *(v2 + 258));
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_F5C;
            v15[3] = &unk_4230;
            v15[4] = v9;
            v12 = [v11 hk_firstObjectPassingTest:v15];
            if (v12)
            {
              [v14 removeObject:v12];
              [v13 addObject:v12];
            }

            v2 = v10;
          }

          v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v6);
      }

      sub_24C4(a1, v3);
      sub_25C8(a1, v13, @"Active Meds");
      sub_25C8(a1, v14, @"Archived Meds");
    }

    else
    {

      [a1 appendFormat:@"Found No Medications To Report\n"];
    }
  }
}

void sub_2108(id *a1)
{
  if (a1)
  {
    [a1 appendFormat:@"Fetched %ld schedules", objc_msgSend(a1[6], "count")];
    if ([a1[6] count])
    {
      [a1 appendNewline];
      [a1 appendString:@"Schedules"];
      v19 = [[HKTableFormatter alloc] initWithColumnTitles:&off_48C0];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v16 = a1;
      obj = a1[6];
      v20 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v20)
      {
        v18 = *v25;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v3 = *(*(&v24 + 1) + 8 * i);
            v23 = [v3 UUID];
            v22 = [v23 UUIDString];
            v28[0] = v22;
            [v3 creationTimestamp];
            v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
            v4 = HKDiagnosticStringFromDate();
            v28[1] = v4;
            v5 = [v3 medicationUUID];
            v6 = [v5 UUIDString];
            v28[2] = v6;
            v7 = [v3 createdUTCOffset];
            v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 secondsFromGMT]);
            v9 = [v8 stringValue];
            v28[3] = v9;
            [v3 isDeleted];
            v10 = HKStringFromBool();
            v28[4] = v10;
            [v3 isUnavailable];
            v11 = HKStringFromBool();
            v28[5] = v11;
            v12 = [NSArray arrayWithObjects:v28 count:6];

            [v19 appendRow:v12];
          }

          v20 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v20);
      }

      [v16 appendNewline];
      v13 = [v19 formattedTable];
      [v16 appendString:v13];

      [v16 appendNewline];
      v14 = +[NSTimeZone localTimeZone];
      v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 secondsFromGMT]);
      [v16 appendFormat:@"Local TimeZone: '%@' with '%@' seconds offset from GMT", v14, v15];
    }
  }
}

id sub_2458(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 32) sortedArrayUsingComparator:&stru_4270];
    v2 = [v1 lastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_24C4(void *a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    [a1 appendString:@"List"];
    [a1 appendSeparator];
    if (v7)
    {
      v3 = [HKTableFormatter alloc];
      objc_opt_self();
      v4 = [v3 initWithColumnTitles:&off_4890];
      v5 = sub_10B0(HDMedicationsDiagnosticOperation, v7);
      [v4 appendRow:v5];

      v6 = [v4 formattedTable];
      [a1 appendString:v6];

      [a1 appendNewline];
    }

    else
    {
      [a1 appendFormat:@"Found No Meds List To Report\n"];
    }
  }
}

void sub_25C8(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    [a1 appendString:a3];
    [a1 appendSeparator];
    v6 = [HKTableFormatter alloc];
    objc_opt_self();
    v7 = [v6 initWithColumnTitles:&off_48A8];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 UUID];
          sub_27C4(a1, v14);

          v15 = [v13 semanticIdentifier];
          sub_2858(a1, v15);

          v16 = sub_138C(HDMedicationsDiagnosticOperation, v13);
          [v7 appendRow:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v17 = [v7 formattedTable];
    [a1 appendString:v17];

    [a1 appendNewline];
    v5 = v18;
  }
}

void *sub_27C4(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[6];
    sub_1964();
    v7 = 3221225472;
    v8 = sub_17B0;
    v9 = &unk_4298;
    v10 = v3;
    a1 = [v4 hk_containsObjectPassingTest:v6];
  }

  return a1;
}

void *sub_2858(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    [a2 stringValue];
    objc_claimAutoreleasedReturnValue();
    v3 = v2[6];
    sub_1964();
    v8 = 3221225472;
    v9 = sub_1838;
    v10 = &unk_4298;
    v11 = v4;
    v5 = v4;
    v2 = [v3 hk_containsObjectPassingTest:v7];
  }

  return v2;
}