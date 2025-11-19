@interface NSMutableDictionary(AppleMediaServices)
- (void)ams_flatInsertValue:()AppleMediaServices forKeyPath:;
- (void)ams_insertValue:()AppleMediaServices forKeyPath:;
- (void)ams_setNullableObject:()AppleMediaServices forKey:;
- (void)ams_setValue:()AppleMediaServices forKeyPath:;
- (void)ams_setValue:()AppleMediaServices forKeyPath:shouldAppendToContainers:shouldFlatten:;
- (void)ams_setValue:()AppleMediaServices forKeyPathComponents:shouldAppendToContainers:shouldFlatten:;
@end

@implementation NSMutableDictionary(AppleMediaServices)

- (void)ams_setNullableObject:()AppleMediaServices forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKeyedSubscript:?];
  }

  return a1;
}

- (void)ams_insertValue:()AppleMediaServices forKeyPath:
{
  if (a3)
  {
    return [a1 ams_setValue:a3 forKeyPath:a4 shouldAppendToContainers:1 shouldFlatten:0];
  }

  return a1;
}

- (void)ams_flatInsertValue:()AppleMediaServices forKeyPath:
{
  if (a3)
  {
    return [a1 ams_setValue:a3 forKeyPath:a4 shouldAppendToContainers:1 shouldFlatten:1];
  }

  return a1;
}

- (void)ams_setValue:()AppleMediaServices forKeyPath:
{
  if (a3)
  {
    return [a1 ams_setValue:a3 forKeyPath:a4 shouldAppendToContainers:0 shouldFlatten:0];
  }

  return a1;
}

- (void)ams_setValue:()AppleMediaServices forKeyPath:shouldAppendToContainers:shouldFlatten:
{
  v13 = a3;
  v10 = a4;
  if ([v10 length])
  {
    v11 = [v10 ams_splitKeyPathStringKeepingEnclosedParts];
    v12 = [v11 mutableCopy];

    if ([v12 count] && (objc_msgSend(v12, "containsObject:", &stru_1F071BA78) & 1) == 0)
    {
      [a1 ams_setValue:v13 forKeyPathComponents:v12 shouldAppendToContainers:a5 shouldFlatten:a6];
    }
  }
}

- (void)ams_setValue:()AppleMediaServices forKeyPathComponents:shouldAppendToContainers:shouldFlatten:
{
  v40 = a3;
  v10 = a4;
  if (![v10 count])
  {
    goto LABEL_64;
  }

  v37 = a6;
  v39 = a5;
  if (_MergedGlobals_166 != -1)
  {
    dispatch_once(&_MergedGlobals_166, &__block_literal_global_160);
  }

  v41 = qword_1ED6E32F8;
  v11 = a1;
  v12 = 0;
  while (v12 < [v10 count] - 1)
  {
    v13 = [v10 objectAtIndexedSubscript:v12];
    v14 = [v10 objectAtIndexedSubscript:v12 + 1];
    v15 = [v41 numberFromString:v13];
    v16 = [v41 numberFromString:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v11;
      v18 = [v17 objectForKey:v13];
      v19 = [v18 mutableCopy];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(v20) = 0;
        if (!v19)
        {
LABEL_16:
          if (!v40)
          {
            goto LABEL_32;
          }

          v22 = objc_opt_new();

          v19 = v22;
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_class();
        v20 = objc_opt_isKindOfClass() ^ 1;
        if (!v19)
        {
          goto LABEL_16;
        }
      }

      if (v20)
      {
        goto LABEL_16;
      }

LABEL_18:
      [v17 setObject:v19 forKeyedSubscript:v13];
      goto LABEL_19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v11;
      if (!v15 || (v21 = [v15 unsignedIntegerValue], v21 > objc_msgSend(v17, "count")))
      {
        v19 = 0;
        goto LABEL_32;
      }

      if (v21 >= [v17 count])
      {
        v19 = 0;
      }

      else
      {
        v38 = [v17 objectAtIndex:v21];
        v19 = [v38 mutableCopy];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOBYTE(v24) = 0;
        if (!v19)
        {
LABEL_30:
          if (v40)
          {
            v25 = objc_opt_new();

            [v17 addObject:v25];
            v19 = v25;
            goto LABEL_19;
          }

LABEL_32:
          v23 = 0;
LABEL_33:

          v11 = v17;
          goto LABEL_34;
        }
      }

      else
      {
        objc_opt_class();
        v24 = objc_opt_isKindOfClass() ^ 1;
        if (!v19)
        {
          goto LABEL_30;
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }

      [v17 replaceObjectAtIndex:v21 withObject:v19];
LABEL_19:

      v19 = v19;
      v23 = 1;
      v17 = v19;
      goto LABEL_33;
    }

    v23 = 0;
LABEL_34:

    ++v12;
    if ((v23 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v26 = [v10 lastObject];
  v27 = [v41 numberFromString:v26];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v27)
    {
      goto LABEL_62;
    }

    v32 = [v27 unsignedIntegerValue];
    v33 = v11;
    if (!v40 && v32 < [v33 count])
    {
      [v33 removeObjectAtIndex:v32];
      goto LABEL_61;
    }

    if (v32 >= [v33 count])
    {
      [v33 addObject:v40];
      goto LABEL_61;
    }

    v34 = [v33 objectAtIndexedSubscript:v32];
    v35 = v40;
    if (v39)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v36 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v34];
        [v36 addEntriesFromDictionary:v35];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_75;
        }

        v36 = [v34 mutableCopy];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v37)
        {
          [v36 addObjectsFromArray:v35];
        }

        else
        {
          [v36 addObject:v35];
        }
      }

      v35 = v36;
    }

    if (!v35)
    {
LABEL_76:

      goto LABEL_61;
    }

    [v33 replaceObjectAtIndex:v32 withObject:v35];
LABEL_75:

    goto LABEL_76;
  }

  v28 = v11;
  v29 = [v28 objectForKeyedSubscript:v26];
  v30 = v29;
  if (v39 && v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [v30 mutableCopy];
        [v31 addEntriesFromDictionary:v40];
        goto LABEL_59;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 mutableCopy];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v37)
      {
        [v31 addObjectsFromArray:v40];
      }

      else
      {
        [v31 addObject:v40];
      }

LABEL_59:
      [v28 setObject:v31 forKeyedSubscript:v26];
    }
  }

  else
  {
    [v28 setObject:v40 forKeyedSubscript:v26];
  }

LABEL_61:
LABEL_62:

LABEL_63:
LABEL_64:
}

@end