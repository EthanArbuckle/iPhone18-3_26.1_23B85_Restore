@interface CNUIContainerContext
- (CNUIContainerContext)initWithContainers:(id)containers;
- (NSArray)addedContainers;
- (NSDictionary)removedContainers;
- (void)addContainer:(id)container;
- (void)removeContainer:(id)container;
- (void)resetToInitialState;
@end

@implementation CNUIContainerContext

- (void)resetToInitialState
{
  originalContainers = [(CNUIContainerContext *)self originalContainers];
  allValues = [originalContainers allValues];
  v4 = [allValues copy];
  [(CNUIContainerContext *)self setSelectedContainers:v4];
}

- (NSDictionary)removedContainers
{
  originalContainers = [(CNUIContainerContext *)self originalContainers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNUIContainerContext_removedContainers__block_invoke;
  v6[3] = &unk_1E74E4298;
  v6[4] = self;
  v4 = [originalContainers _cn_filter:v6];

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
  selectedContainers = [(CNUIContainerContext *)self selectedContainers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__CNUIContainerContext_addedContainers__block_invoke;
  v6[3] = &unk_1E74E75E0;
  v6[4] = self;
  v4 = [selectedContainers _cn_filter:v6];

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

- (void)removeContainer:(id)container
{
  containerCopy = container;
  selectedContainers = [(CNUIContainerContext *)self selectedContainers];
  v5 = [selectedContainers containsObject:containerCopy];

  if (v5)
  {
    selectedContainers2 = [(CNUIContainerContext *)self selectedContainers];
    v7 = [selectedContainers2 mutableCopy];

    [v7 removeObject:containerCopy];
    v8 = [v7 copy];
    [(CNUIContainerContext *)self setSelectedContainers:v8];
  }
}

- (void)addContainer:(id)container
{
  containerCopy = container;
  selectedContainers = [(CNUIContainerContext *)self selectedContainers];
  v6 = [selectedContainers containsObject:containerCopy];

  if ((v6 & 1) == 0)
  {
    selectedContainers2 = [(CNUIContainerContext *)self selectedContainers];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CNUIContainerContext_addContainer___block_invoke;
    v12[3] = &unk_1E74E75E0;
    v8 = containerCopy;
    v13 = v8;
    v9 = [selectedContainers2 _cn_any:v12];

    if ((v9 & 1) == 0)
    {
      selectedContainers3 = [(CNUIContainerContext *)self selectedContainers];
      v11 = [selectedContainers3 arrayByAddingObject:v8];
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

- (CNUIContainerContext)initWithContainers:(id)containers
{
  containersCopy = containers;
  v11.receiver = self;
  v11.super_class = CNUIContainerContext;
  v6 = [(CNUIContainerContext *)&v11 init];
  if (v6)
  {
    allValues = [containersCopy allValues];
    selectedContainers = v6->_selectedContainers;
    v6->_selectedContainers = allValues;

    objc_storeStrong(&v6->_originalContainers, containers);
    v9 = v6;
  }

  return v6;
}

@end