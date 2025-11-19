@interface ATXRootOfAppDataWithDictionary
- (ATXRootOfAppDataWithDictionary)init;
- (id)description;
- (unint64_t)sessionCountForBundleId:(id)a3;
- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4;
- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4;
@end

@implementation ATXRootOfAppDataWithDictionary

- (ATXRootOfAppDataWithDictionary)init
{
  v8.receiver = self;
  v8.super_class = ATXRootOfAppDataWithDictionary;
  v2 = [(ATXRootOfAppData *)&v8 initInternal];
  if (v2)
  {
    v3 = objc_opt_new();
    sessionCounts = v2->_sessionCounts;
    v2->_sessionCounts = v3;

    v5 = objc_opt_new();
    firstUA = v2->_firstUA;
    v2->_firstUA = v5;
  }

  return v2;
}

- (unint64_t)sessionCountForBundleId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sessionCounts objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4
{
  v5 = [MEMORY[0x277D42648] tupleWithFirst:a3 second:a4];
  v6 = [(NSMutableDictionary *)self->_firstUA objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  return v7;
}

- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4
{
  v6 = MEMORY[0x277D42648];
  v7 = a3;
  v14 = [v6 tupleWithFirst:v7 second:a4];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(NSMutableDictionary *)self->_firstUA objectForKeyedSubscript:v14];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)self->_firstUA setObject:v10 forKeyedSubscript:v14];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(NSMutableDictionary *)self->_sessionCounts objectForKeyedSubscript:v7];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)self->_sessionCounts setObject:v13 forKeyedSubscript:v7];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sessionCounts = self->_sessionCounts;
  v7 = [v3 initWithFormat:@"<%@ session counts: %@ first UA: %@", v5, sessionCounts, self->_firstUA];

  return v7;
}

@end