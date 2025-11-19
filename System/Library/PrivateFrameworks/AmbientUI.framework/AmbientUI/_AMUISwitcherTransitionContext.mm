@interface _AMUISwitcherTransitionContext
+ (id)contextWithFromRecord:(void *)a3 toRecord:(uint64_t)a4 direction:(uint64_t)a5 interactive:;
- (AMUISwitcherItem)fromItem;
- (AMUISwitcherItem)toItem;
- (_AMUISwitcherTransitionContext)initWithFromRecord:(id)a3 toRecord:(id)a4 direction:(int64_t)a5 interactive:(BOOL)a6;
- (double)progress;
- (uint64_t)hasSameItemsAsFromRecord:(void *)a3 toRecord:;
- (void)setUserInfoObject:(id)a3 forKey:(id)a4;
@end

@implementation _AMUISwitcherTransitionContext

+ (id)contextWithFromRecord:(void *)a3 toRecord:(uint64_t)a4 direction:(uint64_t)a5 interactive:
{
  v8 = a3;
  v9 = a2;
  v10 = [objc_alloc(objc_opt_self()) initWithFromRecord:v9 toRecord:v8 direction:a4 interactive:a5];

  return v10;
}

- (_AMUISwitcherTransitionContext)initWithFromRecord:(id)a3 toRecord:(id)a4 direction:(int64_t)a5 interactive:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _AMUISwitcherTransitionContext;
  v13 = [(_AMUISwitcherTransitionContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromRecord, a3);
    objc_storeStrong(&v14->_toRecord, a4);
    v14->_direction = a5;
    v14->_interactive = a6;
  }

  return v14;
}

- (void)setUserInfoObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_userInfo;
    self->_userInfo = v8;

    userInfo = self->_userInfo;
  }

  [(NSMutableDictionary *)userInfo setObject:v10 forKey:v6];
}

- (uint64_t)hasSameItemsAsFromRecord:(void *)a3 toRecord:
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_15;
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = *(a1 + 8);
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = v9;
  v10 = *(a1 + 16);
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v13 = [v7 setWithArray:v12];

  if (v10)
  {
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v14 = MEMORY[0x277CBEB98];
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = v15;
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v14 setWithArray:v17];

  if (!v6)
  {

    if (v5)
    {
      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_14;
  }

  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_14:
  v19 = [v13 isEqualToSet:v18];

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (double)progress
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 24);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 24);
  }

  else
  {
    v4 = 0.0;
  }

  return 1.0 - v4;
}

- (AMUISwitcherItem)fromItem
{
  fromRecord = self->_fromRecord;
  if (!fromRecord)
  {
    return OUTLINED_FUNCTION_0();
  }

  WeakRetained = objc_loadWeakRetained(&fromRecord->_item);

  return WeakRetained;
}

- (AMUISwitcherItem)toItem
{
  toRecord = self->_toRecord;
  if (!toRecord)
  {
    return OUTLINED_FUNCTION_0();
  }

  WeakRetained = objc_loadWeakRetained(&toRecord->_item);

  return WeakRetained;
}

@end