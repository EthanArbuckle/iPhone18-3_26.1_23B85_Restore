@interface AMDDODMLCustomTargetingHelper
- (AMDDODMLCustomTargetingHelper)init;
- (id)callAMDClient:(id)client error:(id *)error;
- (id)getDictionaryValueDataType:(id)type error:(id *)error;
- (id)getOperationsArray;
- (id)mainTargetingResolver:(id)resolver error:(id *)error;
- (id)parseData:(id)data withArray:(id)array error:(id *)error;
- (id)performOperation:(id)operation onArray:(id)array error:(id *)error;
- (id)postProc:(id)proc withDirections:(id)directions error:(id *)error;
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
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)callAMDClient:(id)client error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  errorCopy = error;
  v31 = [location[0] objectAtIndex:0];
  v30 = [location[0] objectAtIndex:1];
  v29 = [location[0] objectAtIndex:2];
  if ([v29 isEqual:@"isnil"])
  {
    objc_storeStrong(&v29, 0);
  }

  v28 = objc_alloc_init(MEMORY[0x277CEE0A8]);
  MEMORY[0x277D82BD8](0);
  v4 = objc_alloc(MEMORY[0x277CEE0B0]);
  v27 = [v4 initWithFeatureName:v31 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v30 withCustomDescriptor:0 andSchemaVersion:v29];
  v26 = 0;
  for (i = 0; i < 3; ++i)
  {
    v5 = [v28 getFeature:v27];
    v6 = v26;
    v26 = v5;
    MEMORY[0x277D82BD8](v6);
    v23 = 0;
    v18 = 0;
    if (v26)
    {
      v24 = [v26 objectForKey:*MEMORY[0x277CEE098]];
      v23 = 1;
      v18 = [v24 isEqual:*MEMORY[0x277CEE0A0]];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v18)
    {
      break;
    }
  }

  if (v26)
  {
    v21 = [v26 objectForKey:*MEMORY[0x277CEE098]];
    if ([v21 isEqual:*MEMORY[0x277CEE0A0]])
    {
      v20 = [v26 objectForKey:*MEMORY[0x277CEE090]];
      if (v20)
      {
        v34 = MEMORY[0x277D82BE0](v20);
      }

      else
      {
        v11 = objc_alloc(MEMORY[0x277CCA9B8]);
        v15 = [v11 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:154 userInfo:0];
        v12 = v15;
        *errorCopy = v15;
        v34 = 0;
      }

      v22 = 1;
      objc_storeStrong(&v20, 0);
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CCA9B8]);
      v16 = [v9 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:153 userInfo:0];
      v10 = v16;
      *errorCopy = v16;
      v34 = 0;
      v22 = 1;
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v17 = [v7 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:152 userInfo:0];
    v8 = v17;
    *errorCopy = v17;
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
  v5[12] = *MEMORY[0x277D85DE8];
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
  v4[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (id)performOperation:(id)operation onArray:(id)array error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v84 = 0;
  objc_storeStrong(&v84, array);
  errorCopy = error;
  if ([location[0] isEqual:CustomTargetingSum] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingSumEmp))
  {
    if ([v84 count])
    {
      v81 = 0.0;
      for (i = 0; i < [v84 count]; ++i)
      {
        v57 = [v84 objectAtIndex:i];
        [v57 doubleValue];
        v81 = v81 + v7;
        MEMORY[0x277D82BD8](v57);
      }

      firstObject = [MEMORY[0x277CCABB0] numberWithDouble:v81];
      v82 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingSum])
      {
        v5 = objc_alloc(MEMORY[0x277CCA9B8]);
        v58 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:155 userInfo:0];
        v6 = v58;
        *errorCopy = v58;
        firstObject = 0;
      }

      else
      {
        firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
      }

      v82 = 1;
    }
  }

  else if ([location[0] containsString:CustomTargetingConNum])
  {
    v79 = [location[0] componentsSeparatedByString:@"_"];
    if ([v79 count] == 2 || objc_msgSend(v79, "count") == 3)
    {
      v78 = 0.00000001;
      if ([v79 count] == 3)
      {
        v77 = [v79 objectAtIndex:2];
        intValue = [v77 intValue];
        v78 = (1 / (intValue ^ 0xA));
        objc_storeStrong(&v77, 0);
      }

      v75 = [v79 objectAtIndex:1];
      for (j = 0; ; ++j)
      {
        v55 = j;
        if (v55 >= [v84 count])
        {
          break;
        }

        v73 = [v84 objectAtIndex:j];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = MEMORY[0x277D82BE0](v73);
          [v72 doubleValue];
          v53 = v12 - v78;
          [v75 doubleValue];
          if (v53 >= v13 || ([v72 doubleValue], v52 = v14 + v78, objc_msgSend(v75, "doubleValue"), v52 <= v15))
          {
            v82 = 0;
          }

          else
          {
            firstObject = [MEMORY[0x277CCABB0] numberWithInt:v52];
            v82 = 1;
          }

          objc_storeStrong(&v72, 0);
          if (!v82)
          {
            v82 = 0;
          }
        }

        else
        {
          v10 = objc_alloc(MEMORY[0x277CCA9B8]);
          v54 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:157 userInfo:0];
          v11 = v54;
          *errorCopy = v54;
          firstObject = 0;
          v82 = 1;
        }

        objc_storeStrong(&v73, 0);
        if (v82)
        {
          goto LABEL_31;
        }
      }

      firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
      v82 = 1;
