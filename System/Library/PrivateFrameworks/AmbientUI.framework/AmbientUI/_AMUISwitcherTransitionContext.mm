@interface _AMUISwitcherTransitionContext
+ (id)contextWithFromRecord:(void *)record toRecord:(uint64_t)toRecord direction:(uint64_t)direction interactive:;
- (AMUISwitcherItem)fromItem;
- (AMUISwitcherItem)toItem;
- (_AMUISwitcherTransitionContext)initWithFromRecord:(id)record toRecord:(id)toRecord direction:(int64_t)direction interactive:(BOOL)interactive;
- (double)progress;
- (uint64_t)hasSameItemsAsFromRecord:(void *)record toRecord:;
- (void)setUserInfoObject:(id)object forKey:(id)key;
@end

@implementation _AMUISwitcherTransitionContext

+ (id)contextWithFromRecord:(void *)record toRecord:(uint64_t)toRecord direction:(uint64_t)direction interactive:
{
  recordCopy = record;
  v9 = a2;
  v10 = [objc_alloc(objc_opt_self()) initWithFromRecord:v9 toRecord:recordCopy direction:toRecord interactive:direction];

  return v10;
}

- (_AMUISwitcherTransitionContext)initWithFromRecord:(id)record toRecord:(id)toRecord direction:(int64_t)direction interactive:(BOOL)interactive
{
  recordCopy = record;
  toRecordCopy = toRecord;
  v16.receiver = self;
  v16.super_class = _AMUISwitcherTransitionContext;
  v13 = [(_AMUISwitcherTransitionContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromRecord, record);
    objc_storeStrong(&v14->_toRecord, toRecord);
    v14->_direction = direction;
    v14->_interactive = interactive;
  }

  return v14;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_userInfo;
    self->_userInfo = v8;

    userInfo = self->_userInfo;
  }

  [(NSMutableDictionary *)userInfo setObject:objectCopy forKey:keyCopy];
}

- (uint64_t)hasSameItemsAsFromRecord:(void *)record toRecord:
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  recordCopy = record;
  if (!self)
  {
    v19 = 0;
    goto LABEL_15;
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = *(self + 8);
  null = v8;
  if (!v8)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v23[0] = null;
  v10 = *(self + 16);
  null2 = v10;
  if (!v10)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v23[1] = null2;
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
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v22[0] = null3;
  null4 = recordCopy;
  if (!recordCopy)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v22[1] = null4;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v14 setWithArray:v17];

  if (!recordCopy)
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
  if (!self)
  {
    return 0.0;
  }

  v1 = *(self + 16);
  if (v1)
  {
    return *(v1 + 24);
  }

  v3 = *(self + 8);
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