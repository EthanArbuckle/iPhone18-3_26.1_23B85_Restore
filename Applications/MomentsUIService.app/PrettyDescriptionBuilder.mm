@interface PrettyDescriptionBuilder
+ (Class)extractClassFrom:(objc_property *)a3;
+ (id)describeArray:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5;
+ (id)describeComplexObject:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5;
+ (id)describeDictionary:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5;
+ (id)describeSimpleObject:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5;
+ (id)extractValueFrom:(objc_property *)a3 belongingTo:(id)a4;
@end

@implementation PrettyDescriptionBuilder

+ (id)describeComplexObject:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 describeSimpleObject:v8 withName:v9 withDepth:a5];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
LABEL_7:
    v13 = v12;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a1 describeArray:v8 withName:v9 withDepth:a5];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a1 describeDictionary:v8 withName:v9 withDepth:a5];
    goto LABEL_7;
  }

  outCount = 0;
  v15 = objc_opt_class();
  v28 = class_copyPropertyList(v15, &outCount);
  v27 = +[NSMutableArray array];
  if (outCount)
  {
    v16 = 0;
    while (1)
    {
      v17 = v28[v16];
      v18 = [NSString stringWithCString:property_getName(v17) encoding:4];
      v19 = [a1 extractValueFrom:v17 belongingTo:v8];
      v20 = objc_opt_class();
      if (v20 != objc_opt_class())
      {
        break;
      }

LABEL_22:

      if (++v16 >= outCount)
      {
        goto LABEL_25;
      }
    }

    if (v19)
    {
      if (v19 == v8)
      {
        v21 = objc_opt_class();
        v22 = a5 + 1;
        v23 = v18;
        v24 = @"[Self reference, parsing abandoned]";
      }

      else
      {
        if (a5 < 0xF)
        {
          v25 = [a1 describeComplexObject:v19 withName:v18 withDepth:a5 + 1];
          goto LABEL_21;
        }

        v21 = objc_opt_class();
        v22 = a5 + 1;
        v23 = v18;
        v24 = @"[Possible infinite recurrsion detected, parsing abandoned]";
      }
    }

    else
    {
      v21 = [a1 extractClassFrom:v17];
      v22 = a5 + 1;
      v23 = v18;
      v24 = @"(null)";
    }

    v25 = [PrettyPropertyDescription describingPropertyNamed:v23 withClassType:v21 andValue:v24 andRecursiveDepth:v22];
LABEL_21:
    v26 = v25;
    [v27 addObject:v25];

    goto LABEL_22;
  }

LABEL_25:
  free(v28);
  v13 = [PrettyPropertyDescription describingPropertyNamed:v9 withClassType:objc_opt_class() andValue:v27 andRecursiveDepth:a5];

LABEL_8:

  return v13;
}

+ (id)extractValueFrom:(objc_property *)a3 belongingTo:(id)a4
{
  v5 = a4;
  v6 = [NSString stringWithCString:property_getName(a3) encoding:4];
  v7 = [v5 valueForKey:v6];

  return v7;
}

+ (Class)extractClassFrom:(objc_property *)a3
{
  v3 = [NSString stringWithCString:property_getAttributes(a3) encoding:4];
  v4 = [v3 componentsSeparatedByString:{@", "}];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 substringWithRange:{3, objc_msgSend(v6, "length") - 4}];

  v8 = NSClassFromString(v7);

  return v8;
}

