@interface APSPerAppTokenMap
- (APSPerAppTokenMap)init;
- (BOOL)flagForTopic:(id)a3 identifier:(id)a4;
- (BOOL)hasMissingTokens;
- (BOOL)isEmpty;
- (id)allPerAppTokens;
- (id)identifiersForTopic:(id)a3;
- (id)infoForTopic:(id)a3 identifier:(id)a4;
- (id)tokenForTopic:(id)a3 identifier:(id)a4;
- (id)tokensForTopic:(id)a3;
- (id)topics;
- (void)enumerateMissingTokensUsingBlock:(id)a3;
- (void)enumerateTokensUsingBlock:(id)a3;
- (void)enumerateTokensWithInfoUsingBlock:(id)a3;
- (void)removeAllTokens;
- (void)removeIdentifier:(id)a3 forTopic:(id)a4;
- (void)setToken:(id)a3 forInfo:(id)a4;
- (void)setToken:(id)a3 forTopic:(id)a4 identifier:(id)a5;
@end

@implementation APSPerAppTokenMap

- (APSPerAppTokenMap)init
{
  v6.receiver = self;
  v6.super_class = APSPerAppTokenMap;
  v2 = [(APSPerAppTokenMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    perAppTokenMap = v2->_perAppTokenMap;
    v2->_perAppTokenMap = v3;
  }

  return v2;
}

- (void)removeIdentifier:(id)a3 forTopic:(id)a4
{
  v6 = a4;
  v7 = &stru_10018F6A0;
  if (a3)
  {
    v7 = a3;
  }

  v14 = v7;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_enumerating)
  {
    v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v13);
  }

  v9 = [(NSMutableDictionary *)v8->_perAppTokenMap objectForKey:v6];
  v10 = [v9 objectForKey:v14];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 perAppToken];
    if (!v12)
    {
      --v8->_missingTokens;
    }

    [v9 removeObjectForKey:v14];
  }

  objc_sync_exit(v8);
}

- (void)setToken:(id)a3 forTopic:(id)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:v9 identifier:v8];

  [(APSPerAppTokenMap *)self setToken:v10 forInfo:v11];
}

- (void)setToken:(id)a3 forInfo:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v6 identifier];
  v8 = v7;
  v9 = &stru_10018F6A0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = self;
  objc_sync_enter(v11);
  if (v11->_enumerating)
  {
    v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v22);
  }

  perAppTokenMap = v11->_perAppTokenMap;
  v13 = [v6 topic];
  v14 = [(NSMutableDictionary *)perAppTokenMap objectForKey:v13];

  if (!v14)
  {
    v14 = [NSMutableDictionary dictionaryWithCapacity:1];
    v15 = v11->_perAppTokenMap;
    v16 = [v6 topic];
    [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
  }

  v17 = [v14 objectForKey:v10];
  v18 = v17;
  if (!v17)
  {
    v18 = objc_alloc_init(APSPerAppTokenMapEntry);
    [v14 setObject:v18 forKey:v10];
    if (v23)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v19 = [(APSPerAppTokenMapEntry *)v17 perAppToken];

  if (v23 && !v19)
  {
    v20 = -1;
LABEL_15:
    v11->_missingTokens += v20;
    goto LABEL_16;
  }

  v21 = [(APSPerAppTokenMapEntry *)v18 perAppToken];

  if (!v23 && v21)
  {
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

LABEL_16:
  [(APSPerAppTokenMapEntry *)v18 setPerAppToken:v23];
  [(APSPerAppTokenMapEntry *)v18 setInfo:v6];

  objc_sync_exit(v11);
}

- (void)removeAllTokens
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_enumerating)
  {
    v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v12);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2->_perAppTokenMap;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v14 = *v20;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [(NSMutableDictionary *)v2->_perAppTokenMap objectForKey:*(*(&v19 + 1) + 8 * i)];
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [v5 copy];
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v7)
        {
          v8 = *v16;
          do
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v16 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = [v5 objectForKey:*(*(&v15 + 1) + 8 * j)];
              v11 = [v10 perAppToken];
              if (v11)
              {
                [v10 setPerAppToken:0];
                ++v2->_missingTokens;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v7);
        }
      }

      v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }

  objc_sync_exit(v2);
}

