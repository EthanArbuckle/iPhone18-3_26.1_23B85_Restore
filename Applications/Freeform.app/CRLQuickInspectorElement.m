@interface CRLQuickInspectorElement
+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 action:(SEL)a6;
+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 action:(SEL)a6 parent:(id)a7 children:(id)a8;
+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6;
+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 action:(SEL)a7 parent:(id)a8 children:(id)a9;
+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 crlaxLabel:(id)a7;
+ (id)elementWithUIMenu:(id)a3;
+ (id)elementWithUIMenuElement:(id)a3 ofType:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CRLQuickInspectorElement)initWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 action:(SEL)a7 parent:(id)a8 children:(id)a9 crlaxLabel:(id)a10;
- (UIMenuElement)UIMenuElement;
- (unint64_t)hash;
@end

@implementation CRLQuickInspectorElement

- (CRLQuickInspectorElement)initWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 action:(SEL)a7 parent:(id)a8 children:(id)a9 crlaxLabel:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v25.receiver = self;
  v25.super_class = CRLQuickInspectorElement;
  v21 = [(CRLQuickInspectorElement *)&v25 init];
  v22 = v21;
  if (v21)
  {
    [(CRLQuickInspectorElement *)v21 setName:v16];
    [(CRLQuickInspectorElement *)v22 setImage:v17];
    [(CRLQuickInspectorElement *)v22 setElementType:a5];
    [(CRLQuickInspectorElement *)v22 setOptions:a6];
    [(CRLQuickInspectorElement *)v22 setAction:a7];
    [(CRLQuickInspectorElement *)v22 setParent:v18];
    [(CRLQuickInspectorElement *)v22 setChildren:v19];
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v16;
    }

    [(CRLQuickInspectorElement *)v22 setCrlaxLabel:v23];
    [(CRLQuickInspectorElement *)v22 setTag:-1];
  }

  return v22;
}

+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[CRLQuickInspectorElement alloc] initWithName:v10 image:v9 type:a5 options:a6];

  return v11;
}

+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 crlaxLabel:(id)a7
{
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [[CRLQuickInspectorElement alloc] initWithName:v13 image:v12 type:a5 options:a6 action:0 parent:0 children:0 crlaxLabel:v11];

  return v14;
}

+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 action:(SEL)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [[CRLQuickInspectorElement alloc] initWithName:v10 image:v9 type:a5 action:a6 parent:0 children:0];

  return v11;
}

+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 action:(SEL)a6 parent:(id)a7 children:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [[CRLQuickInspectorElement alloc] initWithName:v16 image:v15 type:a5 action:a6 parent:v14 children:v13];

  return v17;
}

