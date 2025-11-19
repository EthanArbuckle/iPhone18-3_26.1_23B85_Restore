BOOL sub_1000010E8(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 length] < 0x33;
  }

  else
  {
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 integerValue] > 0;
  }

  return v3;
}

BOOL sub_100001258(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) == 0 || [v2 length] < 0x101;

  return v3;
}

void sub_1000013B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000013C8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[NSMutableDictionary dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = a4;
    v36 = v7;
    v37 = a1;
    v38 = v8;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v14 = &NSExtensionMain_ptr;
      v39 = v9;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v40 + 1) + 8 * i);
          v17 = [v10 objectForKey:v16];
          v18 = v14[43];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v9 setObject:v17 forKey:v16];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_23;
            }

            v19 = [v16 intValue];
            v20 = [v14[43] numberWithInt:v19];
            [v20 stringValue];
            v21 = v12;
            v22 = v13;
            v24 = v23 = v14;
            v25 = [v24 isEqualToString:v16];

            v14 = v23;
            v13 = v22;
            v12 = v21;

            if (!v25)
            {
LABEL_23:
              *(*(*(v37 + 40) + 8) + 24) = 1;
              *v35 = 1;

              v7 = v36;
              v8 = v38;
              v9 = v39;
              goto LABEL_25;
            }

            v26 = [v14[43] numberWithInt:v19];
            v9 = v39;
            [v39 setObject:v17 forKey:v26];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v7 = v36;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_25;
    }

    v37 = a1;
    v38 = v8;
    v27 = [v8 componentsSeparatedByString:{@", "}];
    if ([v27 count])
    {
      v28 = 0;
      do
      {
        v29 = [v27 objectAtIndex:v28];
        v30 = +[NSCharacterSet whitespaceCharacterSet];
        v31 = [v29 stringByTrimmingCharactersInSet:v30];

        if (([v31 isEqual:&stru_100008428] & 1) == 0)
        {
          v32 = [NSNumber numberWithInt:(v28 + 2)];
          [v9 setObject:v31 forKey:v32];
        }

        ++v28;
      }

      while ([v27 count] > v28);
    }
  }

  v33 = *(v37 + 32);
  v34 = [v9 copy];
  [v33 setObject:v34 forKey:v7];

  v8 = v38;
LABEL_25:
}

void sub_10000184C(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v8[0] = &off_100008610;
  v8[1] = &off_100008628;
  v9[0] = @"eventDate";
  v9[1] = @"eventType";
  v2 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v1 setObject:v2 forKeyedSubscript:@"AnyLogLine"];

  v6 = &off_100008640;
  v7 = @"uuidReference";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v1 setObject:v3 forKeyedSubscript:@"210"];

  v4 = [v1 copy];
  v5 = qword_10000C898;
  qword_10000C898 = v4;
}

void sub_100001D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100001DB0(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained isCancelled];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 fields];
    v7 = [v6 objectAtIndex:2];

    v8 = [a1[4] logLineReferences];
    if (([v8 containsObject:v7] & 1) == 0)
    {
      v9 = [a1[4] inputs];
      v10 = [v9 logIds];
      v11 = [v3 type];
      v12 = [v10 containsObject:v11];

      if (!v12)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = [v3 bundleID];
      if (!v8 || [a1[4] passesFilter:v8])
      {
        v13 = [a1[4] processLine:v3];
        [a1[5] addObject:v13];
        v14 = [a1[4] logLineReferences];
        [v14 addObject:v7];

        v8 = v13;
      }
    }

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

void sub_100002478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000024B0(id *a1, void *a2)
{
  v36 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = [v36 eventBody];

    if (v5)
    {
      v6 = [v36 eventBody];
      v7 = [v6 incidentID];
      if (v7)
      {
        v8 = v7;
        v9 = [a1[4] logLineReferences];
        v10 = [v36 eventBody];
        v11 = [v10 incidentID];
        v12 = [v9 containsObject:v11];

        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      v13 = +[NSMutableDictionary dictionary];
      v14 = [v36 eventBody];
      v15 = [v14 incidentID];

      if (v15)
      {
        v16 = [v36 eventBody];
        v17 = [v16 incidentID];
        [v13 setObject:v17 forKeyedSubscript:@"uuidReference"];
      }

      else
      {
        v16 = +[NSNull null];
        [v13 setObject:v16 forKeyedSubscript:@"uuidReference"];
      }

      v18 = [v36 eventBody];
      v19 = [v18 hasCaptureTime];

      if (v19)
      {
        v20 = [v36 eventBody];
        [v20 captureTime];
        v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

        v22 = [NSString stringWithFormat:@"%@", v21];
        [v13 setObject:v22 forKeyedSubscript:@"eventDate"];
      }

      else
      {
        v21 = +[NSNull null];
        [v13 setObject:v21 forKeyedSubscript:@"eventDate"];
      }

      [v13 setObject:@"210" forKeyedSubscript:@"eventType"];
      v23 = [v36 eventBody];
      v24 = [v23 hasPatternType];

      if (v24)
      {
        v25 = [v36 eventBody];
        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v25 patternType]);
        [v13 setObject:v26 forKeyedSubscript:BMDiagnosticsPanicPatternTypeColumn];
      }

      else
      {
        v25 = +[NSNull null];
        [v13 setObject:v25 forKeyedSubscript:BMDiagnosticsPanicPatternTypeColumn];
      }

      v27 = [v36 eventBody];
      v28 = [v27 patternUUID];

      if (v28)
      {
        v29 = [v36 eventBody];
        v30 = [v29 patternUUID];
        [v13 setObject:v30 forKeyedSubscript:@"patternUUID"];
      }

      [a1[5] addObject:v13];
      v31 = [v36 eventBody];
      v32 = [v31 incidentID];

      if (v32)
      {
        v33 = [a1[4] logLineReferences];
        v34 = [v36 eventBody];
        v35 = [v34 incidentID];
        [v33 addObject:v35];
      }
    }
  }

LABEL_21:
}