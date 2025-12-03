@interface TUIRootBox
+ (TUIRootBox)rootBoxWithContentModel:(id)model;
- (TUIModelLayoutable)contentModel;
- (TUIRootBox)init;
- (id)contentModels;
- (id)navBarModels;
- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout;
- (void)onContainedModelsChanged;
@end

@implementation TUIRootBox

- (TUIRootBox)init
{
  v3.receiver = self;
  v3.super_class = TUIRootBox;
  result = [(TUIBox *)&v3 init];
  if (result)
  {
    *&result->_flags = 0;
  }

  return result;
}

- (id)contentModels
{
  v3 = objc_opt_new();
  [(TUIContainerBox *)self appendLayoutChildrenToArray:v3];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 role])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (id)navBarModels
{
  v3 = objc_opt_new();
  [(TUIContainerBox *)self appendLayoutChildrenToArray:v3];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 role] == &dword_4)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (TUIModelLayoutable)contentModel
{
  contentModel = self->_contentModel;
  if (!contentModel)
  {
    contentModels = [(TUIRootBox *)self contentModels];
    if ([contentModels count] == &dword_0 + 1)
    {
      firstObject = [contentModels firstObject];
    }

    else
    {
      firstObject = 0;
    }

    v6 = self->_contentModel;
    self->_contentModel = firstObject;

    contentModel = self->_contentModel;
  }

  return contentModel;
}

- (void)onContainedModelsChanged
{
  contentModel = self->_contentModel;
  self->_contentModel = 0;
}

+ (TUIRootBox)rootBoxWithContentModel:(id)model
{
  modelCopy = model;
  v4 = objc_alloc_init(TUIRootBox);
  v7 = modelCopy;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  [(TUIContainerBox *)v4 updateModelChildren:v5];

  return v4;
}

- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout
{
  contextCopy = context;
  v7 = objc_alloc_init(TUIBoxBuilder);
  *&self->_flags = [contextCopy updateWithEntry:self->_entry withBuilder:v7 environmentContainer:self];
  v8 = [(TUIBoxBuilder *)v7 finalizeModelsWithParent:self box:self context:contextCopy];

  return self;
}

@end