LABEL_31:
      objc_storeStrong(&v75, 0);
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CCA9B8]);
      v56 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:156 userInfo:0];
      v9 = v56;
      *errorCopy = v56;
      firstObject = 0;
      v82 = 1;
    }

    objc_storeStrong(&v79, 0);
  }

  else if ([location[0] containsString:CustomTargetingConStr])
  {
    v71 = [location[0] componentsSeparatedByString:@"_"];
    v70 = [v71 objectAtIndex:1];
    for (k = 0; ; ++k)
    {
      v51 = k;
      if (v51 >= [v84 count])
      {
        break;
      }

      v68 = [v84 objectAtIndex:k];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = MEMORY[0x277D82BE0](v68);
        if ([v67 isEqual:v70])
        {
          firstObject = [MEMORY[0x277CCABB0] numberWithInt:?];
          v82 = 1;
        }

        else
        {
          v82 = 0;
        }

        objc_storeStrong(&v67, 0);
        if (!v82)
        {
          v82 = 0;
        }
      }

      else
      {
        v16 = objc_alloc(MEMORY[0x277CCA9B8]);
        v50 = [v16 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:158 userInfo:0];
        v17 = v50;
        *errorCopy = v50;
        firstObject = 0;
        v82 = 1;
      }

      objc_storeStrong(&v68, 0);
      if (v82)
      {
        goto LABEL_46;
      }
    }

    firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
    v82 = 1;
