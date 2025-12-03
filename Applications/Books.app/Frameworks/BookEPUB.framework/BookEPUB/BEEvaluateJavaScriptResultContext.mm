@interface BEEvaluateJavaScriptResultContext
- (BEEvaluateJavaScriptResultContext)init;
- (NSArray)allKeys;
- (id)description;
- (id)dictionaryResultForKey:(id)key;
- (id)resultForKey:(id)key;
- (id)stringResultForKey:(id)key;
- (id)valueResultForKey:(id)key;
- (void)addResult:(id)result forKey:(id)key;
@end

@implementation BEEvaluateJavaScriptResultContext

- (BEEvaluateJavaScriptResultContext)init
{
  v6.receiver = self;
  v6.super_class = BEEvaluateJavaScriptResultContext;
  v2 = [(BEEvaluateJavaScriptResultContext *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    results = v2->_results;
    v2->_results = v3;
  }

  return v2;
}

- (void)addResult:(id)result forKey:(id)key
{
  resultCopy = result;
  keyCopy = key;
  v7 = resultCopy;
  if (!resultCopy)
  {
    v7 = +[NSNull null];
  }

  results = [(BEEvaluateJavaScriptResultContext *)self results];
  [results setObject:v7 forKeyedSubscript:keyCopy];

  if (!resultCopy)
  {
  }
}

- (id)resultForKey:(id)key
{
  keyCopy = key;
  results = [(BEEvaluateJavaScriptResultContext *)self results];
  v6 = [results objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)stringResultForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(BEEvaluateJavaScriptResultContext *)self resultForKey:keyCopy];

  v6 = BUDynamicCast();

  return v6;
}

- (id)dictionaryResultForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(BEEvaluateJavaScriptResultContext *)self resultForKey:keyCopy];

  v6 = BUDynamicCast();

  return v6;
}

- (id)valueResultForKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  v5 = [(BEEvaluateJavaScriptResultContext *)self resultForKey:keyCopy];

  v6 = BUDynamicCast();

  return v6;
}

- (NSArray)allKeys
{
  results = [(BEEvaluateJavaScriptResultContext *)self results];
  allKeys = [results allKeys];

  return allKeys;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  results = [(BEEvaluateJavaScriptResultContext *)self results];
  v6 = [NSString stringWithFormat:@"<%@: %p> - results: %@", v4, self, results];

  return v6;
}

@end