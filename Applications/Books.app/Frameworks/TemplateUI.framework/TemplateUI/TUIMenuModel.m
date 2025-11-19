@interface TUIMenuModel
+ (id)menuWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5 children:(id)a6;
- (BOOL)isEqual:(id)a3;
- (TUIActionHandlerDelegate)actionDelegate;
- (TUIMenuModel)initWithOther:(id)a3;
- (TUIMenuModel)initWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5 children:(id)a6;
- (id)menuWithIsPrimary:(BOOL)a3 actionObject:(id)a4 actionDelegate:(id)a5;
- (id)newUIMenuElement;
- (id)newUIMenuElementWithActionObject:(id)a3 delegate:(id)a4;
- (void)loadImagesFromResourceMap:(id)a3;
@end

@implementation TUIMenuModel

- (TUIMenuModel)initWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5 children:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = TUIMenuModel;
  v13 = [(TUIMenuModel *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_imageModel, a4);
    v13->_isInline = a5;
    v16 = [v12 copy];
    children = v13->_children;
    v13->_children = v16;
  }

  return v13;
}

+ (id)menuWithTitle:(id)a3 imageModel:(id)a4 isInline:(BOOL)a5 children:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [[TUIMenuModel alloc] initWithTitle:v11 imageModel:v10 isInline:v6 children:v9];

  return v12;
}

- (TUIMenuModel)initWithOther:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIMenuModel;
  v5 = [(TUIMenuModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_title, *(v4 + 2));
    objc_storeStrong(&v6->_imageModel, *(v4 + 3));
    v6->_isInline = *(v4 + 9);
    objc_storeStrong(&v6->_children, *(v4 + 4));
    v6->_isPrimary = *(v4 + 8);
    objc_storeStrong(&v6->_actionObject, *(v4 + 5));
    WeakRetained = objc_loadWeakRetained(v4 + 6);
    objc_storeWeak(&v6->_actionDelegate, WeakRetained);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, v5);
  }

  return self == a3;
}

- (id)menuWithIsPrimary:(BOOL)a3 actionObject:(id)a4 actionDelegate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [[TUIMenuModel alloc] initWithOther:self];
  v10->_isPrimary = a3;
  actionObject = v10->_actionObject;
  v10->_actionObject = v8;

  objc_storeWeak(&v10->_actionDelegate, v9);

  return v10;
}

- (void)loadImagesFromResourceMap:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    imageModel = self->_imageModel;
    if (imageModel && ![(TUIImageModel *)imageModel isLoaded])
    {
      v6 = [(TUIImageModel *)self->_imageModel identifier];
      v7 = [v4 objectForKeyedSubscript:v6];

      if (v7)
      {
        v8 = self->_imageModel;
        v9 = objc_alloc_init(UIImage);
        [(TUIImageModel *)v8 loadImageFromResource:v7 placeholderImage:v9];
      }
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_children;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * v14) loadImagesFromResourceMap:{v4, v15}];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (id)newUIMenuElementWithActionObject:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_children, "count")}];
  children = self->_children;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_133DA4;
  v19[3] = &unk_262588;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  [(NSArray *)children enumerateObjectsUsingBlock:v19];
  isInline = self->_isInline;
  imageModel = self->_imageModel;
  if (self->_title)
  {
    title = self->_title;
  }

  else
  {
    title = &stru_264550;
  }

  v16 = [(TUIImageModel *)imageModel image];
  v17 = [UIMenu menuWithTitle:title image:v16 identifier:0 options:isInline children:v10];

  return v17;
}

- (id)newUIMenuElement
{
  actionObject = self->_actionObject;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);
  v5 = [(TUIMenuModel *)self newUIMenuElementWithActionObject:actionObject delegate:WeakRetained];

  return v5;
}

- (TUIActionHandlerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end