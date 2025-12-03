@interface CPAlertTemplate
+ (NSUInteger)maximumActionCount;
- (CPAlertTemplate)initWithCoder:(id)coder;
- (CPAlertTemplate)initWithTitleVariants:(NSArray *)titleVariants actions:(NSArray *)actions;
- (void)_addAction:(id)action;
- (void)encodeWithCoder:(id)coder;
- (void)handleAlertActionForIdentifier:(id)identifier;
@end

@implementation CPAlertTemplate

+ (NSUInteger)maximumActionCount
{
  if (CPCurrentProcessHasAudioEntitlement())
  {
    return 1;
  }

  if (CPCurrentProcessHasVideoEntitlement())
  {
    return 1;
  }

  return 3;
}

- (CPAlertTemplate)initWithTitleVariants:(NSArray *)titleVariants actions:(NSArray *)actions
{
  v8 = titleVariants;
  v9 = actions;
  v16.receiver = self;
  v16.super_class = CPAlertTemplate;
  v10 = [(CPTemplate *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_titleVariants, titleVariants);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__CPAlertTemplate_initWithTitleVariants_actions___block_invoke;
    v13[3] = &unk_278A10CF8;
    v15 = a2;
    v14 = v11;
    [(NSArray *)v9 enumerateObjectsUsingBlock:v13];
  }

  return v11;
}

void __49__CPAlertTemplate_initWithTitleVariants_actions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = v3;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v11 = v6;
  if (([v7 containsObject:object_getClass(v11)] & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = NSStringFromSelector(v5);
    [v8 raise:v9 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v11, v10, v7, 0}];
  }

  [*(a1 + 32) _addAction:v11];
}

- (CPAlertTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CPAlertTemplate;
  v5 = [(CPTemplate *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPAlertTemplateTitlesKey"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kCPAlertTemplateActionsKey"];
    actions = v5->_actions;
    v5->_actions = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPAlertTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CPAlertTemplate *)self titleVariants:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPAlertTemplateTitlesKey"];

  actions = [(CPAlertTemplate *)self actions];
  [coderCopy encodeObject:actions forKey:@"kCPAlertTemplateActionsKey"];
}

- (void)_addAction:(id)action
{
  actionCopy = action;
  actions = [(CPAlertTemplate *)self actions];

  if (actions)
  {
    actions2 = [(CPAlertTemplate *)self actions];
    v6 = [actions2 arrayByAddingObject:actionCopy];
    actions = self->_actions;
    self->_actions = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:actionCopy];
    actions2 = self->_actions;
    self->_actions = v8;
  }

  maximumActionCount = [objc_opt_class() maximumActionCount];
  actions3 = [(CPAlertTemplate *)self actions];
  v11 = [actions3 count];

  if (v11 > maximumActionCount)
  {
    actions4 = [(CPAlertTemplate *)self actions];
    v13 = MEMORY[0x277CCAA78];
    actions5 = [(CPAlertTemplate *)self actions];
    v15 = [v13 indexSetWithIndexesInRange:{objc_msgSend(actions5, "count") - maximumActionCount, maximumActionCount}];
    v16 = [actions4 objectsAtIndexes:v15];
    v17 = self->_actions;
    self->_actions = v16;
  }
}

- (void)handleAlertActionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  actions = [(CPAlertTemplate *)self actions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__CPAlertTemplate_handleAlertActionForIdentifier___block_invoke;
  v9[3] = &unk_278A104B8;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [actions enumerateObjectsUsingBlock:v9];

  handler = [v13[5] handler];

  if (handler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__CPAlertTemplate_handleAlertActionForIdentifier___block_invoke_2;
    block[3] = &unk_278A104E0;
    block[4] = &v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v12, 8);
}

void __50__CPAlertTemplate_handleAlertActionForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __50__CPAlertTemplate_handleAlertActionForIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) handler];
  v2[2](v2, *(*(*(a1 + 32) + 8) + 40));
}

@end