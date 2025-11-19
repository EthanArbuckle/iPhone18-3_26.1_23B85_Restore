@interface AMDDODMLCustomTargetingHelper
- (AMDDODMLCustomTargetingHelper)init;
- (id)callAMDClient:(id)a3 error:(id *)a4;
- (id)getDictionaryValueDataType:(id)a3 error:(id *)a4;
- (id)getOperationsArray;
- (id)mainTargetingResolver:(id)a3 error:(id *)a4;
- (id)parseData:(id)a3 withArray:(id)a4 error:(id *)a5;
- (id)performOperation:(id)a3 onArray:(id)a4 error:(id *)a5;
- (id)postProc:(id)a3 withDirections:(id)a4 error:(id *)a5;
@end

@implementation AMDDODMLCustomTargetingHelper

- (AMDDODMLCustomTargetingHelper)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AMDDODMLCustomTargetingHelper;
  v6 = [(AMDDODMLCustomTargetingHelper *)&v4 init];
  objc_storeStrong(&v6, v6);
  v3 = v6;
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)callAMDClient:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
  v31 = [location[0] objectAtIndex:0];
  v30 = [location[0] objectAtIndex:1];
  v29 = [location[0] objectAtIndex:2];
  if ([v29 isEqual:@"isnil"])
  {
    objc_storeStrong(&v29, 0);
  }

  v28 = objc_alloc_init(AMDClient);

  v4 = [AMDClientRequestEvent alloc];
  v27 = [v4 initWithFeatureName:v31 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v30 withCustomDescriptor:0 andSchemaVersion:v29];
  v26 = 0;
  for (i = 0; i < 3; ++i)
  {
    v5 = [v28 getFeature:v27];
    v6 = v26;
    v26 = v5;

    v23 = 0;
    v18 = 0;
    if (v26)
    {
      v24 = [v26 objectForKey:AMD_CLIENT_STATUS];
      v23 = 1;
      v18 = [v24 isEqual:AMD_CLIENT_STATUS_OK];
    }

    if (v23)
    {
    }

    if (v18)
    {
      break;
    }
  }

  if (v26)
  {
    v21 = [v26 objectForKey:AMD_CLIENT_STATUS];
    if ([v21 isEqual:AMD_CLIENT_STATUS_OK])
    {
      v20 = [v26 objectForKey:AMD_CLIENT_DATA];
      if (v20)
      {
        v34 = v20;
      }

      else
      {
        v11 = [NSError alloc];
        v15 = [v11 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:154 userInfo:0];
        v12 = v15;
        *v32 = v15;
        v34 = 0;
      }

      v22 = 1;
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v9 = [NSError alloc];
      v16 = [v9 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:153 userInfo:0];
      v10 = v16;
      *v32 = v16;
      v34 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v7 = [NSError alloc];
    v17 = [v7 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:152 userInfo:0];
    v8 = v17;
    *v32 = v17;
    v34 = 0;
    v22 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  v13 = v34;

  return v13;
}

- (id)getOperationsArray
{
  v4[2] = self;
  v4[1] = a2;
  v5[0] = CustomTargetingSum;
  v5[1] = CustomTargetingSumEmp;
  v5[2] = CustomTargetingConNum;
  v5[3] = CustomTargetingConStr;
  v5[4] = CustomTargetingMean;
  v5[5] = CustomTargetingMeanEmp;
  v5[6] = CustomTargetingLen;
  v5[7] = CustomTargetingFirst;
  v5[8] = CustomTargetingMax;
  v5[9] = CustomTargetingMaxEmp;
  v5[10] = CustomTargetingMin;
  v5[11] = CustomTargetingMinEmp;
  v4[0] = [NSArray arrayWithObjects:v5 count:12];
  v3 = v4[0];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)performOperation:(id)a3 onArray:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v83 = 0;
  objc_storeStrong(&v83, a4);
  v82 = a5;
  if ([location[0] isEqual:CustomTargetingSum] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingSumEmp))
  {
    if ([v83 count])
    {
      v80 = 0.0;
      for (i = 0; i < [v83 count]; ++i)
      {
        v56 = [v83 objectAtIndex:i];
        [v56 doubleValue];
        v80 = v80 + v7;
      }

      v85 = [NSNumber numberWithDouble:v80];
      v81 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingSum])
      {
        v5 = [NSError alloc];
        v57 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:155 userInfo:0];
        v6 = v57;
        *v82 = v57;
        v85 = 0;
      }

      else
      {
        v85 = [NSNumber numberWithInt:0];
      }

      v81 = 1;
    }
  }

  else if ([location[0] containsString:CustomTargetingConNum])
  {
    v78 = [location[0] componentsSeparatedByString:@"_"];
    if ([v78 count] == 2 || objc_msgSend(v78, "count") == 3)
    {
      v77 = 0.00000001;
      if ([v78 count] == 3)
      {
        v76 = [v78 objectAtIndex:2];
        v75 = [v76 intValue];
        v77 = (1 / (v75 ^ 0xA));
        objc_storeStrong(&v76, 0);
      }

      v74 = [v78 objectAtIndex:1];
      for (j = 0; ; ++j)
      {
        v54 = j;
        if (v54 >= [v83 count])
        {
          break;
        }

        v72 = [v83 objectAtIndex:j];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = v72;
          [v71 doubleValue];
          v52 = v12 - v77;
          [v74 doubleValue];
          if (v52 >= v13 || ([v71 doubleValue], v51 = v14 + v77, objc_msgSend(v74, "doubleValue"), v51 <= v15))
          {
            v81 = 0;
          }

          else
          {
            v85 = [NSNumber numberWithInt:v51];
            v81 = 1;
          }

          objc_storeStrong(&v71, 0);
          if (!v81)
          {
            v81 = 0;
          }
        }

        else
        {
          v10 = [NSError alloc];
          v53 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:157 userInfo:0];
          v11 = v53;
          *v82 = v53;
          v85 = 0;
          v81 = 1;
        }

        objc_storeStrong(&v72, 0);
        if (v81)
        {
          goto LABEL_31;
        }
      }

      v85 = [NSNumber numberWithInt:0];
      v81 = 1;
