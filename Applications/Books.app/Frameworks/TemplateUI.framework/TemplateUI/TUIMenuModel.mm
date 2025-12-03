@interface TUIMenuModel
+ (id)menuWithTitle:(id)title imageModel:(id)model isInline:(BOOL)inline children:(id)children;
- (BOOL)isEqual:(id)equal;
- (TUIActionHandlerDelegate)actionDelegate;
- (TUIMenuModel)initWithOther:(id)other;
- (TUIMenuModel)initWithTitle:(id)title imageModel:(id)model isInline:(BOOL)inline children:(id)children;
- (id)menuWithIsPrimary:(BOOL)primary actionObject:(id)object actionDelegate:(id)delegate;
- (id)newUIMenuElement;
- (id)newUIMenuElementWithActionObject:(id)object delegate:(id)delegate;
- (void)loadImagesFromResourceMap:(id)map;
@end

@implementation TUIMenuModel

- (TUIMenuModel)initWithTitle:(id)title imageModel:(id)model isInline:(BOOL)inline children:(id)children
{
  titleCopy = title;
  modelCopy = model;
  childrenCopy = children;
  v19.receiver = self;
  v19.super_class = TUIMenuModel;
  v13 = [(TUIMenuModel *)&v19 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    objc_storeStrong(&v13->_imageModel, model);
    v13->_isInline = inline;
    v16 = [childrenCopy copy];
    children = v13->_children;
    v13->_children = v16;
  }

  return v13;
}

+ (id)menuWithTitle:(id)title imageModel:(id)model isInline:(BOOL)inline children:(id)children
{
  inlineCopy = inline;
  childrenCopy = children;
  modelCopy = model;
  titleCopy = title;
  v12 = [[TUIMenuModel alloc] initWithTitle:titleCopy imageModel:modelCopy isInline:inlineCopy children:childrenCopy];

  return v12;
}

- (TUIMenuModel)initWithOther:(id)other
{
  otherCopy = other;
  v9.receiver = self;
  v9.super_class = TUIMenuModel;
  v5 = [(TUIMenuModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_title, *(otherCopy + 2));
    objc_storeStrong(&v6->_imageModel, *(otherCopy + 3));
    v6->_isInline = *(otherCopy + 9);
    objc_storeStrong(&v6->_children, *(otherCopy + 4));
    v6->_isPrimary = *(otherCopy + 8);
    objc_storeStrong(&v6->_actionObject, *(otherCopy + 5));
    WeakRetained = objc_loadWeakRetained(otherCopy + 6);
    objc_storeWeak(&v6->_actionDelegate, WeakRetained);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, equalCopy);
  }

  return self == equal;
}

- (id)menuWithIsPrimary:(BOOL)primary actionObject:(id)object actionDelegate:(id)delegate
{
  objectCopy = object;
  delegateCopy = delegate;
  v10 = [[TUIMenuModel alloc] initWithOther:self];
  v10->_isPrimary = primary;
  actionObject = v10->_actionObject;
  v10->_actionObject = objectCopy;

  objc_storeWeak(&v10->_actionDelegate, delegateCopy);

  return v10;
}

- (void)loadImagesFromResourceMap:(id)map
{
  mapCopy = map;
  if ([mapCopy count])
  {
    imageModel = self->_imageModel;
    if (imageModel && ![(TUIImageModel *)imageModel isLoaded])
    {
      identifier = [(TUIImageModel *)self->_imageModel identifier];
      v7 = [mapCopy objectForKeyedSubscript:identifier];

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

          [*(*(&v15 + 1) + 8 * v14) loadImagesFromResourceMap:{mapCopy, v15}];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (id)newUIMenuElementWithActionObject:(id)object delegate:(id)delegate
{
  objectCopy = object;
  delegateCopy = delegate;
  v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_children, "count")}];
  children = self->_children;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_133DA4;
  v19[3] = &unk_262588;
  v20 = objectCopy;
  v21 = delegateCopy;
  v22 = v8;
  v10 = v8;
  v11 = delegateCopy;
  v12 = objectCopy;
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

  image = [(TUIImageModel *)imageModel image];
  v17 = [UIMenu menuWithTitle:title image:image identifier:0 options:isInline children:v10];

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