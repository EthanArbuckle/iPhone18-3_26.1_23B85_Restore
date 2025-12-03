@interface APSPerAppTokenMap
- (APSPerAppTokenMap)init;
- (BOOL)flagForTopic:(id)topic identifier:(id)identifier;
- (BOOL)hasMissingTokens;
- (BOOL)isEmpty;
- (id)allPerAppTokens;
- (id)identifiersForTopic:(id)topic;
- (id)infoForTopic:(id)topic identifier:(id)identifier;
- (id)tokenForTopic:(id)topic identifier:(id)identifier;
- (id)tokensForTopic:(id)topic;
- (id)topics;
- (void)enumerateMissingTokensUsingBlock:(id)block;
- (void)enumerateTokensUsingBlock:(id)block;
- (void)enumerateTokensWithInfoUsingBlock:(id)block;
- (void)removeAllTokens;
- (void)removeIdentifier:(id)identifier forTopic:(id)topic;
- (void)setToken:(id)token forInfo:(id)info;
- (void)setToken:(id)token forTopic:(id)topic identifier:(id)identifier;
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

- (void)removeIdentifier:(id)identifier forTopic:(id)topic
{
  topicCopy = topic;
  identifierCopy = &stru_10018F6A0;
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v14 = identifierCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_enumerating)
  {
    v13 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v13);
  }

  v9 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  v10 = [v9 objectForKey:v14];
  v11 = v10;
  if (v10)
  {
    perAppToken = [v10 perAppToken];
    if (!perAppToken)
    {
      --selfCopy->_missingTokens;
    }

    [v9 removeObjectForKey:v14];
  }

  objc_sync_exit(selfCopy);
}

- (void)setToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  identifierCopy = identifier;
  topicCopy = topic;
  tokenCopy = token;
  v11 = [[APSAppTokenInfo alloc] initUnextendedAppTokenWithTopic:topicCopy identifier:identifierCopy];

  [(APSPerAppTokenMap *)self setToken:tokenCopy forInfo:v11];
}

- (void)setToken:(id)token forInfo:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  identifier = [infoCopy identifier];
  v8 = identifier;
  v9 = &stru_10018F6A0;
  if (identifier)
  {
    v9 = identifier;
  }

  v10 = v9;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_enumerating)
  {
    v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v22);
  }

  perAppTokenMap = selfCopy->_perAppTokenMap;
  topic = [infoCopy topic];
  v14 = [(NSMutableDictionary *)perAppTokenMap objectForKey:topic];

  if (!v14)
  {
    v14 = [NSMutableDictionary dictionaryWithCapacity:1];
    v15 = selfCopy->_perAppTokenMap;
    topic2 = [infoCopy topic];
    [(NSMutableDictionary *)v15 setObject:v14 forKey:topic2];
  }

  v17 = [v14 objectForKey:v10];
  v18 = v17;
  if (!v17)
  {
    v18 = objc_alloc_init(APSPerAppTokenMapEntry);
    [v14 setObject:v18 forKey:v10];
    if (tokenCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  perAppToken = [(APSPerAppTokenMapEntry *)v17 perAppToken];

  if (tokenCopy && !perAppToken)
  {
    v20 = -1;
LABEL_15:
    selfCopy->_missingTokens += v20;
    goto LABEL_16;
  }

  perAppToken2 = [(APSPerAppTokenMapEntry *)v18 perAppToken];

  if (!tokenCopy && perAppToken2)
  {
LABEL_14:
    v20 = 1;
    goto LABEL_15;
  }

LABEL_16:
  [(APSPerAppTokenMapEntry *)v18 setPerAppToken:tokenCopy];
  [(APSPerAppTokenMapEntry *)v18 setInfo:infoCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeAllTokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_enumerating)
  {
    v12 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"illegal modification during enumeration" userInfo:0];
    objc_exception_throw(v12);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = selfCopy->_perAppTokenMap;
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

        v5 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:*(*(&v19 + 1) + 8 * i)];
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
              perAppToken = [v10 perAppToken];
              if (perAppToken)
              {
                [v10 setPerAppToken:0];
                ++selfCopy->_missingTokens;
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

  objc_sync_exit(selfCopy);
}

- (id)tokenForTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  selfCopy = self;
  identifierCopy = identifier;
  objc_sync_enter(selfCopy);
  v9 = &stru_10018F6A0;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  v12 = [v11 objectForKey:v10];
  perAppToken = [v12 perAppToken];

  objc_sync_exit(selfCopy);

  return perAppToken;
}

