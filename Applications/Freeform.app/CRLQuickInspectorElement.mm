@interface CRLQuickInspectorElement
+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type action:(SEL)action;
+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type action:(SEL)action parent:(id)parent children:(id)children;
+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options;
+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options action:(SEL)action parent:(id)parent children:(id)children;
+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options crlaxLabel:(id)label;
+ (id)elementWithUIMenu:(id)menu;
+ (id)elementWithUIMenuElement:(id)element ofType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (CRLQuickInspectorElement)initWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options action:(SEL)action parent:(id)parent children:(id)children crlaxLabel:(id)self0;
- (UIMenuElement)UIMenuElement;
- (unint64_t)hash;
@end

@implementation CRLQuickInspectorElement

- (CRLQuickInspectorElement)initWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options action:(SEL)action parent:(id)parent children:(id)children crlaxLabel:(id)self0
{
  nameCopy = name;
  imageCopy = image;
  parentCopy = parent;
  childrenCopy = children;
  labelCopy = label;
  v25.receiver = self;
  v25.super_class = CRLQuickInspectorElement;
  v21 = [(CRLQuickInspectorElement *)&v25 init];
  v22 = v21;
  if (v21)
  {
    [(CRLQuickInspectorElement *)v21 setName:nameCopy];
    [(CRLQuickInspectorElement *)v22 setImage:imageCopy];
    [(CRLQuickInspectorElement *)v22 setElementType:type];
    [(CRLQuickInspectorElement *)v22 setOptions:options];
    [(CRLQuickInspectorElement *)v22 setAction:action];
    [(CRLQuickInspectorElement *)v22 setParent:parentCopy];
    [(CRLQuickInspectorElement *)v22 setChildren:childrenCopy];
    if (labelCopy)
    {
      v23 = labelCopy;
    }

    else
    {
      v23 = nameCopy;
    }

    [(CRLQuickInspectorElement *)v22 setCrlaxLabel:v23];
    [(CRLQuickInspectorElement *)v22 setTag:-1];
  }

  return v22;
}

+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options
{
  imageCopy = image;
  nameCopy = name;
  v11 = [[CRLQuickInspectorElement alloc] initWithName:nameCopy image:imageCopy type:type options:options];

  return v11;
}

+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options crlaxLabel:(id)label
{
  labelCopy = label;
  imageCopy = image;
  nameCopy = name;
  v14 = [[CRLQuickInspectorElement alloc] initWithName:nameCopy image:imageCopy type:type options:options action:0 parent:0 children:0 crlaxLabel:labelCopy];

  return v14;
}

+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type action:(SEL)action
{
  imageCopy = image;
  nameCopy = name;
  v11 = [[CRLQuickInspectorElement alloc] initWithName:nameCopy image:imageCopy type:type action:action parent:0 children:0];

  return v11;
}

+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type action:(SEL)action parent:(id)parent children:(id)children
{
  childrenCopy = children;
  parentCopy = parent;
  imageCopy = image;
  nameCopy = name;
  v17 = [[CRLQuickInspectorElement alloc] initWithName:nameCopy image:imageCopy type:type action:action parent:parentCopy children:childrenCopy];

  return v17;
}

