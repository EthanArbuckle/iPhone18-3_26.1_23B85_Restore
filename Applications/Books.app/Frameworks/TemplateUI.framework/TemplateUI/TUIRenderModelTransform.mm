@interface TUIRenderModelTransform
- (BOOL)isEqualToRenderModel:(id)model;
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)frame;
- (CGSize)size;
- (NSArray)debugContainedSubmodels;
- (NSString)description;
- (TUIRenderModelTransform)initWithSubmodel:(id)submodel;
- (UIEdgeInsets)outsets;
- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags;
- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags;
- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags;
- (id)copyWithAlpha:(double)alpha;
- (id)copyWithAlpha:(double)alpha submodel:(id)submodel;
- (id)copyWithItemIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newCurrentContainerPlusInsertsWithCurrent:(id)current update:(id)update;
- (id)newToContainerPlusDeletesWithUpdate:(id)update interests:(id)interests;
- (unint64_t)hash;
- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
- (void)setCenter:(CGPoint)center;
- (void)setSize:(CGSize)size;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TUIRenderModelTransform

- (CGRect)frame
{
  if (CGRectIsNull(self->_frame))
  {
    [(TUIRenderModel *)self->_submodel size];
    v4 = v3;
    v6 = v5;
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeTranslation(&v11, v3 * -0.5, v5 * -0.5);
    t1 = v11;
    v7 = *&self->_transform.c;
    *&v8.a = *&self->_transform.a;
    *&v8.c = v7;
    *&v8.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v10, &t1, &v8);
    v11 = v10;
    CGAffineTransformMakeTranslation(&t1, self->_center.x, self->_center.y);
    v8 = v11;
    CGAffineTransformConcat(&v10, &v8, &t1);
    v11 = v10;
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = v4;
    v12.size.height = v6;
    result = CGRectApplyAffineTransform(v12, &v10);
    self->_frame = result;
  }

  else
  {
    return self->_frame;
  }

  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v5;
  *&t1.tx = *&transform->tx;
  v6 = *&self->_transform.c;
  *&v10.a = *&self->_transform.a;
  *&v10.c = v6;
  *&v10.tx = *&self->_transform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v7 = *&transform->a;
    v8 = *&transform->tx;
    *&self->_transform.c = *&transform->c;
    *&self->_transform.tx = v8;
    *&self->_transform.a = v7;
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (TUIRenderModelTransform)initWithSubmodel:(id)submodel
{
  submodelCopy = submodel;
  v12.receiver = self;
  v12.super_class = TUIRenderModelTransform;
  v6 = [(TUIRenderModelTransform *)&v12 init];
  v7 = v6;
  if (v6)
  {
    size = CGRectNull.size;
    v6->_frame.origin = CGRectNull.origin;
    v6->_frame.size = size;
    objc_storeStrong(&v6->_submodel, submodel);
    v9 = *&CGAffineTransformIdentity.c;
    *&v7->_transform.a = *&CGAffineTransformIdentity.a;
    *&v7->_transform.c = v9;
    *&v7->_transform.tx = *&CGAffineTransformIdentity.tx;
    v7->_alpha = 1.0;
    liveTransform = v7->_liveTransform;
    v7->_itemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7->_liveTransform = 0;
  }

  return v7;
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

- (id)copyWithItemIndex:(unint64_t)index
{
  if (self->_itemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_itemIndex = index;

    return self;
  }

  else
  {
    v5 = [[TUIRenderModelTransform alloc] initWithSubmodel:self->_submodel];
    v6 = *&self->_transform.tx;
    v7 = *&self->_transform.a;
    *&v5->_transform.c = *&self->_transform.c;
    *&v5->_transform.tx = v6;
    *&v5->_transform.a = v7;
    v5->_center = self->_center;
    zIndex = self->_zIndex;
    v5->_alpha = self->_alpha;
    v5->_zIndex = zIndex;
    v5->_itemIndex = index;
    v9 = [(TUIAnimationGroupCollection *)self->_animationGroups copy];
    animationGroups = v5->_animationGroups;
    v5->_animationGroups = v9;

    v11 = [(TUIAnimationGroupRenderModelCollection *)self->_animationRenderModels copy];
    animationRenderModels = v5->_animationRenderModels;
    v5->_animationRenderModels = v11;

    objc_storeStrong(&v5->_liveTransform, self->_liveTransform);
    objc_storeStrong(&v5->_refId, self->_refId);
    objc_storeStrong(&v5->_refInstance, self->_refInstance);
    v13 = *&self->_outsets.bottom;
    *&v5->_outsets.top = *&self->_outsets.top;
    *&v5->_outsets.bottom = v13;
    return v5;
  }
}

- (id)copyWithAlpha:(double)alpha
{
  if (self->_alpha == alpha)
  {

    return self;
  }

  else
  {
    v5 = [[TUIRenderModelTransform alloc] initWithSubmodel:self->_submodel];
    v6 = *&self->_transform.a;
    v7 = *&self->_transform.tx;
    *&v5->_transform.c = *&self->_transform.c;
    *&v5->_transform.tx = v7;
    *&v5->_transform.a = v6;
    v5->_center = self->_center;
    zIndex = self->_zIndex;
    v5->_alpha = alpha;
    v5->_zIndex = zIndex;
    v5->_itemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [(TUIAnimationGroupCollection *)self->_animationGroups copy];
    animationGroups = v5->_animationGroups;
    v5->_animationGroups = v9;

    v11 = [(TUIAnimationGroupRenderModelCollection *)self->_animationRenderModels copy];
    animationRenderModels = v5->_animationRenderModels;
    v5->_animationRenderModels = v11;

    objc_storeStrong(&v5->_liveTransform, self->_liveTransform);
    objc_storeStrong(&v5->_refId, self->_refId);
    objc_storeStrong(&v5->_refInstance, self->_refInstance);
    v13 = *&self->_outsets.bottom;
    *&v5->_outsets.top = *&self->_outsets.top;
    *&v5->_outsets.bottom = v13;
    return v5;
  }
}

- (id)copyWithAlpha:(double)alpha submodel:(id)submodel
{
  submodelCopy = submodel;
  if (self->_alpha == alpha && ((submodel = self->_submodel, submodel == submodelCopy) || [(TUIRenderModel *)submodel isEqual:submodelCopy]))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[TUIRenderModelTransform alloc] initWithSubmodel:submodelCopy];
    v9 = *&self->_transform.a;
    v10 = *&self->_transform.tx;
    *&selfCopy->_transform.c = *&self->_transform.c;
    *&selfCopy->_transform.tx = v10;
    *&selfCopy->_transform.a = v9;
    selfCopy->_center = self->_center;
    zIndex = self->_zIndex;
    selfCopy->_alpha = alpha;
    selfCopy->_zIndex = zIndex;
    selfCopy->_itemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12 = [(TUIAnimationGroupCollection *)self->_animationGroups copy];
    animationGroups = selfCopy->_animationGroups;
    selfCopy->_animationGroups = v12;

    v14 = [(TUIAnimationGroupRenderModelCollection *)self->_animationRenderModels copy];
    animationRenderModels = selfCopy->_animationRenderModels;
    selfCopy->_animationRenderModels = v14;

    objc_storeStrong(&selfCopy->_liveTransform, self->_liveTransform);
    objc_storeStrong(&selfCopy->_refId, self->_refId);
    objc_storeStrong(&selfCopy->_refInstance, self->_refInstance);
    v16 = *&self->_outsets.bottom;
    *&selfCopy->_outsets.top = *&self->_outsets.top;
    *&selfCopy->_outsets.bottom = v16;
  }

  return selfCopy;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TUIRenderModel *)self->_submodel size];
  if (width != v7 || height != v6)
  {
    [(TUIRenderModel *)self->_submodel setSize:width, height];
    size = CGRectNull.size;
    self->_frame.origin = CGRectNull.origin;
    self->_frame.size = size;
  }
}