LABEL_31:
      objc_storeStrong(&v74, 0);
    }

    else
    {
      v8 = [NSError alloc];
      v55 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:156 userInfo:0];
      v9 = v55;
      *v82 = v55;
      v85 = 0;
      v81 = 1;
    }

    objc_storeStrong(&v78, 0);
  }

  else if ([location[0] containsString:CustomTargetingConStr])
  {
    v70 = [location[0] componentsSeparatedByString:@"_"];
    v69 = [v70 objectAtIndex:1];
    for (k = 0; ; ++k)
    {
      v50 = k;
      if (v50 >= [v83 count])
      {
        break;
      }

      v67 = [v83 objectAtIndex:k];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = v67;
        if ([v66 isEqual:v69])
        {
          v85 = [NSNumber numberWithInt:?];
          v81 = 1;
        }

        else
        {
          v81 = 0;
        }

        objc_storeStrong(&v66, 0);
        if (!v81)
        {
          v81 = 0;
        }
      }

      else
      {
        v16 = [NSError alloc];
        v49 = [v16 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:158 userInfo:0];
        v17 = v49;
        *v82 = v49;
        v85 = 0;
        v81 = 1;
      }

      objc_storeStrong(&v67, 0);
      if (v81)
      {
        goto LABEL_46;
      }
    }

    v85 = [NSNumber numberWithInt:0];
    v81 = 1;
