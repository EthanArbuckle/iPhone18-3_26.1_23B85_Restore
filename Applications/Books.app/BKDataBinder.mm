@interface BKDataBinder
+ (id)bindings;
+ (id)findBindingFrom:(id)from key:(id)key to:(id)to key:(id)a6;
+ (void)bind:(id)bind key:(id)key between:(id)between key:(id)a6;
+ (void)bind:(id)bind key:(id)key to:(id)to key:(id)a6;
+ (void)unbind:(id)unbind;
+ (void)unbind:(id)unbind key:(id)key from:(id)from key:(id)a6;
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

+ (void)unbind:(id)unbind
{
  unbindCopy = unbind;
  v4 = +[BKDataBinder bindings];
  while (1)
  {
    v5 = [BKDataBinder findBindingFrom:unbindCopy key:0 to:0 key:0];
    v6 = [BKDataBinder findBindingFrom:0 key:0 to:unbindCopy key:0];
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
        srcObj = [v14 srcObj];
        if (srcObj)
        {
          v16 = srcObj;
          dstObj = [v14 dstObj];

          if (dstObj)
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

+ (void)bind:(id)bind key:(id)key to:(id)to key:(id)a6
{
  bindCopy = bind;
  keyCopy = key;
  toCopy = to;
  v11 = a6;
  v12 = [BKDataBinder findBindingFrom:bindCopy key:keyCopy to:toCopy key:v11];

  if (!v12)
  {
    v13 = [[BKDataBinding alloc] initWithBinding:bindCopy key:keyCopy to:toCopy key:v11 transmitInitialValue:1];
    v14 = +[BKDataBinder bindings];
    [v14 addObject:v13];
  }
}

+ (void)unbind:(id)unbind key:(id)key from:(id)from key:(id)a6
{
  v6 = [BKDataBinder findBindingFrom:unbind key:key to:from key:a6];
  if (v6)
  {
    v8 = v6;
    [v6 unbind];
    v7 = +[BKDataBinder bindings];
    [v7 removeObject:v8];

    v6 = v8;
  }
}

+ (void)bind:(id)bind key:(id)key between:(id)between key:(id)a6
{
  v10 = a6;
  betweenCopy = between;
  keyCopy = key;
  bindCopy = bind;
  [self bind:bindCopy key:keyCopy to:betweenCopy key:v10];
  [self bind:betweenCopy key:v10 to:bindCopy key:keyCopy];
}

+ (id)findBindingFrom:(id)from key:(id)key to:(id)to key:(id)a6
{
  fromCopy = from;
  keyCopy = key;
  toCopy = to;
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

  v25 = keyCopy;
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
      if (fromCopy)
      {
        srcObj = [*(*(&v27 + 1) + 8 * i) srcObj];
        if (srcObj != fromCopy)
        {
          goto LABEL_11;
        }
      }

      if (toCopy)
      {
        dstObj = [v18 dstObj];
        v7 = dstObj;
        if (dstObj != toCopy)
        {

          if (!fromCopy)
          {
            continue;
          }

LABEL_11:

          continue;
        }
      }

      if (v25)
      {
        srcKey = [v18 srcKey];
        v8 = srcKey;
        if (srcKey != v25)
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

      dstKey = [v18 dstKey];
      v21 = dstKey == v24;

      if (v25)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (toCopy)
      {
      }

      if (fromCopy)
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
  keyCopy = v25;
LABEL_32:

  return v15;
}

@end