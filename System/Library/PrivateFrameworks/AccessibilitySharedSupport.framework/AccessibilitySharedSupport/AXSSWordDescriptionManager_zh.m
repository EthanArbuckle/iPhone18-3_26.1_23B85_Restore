@interface AXSSWordDescriptionManager_zh
- (id)componentDescriptionForCharacter:(id)a3;
- (id)descriptionForCharacter:(id)a3 language:(id)a4;
- (id)descriptionForWord:(id)a3;
@end

@implementation AXSSWordDescriptionManager_zh

- (id)descriptionForWord:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [v5 length];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__AXSSWordDescriptionManager_zh_descriptionForWord___block_invoke;
  v14 = &unk_1E8135858;
  v15 = self;
  v16 = v6;
  v8 = v6;
  [v5 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, &v11}];

  v9 = [v8 componentsJoinedByString:{@"，", v11, v12, v13, v14, v15}];

  return v9;
}

- (id)descriptionForCharacter:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXSSWordDescriptionManager *)self managedObjectContext];
  if (!v8)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v9 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Entry"];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"character == %@", v6];
  [v9 setPredicate:v10];
  v20 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v20];
  if ([v11 count])
  {
    v12 = [v11 objectAtIndex:0];
    if ([v7 hasPrefix:@"zh-Hans"])
    {
      v13 = @"simplifiedExemplar";
    }

    else if ([v7 hasPrefix:@"zh-Hant"])
    {
      v13 = @"traditionalExemplar";
    }

    else
    {
      if (![v7 hasPrefix:@"yue-Hant"])
      {
        v15 = 0;
        goto LABEL_12;
      }

      v13 = @"cantoneseExemplar";
    }

    v15 = [v12 valueForKey:v13];
LABEL_12:
    if ([v15 length])
    {
      if ([v15 length] >= 3 && (v16 = objc_msgSend(v15, "rangeOfString:options:", @"的", 4), v16 == objc_msgSend(v15, "length") - 2))
      {
        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@的%@", v15, v6];
      }

      v14 = v17;
    }

    else
    {
      v18 = [v12 valueForKey:@"components"];
      if ([v18 length])
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v18, v6];
      }

      else
      {

        v14 = 0;
      }
    }

    goto LABEL_22;
  }

  v14 = 0;
LABEL_22:

LABEL_23:

  return v14;
}

- (id)componentDescriptionForCharacter:(id)a3
{
  v4 = a3;
  v5 = [(AXSSWordDescriptionManager *)self managedObjectContext];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"Entry"];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"character == %@", v4];
    [v6 setPredicate:v7];
    v12 = 0;
    v8 = [v5 executeFetchRequest:v6 error:&v12];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
      v10 = [v9 valueForKey:@"components"];
      if (![v10 length])
      {

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end