@interface BKDataBinder
+ (id)bindings;
+ (id)findBindingFrom:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6;
+ (void)bind:(id)a3 key:(id)a4 between:(id)a5 key:(id)a6;
+ (void)bind:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6;
+ (void)unbind:(id)a3;
+ (void)unbind:(id)a3 key:(id)a4 from:(id)a5 key:(id)a6;
@end

@implementation BKDataBinder

+ (id)bindings
{
  if (qword_100AF76F8 != -1)
  {
    sub_100790860();
  }

  v3 = qword_100AF76F0;

  return v3;
}

+ (void)unbind:(id)a3
{
  v3 = a3;
  v4 = +[BKDataBinder bindings];
  while (1)
  {
    v5 = [BKDataBinder findBindingFrom:v3 key:0 to:0 key:0];
    v6 = [BKDataBinder findBindingFrom:0 key:0 to:v3 key:0];
    if (!(v5 | v6))
    {
      break;
    }

    v7 = v6;
    if (v5)
    {
      [v5 unbind];
      [v4 removeObject:v5];
    }

    if (v7)
    {
      [v7 unbind];
      [v4 removeObject:v7];
    }
  }

  v8 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 srcObj];
        if (v15)
        {
          v16 = v15;
          v17 = [v14 dstObj];

          if (v17)
          {
            continue;
          }
        }

        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v9 removeObject:{*(*(&v23 + 1) + 8 * j), v23}];
      }

      v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

+ (void)bind:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [BKDataBinder findBindingFrom:v15 key:v9 to:v10 key:v11];

  if (!v12)
  {
    v13 = [[BKDataBinding alloc] initWithBinding:v15 key:v9 to:v10 key:v11 transmitInitialValue:1];
    v14 = +[BKDataBinder bindings];
    [v14 addObject:v13];
  }
}

+ (void)unbind:(id)a3 key:(id)a4 from:(id)a5 key:(id)a6
{
  v6 = [BKDataBinder findBindingFrom:a3 key:a4 to:a5 key:a6];
  if (v6)
  {
    v8 = v6;
    [v6 unbind];
    v7 = +[BKDataBinder bindings];
    [v7 removeObject:v8];

    v6 = v8;
  }
}

+ (void)bind:(id)a3 key:(id)a4 between:(id)a5 key:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [a1 bind:v13 key:v12 to:v11 key:v10];
  [a1 bind:v11 key:v10 to:v13 key:v12];
}

+ (id)findBindingFrom:(id)a3 key:(id)a4 to:(id)a5 key:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24 = a6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = +[BKDataBinder bindings];
  v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v15)
  {
    goto LABEL_32;
  }

  v25 = v13;
  v16 = *v28;
  while (2)
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v27 + 1) + 8 * i);
      if (v12)
      {
        v6 = [*(*(&v27 + 1) + 8 * i) srcObj];
        if (v6 != v12)
        {
          goto LABEL_11;
        }
      }

      if (v14)
      {
        v19 = [v18 dstObj];
        v7 = v19;
        if (v19 != v14)
        {

          if (!v12)
          {
            continue;
          }

LABEL_11:

          continue;
        }
      }

      if (v25)
      {
        v20 = [v18 srcKey];
        v8 = v20;
        if (v20 != v25)
        {

          v21 = 0;
          goto LABEL_22;
        }

        if (!v24)
        {
          v21 = 1;
LABEL_21:

          goto LABEL_22;
        }
      }

      else if (!v24)
      {
        v21 = 1;
        goto LABEL_22;
      }

      v22 = [v18 dstKey];
      v21 = v22 == v24;

      if (v25)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v14)
      {
      }

      if (v12)
      {
      }

      if (v21)
      {
        v15 = v18;
        goto LABEL_31;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v13 = v25;
LABEL_32:

  return v15;
}

@end