- (CGSize)size
{
  [(TUIRenderModel *)self->_submodel size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  collectorCopy = collector;
  [(TUIRenderModelTransform *)self size];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, v7 * -0.5, v8 * -0.5);
  t1 = v14;
  v9 = *&self->_transform.c;
  *&v11.a = *&self->_transform.a;
  *&v11.c = v9;
  *&v11.tx = *&self->_transform.tx;
  CGAffineTransformConcat(&v13, &t1, &v11);
  v14 = v13;
  CGAffineTransformMakeTranslation(&t1, self->_center.x, self->_center.y);
  v11 = v14;
  CGAffineTransformConcat(&v13, &v11, &t1);
  v14 = v13;
  t1 = v13;
  v10 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v10;
  *&v11.tx = *&transform->tx;
  CGAffineTransformConcat(&v13, &t1, &v11);
  v14 = v13;
  [(TUIRenderModel *)self->_submodel appendResourcesToCollector:collectorCopy transform:&v13];
}

- (void)appendReferencesToCollector:(id)collector transform:(CGAffineTransform *)transform query:(id)query liveTransformResolver:(id)resolver
{
  collectorCopy = collector;
  queryCopy = query;
  resolverCopy = resolver;
  [(TUIRenderModelTransform *)self size];
  v14 = v13;
  v16 = v15;
  if (queryCopy && (refId = self->_refId, refInstance = self->_refInstance, -[TUIRenderModelTransform identifier](self, "identifier"), v19 = objc_claimAutoreleasedReturnValue(), LODWORD(refId) = [queryCopy matchesRefId:refId refInstance:refInstance identifier:v19], v19, !refId))
  {
    memset(&v60, 0, sizeof(v60));
    CGAffineTransformMakeTranslation(&v60, v14 * -0.5, v16 * -0.5);
    t1 = v60;
    v30 = *&self->_transform.c;
    *&t2.a = *&self->_transform.a;
    *&t2.c = v30;
    *&t2.tx = *&self->_transform.tx;
    CGAffineTransformConcat(&v59, &t1, &t2);
    v60 = v59;
    CGAffineTransformMakeTranslation(&t1, self->_center.x, self->_center.y);
    t2 = v60;
    CGAffineTransformConcat(&v59, &t2, &t1);
    v60 = v59;
    t1 = v59;
    v31 = *&transform->c;
    *&t2.a = *&transform->a;
    *&t2.c = v31;
    *&t2.tx = *&transform->tx;
    CGAffineTransformConcat(&v59, &t1, &t2);
    v60 = v59;
    [(TUIRenderModel *)self->_submodel appendReferencesToCollector:collectorCopy transform:&v59 query:queryCopy liveTransformResolver:resolverCopy];
  }

  else
  {
    liveTransform = [(TUIRenderModelTransform *)self liveTransform];

    if (liveTransform)
    {
      v21 = [resolverCopy liveLayoutAttributesForRenderModel:self];
      [v21 center];
      v23 = v22;
      [v21 center];
      CGAffineTransformMakeTranslation(&v60, v23, v24);
      v51 = *&v60.c;
      v53 = *&v60.a;
      v50 = *&v60.tx;
      [v21 size];
      v55 = v25;
      v56 = v26;

      v28 = v50;
      v27 = v51;
      v29 = v53;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v60, self->_center.x, self->_center.y);
      v29 = *&v60.a;
      v27 = *&v60.c;
      v28 = *&v60.tx;
      v55 = v14;
      v56 = v16;
    }

    *&v59.a = v29;
    *&v59.c = v27;
    *&v59.tx = v28;
    v32 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v32;
    *&t1.tx = *&transform->tx;
    CGAffineTransformConcat(&v60, &v59, &t1);
    v33 = *&self->_transform.c;
    *&v59.a = *&self->_transform.a;
    *&v59.c = v33;
    *&v59.tx = *&self->_transform.tx;
    t1 = v60;
    CGAffineTransformConcat(&v60, &v59, &t1);
    a = v60.a;
    b = v60.b;
    c = v60.c;
    d = v60.d;
    tx = v60.tx;
    ty = v60.ty;
    y = CGPointZero.y;
    v41 = v60.tx + v60.c * y + v60.a * CGPointZero.x;
    v42 = v60.ty + v60.d * y + v60.b * CGPointZero.x;
    CGAffineTransformMakeTranslation(&v59, -v41, -v42);
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    CGAffineTransformConcat(&v60, &t1, &v59);
    v43 = v60.tx;
    v44 = v60.ty;
    v52 = *&v60.c;
    v54 = *&v60.a;
    v45 = objc_alloc_init(TUIRenderReferenceTransform);
    [(TUIRenderReferenceTransform *)v45 setRenderModel:self->_submodel];
    [(TUIRenderReferenceTransform *)v45 setSize:v55, v56];
    *&v60.a = v54;
    *&v60.c = v52;
    v60.tx = v43;
    v60.ty = v44;
    [(TUIRenderReferenceTransform *)v45 setTransform:&v60];
    [(TUIRenderReferenceTransform *)v45 setCenter:v41, v42];
    v46 = [TUIRenderReferenceIdentifier alloc];
    uUID = [queryCopy UUID];
    v48 = [queryCopy uid];
    v49 = [(TUIRenderReferenceIdentifier *)v46 initWithUUID:uUID uid:v48 refId:self->_refId refInstance:self->_refInstance];
    [collectorCopy appendReference:v45 withIdentifier:v49];
  }
}