- (id)infoForTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  selfCopy = self;
  identifierCopy = identifier;
  objc_sync_enter(selfCopy);
  v9 = &stru_10018F6A0;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  v12 = [v11 objectForKey:v10];
  v13 = v12;
  if (v12)
  {
    info = [v12 info];
  }

  else
  {
    info = 0;
  }

  objc_sync_exit(selfCopy);

  return info;
}

- (BOOL)flagForTopic:(id)topic identifier:(id)identifier
{
  topicCopy = topic;
  selfCopy = self;
  identifierCopy = identifier;
  objc_sync_enter(selfCopy);
  v9 = &stru_10018F6A0;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  v12 = [v11 objectForKey:v10];
  flag = [v12 flag];

  objc_sync_exit(selfCopy);
  return flag;
}

- (id)allPerAppTokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [NSMutableSet setWithCapacity:[(NSMutableDictionary *)selfCopy->_perAppTokenMap count]];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = selfCopy->_perAppTokenMap;
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

        v8 = [(APSPerAppTokenMap *)selfCopy tokensForTopic:*(*(&v10 + 1) + 8 * i), v10];
        [v3 unionSet:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)tokensForTopic:(id)topic
{
  topicCopy = topic;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [NSMutableSet setWithCapacity:[(NSMutableDictionary *)selfCopy->_perAppTokenMap count]];
  v7 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [v7 allValues];
  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        perAppToken = [*(*(&v14 + 1) + 8 * i) perAppToken];
        if (perAppToken)
        {
          [v6 addObject:perAppToken];
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)hasMissingTokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_missingTokens > 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEmpty
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap count]== 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)topics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_perAppTokenMap allKeys];
  v4 = [NSSet setWithArray:allKeys];

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)identifiersForTopic:(id)topic
{
  topicCopy = topic;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:topicCopy];
  allKeys = [v6 allKeys];
  v8 = [NSSet setWithArray:allKeys];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)enumerateMissingTokensUsingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(APSPerAppTokenMap *)selfCopy hasMissingTokens])
  {
    selfCopy->_enumerating = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000873C0;
    v6[3] = &unk_1001882C0;
    v7 = blockCopy;
    [(APSPerAppTokenMap *)selfCopy enumerateTokensUsingBlock:v6];
    selfCopy->_enumerating = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)enumerateTokensUsingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_enumerating = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = selfCopy->_perAppTokenMap;
  v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v15)
  {
    v16 = *v26;
    v17 = selfCopy;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:v6, v15];
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
              perAppToken = [v13 perAppToken];
              blockCopy[2](blockCopy, perAppToken, v6, v12, &v20);
              if (v20 == 1)
              {
                v17->_enumerating = 0;

                selfCopy = v17;
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

        selfCopy = v17;
      }

      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  selfCopy->_enumerating = 0;
LABEL_18:
  objc_sync_exit(selfCopy);
}

- (void)enumerateTokensWithInfoUsingBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_enumerating = 1;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = selfCopy->_perAppTokenMap;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v18 = *v27;
    v19 = selfCopy;
    do
    {
      v17 = v6;
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)selfCopy->_perAppTokenMap objectForKey:*(*(&v26 + 1) + 8 * i)];
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
              perAppToken = [v14 perAppToken];
              info = [v14 info];
              blockCopy[2](blockCopy, perAppToken, info, &v21);

              if (v21 == 1)
              {
                v19->_enumerating = 0;

                selfCopy = v19;
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

        selfCopy = v19;
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  selfCopy->_enumerating = 0;
LABEL_18:
  objc_sync_exit(selfCopy);
}

@end