+ (id)elementWithName:(id)a3 image:(id)a4 type:(int64_t)a5 options:(int64_t)a6 action:(SEL)a7 parent:(id)a8 children:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a4;
  v18 = a3;
  v19 = [[CRLQuickInspectorElement alloc] initWithName:v18 image:v17 type:a5 options:a6 action:a7 parent:v16 children:v15 crlaxLabel:0];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [(CRLQuickInspectorElement *)self name];
    v8 = [v6 name];
    if (v7 | v8 && ![v7 isEqual:v8])
    {
      v22 = 0;
    }

    else
    {
      v9 = [(CRLQuickInspectorElement *)self image];
      v10 = [v6 image];
      if ((!(v9 | v10) || [v9 isEqual:v10]) && (v11 = -[CRLQuickInspectorElement elementType](self, "elementType"), v11 == objc_msgSend(v6, "elementType")) && (v12 = -[CRLQuickInspectorElement options](self, "options"), v12 == objc_msgSend(v6, "options")) && sel_isEqual(-[CRLQuickInspectorElement action](self, "action"), objc_msgSend(v6, "action")))
      {
        v13 = [(CRLQuickInspectorElement *)self parent];
        v14 = [v6 parent];
        if (v13 | v14 && ![v13 isEqual:v14])
        {
          v22 = 0;
        }

        else
        {
          v15 = [(CRLQuickInspectorElement *)self children];
          v16 = [v6 children];
          if (v15 | v16 && ![v15 isEqual:v16])
          {
            v22 = 0;
          }

          else
          {
            v28 = v14;
            v17 = [(CRLQuickInspectorElement *)self tintColor];
            v29 = [v6 tintColor];
            v30 = v17;
            if (v17 | v29 && ![v17 isEqual:v29])
            {
              v22 = 0;
              v14 = v28;
            }

            else
            {
              v27 = v16;
              v18 = [(CRLQuickInspectorElement *)self crlaxLabel];
              v19 = [v6 crlaxLabel];
              v26 = v18;
              if (v18 | v19 && ![v18 isEqual:v19])
              {
                v22 = 0;
                v14 = v28;
              }

              else
              {
                v24 = v15;
                v25 = v13;
                v20 = [(CRLQuickInspectorElement *)self toolTip];
                v21 = [v6 toolTip];
                if (v20 | v21)
                {
                  v22 = [v20 isEqual:v21];
                }

                else
                {
                  v22 = 1;
                }

                v14 = v28;

                v15 = v24;
                v13 = v25;
              }

              v16 = v27;
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
  v3 = [(CRLQuickInspectorElement *)self name];
  v4 = [v3 hash];
  v5 = [(CRLQuickInspectorElement *)self image];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRLQuickInspectorElement *)self elementType];
  v8 = v6 ^ v7 ^ [(CRLQuickInspectorElement *)self options];
  v9 = NSStringFromSelector([(CRLQuickInspectorElement *)self action]);
  v10 = [v9 hash];
  v11 = [(CRLQuickInspectorElement *)self parent];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [(CRLQuickInspectorElement *)self children];
  v14 = [v13 hash];
  v15 = [(CRLQuickInspectorElement *)self tintColor];
  v16 = v14 ^ [v15 hash];
  v17 = [(CRLQuickInspectorElement *)self crlaxLabel];
  v18 = v16 ^ [v17 hash];
  v19 = [(CRLQuickInspectorElement *)self toolTip];
  v20 = v18 ^ [v19 hash];

  return v12 ^ v20;
}

+ (id)elementWithUIMenuElement:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 image];
  v8 = [CRLImage imageWithUIImage:v7];
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, v5);
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v5);

  if (v10)
  {
    v13 = [v10 action];
    v14 = [CRLQuickInspectorElement alloc];
    v15 = v6;
    v16 = v8;
    v17 = a4;
    v18 = v13;
LABEL_3:
    v19 = [(CRLQuickInspectorElement *)v14 initWithName:v15 image:v16 type:v17 action:v18 parent:0 children:0];
    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = [CRLQuickInspectorElement alloc];
    v15 = v6;
    v16 = v8;
    v17 = a4;
    v18 = 0;
    goto LABEL_3;
  }

  v19 = [CRLQuickInspectorElement elementWithUIMenu:v12];
LABEL_6:
  v20 = v19;

  return v20;
}

+ (id)elementWithUIMenu:(id)a3
{
  v3 = a3;
  v15 = [v3 title];
  v4 = [v3 image];
  v5 = [CRLImage imageWithUIImage:v4];
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v3 children];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [CRLQuickInspectorElement elementWithUIMenuElement:*(*(&v16 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [[CRLQuickInspectorElement alloc] initWithName:v15 image:v5 type:1 action:0 parent:0 children:v6];

  return v13;
}

- (UIMenuElement)UIMenuElement
{
  v3 = [(CRLQuickInspectorElement *)self children];
  v4 = [v3 count];

  if (v4)
  {
    v5 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [(CRLQuickInspectorElement *)self children];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 UIMenuElement];
          if (v12)
          {
            v13 = [v11 UIMenuElement];
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v14 = [(CRLQuickInspectorElement *)self name];
    v15 = [(CRLQuickInspectorElement *)self image];
    v16 = [v15 UIImage];
    v17 = [UIMenu menuWithTitle:v14 image:v16 identifier:0 options:1 children:v5];
  }

  else
  {
    v18 = [(CRLQuickInspectorElement *)self name];
    v19 = [(CRLQuickInspectorElement *)self image];
    v20 = [v19 UIImage];
    v17 = [UICommand commandWithTitle:v18 image:v20 action:[(CRLQuickInspectorElement *)self action] propertyList:0];
  }

  return v17;
}

@end