+ (id)describeSimpleObject:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PrettyPropertyDescription describingPropertyNamed:v8 withClassType:objc_opt_class() andValue:v7 andRecursiveDepth:a5];
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v11 = [v10 objCType];
    v12 = v11;
    v13 = *v11;
    if (v13 == 99)
    {
      if (!v11[1])
      {
        v14 = @"char";
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 != 66)
      {
        if (strcmp(v11, "{?=b8b4b1b1b18[8S]}"))
        {
          if (v13 <= 99)
          {
            if (v13 > 80)
            {
              if (v13 == 81)
              {
                if (!v12[1])
                {
                  v14 = @"NSUInteger";
                  goto LABEL_31;
                }
              }

              else if (v13 == 83 && !v12[1])
              {
                v14 = @"unsigned short";
                goto LABEL_31;
              }
            }

            else if (v13 == 67)
            {
              if (!v12[1])
              {
                v14 = @"unsigned char";
                goto LABEL_31;
              }
            }

            else if (v13 == 73 && !v12[1])
            {
              v14 = @"unsigned int";
              goto LABEL_31;
            }
          }

          else if (v13 <= 104)
          {
            if (v13 == 100)
            {
              if (!v12[1])
              {
                v14 = @"double";
                goto LABEL_31;
              }
            }

            else if (v13 == 102 && !v12[1])
            {
              v14 = @"float";
              goto LABEL_31;
            }
          }

          else if (v13 == 105)
          {
            if (!v12[1])
            {
              v14 = @"int";
              goto LABEL_31;
            }
          }

          else if (v13 == 113)
          {
            if (!v12[1])
            {
              v14 = @"NSInteger";
              goto LABEL_31;
            }
          }

          else if (v13 == 115 && !v12[1])
          {
            v14 = @"short";
            goto LABEL_31;
          }

LABEL_16:
          if (!strcmp(v12, "{_NSRange=QQ}"))
          {
            v14 = @"NSRange";
          }

          else
          {
            v19 = objc_opt_class();
            v14 = NSStringFromClass(v19);
          }

          goto LABEL_31;
        }

LABEL_26:
        v14 = @"NSDecimal";
        goto LABEL_31;
      }

      if (!v11[1])
      {
        v14 = @"BOOL";
LABEL_31:
        v20 = [v10 stringValue];
        v9 = [PrettyPropertyDescription describingPropertyNamed:v8 withClassName:v14 andValue:v20 andRecursiveDepth:a5];

        goto LABEL_35;
      }
    }

    if (strcmp(v11, "{?=b8b4b1b1b18[8S]}"))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    v16 = [v7 UUIDString];
LABEL_34:
    v21 = v16;
    v9 = [PrettyPropertyDescription describingPropertyNamed:v8 withClassType:v15 andValue:v16 andRecursiveDepth:a5];

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!dateFormatter)
    {
      v17 = objc_alloc_init(NSDateFormatter);
      v18 = dateFormatter;
      dateFormatter = v17;

      [dateFormatter setDateStyle:1];
      [dateFormatter setTimeStyle:1];
    }

    v15 = objc_opt_class();
    v16 = [dateFormatter stringFromDate:v7];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    v16 = [v7 absoluteString];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld bytes", [v7 length]);
    goto LABEL_34;
  }

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || ([v24 hasPrefix:@"NS"] & 1) == 0 && !objc_msgSend(v24, "hasPrefix:", @"__NS"))
  {
    v9 = 0;
  }

  else
  {
    v25 = [NSString stringWithFormat:@"%@", v7];
    v9 = [PrettyPropertyDescription describingPropertyNamed:v8 withClassName:v24 andValue:v25 andRecursiveDepth:a5];
  }

LABEL_35:

  return v9;
}

+ (id)describeArray:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [a1 describeComplexObject:*(*(&v19 + 1) + 8 * i) withName:0 withDepth:{a5 + 1, v19}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [PrettyPropertyDescription describingPropertyNamed:v9 withClassType:objc_opt_class() andValue:v10 andRecursiveDepth:a5];

  return v17;
}

+ (id)describeDictionary:(id)a3 withName:(id)a4 withDepth:(unint64_t)a5
{
  v8 = a3;
  v19 = a4;
  v9 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [v8 allKeys];
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = [a1 describeComplexObject:v15 withName:0 withDepth:a5 + 1];
        [v9 setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = [PrettyPropertyDescription describingPropertyNamed:v19 withClassType:objc_opt_class() andValue:v9 andRecursiveDepth:a5];

  return v17;
}

@end