LABEL_46:
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v71, 0);
  }

  else if ([location[0] isEqual:CustomTargetingMean] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMeanEmp))
  {
    if ([v84 count])
    {
      v66 = 0.0;
      for (m = 0; m < [v84 count]; ++m)
      {
        v48 = [v84 objectAtIndex:m];
        [v48 doubleValue];
        v66 = v66 + v20;
        MEMORY[0x277D82BD8](v48);
      }

      v21 = [v84 count];
      firstObject = [MEMORY[0x277CCABB0] numberWithDouble:v66 / v21];
      v82 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMean])
      {
        v18 = objc_alloc(MEMORY[0x277CCA9B8]);
        v49 = [v18 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:159 userInfo:0];
        v19 = v49;
        *errorCopy = v49;
        firstObject = 0;
      }

      else
      {
        firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
      }

      v82 = 1;
    }
  }

  else if ([location[0] isEqual:CustomTargetingLen])
  {
    firstObject = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v84, "count")}];
    v82 = 1;
  }

  else if ([location[0] isEqual:CustomTargetingFirst])
  {
    if ([v84 count])
    {
      firstObject = [v84 firstObject];
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v47 = [v22 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:180 userInfo:0];
      v23 = v47;
      *errorCopy = v47;
      firstObject = 0;
    }

    v82 = 1;
  }

  else if ([location[0] isEqual:CustomTargetingMax] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMaxEmp))
  {
    if ([v84 count])
    {
      firstObject2 = [v84 firstObject];
      [firstObject2 doubleValue];
      v45 = v26;
      MEMORY[0x277D82BD8](firstObject2);
      v64 = v45;
      for (n = 0; n < [v84 count]; ++n)
      {
        v42 = [v84 objectAtIndex:n];
        [v42 doubleValue];
        v43 = v27;
        MEMORY[0x277D82BD8](v42);
        if (v43 > v64)
        {
          v64 = v43;
        }
      }

      firstObject = [MEMORY[0x277CCABB0] numberWithDouble:v64];
      v82 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMax])
      {
        v24 = objc_alloc(MEMORY[0x277CCA9B8]);
        v46 = [v24 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:160 userInfo:0];
        v25 = v46;
        *errorCopy = v46;
        firstObject = 0;
      }

      else
      {
        firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
      }

      v82 = 1;
    }
  }

  else if ([location[0] isEqual:CustomTargetingMin] & 1) != 0 || (objc_msgSend(location[0], "isEqual:", CustomTargetingMinEmp))
  {
    if ([v84 count])
    {
      firstObject3 = [v84 firstObject];
      [firstObject3 doubleValue];
      v40 = v30;
      MEMORY[0x277D82BD8](firstObject3);
      v62 = v40;
      for (ii = 0; ii < [v84 count]; ++ii)
      {
        v37 = [v84 objectAtIndex:ii];
        [v37 doubleValue];
        v38 = v31;
        MEMORY[0x277D82BD8](v37);
        if (v38 < v62)
        {
          v62 = v38;
        }
      }

      firstObject = [MEMORY[0x277CCABB0] numberWithDouble:v62];
      v82 = 1;
    }

    else
    {
      if ([location[0] isEqual:CustomTargetingMin])
      {
        v28 = objc_alloc(MEMORY[0x277CCA9B8]);
        v41 = [v28 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:161 userInfo:0];
        v29 = v41;
        *errorCopy = v41;
        firstObject = 0;
      }

      else
      {
        firstObject = [MEMORY[0x277CCABB0] numberWithInt:0];
      }

      v82 = 1;
    }
  }

  else
  {
    v32 = objc_alloc(MEMORY[0x277CCA9B8]);
    v36 = [v32 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:162 userInfo:0];
    v33 = v36;
    *errorCopy = v36;
    firstObject = 0;
    v82 = 1;
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(location, 0);
  v34 = firstObject;

  return v34;
}

