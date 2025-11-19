@interface IMConfiguration
- (CGPoint)pointForKey:(id)a3 context:(id)a4;
- (CGRect)rectForKey:(id)a3 context:(id)a4;
- (CGSize)sizeForKey:(id)a3 context:(id)a4;
- (IMConfiguration)init;
- (UIEdgeInsets)edgeInsetsForKey:(id)a3 context:(id)a4;
- (double)BOOLForKey:(id)a3 context:(id)a4;
- (double)floatForKey:(id)a3 context:(id)a4;
- (id)_predicateValuePairsForKey:(id)a3;
- (id)_selectTopScoringPairInArray:(id)a3;
- (id)description;
- (id)valueForKey:(id)a3 context:(id)a4;
- (int64_t)integerForKey:(id)a3 context:(id)a4;
- (void)addValue:(id)a3 predicate:(id)a4 forKey:(id)a5;
- (void)addWithPredicate:(id)a3 adder:(id)a4;
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
  v4 = [(IMConfiguration *)self pairsToKeyMap];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)valueForKey:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMConfiguration *)self cache];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v10 = +[NSMutableArray array];
    v23 = v6;
    v11 = [(IMConfiguration *)self _predicateValuePairsForKey:v6];
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
          v17 = [v16 predicate];
          v18 = [v17 evaluateWithContext:v7];

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
      v6 = v23;
      v9 = [v20 value];
      if (v9)
      {
        v21 = [(IMConfiguration *)self cache];
        [v21 setObject:v9 forKeyedSubscript:v23];
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
      v6 = v23;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v29 = v23;
        v30 = 2112;
        v31 = v11;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "@Failed to match for {%@} in {%@} ctx {%@}", buf, 0x20u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (double)floatForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (double)BOOLForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
  v5 = [v4 BOOLValue];

  return v5;
}

- (int64_t)integerForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
  v5 = [v4 integerValue];

  return v5;
}

- (CGPoint)pointForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGSize)sizeForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
  [v4 CGSizeValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)rectForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
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

- (UIEdgeInsets)edgeInsetsForKey:(id)a3 context:(id)a4
{
  v4 = [(IMConfiguration *)self valueForKey:a3 context:a4];
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

- (void)addValue:(id)a3 predicate:(id)a4 forKey:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(IMConfiguration *)self _predicateValuePairsForKey:v13];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [(IMConfiguration *)self pairsToKeyMap];
    [v11 setObject:v10 forKeyedSubscript:v13];
  }

  v12 = objc_alloc_init(IMConfigurationPredicateValuePair);
  [(IMConfigurationPredicateValuePair *)v12 setPredicate:v8];

  [(IMConfigurationPredicateValuePair *)v12 setValue:v9];
  [v10 addObject:v12];
}

- (void)addWithPredicate:(id)a3 adder:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_addProhibited)
  {
    [NSException raise:@"IMConfigurationWrongAdderCalledError" format:@"IMConfiguration addWithPredicate can't be called within an adder block"];
  }

  v7 = [[IMConfigurationAdder alloc] initWithConfiguration:self predicate:v8];
  [(IMConfiguration *)self setAddProhibited:1];
  [(IMConfigurationAdder *)v7 setAddProhibited:0];
  v6[2](v6, v7);
  [(IMConfigurationAdder *)v7 setAddProhibited:1];
  [(IMConfiguration *)self setAddProhibited:0];
}

- (void)invalidate
{
  v2 = [(IMConfiguration *)self cache];
  [v2 removeAllObjects];
}

- (id)_predicateValuePairsForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMConfiguration *)self pairsToKeyMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_selectTopScoringPairInArray:(id)a3
{
  v3 = a3;
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
  [v3 enumerateObjectsUsingBlock:v6];
  if (v8[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:?];
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

@end