LABEL_46:
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v70, 0);
  }

  else if ([location[0] isEqual:CustomTargetingMean] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMeanEmp))
  {
    if ([v83 count])
    {
      v65 = 0.0;
      for (m = 0; m < [v83 count]; ++m)
      {
        v47 = [v83 objectAtIndex:m];
        [v47 doubleValue];
        v65 = v65 + v20;
      }

      v85 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v65 / [v83 count]);
      v81 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMean])
      {
        v18 = [NSError alloc];
        v48 = [v18 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:159 userInfo:0];
        v19 = v48;
        *v82 = v48;
        v85 = 0;
      }

      else
      {
        v85 = [NSNumber numberWithInt:0];
      }

      v81 = 1;
    }
  }

  else if ([location[0] isEqual:CustomTargetingLen])
  {
    v85 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v83 count]);
    v81 = 1;
  }

  else if ([location[0] isEqual:CustomTargetingFirst])
  {
    if ([v83 count])
    {
      v85 = [v83 firstObject];
    }

    else
    {
      v21 = [NSError alloc];
      v46 = [v21 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:180 userInfo:0];
      v22 = v46;
      *v82 = v46;
      v85 = 0;
    }

    v81 = 1;
  }

  else if ([location[0] isEqual:CustomTargetingMax] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMaxEmp))
  {
    if ([v83 count])
    {
      v43 = [v83 firstObject];
      [v43 doubleValue];
      v44 = v25;

      v63 = v44;
      for (n = 0; n < [v83 count]; ++n)
      {
        v41 = [v83 objectAtIndex:n];
        [v41 doubleValue];
        v42 = v26;

        if (v42 > v63)
        {
          v63 = v42;
        }
      }

      v85 = [NSNumber numberWithDouble:v63];
      v81 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMax])
      {
        v23 = [NSError alloc];
        v45 = [v23 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:160 userInfo:0];
        v24 = v45;
        *v82 = v45;
        v85 = 0;
      }

      else
      {
        v85 = [NSNumber numberWithInt:0];
      }

      v81 = 1;
    }
  }

  else if ([location[0] isEqual:CustomTargetingMin] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMinEmp))
  {
    if ([v83 count])
    {
      v38 = [v83 firstObject];
      [v38 doubleValue];
      v39 = v29;

      v61 = v39;
      for (ii = 0; ii < [v83 count]; ++ii)
      {
        v36 = [v83 objectAtIndex:ii];
        [v36 doubleValue];
        v37 = v30;

        if (v37 < v61)
        {
          v61 = v37;
        }
      }

      v85 = [NSNumber numberWithDouble:v61];
      v81 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMin])
      {
        v27 = [NSError alloc];
        v40 = [v27 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:161 userInfo:0];
        v28 = v40;
        *v82 = v40;
        v85 = 0;
      }

      else
      {
        v85 = [NSNumber numberWithInt:0];
      }

      v81 = 1;
    }
  }

  else
  {
    v31 = [NSError alloc];
    v35 = [v31 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:162 userInfo:0];
    v32 = v35;
    *v82 = v35;
    v85 = 0;
    v81 = 1;
  }

  objc_storeStrong(&v83, 0);
  objc_storeStrong(location, 0);
  v33 = v85;

  return v33;
}