- (id)getDictionaryValueDataType:(id)type error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  errorCopy = error;
  v32 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
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

        v4 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = [v4 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
        v5 = v20;
        *errorCopy = v20;
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

          v6 = objc_alloc(MEMORY[0x277CCA9B8]);
          v19 = [v6 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
          v7 = v19;
          *errorCopy = v19;
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

            v8 = objc_alloc(MEMORY[0x277CCA9B8]);
            v18 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
            v9 = v18;
            *errorCopy = v18;
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

              v10 = objc_alloc(MEMORY[0x277CCA9B8]);
              v17 = [v10 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:163 userInfo:0];
              v11 = v17;
              *errorCopy = v17;
              v35 = 0;
              v28 = 1;
            }

            else
            {
              v12 = objc_alloc(MEMORY[0x277CCA9B8]);
              v16 = [v12 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:164 userInfo:0];
              v13 = v16;
              *errorCopy = v16;
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
  MEMORY[0x277D82BD8](obj);
  if (!v28)
  {
    v35 = MEMORY[0x277D82BE0](v32);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v14 = v35;

  return v14;
}

- (id)parseData:(id)data withArray:(id)array error:(id *)error
{
  v114 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v106 = 0;
  objc_storeStrong(&v106, array);
  errorCopy = error;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = objc_alloc(MEMORY[0x277CCA9B8]);
      v40 = [v33 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:108 userInfo:0];
      v34 = v40;
      *errorCopy = v40;
      v109 = 0;
      v102 = 1;
      goto LABEL_105;
    }

    v100 = MEMORY[0x277D82BE0](location[0]);
    v99 = [(AMDDODMLCustomTargetingHelper *)selfCopy getDictionaryValueDataType:v100 error:errorCopy];
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
          v95 = [(AMDDODMLCustomTargetingHelper *)selfCopy performOperation:v97 onArray:v96 error:errorCopy];
          if (v95)
          {
            v109 = MEMORY[0x277D82BE0](v95);
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
          v9 = objc_alloc(MEMORY[0x277CCA9B8]);
          v61 = [v9 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:168 userInfo:0];
          v10 = v61;
          *errorCopy = v61;
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
        getOperationsArray = [(AMDDODMLCustomTargetingHelper *)selfCopy getOperationsArray];
        if ([getOperationsArray containsObject:v94])
        {
          if ([v100 count] == 1)
          {
            memset(__b, 0, sizeof(__b));
            v60 = MEMORY[0x277D82BE0](v100);
            if ([v60 countByEnumeratingWithState:__b objects:v113 count:16])
            {
              *__b[2];
              *__b[2];
              v92 = *__b[1];
              v90 = [v100 objectForKey:v92];
              v89 = [(AMDDODMLCustomTargetingHelper *)selfCopy performOperation:v94 onArray:v90 error:errorCopy];
              if (v89)
              {
                v109 = MEMORY[0x277D82BE0](v89);
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

            MEMORY[0x277D82BD8](v60);
            if (!v102)
            {
              v102 = 0;
            }
          }

          else
          {
            v11 = objc_alloc(MEMORY[0x277CCA9B8]);
            v59 = [v11 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:169 userInfo:0];
            v12 = v59;
            *errorCopy = v59;
            v109 = 0;
            v102 = 1;
          }
        }

        else
        {
          v88 = [v106 objectAtIndex:1];
          v87 = [v100 objectForKey:v88];
          firstObject = [v87 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v109 = MEMORY[0x277D82BE0](firstObject);
            v102 = 1;
          }

          else
          {
            v13 = objc_alloc(MEMORY[0x277CCA9B8]);
            v58 = [v13 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:170 userInfo:0];
            v14 = v58;
            *errorCopy = v58;
            v109 = 0;
            v102 = 1;
          }

          objc_storeStrong(&firstObject, 0);
          objc_storeStrong(&v87, 0);
          objc_storeStrong(&v88, 0);
        }

        objc_storeStrong(&getOperationsArray, 0);
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
          v19 = objc_alloc(MEMORY[0x277CCA9B8]);
          v54 = [v19 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:172 userInfo:0];
          v20 = v54;
          *errorCopy = v54;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        if ([v100 count] != 1)
        {
          v17 = objc_alloc(MEMORY[0x277CCA9B8]);
          v55 = [v17 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:169 userInfo:0];
          v18 = v55;
          *errorCopy = v55;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        memset(v84, 0, sizeof(v84));
        v57 = MEMORY[0x277D82BE0](v100);
        if ([v57 countByEnumeratingWithState:v84 objects:v112 count:16])
        {
          *v84[2];
          *v84[2];
          v85 = *v84[1];
          v83 = [v100 objectForKey:v85];
          firstObject2 = [v83 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v109 = MEMORY[0x277D82BE0](firstObject2);
            v102 = 1;
          }

          else
          {
            v15 = objc_alloc(MEMORY[0x277CCA9B8]);
            v56 = [v15 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:171 userInfo:0];
            v16 = v56;
            *errorCopy = v56;
            v109 = 0;
            v102 = 1;
          }

          objc_storeStrong(&firstObject2, 0);
          objc_storeStrong(&v83, 0);
        }

        else
        {
          v102 = 0;
        }

        MEMORY[0x277D82BD8](v57);
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
          v29 = objc_alloc(MEMORY[0x277CCA9B8]);
          v42 = [v29 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:177 userInfo:0];
          v30 = v42;
          *errorCopy = v42;
        }

        else
        {
          v31 = objc_alloc(MEMORY[0x277CCA9B8]);
          v41 = [v31 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:178 userInfo:0];
          v32 = v41;
          *errorCopy = v41;
        }

        v109 = 0;
        v102 = 1;
        goto LABEL_101;
      }

      if ([v106 count] == 3)
      {
        v81 = [v106 objectAtIndex:1];
        v80 = [v106 objectAtIndex:2];
        v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v78 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(v76, 0, sizeof(v76));
        v52 = MEMORY[0x277D82BE0](v100);
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

        MEMORY[0x277D82BD8](v52);
        if ([v81 isEqual:@"GETKEYS"])
        {
          v74 = [(AMDDODMLCustomTargetingHelper *)selfCopy performOperation:v80 onArray:v79 error:errorCopy];
          if (v74)
          {
            v109 = MEMORY[0x277D82BE0](v74);
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
          v73 = [(AMDDODMLCustomTargetingHelper *)selfCopy performOperation:v80 onArray:v78 error:errorCopy];
          if (v73)
          {
            v109 = MEMORY[0x277D82BE0](v73);
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
          v21 = objc_alloc(MEMORY[0x277CCA9B8]);
          v47 = [v21 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:173 userInfo:0];
          v22 = v47;
          *errorCopy = v47;
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
            v109 = MEMORY[0x277D82BE0](v71);
          }

          else
          {
            v23 = objc_alloc(MEMORY[0x277CCA9B8]);
            v46 = [v23 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:174 userInfo:0];
            v24 = v46;
            *errorCopy = v46;
            v109 = 0;
          }

          v102 = 1;
          objc_storeStrong(&v71, 0);
          objc_storeStrong(&v72, 0);
          goto LABEL_101;
        }

        if ([v106 count] != 1)
        {
          v27 = objc_alloc(MEMORY[0x277CCA9B8]);
          v43 = [v27 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:176 userInfo:0];
          v28 = v43;
          *errorCopy = v43;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        if ([v100 count] != 1)
        {
          v25 = objc_alloc(MEMORY[0x277CCA9B8]);
          v44 = [v25 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:175 userInfo:0];
          v26 = v44;
          *errorCopy = v44;
          v109 = 0;
          v102 = 1;
          goto LABEL_101;
        }

        memset(v69, 0, sizeof(v69));
        v45 = MEMORY[0x277D82BE0](v100);
        if ([v45 countByEnumeratingWithState:v69 objects:v110 count:16])
        {
          *v69[2];
          *v69[2];
          v70 = *v69[1];
          v68 = [v100 objectForKey:v70];
          v109 = MEMORY[0x277D82BE0](v68);
          v102 = 1;
          objc_storeStrong(&v68, 0);
        }

        else
        {
          v102 = 0;
        }

        MEMORY[0x277D82BD8](v45);
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

  v104 = MEMORY[0x277D82BE0](location[0]);
  if ([v106 count] == 2)
  {
    v64 = selfCopy;
    v65 = [v106 objectAtIndex:1];
    v103 = [AMDDODMLCustomTargetingHelper performOperation:v64 onArray:"performOperation:onArray:error:" error:?];
    MEMORY[0x277D82BD8](v65);
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
    firstObject3 = [v104 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v109 = MEMORY[0x277D82BE0](firstObject3);
      v102 = 1;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x277CCA9B8]);
      v63 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:166 userInfo:0];
      v6 = v63;
      *errorCopy = v63;
      v109 = 0;
      v102 = 1;
    }

    objc_storeStrong(&firstObject3, 0);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v62 = [v7 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:167 userInfo:0];
    v8 = v62;
    *errorCopy = v62;
    v109 = 0;
    v102 = 1;
  }

  objc_storeStrong(&v104, 0);
  if (!v102)
  {
LABEL_104:
    v35 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39 = [v35 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:179 userInfo:0];
    v36 = v39;
    *errorCopy = v39;
    v109 = 0;
    v102 = 1;
  }

LABEL_105:
  objc_storeStrong(&v106, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v37 = v109;

  return v37;
}

- (id)postProc:(id)proc withDirections:(id)directions error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, proc);
  v22 = 0;
  objc_storeStrong(&v22, directions);
  errorCopy = error;
  v20 = [v22 componentsSeparatedByString:@"_"];
  firstObject = [v20 firstObject];
  if ([firstObject isEqual:CustomTargetingCutDown])
  {
    lastObject = [v20 lastObject];
    v17 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = [v17 numberFromString:lastObject];
    if (location[0] > v16)
    {
      v24 = MEMORY[0x277D82BE0](v16);
    }

    else
    {
      v24 = MEMORY[0x277D82BE0](location[0]);
    }

    v15 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&lastObject, 0);
  }

  else if ([firstObject isEqual:CustomTargetingCutUp])
  {
    lastObject2 = [v20 lastObject];
    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v12 = [v13 numberFromString:lastObject2];
    if (location[0] >= v12)
    {
      v24 = MEMORY[0x277D82BE0](location[0]);
    }

    else
    {
      v24 = MEMORY[0x277D82BE0](v12);
    }

    v15 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&lastObject2, 0);
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v5 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:181 userInfo:0];
    v6 = v9;
    *errorCopy = v9;
    v24 = 0;
    v15 = 1;
  }

  objc_storeStrong(&firstObject, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v7 = v24;

  return v7;
}

