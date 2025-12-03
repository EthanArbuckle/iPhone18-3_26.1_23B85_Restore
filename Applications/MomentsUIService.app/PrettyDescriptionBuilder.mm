@interface PrettyDescriptionBuilder
+ (Class)extractClassFrom:(objc_property *)from;
+ (id)describeArray:(id)array withName:(id)name withDepth:(unint64_t)depth;
+ (id)describeComplexObject:(id)object withName:(id)name withDepth:(unint64_t)depth;
+ (id)describeDictionary:(id)dictionary withName:(id)name withDepth:(unint64_t)depth;
+ (id)describeSimpleObject:(id)object withName:(id)name withDepth:(unint64_t)depth;
+ (id)extractValueFrom:(objc_property *)from belongingTo:(id)to;
@end

@implementation PrettyDescriptionBuilder

+ (id)describeComplexObject:(id)object withName:(id)name withDepth:(unint64_t)depth
{
  objectCopy = object;
  nameCopy = name;
  v10 = [self describeSimpleObject:objectCopy withName:nameCopy withDepth:depth];
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
    v12 = [self describeArray:objectCopy withName:nameCopy withDepth:depth];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [self describeDictionary:objectCopy withName:nameCopy withDepth:depth];
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
      v19 = [self extractValueFrom:v17 belongingTo:objectCopy];
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
      if (v19 == objectCopy)
      {
        v21 = objc_opt_class();
        v22 = depth + 1;
        v23 = v18;
        v24 = @"[Self reference, parsing abandoned]";
      }

      else
      {
        if (depth < 0xF)
        {
          v25 = [self describeComplexObject:v19 withName:v18 withDepth:depth + 1];
          goto LABEL_21;
        }

        v21 = objc_opt_class();
        v22 = depth + 1;
        v23 = v18;
        v24 = @"[Possible infinite recurrsion detected, parsing abandoned]";
      }
    }

    else
    {
      v21 = [self extractClassFrom:v17];
      v22 = depth + 1;
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
  v13 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassType:objc_opt_class() andValue:v27 andRecursiveDepth:depth];

LABEL_8:

  return v13;
}

+ (id)extractValueFrom:(objc_property *)from belongingTo:(id)to
{
  toCopy = to;
  v6 = [NSString stringWithCString:property_getName(from) encoding:4];
  v7 = [toCopy valueForKey:v6];

  return v7;
}

+ (Class)extractClassFrom:(objc_property *)from
{
  v3 = [NSString stringWithCString:property_getAttributes(from) encoding:4];
  v4 = [v3 componentsSeparatedByString:{@", "}];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v5 substringWithRange:{3, objc_msgSend(v6, "length") - 4}];

  v8 = NSClassFromString(v7);

  return v8;
}

+ (id)describeSimpleObject:(id)object withName:(id)name withDepth:(unint64_t)depth
{
  objectCopy = object;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassType:objc_opt_class() andValue:objectCopy andRecursiveDepth:depth];
    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objectCopy;
    objCType = [v10 objCType];
    v12 = objCType;
    v13 = *objCType;
    if (v13 == 99)
    {
      if (!objCType[1])
      {
        v14 = @"char";
        goto LABEL_31;
      }
    }

    else
    {
      if (v13 != 66)
      {
        if (strcmp(objCType, "{?=b8b4b1b1b18[8S]}"))
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

      if (!objCType[1])
      {
        v14 = @"BOOL";
LABEL_31:
        stringValue = [v10 stringValue];
        v9 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassName:v14 andValue:stringValue andRecursiveDepth:depth];

        goto LABEL_35;
      }
    }

    if (strcmp(objCType, "{?=b8b4b1b1b18[8S]}"))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    uUIDString = [objectCopy UUIDString];
LABEL_34:
    v21 = uUIDString;
    v9 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassType:v15 andValue:uUIDString andRecursiveDepth:depth];

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
    uUIDString = [dateFormatter stringFromDate:objectCopy];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    uUIDString = [objectCopy absoluteString];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_opt_class();
    uUIDString = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld bytes", [objectCopy length]);
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
    objectCopy = [NSString stringWithFormat:@"%@", objectCopy];
    v9 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassName:v24 andValue:objectCopy andRecursiveDepth:depth];
  }

LABEL_35:

  return v9;
}

+ (id)describeArray:(id)array withName:(id)name withDepth:(unint64_t)depth
{
  arrayCopy = array;
  nameCopy = name;
  v10 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = arrayCopy;
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

        v16 = [self describeComplexObject:*(*(&v19 + 1) + 8 * i) withName:0 withDepth:{depth + 1, v19}];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassType:objc_opt_class() andValue:v10 andRecursiveDepth:depth];

  return v17;
}

+ (id)describeDictionary:(id)dictionary withName:(id)name withDepth:(unint64_t)depth
{
  dictionaryCopy = dictionary;
  nameCopy = name;
  v9 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [dictionaryCopy allKeys];
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
        v15 = [dictionaryCopy objectForKeyedSubscript:v14];
        v16 = [self describeComplexObject:v15 withName:0 withDepth:depth + 1];
        [v9 setObject:v16 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v17 = [PrettyPropertyDescription describingPropertyNamed:nameCopy withClassType:objc_opt_class() andValue:v9 andRecursiveDepth:depth];

  return v17;
}

@end