@interface WFEvernoteTagsTagFieldParameter
+ (id)referencedActionResourceClasses;
- (id)suggestedTagsForTagField:(id)field;
- (void)setActionResources:(id)resources;
- (void)setEvernoteAccessResource:(id)resource;
- (void)updateTags;
- (void)wasAddedToWorkflow;
@end

@implementation WFEvernoteTagsTagFieldParameter

- (id)suggestedTagsForTagField:(id)field
{
  v3 = +[WFDiskCache workflowCache];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 objectOfClasses:v6 forKey:@"WFEvernoteTags"];

  v8 = [v7 if_map:&__block_literal_global_244];

  return v8;
}

- (void)updateTags
{
  v2 = +[WFEvernoteAccessResource evernoteSession];
  isAuthenticated = [v2 isAuthenticated];

  if (isAuthenticated)
  {
    v5 = +[WFEvernoteAccessResource evernoteSession];
    primaryNoteStore = [v5 primaryNoteStore];
    [primaryNoteStore listTagsWithCompletion:&__block_literal_global_5268];
  }
}

void __45__WFEvernoteTagsTagFieldParameter_updateTags__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8 = v4;
  if (!a2 || v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:@"ENErrorDomain"])
    {
      v7 = [v8 code];

      if (v7 != 2)
      {
        goto LABEL_8;
      }

      v5 = +[WFDiskCache workflowCache];
      [v5 removeObjectForKey:@"WFEvernoteTags"];
    }
  }

  else
  {
    v5 = [a2 if_map:&__block_literal_global_240_5271];
    v6 = +[WFDiskCache workflowCache];
    [v6 setObject:v5 forKey:@"WFEvernoteTags"];
  }

LABEL_8:
}

WFEvernoteTag *__45__WFEvernoteTagsTagFieldParameter_updateTags__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFEvernoteTag alloc] initWithTag:v2];

  return v3;
}

- (void)wasAddedToWorkflow
{
  v3.receiver = self;
  v3.super_class = WFEvernoteTagsTagFieldParameter;
  [(WFEvernoteTagsTagFieldParameter *)&v3 wasAddedToWorkflow];
  [(WFEvernoteTagsTagFieldParameter *)self updateTags];
  [(WFDynamicTagFieldParameter *)self setDataSource:self];
}

- (void)setEvernoteAccessResource:(id)resource
{
  resourceCopy = resource;
  v5 = MEMORY[0x277D7CF28];
  if (self->_evernoteAccessResource)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*v5 object:self->_evernoteAccessResource];
  }

  objc_storeStrong(&self->_evernoteAccessResource, resource);
  if (self->_evernoteAccessResource)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_updateTags name:*v5 object:self->_evernoteAccessResource];
  }
}

- (void)setActionResources:(id)resources
{
  v19 = *MEMORY[0x277D85DE8];
  anyObject = [resources anyObject];
  v5 = objc_opt_class();
  v6 = anyObject;
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315906;
      v12 = "WFEnforceClass";
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v5;
      v9 = v16;
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v11, 0x2Au);
    }

    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [(WFEvernoteTagsTagFieldParameter *)self setEvernoteAccessResource:v7];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)referencedActionResourceClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end