- (void)setCenter:(CGPoint)center
{
  if (center.x != self->_center.x || center.y != self->_center.y)
  {
    x = center.x;
    y = center.y;
    if (!CGRectIsNull(self->_frame))
    {
      v5.f64[0] = x;
      v5.f64[1] = y;
      self->_frame.origin = vaddq_f64(self->_frame.origin, vsubq_f64(v5, self->_center));
    }

    self->_center.x = x;
    self->_center.y = y;
  }
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_class())
    {
      v8 = modelCopy;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = TUIDynamicCast(v7, modelCopy);
    }

    v10 = v8;
    if (!TUIRenderModelIsEqualToRenderModel(self, v8))
    {
      goto LABEL_23;
    }

    [(TUIRenderModelTransform *)self transform];
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t2, 0, sizeof(t2));
    }

    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      goto LABEL_23;
    }

    [(TUIRenderModelTransform *)self center];
    v12 = v11;
    v14 = v13;
    [v10 center];
    v9 = 0;
    if (v12 != v16 || v14 != v15)
    {
      goto LABEL_24;
    }

    zIndex = [(TUIRenderModelTransform *)self zIndex];
    if (zIndex != [v10 zIndex])
    {
      goto LABEL_23;
    }

    [(TUIRenderModelTransform *)self alpha];
    v19 = v18;
    [v10 alpha];
    if (v19 != v20)
    {
      goto LABEL_23;
    }

    itemIndex = [(TUIRenderModelTransform *)self itemIndex];
    if (itemIndex != [v10 itemIndex])
    {
      goto LABEL_23;
    }

    refId = [(TUIRenderModelTransform *)self refId];
    refId2 = [v10 refId];
    if (refId != refId2)
    {
      refId3 = [(TUIRenderModelTransform *)self refId];
      refId4 = [v10 refId];
      if (![refId3 isEqualToString:refId4])
      {

        v9 = 0;
        goto LABEL_32;
      }

      v33 = refId3;
    }

    refInstance = [(TUIRenderModelTransform *)self refInstance];
    refInstance2 = [v10 refInstance];
    v27 = refInstance2;
    if (refInstance == refInstance2)
    {

      if (refId != refId2)
      {
      }
    }

    else
    {
      refInstance3 = [(TUIRenderModelTransform *)self refInstance];
      refInstance4 = [v10 refInstance];
      v35 = [refInstance3 isEqualToString:refInstance4];

      if (refId != refId2)
      {
      }

      if ((v35 & 1) == 0)
      {
LABEL_23:
        v9 = 0;
LABEL_24:

        goto LABEL_25;
      }
    }

    submodel = self->_submodel;
    refId = [v10 submodel];
    if (submodel == refId)
    {
      v9 = 1;
      goto LABEL_34;
    }

    v32 = self->_submodel;
    refId2 = [v10 submodel];
    v9 = [(TUIRenderModel *)v32 isEqualToRenderModel:refId2];
