@interface TUIRenderModelView
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (NSString)description;
- (TUIRenderModelView)initWithReuseIdentifier:(id)identifier identifier:(id)a4 submodel:(id)submodel;
- (TUIRenderModelView)initWithReuseIdentifier:(id)identifier identifier:(id)a4 submodel:(id)submodel style:(id)style;
- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (id)newCurrentContainerPlusInsertsWithCurrent:(id)current update:(id)update;
- (id)newToContainerPlusDeletesWithUpdate:(id)update interests:(id)interests;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)setSize:(CGSize)size;
@end

@implementation TUIRenderModelView

- (TUIRenderModelView)initWithReuseIdentifier:(id)identifier identifier:(id)a4 submodel:(id)submodel
{
  identifierCopy = identifier;
  v9 = a4;
  submodelCopy = submodel;
  v17.receiver = self;
  v17.super_class = TUIRenderModelView;
  v11 = [(TUIRenderModelView *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    reuseIdentifier = v11->_reuseIdentifier;
    v11->_reuseIdentifier = v12;

    objc_storeStrong(&v11->_submodel, submodel);
    v14 = [v9 copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v14;
  }

  return v11;
}

- (TUIRenderModelView)initWithReuseIdentifier:(id)identifier identifier:(id)a4 submodel:(id)submodel style:(id)style
{
  identifierCopy = identifier;
  v11 = a4;
  submodelCopy = submodel;
  styleCopy = style;
  v20.receiver = self;
  v20.super_class = TUIRenderModelView;
  v14 = [(TUIRenderModelView *)&v20 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    reuseIdentifier = v14->_reuseIdentifier;
    v14->_reuseIdentifier = v15;

    objc_storeStrong(&v14->_submodel, submodel);
    objc_storeStrong(&v14->_style, style);
    v17 = [v11 copyWithZone:0];
    identifier = v14->_identifier;
    v14->_identifier = v17;
  }

  return v14;
}

- (CGSize)size
{
  submodel = self->_submodel;
  if (submodel)
  {
    [(TUIRenderModel *)submodel size];
  }

  else
  {
    width = self->_size.width;
    height = self->_size.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setSize:(CGSize)size
{
  if (self->_submodel)
  {
    [(TUIRenderModel *)self->_submodel setSize:size.width, size.height];
  }

  else
  {
    self->_size = size;
  }
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  submodel = self->_submodel;
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(TUIRenderModel *)submodel appendResourcesToCollector:collector transform:v6];
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  submodel = self->_submodel;
  v7 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v7;
  v8[2] = *&transform->tx;
  [(TUIRenderModel *)submodel appendReferencesToCollector:collector transform:v8 query:query liveTransformResolver:resolver];
}

- (NSArray)debugContainedSubmodels
{
  if (self->_submodel)
  {
    submodel = self->_submodel;
    v2 = [NSArray arrayWithObjects:&submodel count:1];
  }

  else
  {
    v2 = &__NSArray0__struct;
  }

  return v2;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  v5 = objc_alloc(objc_opt_class());
  reuseIdentifier = self->_reuseIdentifier;
  identifier = self->_identifier;
  v8 = [(TUIRenderModel *)self->_submodel copyForInitialAppearanceWithFlags:flags];
  v9 = [v5 initWithReuseIdentifier:reuseIdentifier identifier:identifier submodel:v8 style:self->_style];

  TUIRenderModelCopyProperties(v9, self);
  return v9;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  v5 = objc_alloc(objc_opt_class());
  reuseIdentifier = self->_reuseIdentifier;
  identifier = self->_identifier;
  v8 = [(TUIRenderModel *)self->_submodel copyForFinalAppearanceWithFlags:flags];
  v9 = [v5 initWithReuseIdentifier:reuseIdentifier identifier:identifier submodel:v8 style:self->_style];

  TUIRenderModelCopyProperties(v9, self);
  return v9;
}

- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags
{
  currentCopy = current;
  fromCopy = from;
  trackerCopy = tracker;
  reuseIdentifier = self->_reuseIdentifier;
  reuseIdentifier = [fromCopy reuseIdentifier];
  if (![(NSString *)reuseIdentifier isEqualToString:reuseIdentifier])
  {
    v17 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v15 = objc_opt_class();
  submodel = [fromCopy submodel];
  if (v15 != objc_opt_class())
  {
    v17 = 0;
LABEL_7:

    goto LABEL_8;
  }

  v18 = [(TUIRenderModel *)self->_submodel conformsToProtocol:&OBJC_PROTOCOL___TUIRenderModelContaining];

  if (v18)
  {
    submodel = self->_submodel;
    reuseIdentifier = [currentCopy submodel];
    submodel = [fromCopy submodel];
    v17 = [(TUIRenderModel *)submodel computeContainerUpdateCurrent:reuseIdentifier from:submodel tracker:trackerCopy flags:flags];
    goto LABEL_7;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (id)newToContainerPlusDeletesWithUpdate:(id)update interests:(id)interests
{
  v5 = [(TUIRenderModel *)self->_submodel newToContainerPlusDeletesWithUpdate:update interests:interests];
  v6 = [objc_alloc(objc_opt_class()) initWithReuseIdentifier:self->_reuseIdentifier identifier:self->_identifier submodel:v5 style:self->_style];
  TUIRenderModelCopyProperties(v6, self);

  return v6;
}

- (id)newCurrentContainerPlusInsertsWithCurrent:(id)current update:(id)update
{
  submodel = self->_submodel;
  updateCopy = update;
  currentCopy = current;
  submodel = [currentCopy submodel];
  v10 = [(TUIRenderModel *)submodel newCurrentContainerPlusInsertsWithCurrent:submodel update:updateCopy];

  v11 = [objc_alloc(objc_opt_class()) initWithReuseIdentifier:self->_reuseIdentifier identifier:self->_identifier submodel:v10 style:self->_style];
  TUIRenderModelCopyProperties(v11, currentCopy);

  return v11;
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = modelCopy;
    }

    else
    {
      v6 = objc_opt_class();
      v7 = TUIDynamicCast(v6, modelCopy);
    }

    v9 = v7;
    if (TUIRenderModelIsEqualToRenderModel(self, v7))
    {
      reuseIdentifier = [(TUIRenderModelView *)self reuseIdentifier];
      reuseIdentifier2 = [v9 reuseIdentifier];
      if (reuseIdentifier == reuseIdentifier2 || [reuseIdentifier isEqualToString:reuseIdentifier2])
      {
        style = self->_style;
        style = [v9 style];
        if (style == style)
        {
          submodel = self->_submodel;
          submodel = [v9 submodel];
          if (submodel == submodel)
          {
            v8 = 1;
          }

          else
          {
            v16 = self->_submodel;
            submodel2 = [v9 submodel];
            v8 = [(TUIRenderModel *)v16 isEqualToRenderModel:submodel2];
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelView *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  [(TUIRenderModelView *)self size];
  v12[0] = v7;
  v12[1] = v8;
  v9 = [NSValue valueWithBytes:v12 objCType:"{CGSize=dd}"];
  [v6 appendFormat:@" size=%@", v9];

  [v6 appendFormat:@" identifier=%@", self->_identifier];
  [v6 appendFormat:@" reuseIdentifier=%@", self->_reuseIdentifier];
  [v6 appendFormat:@" submodel=%@", self->_submodel];
  [v6 appendFormat:@">"];
  v10 = [v6 copy];

  return v10;
}

@end