+ (id)elementWithName:(id)name image:(id)image type:(int64_t)type options:(int64_t)options action:(SEL)action parent:(id)parent children:(id)children
{
  childrenCopy = children;
  parentCopy = parent;
  imageCopy = image;
  nameCopy = name;
  v19 = [[CRLQuickInspectorElement alloc] initWithName:nameCopy image:imageCopy type:type options:options action:action parent:parentCopy children:childrenCopy crlaxLabel:0];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    name = [(CRLQuickInspectorElement *)self name];
    name2 = [v6 name];
    if (name | name2 && ![name isEqual:name2])
    {
      v22 = 0;
    }

    else
    {
      image = [(CRLQuickInspectorElement *)self image];
      image2 = [v6 image];
      if ((!(image | image2) || [image isEqual:image2]) && (v11 = -[CRLQuickInspectorElement elementType](self, "elementType"), v11 == objc_msgSend(v6, "elementType")) && (v12 = -[CRLQuickInspectorElement options](self, "options"), v12 == objc_msgSend(v6, "options")) && sel_isEqual(-[CRLQuickInspectorElement action](self, "action"), objc_msgSend(v6, "action")))
      {
        parent = [(CRLQuickInspectorElement *)self parent];
        parent2 = [v6 parent];
        if (parent | parent2 && ![parent isEqual:parent2])
        {
          v22 = 0;
        }

        else
        {
          children = [(CRLQuickInspectorElement *)self children];
          children2 = [v6 children];
          if (children | children2 && ![children isEqual:children2])
          {
            v22 = 0;
          }

          else
          {
            v28 = parent2;
            tintColor = [(CRLQuickInspectorElement *)self tintColor];
            tintColor2 = [v6 tintColor];
            v30 = tintColor;
            if (tintColor | tintColor2 && ![tintColor isEqual:tintColor2])
            {
              v22 = 0;
              parent2 = v28;
            }

            else
            {
              v27 = children2;
              crlaxLabel = [(CRLQuickInspectorElement *)self crlaxLabel];
              crlaxLabel2 = [v6 crlaxLabel];
              v26 = crlaxLabel;
              if (crlaxLabel | crlaxLabel2 && ![crlaxLabel isEqual:crlaxLabel2])
              {
                v22 = 0;
                parent2 = v28;
              }

              else
              {
                v24 = children;
                v25 = parent;
                toolTip = [(CRLQuickInspectorElement *)self toolTip];
                toolTip2 = [v6 toolTip];
                if (toolTip | toolTip2)
                {
                  v22 = [toolTip isEqual:toolTip2];
                }

                else
                {
                  v22 = 1;
                }

                parent2 = v28;

                children = v24;
                parent = v25;
              }

              children2 = v27;
            }
          }
        }
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (unint64_t)hash
{
  name = [(CRLQuickInspectorElement *)self name];
  v4 = [name hash];
  image = [(CRLQuickInspectorElement *)self image];
  v6 = [image hash] ^ v4;
  elementType = [(CRLQuickInspectorElement *)self elementType];
  v8 = v6 ^ elementType ^ [(CRLQuickInspectorElement *)self options];
  v9 = NSStringFromSelector([(CRLQuickInspectorElement *)self action]);
  v10 = [v9 hash];
  parent = [(CRLQuickInspectorElement *)self parent];
  v12 = v8 ^ v10 ^ [parent hash];
  children = [(CRLQuickInspectorElement *)self children];
  v14 = [children hash];
  tintColor = [(CRLQuickInspectorElement *)self tintColor];
  v16 = v14 ^ [tintColor hash];
  crlaxLabel = [(CRLQuickInspectorElement *)self crlaxLabel];
  v18 = v16 ^ [crlaxLabel hash];
  toolTip = [(CRLQuickInspectorElement *)self toolTip];
  v20 = v18 ^ [toolTip hash];

  return v12 ^ v20;
}

+ (id)elementWithUIMenuElement:(id)element ofType:(int64_t)type
{
  elementCopy = element;
  title = [elementCopy title];
  image = [elementCopy image];
  v8 = [CRLImage imageWithUIImage:image];
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, elementCopy);
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, elementCopy);

  if (v10)
  {
    action = [v10 action];
    v14 = [CRLQuickInspectorElement alloc];
    v15 = title;
    v16 = v8;
    typeCopy2 = type;
    v18 = action;
LABEL_3:
    v19 = [(CRLQuickInspectorElement *)v14 initWithName:v15 image:v16 type:typeCopy2 action:v18 parent:0 children:0];
    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = [CRLQuickInspectorElement alloc];
    v15 = title;
    v16 = v8;
    typeCopy2 = type;
    v18 = 0;
    goto LABEL_3;
  }

  v19 = [CRLQuickInspectorElement elementWithUIMenu:v12];
LABEL_6:
  v20 = v19;

  return v20;
}

+ (id)elementWithUIMenu:(id)menu
{
  menuCopy = menu;
  title = [menuCopy title];
  image = [menuCopy image];
  v5 = [CRLImage imageWithUIImage:image];
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  children = [menuCopy children];
  v8 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(children);
        }

        v12 = [CRLQuickInspectorElement elementWithUIMenuElement:*(*(&v16 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [children countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [[CRLQuickInspectorElement alloc] initWithName:title image:v5 type:1 action:0 parent:0 children:v6];

  return v13;
}

- (UIMenuElement)UIMenuElement
{
  children = [(CRLQuickInspectorElement *)self children];
  v4 = [children count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    children2 = [(CRLQuickInspectorElement *)self children];
    v7 = [children2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(children2);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          uIMenuElement = [v11 UIMenuElement];
          if (uIMenuElement)
          {
            uIMenuElement2 = [v11 UIMenuElement];
            [v5 addObject:uIMenuElement2];
          }
        }

        v8 = [children2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    name = [(CRLQuickInspectorElement *)self name];
    image = [(CRLQuickInspectorElement *)self image];
    uIImage = [image UIImage];
    v17 = [UIMenu menuWithTitle:name image:uIImage identifier:0 options:1 children:v5];
  }

  else
  {
    name2 = [(CRLQuickInspectorElement *)self name];
    image2 = [(CRLQuickInspectorElement *)self image];
    uIImage2 = [image2 UIImage];
    v17 = [UICommand commandWithTitle:name2 image:uIImage2 action:[(CRLQuickInspectorElement *)self action] propertyList:0];
  }

  return v17;
}

@end