- (id)tokenForTopic:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  objc_sync_enter(v7);
  v9 = &stru_10018F6A0;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)v7->_perAppTokenMap objectForKey:v6];
  v12 = [v11 objectForKey:v10];
  v13 = [v12 perAppToken];

  objc_sync_exit(v7);

  return v13;
}

- (id)infoForTopic:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  objc_sync_enter(v7);
  v9 = &stru_10018F6A0;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)v7->_perAppTokenMap objectForKey:v6];
  v12 = [v11 objectForKey:v10];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 info];
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(v7);

  return v14;
}

- (BOOL)flagForTopic:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  objc_sync_enter(v7);
  v9 = &stru_10018F6A0;
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)v7->_perAppTokenMap objectForKey:v6];
  v12 = [v11 objectForKey:v10];
  v13 = [v12 flag];

  objc_sync_exit(v7);
  return v13;
}

- (id)allPerAppTokens
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [NSMutableSet setWithCapacity:[(NSMutableDictionary *)v2->_perAppTokenMap count]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2->_perAppTokenMap;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(APSPerAppTokenMap *)v2 tokensForTopic:*(*(&v10 + 1) + 8 * i), v10];
        [v3 unionSet:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)tokensForTopic:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [NSMutableSet setWithCapacity:[(NSMutableDictionary *)v5->_perAppTokenMap count]];
  v7 = [(NSMutableDictionary *)v5->_perAppTokenMap objectForKey:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 allValues];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) perAppToken];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v5);

  return v6;
}

- (BOOL)hasMissingTokens
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_missingTokens > 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEmpty
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_perAppTokenMap count]== 0;
  objc_sync_exit(v2);

  return v3;
}

- (id)topics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_perAppTokenMap allKeys];
  v4 = [NSSet setWithArray:v3];

  objc_sync_exit(v2);

  return v4;
}

- (id)identifiersForTopic:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_perAppTokenMap objectForKey:v4];
  v7 = [v6 allKeys];
  v8 = [NSSet setWithArray:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)enumerateMissingTokensUsingBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(APSPerAppTokenMap *)v5 hasMissingTokens])
  {
    v5->_enumerating = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000873C0;
    v6[3] = &unk_1001882C0;
    v7 = v4;
    [(APSPerAppTokenMap *)v5 enumerateTokensUsingBlock:v6];
    v5->_enumerating = 0;
  }

  objc_sync_exit(v5);
}

- (void)enumerateTokensUsingBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_enumerating = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5->_perAppTokenMap;
  v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v15)
  {
    v16 = *v26;
    v17 = v5;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)v5->_perAppTokenMap objectForKey:v6, v15];
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = *v22;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v20 = 0;
              v13 = [v8 objectForKey:v12];
              v14 = [v13 perAppToken];
              v4[2](v4, v14, v6, v12, &v20);
              if (v20 == 1)
              {
                v17->_enumerating = 0;

                v5 = v17;
                goto LABEL_18;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v5 = v17;
      }

      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  v5->_enumerating = 0;
LABEL_18:
  objc_sync_exit(v5);
}

- (void)enumerateTokensWithInfoUsingBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_enumerating = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5->_perAppTokenMap;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v18 = *v27;
    v19 = v5;
    do
    {
      v17 = v6;
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)v5->_perAppTokenMap objectForKey:*(*(&v26 + 1) + 8 * i)];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              v21 = 0;
              v14 = [v9 objectForKey:v13];
              v15 = [v14 perAppToken];
              v16 = [v14 info];
              v4[2](v4, v15, v16, &v21);

              if (v21 == 1)
              {
                v19->_enumerating = 0;

                v5 = v19;
                goto LABEL_18;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v19;
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v5->_enumerating = 0;
LABEL_18:
  objc_sync_exit(v5);
}

@end