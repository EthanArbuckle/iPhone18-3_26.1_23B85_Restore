@interface TUIMenuContainer
- (TUIMenuContainer)initWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5;
- (TUIModelContaining)parentModel;
- (id)imageModelsToLoad;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIMenuContainer

- (TUIMenuContainer)initWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = TUIMenuContainer;
  v10 = [(TUIMenuContainer *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeStrong(&v10->_imageModel, a4);
    v10->_isInline = a5;
  }

  return v10;
}

- (id)imageModelsToLoad
{
  v3 = +[NSMutableArray array];
  [(TUIMenuContainer *)self appendObjectsWithProtocol:&OBJC_PROTOCOL___TUIImageModel toArray:v3];
  v4 = [NSPredicate predicateWithBlock:&stru_2625C8];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

- (void)updateModelChildren:(id)a3
{
  children = self->_children;
  v5 = a3;
  [(NSArray *)children enumerateObjectsUsingBlock:&stru_2625E8];
  v6 = [v5 copy];

  v7 = self->_children;
  self->_children = v6;

  v8 = self->_children;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13418C;
  v9[3] = &unk_25DF80;
  v9[4] = self;
  [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  [(TUIMenuContainer *)self onContainedModelsChanged];
}

- (void)onContainedModelsChanged
{
  v3 = objc_opt_new();
  children = self->_children;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13427C;
  v9[3] = &unk_25DF80;
  v10 = v3;
  v5 = v3;
  [(NSArray *)children enumerateObjectsUsingBlock:v9];
  v6 = [TUIMenuModel menuWithTitle:self->_title imageModel:self->_imageModel isInline:self->_isInline children:v5];
  menuModel = self->_menuModel;
  self->_menuModel = v6;

  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  [WeakRetained onContainedModelsChanged];
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_menuModel)
  {
    v9 = &OBJC_PROTOCOL___TUIMenuItemModel == v6;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    [v7 addObject:?];
  }

  if (&OBJC_PROTOCOL___TUIImageModel == v6)
  {
    if (self->_imageModel)
    {
      [v8 addObject:?];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = self->_children;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 appendObjectsWithProtocol:&OBJC_PROTOCOL___TUIImageModel toArray:v8];
          }

          else
          {
            v16 = TUIDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_19BBB0(v21, v15, &v22, v16);
            }
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end