LABEL_32:

LABEL_34:
    goto LABEL_24;
  }

  v9 = 0;
LABEL_25:

  return v9;
}

- (id)copyForInitialAppearanceWithFlags:(unint64_t)flags
{
  handlesAlphaForInitialAppearance = [(TUIRenderModel *)self->_submodel handlesAlphaForInitialAppearance];
  if ((flags & 1) != 0 || (alpha = 0.0, handlesAlphaForInitialAppearance))
  {
    alpha = self->_alpha;
  }

  flags = [(TUIRenderModel *)self->_submodel copyForInitialAppearanceWithFlags:handlesAlphaForInitialAppearance ^ 1 | flags];
  v8 = [(TUIRenderModelTransform *)self copyWithAlpha:flags submodel:alpha];

  return v8;
}

- (id)copyForFinalAppearanceWithFlags:(unint64_t)flags
{
  handlesAlphaForFinalAppearance = [(TUIRenderModel *)self->_submodel handlesAlphaForFinalAppearance];
  if ((flags & 1) != 0 || (alpha = 0.0, handlesAlphaForFinalAppearance))
  {
    alpha = self->_alpha;
  }

  flags = [(TUIRenderModel *)self->_submodel copyForFinalAppearanceWithFlags:handlesAlphaForFinalAppearance ^ 1 | flags];
  v8 = [(TUIRenderModelTransform *)self copyWithAlpha:flags submodel:alpha];

  return v8;
}

