@interface IMConfiguration
- (CGPoint)pointForKey:(id)key context:(id)context;
- (CGRect)rectForKey:(id)key context:(id)context;
- (CGSize)sizeForKey:(id)key context:(id)context;
- (IMConfiguration)init;
- (UIEdgeInsets)edgeInsetsForKey:(id)key context:(id)context;
- (double)BOOLForKey:(id)key context:(id)context;
- (double)floatForKey:(id)key context:(id)context;
- (id)_predicateValuePairsForKey:(id)key;
- (id)_selectTopScoringPairInArray:(id)array;
- (id)description;
- (id)valueForKey:(id)key context:(id)context;
- (int64_t)integerForKey:(id)key context:(id)context;
- (void)addValue:(id)value predicate:(id)predicate forKey:(id)key;
- (void)addWithPredicate:(id)predicate adder:(id)adder;
- (void)invalidate;
@end

@implementation IMConfiguration

- (IMConfiguration)init
{
  v8.receiver = self;
  v8.super_class = IMConfiguration;
  v2 = [(IMConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    pairsToKeyMap = v2->_pairsToKeyMap;
    v2->_pairsToKeyMap = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    cache = v2->_cache;
    v2->_cache = v5;
  }

  return v2;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IMConfiguration;
  v3 = [(IMConfiguration *)&v7 description];
  pairsToKeyMap = [(IMConfiguration *)self pairsToKeyMap];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, pairsToKeyMap];

  return v5;
}

- (id)valueForKey:(id)key context:(id)context
{
  keyCopy = key;
  contextCopy = context;
  cache = [(IMConfiguration *)self cache];
  value = [cache objectForKeyedSubscript:keyCopy];

  if (!value)
  {
    v10 = +[NSMutableArray array];
    v23 = keyCopy;
    v11 = [(IMConfiguration *)self _predicateValuePairsForKey:keyCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          predicate = [v16 predicate];
          v18 = [predicate evaluateWithContext:contextCopy];

          if (v18)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      if ([v10 count] == &dword_0 + 1)
      {
        [v10 firstObject];
      }

      else
      {
        [(IMConfiguration *)self _selectTopScoringPairInArray:v10];
      }
      v20 = ;
      keyCopy = v23;
      value = [v20 value];
      if (value)
      {
        cache2 = [(IMConfiguration *)self cache];
        [cache2 setObject:value forKeyedSubscript:v23];
      }
    }

    else
    {
      v19 = BCIMLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v29 = "[IMConfiguration valueForKey:context:]";
        v30 = 2080;
        v31 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/ViewControllers/Configuration/IMConfiguration.m";
        v32 = 1024;
        LODWORD(v33) = 114;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
      }

      v20 = BCIMLog();
      keyCopy = v23;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v29 = v23;
        v30 = 2112;
        v31 = v11;
        v32 = 2112;
        v33 = contextCopy;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "@Failed to match for {%@} in {%@} ctx {%@}", buf, 0x20u);
      }

      value = 0;
    }
  }

  return value;
}

- (double)floatForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)BOOLForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (int64_t)integerForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  integerValue = [v4 integerValue];

  return integerValue;
}

- (CGPoint)pointForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGSize)sizeForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  [v4 CGSizeValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)rectForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UIEdgeInsets)edgeInsetsForKey:(id)key context:(id)context
{
  v4 = [(IMConfiguration *)self valueForKey:key context:context];
  [v4 uiEdgeInsetsValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)addValue:(id)value predicate:(id)predicate forKey:(id)key
{
  keyCopy = key;
  predicateCopy = predicate;
  valueCopy = value;
  v10 = [(IMConfiguration *)self _predicateValuePairsForKey:keyCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableArray);
    pairsToKeyMap = [(IMConfiguration *)self pairsToKeyMap];
    [pairsToKeyMap setObject:v10 forKeyedSubscript:keyCopy];
  }

  v12 = objc_alloc_init(IMConfigurationPredicateValuePair);
  [(IMConfigurationPredicateValuePair *)v12 setPredicate:predicateCopy];

  [(IMConfigurationPredicateValuePair *)v12 setValue:valueCopy];
  [v10 addObject:v12];
}

- (void)addWithPredicate:(id)predicate adder:(id)adder
{
  predicateCopy = predicate;
  adderCopy = adder;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"IMConfiguration addWithPredicate can't be called within an adder block"];
  }

  v7 = [[IMConfigurationAdder alloc] initWithConfiguration:self predicate:predicateCopy];
  [(IMConfiguration *)self setAddProhibited:1];
  [(IMConfigurationAdder *)v7 setAddProhibited:0];
  adderCopy[2](adderCopy, v7);
  [(IMConfigurationAdder *)v7 setAddProhibited:1];
  [(IMConfiguration *)self setAddProhibited:0];
}

- (void)invalidate
{
  cache = [(IMConfiguration *)self cache];
  [cache removeAllObjects];
}

- (id)_predicateValuePairsForKey:(id)key
{
  keyCopy = key;
  pairsToKeyMap = [(IMConfiguration *)self pairsToKeyMap];
  v6 = [pairsToKeyMap objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)_selectTopScoringPairInArray:(id)array
{
  arrayCopy = array;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0x8000000000000000;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_16A64;
  v6[3] = &unk_2C82D8;
  v6[4] = v11;
  v6[5] = &v7;
  [arrayCopy enumerateObjectsUsingBlock:v6];
  if (v8[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [arrayCopy objectAtIndexedSubscript:?];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

@end