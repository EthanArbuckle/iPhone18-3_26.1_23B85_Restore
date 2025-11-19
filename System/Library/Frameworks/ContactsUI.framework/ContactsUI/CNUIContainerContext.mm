@interface CNUIContainerContext
- (CNUIContainerContext)initWithContainers:(id)a3;
- (NSArray)addedContainers;
- (NSDictionary)removedContainers;
- (void)addContainer:(id)a3;
- (void)removeContainer:(id)a3;
- (void)resetToInitialState;
@end

@implementation CNUIContainerContext

- (void)resetToInitialState
{
  v5 = [(CNUIContainerContext *)self originalContainers];
  v3 = [v5 allValues];
  v4 = [v3 copy];
  [(CNUIContainerContext *)self setSelectedContainers:v4];
}

- (NSDictionary)removedContainers
{
  v3 = [(CNUIContainerContext *)self originalContainers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNUIContainerContext_removedContainers__block_invoke;
  v6[3] = &unk_1E74E4298;
  v6[4] = self;
  v4 = [v3 _cn_filter:v6];

  return v4;
}

uint64_t __41__CNUIContainerContext_removedContainers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 selectedContainers];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1u;
}

- (NSArray)addedContainers
{
  v3 = [(CNUIContainerContext *)self selectedContainers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNUIContainerContext_addedContainers__block_invoke;
  v6[3] = &unk_1E74E75E0;
  v6[4] = self;
  v4 = [v3 _cn_filter:v6];

  return v4;
}

uint64_t __39__CNUIContainerContext_addedContainers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 originalContainers];
  v5 = [v4 allValues];
  v6 = [v5 containsObject:v3];

  return v6 ^ 1u;
}

- (void)removeContainer:(id)a3
{
  v9 = a3;
  v4 = [(CNUIContainerContext *)self selectedContainers];
  v5 = [v4 containsObject:v9];

  if (v5)
  {
    v6 = [(CNUIContainerContext *)self selectedContainers];
    v7 = [v6 mutableCopy];

    [v7 removeObject:v9];
    v8 = [v7 copy];
    [(CNUIContainerContext *)self setSelectedContainers:v8];
  }
}

- (void)addContainer:(id)a3
{
  v4 = a3;
  v5 = [(CNUIContainerContext *)self selectedContainers];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(CNUIContainerContext *)self selectedContainers];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CNUIContainerContext_addContainer___block_invoke;
    v12[3] = &unk_1E74E75E0;
    v8 = v4;
    v13 = v8;
    v9 = [v7 _cn_any:v12];

    if ((v9 & 1) == 0)
    {
      v10 = [(CNUIContainerContext *)self selectedContainers];
      v11 = [v10 arrayByAddingObject:v8];
      [(CNUIContainerContext *)self setSelectedContainers:v11];
    }
  }
}

uint64_t __37__CNUIContainerContext_addContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (CNUIContainerContext)initWithContainers:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CNUIContainerContext;
  v6 = [(CNUIContainerContext *)&v11 init];
  if (v6)
  {
    v7 = [v5 allValues];
    selectedContainers = v6->_selectedContainers;
    v6->_selectedContainers = v7;

    objc_storeStrong(&v6->_originalContainers, a3);
    v9 = v6;
  }

  return v6;
}

@end