- (id)computeContainerUpdateCurrent:(id)current from:(id)from tracker:(id)tracker flags:(unint64_t)flags
{
  currentCopy = current;
  fromCopy = from;
  trackerCopy = tracker;
  v13 = objc_opt_class();
  submodel = [fromCopy submodel];
  if (v13 != objc_opt_class())
  {
    v15 = 0;
LABEL_5:

    goto LABEL_6;
  }

  v16 = [(TUIRenderModel *)self->_submodel conformsToProtocol:&OBJC_PROTOCOL___TUIRenderModelContaining];

  if (v16)
  {
    submodel = self->_submodel;
    submodel = [currentCopy submodel];
    submodel2 = [fromCopy submodel];
    v15 = [(TUIRenderModel *)submodel computeContainerUpdateCurrent:submodel from:submodel2 tracker:trackerCopy flags:flags];

    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (id)newToContainerPlusDeletesWithUpdate:(id)update interests:(id)interests
{
  v5 = [(TUIRenderModel *)self->_submodel newToContainerPlusDeletesWithUpdate:update interests:interests];
  v6 = [(TUIRenderModelTransform *)self copyWithAlpha:v5 submodel:self->_alpha];

  return v6;
}

- (id)newCurrentContainerPlusInsertsWithCurrent:(id)current update:(id)update
{
  submodel = self->_submodel;
  updateCopy = update;
  currentCopy = current;
  submodel = [currentCopy submodel];
  v9 = [(TUIRenderModel *)submodel newCurrentContainerPlusInsertsWithCurrent:submodel update:updateCopy];

  [currentCopy alpha];
  v10 = [currentCopy copyWithAlpha:v9 submodel:?];

  return v10;
}

- (unint64_t)hash
{
  identifier = [(TUIRenderModelTransform *)self identifier];
  v3 = TUIIdentifierHash(identifier);

  return v3;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p", v5, self];

  if (self->_refId)
  {
    [v6 appendFormat:@" refid=%@", self->_refId];
  }

  if (self->_refInstance)
  {
    [v6 appendFormat:@" refinst=%@", self->_refInstance];
  }

  v7 = [NSNumber numberWithInteger:self->_zIndex];
  [v6 appendFormat:@" zIndex=%@", v7];

  v8 = [NSNumber numberWithDouble:self->_alpha];
  [v6 appendFormat:@" alpha=%@", v8];

  v9 = NSStringFromCGPoint(self->_center);
  [v6 appendFormat:@" center=%@", v9];

  v10 = *&self->_transform.c;
  *&transform.a = *&self->_transform.a;
  *&transform.c = v10;
  *&transform.tx = *&self->_transform.tx;
  v11 = NSStringFromCGAffineTransform(&transform);
  [v6 appendFormat:@" transform=%@", v11];

  [v6 appendFormat:@" submodel=%@", self->_submodel];
  [v6 appendFormat:@">"];
  v12 = [v6 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSubmodel:", self->_submodel}];
  v5 = *&self->_transform.tx;
  v6 = *&self->_transform.a;
  *(v4 + 11) = *&self->_transform.c;
  *(v4 + 12) = v5;
  *(v4 + 10) = v6;
  *(v4 + 7) = self->_center;
  *(v4 + 9) = self->_zIndex;
  *(v4 + 7) = *&self->_alpha;
  *(v4 + 10) = self->_itemIndex;
  v7 = [(TUIAnimationGroupCollection *)self->_animationGroups copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  v9 = [(TUIAnimationGroupRenderModelCollection *)self->_animationRenderModels copy];
  v10 = *(v4 + 8);
  *(v4 + 8) = v9;

  objc_storeStrong(v4 + 11, self->_liveTransform);
  objc_storeStrong(v4 + 12, self->_refId);
  objc_storeStrong(v4 + 13, self->_refInstance);
  v11 = *&self->_outsets.bottom;
  *(v4 + 8) = *&self->_outsets.top;
  *(v4 + 9) = v11;
  return v4;
}

- (CGAffineTransform)transform
{
  v3 = *&self[3].tx;
  *&retstr->a = *&self[3].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].a;
  return self;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)outsets
{
  top = self->_outsets.top;
  left = self->_outsets.left;
  bottom = self->_outsets.bottom;
  right = self->_outsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end