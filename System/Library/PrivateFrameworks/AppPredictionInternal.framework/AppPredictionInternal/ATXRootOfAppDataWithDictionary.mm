@interface ATXRootOfAppDataWithDictionary
- (ATXRootOfAppDataWithDictionary)init;
- (id)description;
- (unint64_t)sessionCountForBundleId:(id)id;
- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action;
- (void)recordSessionWithBundleId:(id)id firstAction:(id)action;
@end

@implementation ATXRootOfAppDataWithDictionary

- (ATXRootOfAppDataWithDictionary)init
{
  v8.receiver = self;
  v8.super_class = ATXRootOfAppDataWithDictionary;
  initInternal = [(ATXRootOfAppData *)&v8 initInternal];
  if (initInternal)
  {
    v3 = objc_opt_new();
    sessionCounts = initInternal->_sessionCounts;
    initInternal->_sessionCounts = v3;

    v5 = objc_opt_new();
    firstUA = initInternal->_firstUA;
    initInternal->_firstUA = v5;
  }

  return initInternal;
}

- (unint64_t)sessionCountForBundleId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_sessionCounts objectForKeyedSubscript:id];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action
{
  v5 = [MEMORY[0x277D42648] tupleWithFirst:id second:action];
  v6 = [(NSMutableDictionary *)self->_firstUA objectForKeyedSubscript:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)recordSessionWithBundleId:(id)id firstAction:(id)action
{
  v6 = MEMORY[0x277D42648];
  idCopy = id;
  v14 = [v6 tupleWithFirst:idCopy second:action];
  v8 = MEMORY[0x277CCABB0];
  v9 = [(NSMutableDictionary *)self->_firstUA objectForKeyedSubscript:v14];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)self->_firstUA setObject:v10 forKeyedSubscript:v14];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(NSMutableDictionary *)self->_sessionCounts objectForKeyedSubscript:idCopy];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)self->_sessionCounts setObject:v13 forKeyedSubscript:idCopy];
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