- (id)getDictionaryValueDataType:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = a4;
  v32 = 0;
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v27 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v27)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v27;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(__b[1] + 8 * v23);
      v29 = [location[0] objectForKey:v31];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v32)
        {
          objc_storeStrong(&v32, IsAnArray);
LABEL_30:
          v28 = 0;
          goto LABEL_31;
        }

        if ([v32 isEqual:IsAnArray])
        {
          goto LABEL_30;
        }

        v4 = [NSError alloc];
        v20 = [v4 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
        v5 = v20;
        *v33 = v20;
        v35 = 0;
        v28 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!v32)
          {
            objc_storeStrong(&v32, IsANumber);
            goto LABEL_30;
          }

          if ([v32 isEqual:IsANumber])
          {
            goto LABEL_30;
          }

          v6 = [NSError alloc];
          v19 = [v6 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
          v7 = v19;
          *v33 = v19;
          v35 = 0;
          v28 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v32)
            {
              objc_storeStrong(&v32, IsAString);
              goto LABEL_30;
            }

            if ([v32 isEqual:IsAString])
            {
              goto LABEL_30;
            }

            v8 = [NSError alloc];
            v18 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
            v9 = v18;
            *v33 = v18;
            v35 = 0;
            v28 = 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (!v32)
              {
                objc_storeStrong(&v32, IsADictionary);
                goto LABEL_30;
              }

              if ([v32 isEqual:IsADictionary])
              {
                goto LABEL_30;
              }

              v10 = [NSError alloc];
              v17 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
              v11 = v17;
              *v33 = v17;
              v35 = 0;
              v28 = 1;
            }

            else
            {
              v12 = [NSError alloc];
              v16 = [v12 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:164 userInfo:0];
              v13 = v16;
              *v33 = v16;
              v35 = 0;
              v28 = 1;
            }
          }
        }
      }

LABEL_31:
      objc_storeStrong(&v29, 0);
      if (v28)
      {
        goto LABEL_35;
      }

      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  v28 = 0;
LABEL_35:

  if (!v28)
  {
    v35 = v32;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  v14 = v35;

  return v14;
}

