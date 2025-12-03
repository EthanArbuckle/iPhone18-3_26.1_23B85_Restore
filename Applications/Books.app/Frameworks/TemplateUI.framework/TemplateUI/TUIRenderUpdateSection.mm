@interface TUIRenderUpdateSection
- (TUIRenderUpdateSection)initWithFrom:(id)from to:(id)to;
- (id)description;
- (void)_computeViewUpdate;
- (void)applyToContext:(id)context;
- (void)debugViewIdentifiersWithPackage:(id)package;
@end

@implementation TUIRenderUpdateSection

- (TUIRenderUpdateSection)initWithFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v12.receiver = self;
  v12.super_class = TUIRenderUpdateSection;
  v9 = [(TUIRenderUpdateSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_from, from);
    objc_storeStrong(&v10->_to, to);
    [(TUIRenderUpdateSection *)v10 _computeViewUpdate];
  }

  return v10;
}

- (void)_computeViewUpdate
{
  location = [(TUIRenderModelSection *)self->_from viewRange];
  length = v4;
  viewRange = [(TUIRenderModelSection *)self->_to viewRange];
  v8.location = viewRange;
  v8.length = v7;
  if (location == 0x7FFFFFFFFFFFFFFFLL || viewRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (location == 0x7FFFFFFFFFFFFFFFLL)
    {
      length = v7;
      location = viewRange;
      v10 = viewRange == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v35.location = location;
    v35.length = length;
    v11 = NSUnionRange(v35, v8);
    location = v11.location;
    length = v11.length;
  }

  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    from = self->_from;
    if (from)
    {
      [(TUIRenderModelSection *)from config:v8.location];
      v13 = v34;
    }

    else
    {
      v13 = 0;
    }

    to = self->_to;
    if (to)
    {
      [(TUIRenderModelSection *)to config];
      v15 = v33;
    }

    else
    {
      v15 = 0;
    }

    if (v13 == v15)
    {
      v16 = self->_from;
      if (v16)
      {
        [(TUIRenderModelSection *)v16 config];
        if (v32)
        {
          v17 = self->_from;
          if (v17)
          {
            [(TUIRenderModelSection *)v17 config];
            v18 = v31;
          }

          else
          {
            v18 = 0.0;
          }

          v20 = self->_to;
          if (v20)
          {
            [(TUIRenderModelSection *)v20 config];
            v21 = v30;
          }

          else
          {
            v21 = 0.0;
          }

          v19 = v18 == v21;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }

    if (location >= &location[length])
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = [(TUIRenderModelSection *)self->_from viewModelWithIndex:location];
        v24 = [(TUIRenderModelSection *)self->_to viewModelWithIndex:location];
        v25 = v24;
        if (v23)
        {
          v26 = v19;
        }

        else
        {
          v26 = 0;
        }

        v27 = !v26 || v24 == 0;
        if (v27 || ([v23 isEqualToRenderModel:v24] & 1) == 0)
        {
          if (!v22)
          {
            v22 = objc_opt_new();
          }

          [v22 addIndex:location];
        }

        ++location;
        --length;
      }

      while (length);
    }

    v28 = [v22 copy];
    viewUpdates = self->_viewUpdates;
    self->_viewUpdates = v28;
  }

LABEL_49:
  self->_hasInvalidationsToApply = [(NSIndexSet *)self->_viewUpdates count:v8.location]!= 0;
}

- (void)debugViewIdentifiersWithPackage:(id)package
{
  packageCopy = package;
  viewUpdates = self->_viewUpdates;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_168600;
  v7[3] = &unk_25F928;
  v7[4] = self;
  v8 = packageCopy;
  v6 = packageCopy;
  [(NSIndexSet *)viewUpdates enumerateIndexesUsingBlock:v7];
}

- (void)applyToContext:(id)context
{
  contextCopy = context;
  if ([(NSIndexSet *)self->_viewUpdates count])
  {
    section = [(TUIRenderModelSection *)self->_to section];
    v6 = objc_opt_new();
    viewUpdates = self->_viewUpdates;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_168860;
    v12 = &unk_2633B8;
    v13 = v6;
    v14 = section;
    v8 = v6;
    [(NSIndexSet *)viewUpdates enumerateIndexesUsingBlock:&v9];
    [contextCopy invalidateIndexPaths:{v8, v9, v10, v11, v12}];
  }
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  [v6 appendFormat:@" from=%@", self->_from];
  [v6 appendFormat:@" to=%@", self->_to];
  [v6 appendFormat:@" viewUpdates=%@", self->_viewUpdates];
  [v6 appendFormat:@">"];
  v7 = [v6 copy];

  return v7;
}

@end