- (id)mainTargetingResolver:(id)resolver error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, resolver);
  errorCopy = error;
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
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
      firstObject = [v36 firstObject];
      v34 = [firstObject componentsSeparatedByString:@"____"];
      firstObject2 = [v34 firstObject];
      v32 = [firstObject2 componentsSeparatedByString:@"__"];
      if ([v32 count] == 3)
      {
        break;
      }

      v4 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = [v4 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:165 userInfo:0];
      v5 = v18;
      *errorCopy = v18;
      v43 = 0;
      v31 = 1;
LABEL_25:
      objc_storeStrong(&v32, 0);
      objc_storeStrong(&firstObject2, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&firstObject, 0);
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

    v30 = [(AMDDODMLCustomTargetingHelper *)selfCopy callAMDClient:v32 error:errorCopy];
    if (!v30)
    {
      v43 = 0;
      v31 = 1;
LABEL_24:
      objc_storeStrong(&v30, 0);
      goto LABEL_25;
    }

    v29 = [(AMDDODMLCustomTargetingHelper *)selfCopy parseData:v30 withArray:v34 error:errorCopy];
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
      v28 = MEMORY[0x277D82BE0](v29);
      [v39 setObject:v28 forKey:v38];
      objc_storeStrong(&v28, 0);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = objc_alloc(MEMORY[0x277CCA9B8]);
        v12 = [v8 initWithDomain:AMDLighthouseODMLPluginErrorDomain code:165 userInfo:0];
        v9 = v12;
        *errorCopy = v12;
        v43 = 0;
        v31 = 1;
        goto LABEL_23;
      }

      v27 = MEMORY[0x277D82BE0](v29);
      v26 = MEMORY[0x277D82BE0](v27);
      if ([v36 count] == 2)
      {
        v16 = selfCopy;
        v15 = v27;
        lastObject = [v36 lastObject];
        v6 = [AMDDODMLCustomTargetingHelper postProc:v16 withDirections:"postProc:withDirections:error:" error:v15];
        v7 = v26;
        v26 = v6;
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](lastObject);
      }

      if (v26)
      {
        v13 = v39;
        stringValue = [v26 stringValue];
        [v13 setObject:? forKey:?];
        MEMORY[0x277D82BD8](stringValue);
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
  MEMORY[0x277D82BD8](obj);
  if (!v31)
  {
    v43 = MEMORY[0x277D82BE0](v39);
    v31 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v43;

  return v10;
}

@end