- (id)parseData:(id)a3 withArray:(id)a4 error:(id *)a5
{
  v108 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v106 = 0;
  objc_storeStrong(&v106, a4);
  v105 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = [NSError alloc];
      v40 = [v33 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:108 userInfo:0];
      v34 = v40;
      *v105 = v40;
      v109 = 0;
      v102 = 1;
      goto LABEL_105;
    }

    v100 = location[0];
    v99 = [(AMDDODMLCustomTargetingHelper *)v108 getDictionaryValueDataType:v100 error:v105];
    if (!v99)
    {
      v109 = 0;
      v102 = 1;
      goto LABEL_101;
    }

    if ([v99 isEqual:IsAnArray])
    {
      if ([v106 count] == 3)
      {
        v98 = [v106 objectAtIndex:1];
        v97 = [v106 objectAtIndex:2];
        v96 = [v100 objectForKey:v98];
        if (v96)
        {
          v95 = [(AMDDODMLCustomTargetingHelper *)v108 performOperation:v97 onArray:v96 error:v105];
          if (v95)
          {
            v109 = v95;
          }

          else
          {
            v109 = 0;
          }

          v102 = 1;
          objc_storeStrong(&v95, 0);
        }

        else
        {
          v9 = [NSError alloc];
          v61 = [v9 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:168 userInfo:0];
          v10 = v61;
          *v105 = v61;
          v109 = 0;
          v102 = 1;
        }

        objc_storeStrong(&v96, 0);
        objc_storeStrong(&v97, 0);
        objc_storeStrong(&v98, 0);
        goto LABEL_101;
      }

      if ([v106 count] == 2)
      {
        v94 = [v106 objectAtIndex:1];
        v93 = [(AMDDODMLCustomTargetingHelper *)v108 getOperationsArray];
        if ([v93 containsObject:v94])
        {
          if ([v100 count] == 1)
          {
            memset(__b, 0, sizeof(__b));
            v60 = v100;
            if ([v60 countByEnumeratingWithState:__b objects:v113 count:16])
            {
              *__b[2];
              *__b[2];
              v92 = *__b[1];
              v90 = [v100 objectForKey:v92];
              v89 = [(AMDDODMLCustomTargetingHelper *)v108 performOperation:v94 onArray:v90 error:v105];
              if (v89)
              {
                v109 = v89;
              }

              else
              {
                v109 = 0;
              }

              v102 = 1;
              objc_storeStrong(&v89, 0);
              objc_storeStrong(&v90, 0);
            }

            else
            {
              v102 = 0;
            }

            if (!v102)
            {
              v102 = 0;
            }
          }

          else
          {
            v11 = [NSError alloc];
            v59 = [v11 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:169 userInfo:0];
            v12 = v59;
            *v105 = v59;
            v109 = 0;
            v102 = 1;
          }
        }

        else
        {
          v88 = [v106 objectAtIndex:1];
          v87 = [v100 objectForKey:v88];
          v86 = [v87 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v109 = v86;
            v102 = 1;
          }

          else
          {
            v13 = [NSError alloc];
            v58 = [v13 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:170 userInfo:0];
            v14 = v58;
            *v105 = v58;
            v109 = 0;
            v102 = 1;
          }

          objc_storeStrong(&v86, 0);
          objc_storeStrong(&v87, 0);
          objc_storeStrong(&v88, 0);
        }

        objc_storeStrong(&v93, 0);
        objc_storeStrong(&v94, 0);
        if (!v102)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if ([v106 count] != 1)
        {
          v19 = [NSError alloc];
          v54 = [v19 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:172 userInfo:0];
          v20 = v54;
          *v105 = v54;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        if ([v100 count] != 1)
        {
          v17 = [NSError alloc];
          v55 = [v17 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:169 userInfo:0];
          v18 = v55;
          *v105 = v55;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        memset(v84, 0, sizeof(v84));
        v57 = v100;
        if ([v57 countByEnumeratingWithState:v84 objects:v112 count:16])
        {
          *v84[2];
          *v84[2];
          v85 = *v84[1];
          v83 = [v100 objectForKey:v85];
          v82 = [v83 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v109 = v82;
            v102 = 1;
          }

          else
          {
            v15 = [NSError alloc];
            v56 = [v15 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:171 userInfo:0];
            v16 = v56;
            *v105 = v56;
            v109 = 0;
            v102 = 1;
          }

          objc_storeStrong(&v82, 0);
          objc_storeStrong(&v83, 0);
        }

        else
        {
          v102 = 0;
        }

        if (!v102)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
      if (([v99 isEqual:IsANumber] & 1) == 0 && (objc_msgSend(v99, "isEqual:", IsAString) & 1) == 0)
      {
        if ([v99 isEqual:IsADictionary])
        {
          v29 = [NSError alloc];
          v42 = [v29 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:177 userInfo:0];
          v30 = v42;
          *v105 = v42;
        }

        else
        {
          v31 = [NSError alloc];
          v41 = [v31 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:178 userInfo:0];
          v32 = v41;
          *v105 = v41;
        }

        v109 = 0;
        v102 = 1;
        goto LABEL_101;
      }

      if ([v106 count] == 3)
      {
        v81 = [v106 objectAtIndex:1];
        v80 = [v106 objectAtIndex:2];
        v79 = objc_alloc_init(NSMutableArray);
        v78 = objc_alloc_init(NSMutableArray);
        memset(v76, 0, sizeof(v76));
        v52 = v100;
        v53 = [v52 countByEnumeratingWithState:v76 objects:v111 count:16];
        if (v53)
        {
          v49 = *v76[2];
          v50 = 0;
          v51 = v53;
          while (1)
          {
            v48 = v50;
            if (*v76[2] != v49)
            {
              objc_enumerationMutation(v52);
            }

            v77 = *(v76[1] + 8 * v50);
            v75 = [v100 objectForKey:v77];
            [v79 addObject:v77];
            [v78 addObject:v75];
            objc_storeStrong(&v75, 0);
            ++v50;
            if (v48 + 1 >= v51)
            {
              v50 = 0;
              v51 = [v52 countByEnumeratingWithState:v76 objects:v111 count:16];
              if (!v51)
              {
                break;
              }
            }
          }
        }

        if ([v81 isEqual:@"GETKEYS"])
        {
          v74 = [(AMDDODMLCustomTargetingHelper *)v108 performOperation:v80 onArray:v79 error:v105];
          if (v74)
          {
            v109 = v74;
          }

          else
          {
            v109 = 0;
          }

          v102 = 1;
          objc_storeStrong(&v74, 0);
        }

        else if ([v81 isEqual:@"GETVALS"])
        {
          v73 = [(AMDDODMLCustomTargetingHelper *)v108 performOperation:v80 onArray:v78 error:v105];
          if (v73)
          {
            v109 = v73;
          }

          else
          {
            v109 = 0;
          }

          v102 = 1;
          objc_storeStrong(&v73, 0);
        }

        else
        {
          v21 = [NSError alloc];
          v47 = [v21 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:173 userInfo:0];
          v22 = v47;
          *v105 = v47;
          v109 = 0;
          v102 = 1;
        }

        objc_storeStrong(&v78, 0);
        objc_storeStrong(&v79, 0);
        objc_storeStrong(&v80, 0);
        objc_storeStrong(&v81, 0);
      }

      else
      {
        if ([v106 count] == 2)
        {
          v72 = [v106 objectAtIndex:1];
          v71 = [v100 objectForKey:v72];
          if (v71)
          {
            v109 = v71;
          }

          else
          {
            v23 = [NSError alloc];
            v46 = [v23 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:174 userInfo:0];
            v24 = v46;
            *v105 = v46;
            v109 = 0;
          }

          v102 = 1;
          objc_storeStrong(&v71, 0);
          objc_storeStrong(&v72, 0);
          goto LABEL_101;
        }

        if ([v106 count] != 1)
        {
          v27 = [NSError alloc];
          v43 = [v27 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:176 userInfo:0];
          v28 = v43;
          *v105 = v43;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        if ([v100 count] != 1)
        {
          v25 = [NSError alloc];
          v44 = [v25 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:175 userInfo:0];
          v26 = v44;
          *v105 = v44;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        memset(v69, 0, sizeof(v69));
        v45 = v100;
        if ([v45 countByEnumeratingWithState:v69 objects:v110 count:16])
        {
          *v69[2];
          *v69[2];
          v70 = *v69[1];
          v68 = [v100 objectForKey:v70];
          v109 = v68;
          v102 = 1;
          objc_storeStrong(&v68, 0);
        }

        else
        {
          v102 = 0;
        }

        if (!v102)
        {
LABEL_100:
          v102 = 0;
        }
      }
    }

LABEL_101:
    objc_storeStrong(&v99, 0);
    objc_storeStrong(&v100, 0);
    if (v102)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v104 = location[0];
  if ([v106 count] == 2)
  {
    v64 = v108;
    v65 = [v106 objectAtIndex:1];
    v103 = [AMDDODMLCustomTargetingHelper performOperation:v64 onArray:"performOperation:onArray:error:" error:?];

    if (v103)
    {
      v102 = 0;
    }

    else
    {
      v109 = 0;
      v102 = 1;
    }

    objc_storeStrong(&v103, 0);
    if (!v102)
    {
      v102 = 0;
    }
  }

  else if ([v106 count] == 1)
  {
    v101 = [v104 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v109 = v101;
      v102 = 1;
    }

    else
    {
      v5 = [NSError alloc];
      v63 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:166 userInfo:0];
      v6 = v63;
      *v105 = v63;
      v109 = 0;
      v102 = 1;
    }

    objc_storeStrong(&v101, 0);
  }

  else
  {
    v7 = [NSError alloc];
    v62 = [v7 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:167 userInfo:0];
    v8 = v62;
    *v105 = v62;
    v109 = 0;
    v102 = 1;
  }

  objc_storeStrong(&v104, 0);
  if (!v102)
  {
LABEL_104:
    v35 = [NSError alloc];
    v39 = [v35 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:179 userInfo:0];
    v36 = v39;
    *v105 = v39;
    v109 = 0;
    v102 = 1;
  }

LABEL_105:
  objc_storeStrong(&v106, 0);
  objc_storeStrong(location, 0);
  v37 = v109;

  return v37;
}

- (id)postProc:(id)a3 withDirections:(id)a4 error:(id *)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = [v22 componentsSeparatedByString:@"_"];
  v19 = [v20 firstObject];
  if ([v19 isEqual:CustomTargetingCutDown])
  {
    v18 = [v20 lastObject];
    v17 = objc_alloc_init(NSNumberFormatter);
    v16 = [v17 numberFromString:v18];
    if (location[0] > v16)
    {
      v24 = v16;
    }

    else
    {
      v24 = location[0];
    }

    v15 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
  }

  else if ([v19 isEqual:CustomTargetingCutUp])
  {
    v14 = [v20 lastObject];
    v13 = objc_alloc_init(NSNumberFormatter);
    v12 = [v13 numberFromString:v14];
    if (location[0] >= v12)
    {
      v24 = location[0];
    }

    else
    {
      v24 = v12;
    }

    v15 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v5 = [NSError alloc];
    v9 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:181 userInfo:0];
    v6 = v9;
    *v21 = v9;
    v24 = 0;
    v15 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v7 = v24;

  return v7;
}

- (id)mainTargetingResolver:(id)a3 error:(id *)a4
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = a4;
  v39 = objc_alloc_init(NSMutableDictionary);
  memset(__b, 0, sizeof(__b));
  obj = location[0];
  v25 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
  if (v25)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v25;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(__b[1] + 8 * v21);
      v36 = [v38 componentsSeparatedByString:@"______"];
      v35 = [v36 firstObject];
      v34 = [v35 componentsSeparatedByString:@"____"];
      v33 = [v34 firstObject];
      v32 = [v33 componentsSeparatedByString:@"__"];
      if ([v32 count] == 3)
      {
        break;
      }

      v4 = [NSError alloc];
      v18 = [v4 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:165 userInfo:0];
      v5 = v18;
      *v40 = v18;
      v43 = 0;
      v31 = 1;
LABEL_25:
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
      if (v31)
      {
        goto LABEL_29;
      }

      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
        if (!v22)
        {
          goto LABEL_28;
        }
      }
    }

    v30 = [(AMDDODMLCustomTargetingHelper *)v42 callAMDClient:v32 error:v40];
    if (!v30)
    {
      v43 = 0;
      v31 = 1;
LABEL_24:
      objc_storeStrong(&v30, 0);
      goto LABEL_25;
    }

    v29 = [(AMDDODMLCustomTargetingHelper *)v42 parseData:v30 withArray:v34 error:v40];
    if (!v29)
    {
      v43 = 0;
      v31 = 1;
LABEL_23:
      objc_storeStrong(&v29, 0);
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v29;
      [v39 setObject:v28 forKey:v38];
      objc_storeStrong(&v28, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = [NSError alloc];
        v12 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:165 userInfo:0];
        v9 = v12;
        *v40 = v12;
        v43 = 0;
        v31 = 1;
        goto LABEL_23;
      }

      v27 = v29;
      v26 = v27;
      if ([v36 count] == 2)
      {
        v16 = v42;
        v15 = v27;
        v17 = [v36 lastObject];
        v6 = [AMDDODMLCustomTargetingHelper postProc:v16 withDirections:"postProc:withDirections:error:" error:v15];
        v7 = v26;
        v26 = v6;
      }

      if (v26)
      {
        v13 = v39;
        v14 = [v26 stringValue];
        [v13 setObject:? forKey:?];

        v31 = 0;
      }

      else
      {
        v43 = 0;
        v31 = 1;
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    v31 = 0;
    goto LABEL_23;
  }

LABEL_28:
  v31 = 0;
LABEL_29:

  if (!v31)
  {
    v43 = v39;
    v31 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  v10 = v43;

  return v10;
}

@end