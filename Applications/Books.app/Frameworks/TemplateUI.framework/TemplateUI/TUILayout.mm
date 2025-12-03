@interface TUILayout
+ (void)initialize;
- ($E297CC25127479E857BE23A4F8632EA4)aspectConstrainedSpecifiedHeight;
- ($E297CC25127479E857BE23A4F8632EA4)aspectConstrainedSpecifiedWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeightConsideringTransform;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidthConsideringTransform;
- ($E297CC25127479E857BE23A4F8632EA4)computedHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedWidth;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedHeight;
- ($E297CC25127479E857BE23A4F8632EA4)specifiedWidth;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeight;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidthConsideringSpecified;
- (BOOL)isDescendentOfLayout:(id)layout;
- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge;
- (BOOL)shouldUseSubviewRenderModelWithContext:(id)context;
- (CGAffineTransform)_computedFrameTransform;
- (CGAffineTransform)computedTransformInAncestorLayout:(SEL)layout;
- (CGAffineTransform)renderTransform;
- (CGAffineTransform)specifiedTransform;
- (CGPoint)computedOrigin;
- (CGRect)computedBounds;
- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)flags;
- (CGRect)computedBoundsWithFlags:(unint64_t)flags;
- (CGRect)computedErasableBounds;
- (CGRect)computedFrame;
- (CGSize)computedNaturalSize;
- (CGSize)computedTransformedSize;
- (CGSize)renderModelSizeWithContext:(id)context;
- (CGSize)validatedIntrinsicSize;
- (NSString)description;
- (TUIGuide)guideBottom;
- (TUIGuide)guideLeading;
- (TUIGuide)guideTop;
- (TUIGuide)guideTrailing;
- (TUIGuideLayoutController)guideLayoutController;
- (TUILayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (TUILayout)layoutAncestor;
- (TUILayoutContaining)parent;
- (TUILayoutController)controller;
- (UIEdgeInsets)erasableInsetsForContentsScale:(double)scale;
- (double)_computeHeight:(BOOL)height;
- (double)_computeWidth:(BOOL)width;
- (double)computeDerivedHeight;
- (double)computeDerivedWidth;
- (double)computedScale;
- (double)containingHeight;
- (double)containingMaxWidth;
- (double)containingWidth;
- (double)flexedHeight;
- (double)flexedWidth;
- (id)_transformedRenderModel:(id)model transform:(CGAffineTransform *)transform context:(id)context allowCache:(BOOL)cache;
- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout;
- (id)computedRefIdWithContext:(id)context;
- (id)computedRefInstanceWithContext:(id)context;
- (id)guideProvider;
- (id)hoverIdentifierWithName:(id)name;
- (id)inheritedRefIdWithContext:(id)context;
- (id)inheritedRefInstanceWithContext:(id)context;
- (id)modelIdentifierForEnclosingScrollable;
- (id)newLiveTransform:(CGAffineTransform *)transform;
- (id)recursiveDescription;
- (id)rootLayout;
- (int64_t)computeZIndexWithDefault:(int64_t)default;
- (unint64_t)computedLayoutDirection;
- (unint64_t)pinPositionFromLiveTransformKind:(unint64_t)kind;
- (void)_computeAspectConstrainedSpecifiedWidthHeight;
- (void)_updateChildren;
- (void)_validateLayout;
- (void)_validateLayoutWithBlock:(id)block;
- (void)appendAnchorsToSet:(id)set inRoot:(id)root;
- (void)appendChildAnchorsToSet:(id)set inRoot:(id)root;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendChilden:(id)childen renderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendEmbeddedIdentifierMaps:(id)maps updateControllers:(id)controllers UUIDs:(id)ds;
- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout;
- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)array;
- (void)appendRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendRenderModelIgnoreHiddenCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models;
- (void)appendVisibleBoundsObservers:(id)observers axis:(unint64_t)axis offset:(double)offset;
- (void)computeLayout;
- (void)enumerateChildren:(id)children;
- (void)invalidateLayout;
- (void)invalidateRenderModel;
- (void)notifyChildrenScaleDidChange;
- (void)onComputedOriginDidChange;
- (void)onComputedScaleDidChange;
- (void)onContainersUpdated;
- (void)onInvalidate;
- (void)onInvalidateIntrinsicSize;
- (void)onSpecifiedHeightChanged;
- (void)onSpecifiedWidthChanged;
- (void)onViewSafeAreaInsetsDidChange;
- (void)setComputedNaturalSize:(CGSize)size;
- (void)setComputedOrigin:(CGPoint)origin;
- (void)setContainingHeight:(double)height;
- (void)setContainingMaxWidth:(double)width;
- (void)setContainingWidth:(double)width;
- (void)setFlexedHeight:(double)height;
- (void)setFlexedWidth:(double)width;
- (void)setHidden:(BOOL)hidden;
- (void)setInvalidChildren:(BOOL)children;
- (void)setSpecifiedHeightComputeInherited:(BOOL)inherited;
- (void)setSpecifiedWidthComputeInherited:(BOOL)inherited;
- (void)setSpecifiedWidthModified:(BOOL)modified;
- (void)teardown;
- (void)updateDesdendantSpecifiedWidthModifiedWithFlag:(BOOL)flag;
- (void)updateGuides;
- (void)updateParent:(id)parent;
- (void)validateGuides;
- (void)validateLayout;
@end

@implementation TUILayout

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if (qword_2E6520 != -1)
    {
      sub_19B854();
    }

    bytes = [qword_2E6518 bytes];
    v3 = bytes[1];
    if (v3)
    {
      v4 = bytes;
      v5 = 0;
      v6 = (bytes + 2);
      while (strcmp("layout", &v4[*&v6[v5]]))
      {
        v5 += 4;
        if (4 * v3 == v5)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v7 = &v4[*&v6[4 * v3 + v5]];
LABEL_11:
      v9 = 0;
      TUILayoutStorageDataset = v7;
      while (strcmp("imagelayout", &v4[*&v6[4 * v9]]))
      {
        if (v3 == ++v9)
        {
          v8 = 0;
          goto LABEL_16;
        }
      }

      v8 = &v4[*&v6[4 * v3 + 4 * v9]];
    }

    else
    {
      v8 = 0;
      TUILayoutStorageDataset = 0;
    }

LABEL_16:
    TUIImageLayoutStorageDataset = v8;
  }
}

- (id)recursiveDescription
{
  v3 = +[NSMutableString string];
  v4 = objc_autoreleasePoolPush();
  sub_108858(self, v3, 0);
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (CGAffineTransform)specifiedTransform
{
  result = self->_model;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return result;
}

- (CGAffineTransform)renderTransform
{
  result = self->_model;
  if (result)
  {
    return [(CGAffineTransform *)result renderTransform];
  }

  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return result;
}

- (void)setSpecifiedWidthComputeInherited:(BOOL)inherited
{
  if (((((*&self->_flags & 0x200) == 0) ^ inherited) & 1) == 0)
  {
    if (inherited)
    {
      v3 = 512;
    }

    else
    {
      v3 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFDFF | v3);
    [(TUILayout *)self onSpecifiedWidthChanged];
  }
}

- (void)setSpecifiedWidthModified:(BOOL)modified
{
  if (((((*&self->_flags & 0x400) == 0) ^ modified) & 1) == 0)
  {
    if (modified)
    {
      v3 = 1024;
    }

    else
    {
      v3 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFBFF | v3);
    [(TUILayout *)self onSpecifiedWidthChanged];
  }
}

- (void)setSpecifiedHeightComputeInherited:(BOOL)inherited
{
  if (((((*&self->_flags & 0x800) == 0) ^ inherited) & 1) == 0)
  {
    if (inherited)
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFF7FF | v3);
    [(TUILayout *)self onSpecifiedHeightChanged];
  }
}

- (void)onSpecifiedWidthChanged
{
  [(TUILayout *)self invalidateLayout];
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  [layoutAncestor onSpecifiedWidthChangedForChild:self];
}

- (void)onSpecifiedHeightChanged
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  [layoutAncestor onSpecifiedHeightChangedForChild:self];
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedWidth
{
  model = self->_model;
  if (model)
  {
    width = [(TUIModelLayoutable *)model width];
  }

  else
  {
    width = 0x7FC000007FC00000;
  }

  flags = self->_flags;
  if ((*&flags & 0x400) != 0)
  {
    layoutAncestor = [(TUILayout *)self layoutAncestor];
    v7 = [layoutAncestor modifiedSpecifiedWidthForChild:self];
  }

  else if ((*&flags & 0x200) != 0)
  {
    return (width & 0xFFFFFFFF00000000 | 0x7FC00000);
  }

  else
  {
    return width;
  }

  return v7;
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedHeight
{
  model = self->_model;
  if (model)
  {
    result = [(TUIModelLayoutable *)model height];
  }

  else
  {
    result = 0x7FC000007FC00000;
  }

  if ((*&self->_flags & 0x800) != 0)
  {
    return (result & 0xFFFFFFFF00000000 | 0x7FC00000);
  }

  return result;
}

- (TUILayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  modelCopy = model;
  parentCopy = parent;
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = TUILayout;
  v12 = [(TUILayout *)&v28 init];
  if (!v12)
  {
    goto LABEL_23;
  }

  v12->_storage._data = [objc_opt_class() _storageDataset] | 1;
  v13 = modelCopy;
  objc_storeStrong(&v12->_model, model);
  objc_storeWeak(&v12->_parent, parentCopy);
  objc_storeWeak(&v12->_controller, controllerCopy);
  bzero(&v12->_flags, 8uLL);
  if (v13)
  {
    [v13 width];
    v15 = v14;
    [v13 height];
    v17 = v16;
    if (parentCopy)
    {
LABEL_4:
      v18 = *&v12->_flags & 0xFFFFFDFF;
      v12->_flags = v18;
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0x200007FC00000;
    v17 = 0x200007FC00000;
    if (parentCopy)
    {
      goto LABEL_4;
    }
  }

  if ((v15 & 0x6000000000000) == 0x2000000000000)
  {
    WeakRetained = objc_loadWeakRetained(&v12->_controller);
    if ([WeakRetained shouldRootLayoutInheritWidthWhenAuto])
    {
      v20 = 512;
    }

    else
    {
      v20 = 0;
    }

    v12->_flags = (*&v12->_flags & 0xFFFFFDFF | v20);
  }

  else
  {
    *&v12->_flags &= ~0x200u;
  }

  if ((v17 & 0x6000000000000) == 0x2000000000000)
  {
    v21 = objc_loadWeakRetained(&v12->_controller);
    if ([v21 shouldRootLayoutInheritHeightWhenAuto])
    {
      v22 = 2048;
    }

    else
    {
      v22 = 0;
    }

    v12->_flags = (*&v12->_flags & 0xFFFFF7FF | v22);

    flags = v12->_flags;
    goto LABEL_19;
  }

  v18 = v12->_flags;
LABEL_18:
  flags = v18 & 0xFFFFF7FF;
  v12->_flags = flags;
LABEL_19:
  v24 = flags & 0xFFFF0FCF | 0x30;
  v12->_flags = v24;
  if (v13)
  {
    layoutDirection = [v13 layoutDirection];
    v24 = v12->_flags;
    v26 = (layoutDirection & 3) << 7;
  }

  else
  {
    v26 = 0;
  }

  v12->_flags = (v26 | v24 & 0xFFFFFE7F);
  [(TUILayout *)v12 updateGuides];

LABEL_23:
  return v12;
}

- (void)updateParent:(id)parent
{
  obj = parent;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parent, obj);
    v5 = obj;
    *&self->_flags &= ~0x400u;
  }
}

- (void)validateGuides
{
  [(TUILayout *)self updateGuides];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  children = [(TUILayout *)self children];
  v4 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v7 + 1) + 8 * v6) validateGuides];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [children countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateGuides
{
  v3 = [(TUILayout *)self box];
  guides = [v3 guides];

  guideProvider = [(TUILayout *)self guideProvider];
  if (guides && guideProvider)
  {
    leading = [guides leading];
    v6 = leading;
    if (!leading)
    {
      v6 = [guideProvider defaultGuideSpecForLayout:self edge:0];
    }

    v7 = [guideProvider guideForLayout:self spec:v6];
    [(TUILayout *)self setGuideLeading:v7];

    if (!leading)
    {
    }

    trailing = [guides trailing];
    v9 = trailing;
    if (!trailing)
    {
      v9 = [guideProvider defaultGuideSpecForLayout:self edge:1];
    }

    v10 = [guideProvider guideForLayout:self spec:v9];
    [(TUILayout *)self setGuideTrailing:v10];

    if (!trailing)
    {
    }

    v11 = [guides top];
    v12 = v11;
    if (!v11)
    {
      v12 = [guideProvider defaultGuideSpecForLayout:self edge:2];
    }

    v13 = [guideProvider guideForLayout:self spec:v12];
    [(TUILayout *)self setGuideTop:v13];

    if (!v11)
    {
    }

    bottom = [guides bottom];
    v15 = bottom;
    if (!bottom)
    {
      v15 = [guideProvider defaultGuideSpecForLayout:self edge:3];
    }

    v16 = [guideProvider guideForLayout:self spec:v15];
    [(TUILayout *)self setGuideBottom:v16];

    if (bottom)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (guideProvider)
  {
    v17 = [guideProvider defaultGuideSpecForLayout:self edge:0];
    v18 = [guideProvider guideForLayout:self spec:v17];
    [(TUILayout *)self setGuideLeading:v18];

    v19 = [guideProvider defaultGuideSpecForLayout:self edge:1];
    v20 = [guideProvider guideForLayout:self spec:v19];
    [(TUILayout *)self setGuideTrailing:v20];

    v21 = [guideProvider defaultGuideSpecForLayout:self edge:2];
    v22 = [guideProvider guideForLayout:self spec:v21];
    [(TUILayout *)self setGuideTop:v22];

    bottom = [guideProvider defaultGuideSpecForLayout:self edge:3];
    v15 = [guideProvider guideForLayout:self spec:bottom];
    [(TUILayout *)self setGuideBottom:v15];
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  [(TUILayout *)self setGuideLeading:0];
  [(TUILayout *)self setGuideTrailing:0];
  [(TUILayout *)self setGuideTop:0];
  [(TUILayout *)self setGuideBottom:0];
LABEL_23:
}

- (TUILayout)layoutAncestor
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  layout = [WeakRetained layout];

  return layout;
}

- (void)enumerateChildren:(id)children
{
  childrenCopy = children;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_containers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) enumerateLayout:{childrenCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateChildren
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1097C0;
  v6[3] = &unk_261D50;
  v3 = objc_opt_new();
  v7 = v3;
  [(TUILayout *)self enumerateChildren:v6];
  v4 = [v3 copy];
  children = self->_children;
  self->_children = v4;
}

- (void)setHidden:(BOOL)hidden
{
  if (hidden)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFF7 | v3);
}

- (unint64_t)computedLayoutDirection
{
  computedLayoutDirection = ((self->_flags >> 7) & 3);
  if (!computedLayoutDirection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);

    if (WeakRetained)
    {
      layoutAncestor = [(TUILayout *)self layoutAncestor];
      computedLayoutDirection = [layoutAncestor computedLayoutDirection];
    }

    else
    {
      return 1;
    }
  }

  return computedLayoutDirection;
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidth
{
  if ((*&self->_flags & 0x10) != 0)
  {
    computeIntrinsicWidth = [(TUILayout *)self computeIntrinsicWidth];
    v6 = v5;
    p_storage = &self->_storage;
    if ((v5 & 0x7000000000000) == 0x2000000000000)
    {
      v8 = TUI::Util::PartialStruct::Storage::dataForKey(p_storage, 1u);
      if (v8)
      {
        DataForKey = v8;
        TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 1u);
LABEL_6:
        *DataForKey = computeIntrinsicWidth;
        DataForKey[1] = v6;
      }
    }

    else
    {
      DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(p_storage, 1u, 0x10uLL, 1);
      if (DataForKey)
      {
        goto LABEL_6;
      }
    }

    *&self->_flags &= ~0x10u;
  }

  v10 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 1u);
  v11 = &TUILengthNull;
  if (v10)
  {
    v11 = v10;
  }

  return *v11;
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeight
{
  if ((*&self->_flags & 0x20) != 0)
  {
    computeIntrinsicHeight = [(TUILayout *)self computeIntrinsicHeight];
    v6 = v5;
    p_storage = &self->_storage;
    if ((v5 & 0x7000000000000) == 0x2000000000000)
    {
      v8 = TUI::Util::PartialStruct::Storage::dataForKey(p_storage, 0xCu);
      if (v8)
      {
        DataForKey = v8;
        TUI::Util::PartialStruct::Storage::markAsDefault(&self->_storage._data, 0xCu);
LABEL_6:
        *DataForKey = computeIntrinsicHeight;
        DataForKey[1] = v6;
      }
    }

    else
    {
      DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(p_storage, 0xCu, 0x10uLL, 1);
      if (DataForKey)
      {
        goto LABEL_6;
      }
    }

    *&self->_flags &= ~0x20u;
  }

  v10 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0xCu);
  v11 = &TUILengthNull;
  if (v10)
  {
    v11 = v10;
  }

  return *v11;
}

- (CGSize)validatedIntrinsicSize
{
  v3 = COERCE_FLOAT([(TUILayout *)self validatedIntrinsicWidthConsideringSpecified]);
  v4 = COERCE_FLOAT([(TUILayout *)self validatedIntrinsicHeightConsideringSpecified]);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (TUIGuide)guideLeading
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 9u);

  return ObjectForKey;
}

- (TUIGuide)guideTrailing
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 8u);

  return ObjectForKey;
}

- (TUIGuide)guideTop
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 3u);

  return ObjectForKey;
}

- (TUIGuide)guideBottom
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 4u);

  return ObjectForKey;
}

- (TUIGuideLayoutController)guideLayoutController
{
  ObjectForKey = TUI::Util::PartialStruct::Storage::getObjectForKey(&self->_storage, 0xBu);

  return ObjectForKey;
}

- (void)setFlexedWidth:(double)width
{
  v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 6u);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = NAN;
  }

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, width))
  {
    widthCopy = width;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 6u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = widthCopy;
    }

    [(TUILayout *)self invalidateLayout];
  }
}

- (double)flexedWidth
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 6u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return NAN;
  }
}

- (void)setFlexedHeight:(double)height
{
  v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 5u);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = NAN;
  }

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, height))
  {
    heightCopy = height;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 5u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = heightCopy;
    }

    [(TUILayout *)self invalidateLayout];
  }
}

- (double)flexedHeight
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 5u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return NAN;
  }
}

- (void)setContainingWidth:(double)width
{
  v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = NAN;
  }

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, width))
  {
    widthCopy = width;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = widthCopy;
    }

    [(TUILayout *)self onContainingWidthChange];

    [(TUILayout *)self invalidateLayout];
  }
}

- (double)containingWidth
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return NAN;
  }
}

- (void)setContainingMaxWidth:(double)width
{
  v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 2u);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = NAN;
  }

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, width))
  {
    widthCopy = width;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 2u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = widthCopy;
    }

    [(TUILayout *)self invalidateLayout];
  }
}

- (double)containingMaxWidth
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 2u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return NAN;
  }
}

- (void)setContainingHeight:(double)height
{
  v5 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 7u);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = NAN;
  }

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, height))
  {
    heightCopy = height;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 7u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = heightCopy;
    }

    [(TUILayout *)self invalidateLayout];
  }
}

- (double)containingHeight
{
  v2 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 7u);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return NAN;
  }
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidthConsideringSpecified
{
  specifiedWidth = [(TUILayout *)self specifiedWidth];
  v6 = v5;
  validatedIntrinsicWidth = [(TUILayout *)self validatedIntrinsicWidth];

  return TUILengthCombineSpecifiedAndIntrinsic(specifiedWidth, v6, validatedIntrinsicWidth, v7);
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified
{
  specifiedHeight = [(TUILayout *)self specifiedHeight];
  v6 = v5;
  validatedIntrinsicHeight = [(TUILayout *)self validatedIntrinsicHeight];

  return TUILengthCombineSpecifiedAndIntrinsic(specifiedHeight, v6, validatedIntrinsicHeight, v7);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedWidth
{
  [(TUILayout *)self aspectConstrainedSpecifiedWidth];
  v5 = v4 & 0x7000000000000;
  aspectConstrainedSpecifiedWidth = [(TUILayout *)self aspectConstrainedSpecifiedWidth];
  if (v5 < 0x2000000000001)
  {
    [(TUILayout *)self computedContentWidthConsideringTransform];

    TUILengthComputedWithSpecifiedAndContent();
  }

  else
  {
    LODWORD(v7) = HIDWORD(aspectConstrainedSpecifiedWidth);
    [(TUILayout *)self aspectConstrainedSpecifiedWidth];
    LODWORD(v9) = v8;
    aspectConstrainedSpecifiedWidth2 = [(TUILayout *)self aspectConstrainedSpecifiedWidth];
    [(TUILayout *)self computedTransformedSize];
    if (v11 <= -3.40282347e38)
    {
      v12 = 4286578687;
    }

    else
    {
      v12 = 2139095039;
      v13 = v11 < 3.40282347e38;
      v14 = v11;
      if (v13)
      {
        v12 = LODWORD(v14);
      }
    }

    return (v12 | aspectConstrainedSpecifiedWidth2 & 0xFFFFFFFF00000000);
  }

  return result;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedHeight
{
  [(TUILayout *)self aspectConstrainedSpecifiedHeight];
  v5 = v4 & 0x7000000000000;
  aspectConstrainedSpecifiedHeight = [(TUILayout *)self aspectConstrainedSpecifiedHeight];
  if (v5 < 0x2000000000001)
  {
    [(TUILayout *)self computedContentHeightConsideringTransform];

    TUILengthComputedWithSpecifiedAndContent();
  }

  else
  {
    LODWORD(v7) = HIDWORD(aspectConstrainedSpecifiedHeight);
    [(TUILayout *)self aspectConstrainedSpecifiedHeight];
    LODWORD(v9) = v8;
    aspectConstrainedSpecifiedHeight2 = [(TUILayout *)self aspectConstrainedSpecifiedHeight];
    [(TUILayout *)self computedTransformedSize];
    if (v11 <= -3.40282347e38)
    {
      v12 = 4286578687;
    }

    else
    {
      v12 = 2139095039;
      if (v11 < 3.40282347e38)
      {
        *&v13 = v11;
        v12 = v13;
      }
    }

    return (v12 | aspectConstrainedSpecifiedHeight2 & 0xFFFFFFFF00000000);
  }

  return result;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidthConsideringTransform
{
  [(TUILayout *)self computedTransform];
  if (CGAffineTransformIsIdentity(&v8))
  {
    return [(TUILayout *)self computedContentWidth];
  }

  [(TUILayout *)self computedTransformedSize];
  if (v5 <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (v5 < 3.40282347e38)
    {
      *&v6 = v5;
      return (v6 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeightConsideringTransform
{
  [(TUILayout *)self computedTransform];
  if (CGAffineTransformIsIdentity(&v8))
  {
    return [(TUILayout *)self computedContentHeight];
  }

  [(TUILayout *)self computedTransformedSize];
  if (v5 <= -3.40282347e38)
  {
    v7 = 4286578687;
  }

  else
  {
    if (v5 < 3.40282347e38)
    {
      *&v6 = v5;
      return (v6 | 0x7FC0000000000000);
    }

    v7 = 2139095039;
  }

  return (v7 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  [(TUILayout *)self computedTransformedSize];
  if (v3 <= -3.40282347e38)
  {
    v6 = 4286578687;
  }

  else
  {
    if (v3 < 3.40282347e38)
    {
      *&v4 = v3;
      return (v4 | 0x7FC0000000000000);
    }

    v6 = 2139095039;
  }

  return (v6 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  [(TUILayout *)self computedTransformedSize];
  if (v3 <= -3.40282347e38)
  {
    v6 = 4286578687;
  }

  else
  {
    if (v3 < 3.40282347e38)
    {
      *&v4 = v3;
      return (v4 | 0x7FC0000000000000);
    }

    v6 = 2139095039;
  }

  return (v6 & 0xFFFFFFFFFFFFLL | 0x7FC0000000000000);
}

- (CGRect)computedFrame
{
  [(TUILayout *)self computedBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TUILayout *)self _computedFrameTransform];
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  return CGRectApplyAffineTransform(v12, &v11);
}

- (CGRect)computedBounds
{
  width = self->_computedNaturalSize.width;
  height = self->_computedNaturalSize.height;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)computedBoundsWithFlags:(unint64_t)flags
{
  [(TUILayout *)self computedBoundsPrimitiveWithFlags:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (flags)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [(TUILayout *)self computedBoundsChildrenWithFlags:flags];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          [v17 computedBoundsWithFlags:flags];
          v22 = v21;
          if (v21 > 0.0)
          {
            v23 = v20;
            if (v20 > 0.0)
            {
              v24 = v18;
              v25 = v19;
              memset(&v30[1], 0, sizeof(CGAffineTransform));
              if (v17)
              {
                [v17 _computedFrameTransform];
              }

              v30[0] = v30[1];
              v36.origin.x = v24;
              v36.origin.y = v25;
              v36.size.width = v22;
              v36.size.height = v23;
              v40 = CGRectApplyAffineTransform(v36, v30);
              v37.origin.x = x;
              v37.origin.y = y;
              v37.size.width = width;
              v37.size.height = height;
              v38 = CGRectUnion(v37, v40);
              x = v38.origin.x;
              y = v38.origin.y;
              width = v38.size.width;
              height = v38.size.height;
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }
  }

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)flags
{
  v3 = 0.0;
  v4 = fmax(self->_computedNaturalSize.width, 0.0);
  v5 = fmax(self->_computedNaturalSize.height, 0.0);
  v6 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v6;
  result.origin.x = v3;
  return result;
}

- (double)computedScale
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v3 = layoutAncestor;
  if (layoutAncestor)
  {
    [layoutAncestor computedScale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (void)onComputedScaleDidChange
{
  [(TUILayout *)self invalidateLayout];

  [(TUILayout *)self notifyChildrenScaleDidChange];
}

- (void)notifyChildrenScaleDidChange
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  children = [(TUILayout *)self children];
  v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v6 + 1) + 8 * v5) onComputedScaleDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)onViewSafeAreaInsetsDidChange
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  children = [(TUILayout *)self children];
  v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v6 + 1) + 8 * v5) onViewSafeAreaInsetsDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (CGAffineTransform)_computedFrameTransform
{
  [(TUILayout *)self specifiedTransform];
  CGAffineTransformMakeTranslation(&v6, self->_computedOrigin.x, self->_computedOrigin.y);
  return CGAffineTransformConcat(retstr, &t1, &v6);
}

- (CGAffineTransform)computedTransformInAncestorLayout:(SEL)layout
{
  v6 = a4;
  if (v6 == self)
  {
    v12 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v12;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
    [(TUILayout *)self _computedFrameTransform];
    layoutAncestor = [(TUILayout *)self layoutAncestor];
    v8 = layoutAncestor;
    if (!layoutAncestor || layoutAncestor == v6)
    {
      layoutAncestor2 = layoutAncestor;
    }

    else
    {
      do
      {
        v9 = *&retstr->c;
        *&t1.a = *&retstr->a;
        *&t1.c = v9;
        *&t1.tx = *&retstr->tx;
        [v8 _computedFrameTransform];
        CGAffineTransformConcat(&v16, &t1, &v14);
        v10 = *&v16.c;
        *&retstr->a = *&v16.a;
        *&retstr->c = v10;
        *&retstr->tx = *&v16.tx;
        layoutAncestor2 = [v8 layoutAncestor];

        if (!layoutAncestor2)
        {
          break;
        }

        v8 = layoutAncestor2;
      }

      while (layoutAncestor2 != v6);
    }
  }

  return result;
}

- (CGSize)computedTransformedSize
{
  memset(&v12, 0, sizeof(v12));
  [(TUILayout *)self computedTransform];
  computedNaturalSize = self->_computedNaturalSize;
  v3 = *&CGAffineTransformIdentity.c;
  *&t1.a = *&CGAffineTransformIdentity.a;
  *&t1.c = v3;
  *&t1.tx = *&CGAffineTransformIdentity.tx;
  t2 = v12;
  if (CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v4 = computedNaturalSize;
  }

  else
  {
    [(TUILayout *)self computedTransform];
    TUITransformedCornersOfRect(&t1, &t2.a, v8.f64, v7.f64, v9.f64, 0.0, 0.0, computedNaturalSize.width, computedNaturalSize.height);
    v4 = vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(*&t2.a, v9), vmaxnmq_f64(v8, v7)), vminnmq_f64(vminnmq_f64(*&t2.a, v9), vminnmq_f64(v8, v7)));
  }

  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

- (CGRect)computedErasableBounds
{
  [(TUILayout *)self computedErasableBoundsPrimitive];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  children = [(TUILayout *)self children];
  v12 = [children countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(children);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if (([v15 hidden] & 1) == 0)
        {
          [v15 computedErasableBounds];
          v34 = v17;
          v35 = v16;
          v19 = v18;
          v21 = v20;
          [v15 computedTransformedSize];
          v23 = v22;
          v25 = v24;
          memset(&v39, 0, sizeof(v39));
          CGAffineTransformMakeTranslation(&v39, -(v22 * 0.5), -(v24 * 0.5));
          t1 = v39;
          if (v15)
          {
            [v15 renderTransform];
          }

          else
          {
            memset(&t2, 0, sizeof(t2));
          }

          CGAffineTransformConcat(&v38, &t1, &t2);
          v39 = v38;
          t1 = v38;
          if (v15)
          {
            [v15 computedTransform];
          }

          else
          {
            memset(&t2, 0, sizeof(t2));
          }

          r1 = height;
          CGAffineTransformConcat(&v38, &t1, &t2);
          v39 = v38;
          t1 = v38;
          [v15 computedOrigin];
          v27 = v26;
          [v15 computedOrigin];
          CGAffineTransformMakeTranslation(&t2, v23 * 0.5 + v27, v25 * 0.5 + v28);
          CGAffineTransformConcat(&v38, &t1, &t2);
          v39 = v38;
          v45.origin.x = v19;
          v45.origin.y = v21;
          v45.size.height = v34;
          v45.size.width = v35;
          v49 = CGRectApplyAffineTransform(v45, &v38);
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = r1;
          v47 = CGRectUnion(v46, v49);
          x = v47.origin.x;
          y = v47.origin.y;
          width = v47.size.width;
          height = v47.size.height;
        }
      }

      v12 = [children countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v12);
  }

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (double)computeDerivedWidth
{
  [(TUILayout *)self computeIntrinsicAspectRatio];
  v4 = v3;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(TUILayout *)self computeHeightWithoutDerived];
  if (v4 <= 0.0)
  {
    return NAN;
  }

  else
  {
    return left + right + (v8 - (UIEdgeInsetsZero.top + bottom)) / v4;
  }
}

- (double)computeDerivedHeight
{
  [(TUILayout *)self computeIntrinsicAspectRatio];
  v4 = v3;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(TUILayout *)self computeWidthWithoutDerived];
  if (v4 <= 0.0)
  {
    return NAN;
  }

  else
  {
    return UIEdgeInsetsZero.top + bottom + v4 * (v8 - (left + right));
  }
}

- (double)_computeWidth:(BOOL)width
{
  [(TUILayout *)self specifiedWidth];
  v5 = v4;
  v6 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 0);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = NAN;
  }

  v8 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 6u);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v9 = NAN;
  }

  v10 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 2u);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = NAN;
  }

  [(TUILayout *)self constrainComputedWidth:v9];
  v13 = v12;
  v14 = fmin(v12, v7);
  if ((v5 & 0x7000000000000) == 0x6000000000000)
  {
    v14 = v13;
  }

  v15 = fmin(v14, v11);
  if ((v5 & 0x7000000000000) == 0x6000000000000)
  {
    return v13;
  }

  return v15;
}

- (double)_computeHeight:(BOOL)height
{
  specifiedHeight = [(TUILayout *)self specifiedHeight];
  v6 = v5;
  TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 7u);
  v7 = TUI::Util::PartialStruct::Storage::dataForKey(&self->_storage, 5u);
  if (v7)
  {
    v8 = 0;
    v9 = *v7;
  }

  else
  {
    v9 = *&specifiedHeight;
    v8 = 1;
  }

  [(TUILayout *)self constrainComputedHeight:v9];
  if (v8)
  {
    return fmin(fmax(result, *(&specifiedHeight + 1)), v6);
  }

  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];

  [(TUILayout *)self setComputedNaturalSize:v4, v5];
}

- ($E297CC25127479E857BE23A4F8632EA4)aspectConstrainedSpecifiedWidth
{
  specifiedWidth = [(TUILayout *)self specifiedWidth];
  v5 = specifiedWidth;
  v6 = HIDWORD(specifiedWidth);
  if ((*(&self->_flags + 1) & 0x30) != 0)
  {
    [(TUILayout *)self computeIntrinsicAspectRatio];
    if (v7 > 0.0)
    {
      v9 = v7;
      specifiedHeight = [(TUILayout *)self specifiedHeight];
      flags = self->_flags;
      if ((*&flags & 0x2000) != 0)
      {
        if ((*&flags & 0x1000) == 0)
        {
          return (v5 | (v6 << 32));
        }
      }

      else if ((*&flags & 0x1000) == 0)
      {
        return (v5 | (v6 << 32));
      }

      v12 = fmin(*&v6, fmaxf(*&specifiedHeight, *(&specifiedHeight + 1)) / v9);
      *&v6 = v12;
    }
  }

  return (v5 | (v6 << 32));
}

- ($E297CC25127479E857BE23A4F8632EA4)aspectConstrainedSpecifiedHeight
{
  specifiedHeight = [(TUILayout *)self specifiedHeight];
  v5 = specifiedHeight;
  v6 = HIDWORD(specifiedHeight);
  if ((*(&self->_flags + 1) & 0xC0) != 0)
  {
    [(TUILayout *)self computeIntrinsicAspectRatio];
    if (v7 > 0.0)
    {
      v9 = v7;
      specifiedWidth = [(TUILayout *)self specifiedWidth];
      flags = self->_flags;
      if ((*&flags & 0x8000) != 0)
      {
        if ((*&flags & 0x4000) == 0)
        {
          return (v5 | (v6 << 32));
        }
      }

      else if ((*&flags & 0x4000) == 0)
      {
        return (v5 | (v6 << 32));
      }

      v12 = fmax(*&v6, v9 * fmaxf(*&specifiedWidth, *(&specifiedWidth + 1)));
      *&v6 = v12;
    }
  }

  return (v5 | (v6 << 32));
}

- (void)_computeAspectConstrainedSpecifiedWidthHeight
{
  specifiedWidth = [(TUILayout *)self specifiedWidth];
  v5 = v4;
  specifiedHeight = [(TUILayout *)self specifiedHeight];
  *&v7 = v5;
  LODWORD(v9) = HIDWORD(specifiedWidth);
  *&v12 = v11;
  *&v10 = fmaxf(*&specifiedWidth, *(&specifiedWidth + 1));
  *&v14 = fmaxf(*&specifiedHeight, *(&specifiedHeight + 1));
  *&v13 = fminf(*&specifiedHeight, v11);
  *&v8 = fminf(*&specifiedWidth, v5);
  [(TUILayout *)self computeIntrinsicAspectRatio:v10];
  if (v15 > 0.0)
  {
    flags = self->_flags;
    p_flags = &self->_flags;
    v16 = 0x8000;
    v20 = *&flags & 0xFFFF0FFF | 0x3000;
    v17 = 0x4000;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v19 = self->_flags;
    p_flags = &self->_flags;
    v20 = *&v19 & 0xFFFF0FFF;
  }

  *p_flags = (v16 | v17 | v20);
}

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  children = [(TUILayout *)self children];
  v13 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v13;
  v14[2] = *&transform->tx;
  [(TUILayout *)self appendChilden:children renderModelCompatibleWithKind:kind context:contextCopy transform:v14 toModels:modelsCopy];
}

- (void)appendChilden:(id)childen renderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  childenCopy = childen;
  contextCopy = context;
  modelsCopy = models;
  [(TUILayout *)self computedNaturalSize];
  v16 = v15;
  v18 = v17;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = childenCopy;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = *v37;
    v22 = -v16;
    v23 = -v18;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v36 + 1) + 8 * i);
        [v25 computedOrigin];
        v27 = v26;
        v29 = v28;
        [v25 computedTransformedSize];
        memset(&v35, 0, sizeof(v35));
        CGAffineTransformMakeTranslation(&t1, v27 + v30 * 0.5 + v22 * 0.5, v29 + v31 * 0.5 + v23 * 0.5);
        v32 = *&transform->c;
        *&v33.a = *&transform->a;
        *&v33.c = v32;
        *&v33.tx = *&transform->tx;
        CGAffineTransformConcat(&v35, &t1, &v33);
        t1 = v35;
        [v25 appendRenderModelCompatibleWithKind:kind context:contextCopy transform:&t1 toModels:modelsCopy];
      }

      v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }
}

- (id)rootLayout
{
  selfCopy = self;
  layoutAncestor = [(TUILayout *)selfCopy layoutAncestor];
  while (layoutAncestor)
  {
    v4 = selfCopy;
    selfCopy = layoutAncestor;

    layoutAncestor = [(TUILayout *)selfCopy layoutAncestor];
  }

  return selfCopy;
}

- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout
{
  y = translation.y;
  x = translation.x;
  collectorCopy = collector;
  layoutCopy = layout;
  ancestorLayoutCopy = ancestorLayout;
  v86 = [(TUILayout *)self box];
  selfCopy = self;
  v11 = [(TUILayout *)self scrollAncestorForChildrenWithAncestor:layoutCopy];
  v12 = y;
  v13 = x;
  v93 = v11;
  if (v11 != layoutCopy)
  {
    [(TUILayout *)v11 scrollAdditionalAXTranslation];
    v13 = v14;
    v12 = v15;
  }

  liveTransformKind = [v86 liveTransformKind];
  selfCopy2 = ancestorLayoutCopy;
  if (liveTransformKind)
  {
    selfCopy2 = self;
  }

  v92 = selfCopy2;
  v18 = [TUIAXModel alloc];
  identifier = [v86 identifier];
  v20 = [objc_opt_class() description];
  v88 = [(TUIAXModel *)v18 initWithIdentifier:identifier boxType:v20];

  [(TUIAXModel *)v88 setHidden:[(TUILayout *)self hidden]];
  v90 = objc_opt_new();
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = [(TUILayout *)self children];
  v21 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
  if (v21)
  {
    v91 = *v106;
    do
    {
      v94 = v21;
      for (i = 0; i != v94; i = i + 1)
      {
        if (*v106 != v91)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v105 + 1) + 8 * i);
        v24 = [v23 box];
        isAXElement = [v24 isAXElement];
        if (collectorCopy)
        {
          v26 = 0;
        }

        else
        {
          v26 = isAXElement;
        }

        if (v26)
        {
          v27 = objc_alloc_init(TUIAXCustomActionsCollector);
        }

        else
        {
          v27 = 0;
        }

        v28 = objc_autoreleasePoolPush();
        if (collectorCopy)
        {
          v29 = collectorCopy;
        }

        else
        {
          v29 = v27;
        }

        v30 = [v23 axModelTreeWithCustomActionsCollector:v29 scrollAncestorLayout:v93 scrollAncestorTranslation:v92 liveTransformAncestorLayout:{v13, v12}];
        objc_autoreleasePoolPop(v28);
        rect = v30;
        if (v27)
        {
          v31 = [v23 box];
          axCustomActions = [v31 axCustomActions];
          v33 = [axCustomActions count] == 0;

          if (v33)
          {
            customActionsForPress = [(TUIAXCustomActionsCollector *)v27 customActionsForPress];
            v44 = [customActionsForPress count] == 0;

            if (v44)
            {
              goto LABEL_36;
            }

            customActionsForPress2 = [(TUIAXCustomActionsCollector *)v27 customActionsForPress];
            firstObject = [customActionsForPress2 firstObject];

            [firstObject setIsDefault:1];
            v109 = firstObject;
            v46 = [NSArray arrayWithObjects:&v109 count:1];
            [v30 setResolvedCustomActions:v46];
          }

          else
          {
            firstObject = objc_opt_new();
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v35 = [v23 box];
            axCustomActions2 = [v35 axCustomActions];

            v37 = [axCustomActions2 countByEnumeratingWithState:&v101 objects:v110 count:16];
            if (v37)
            {
              v38 = *v102;
              do
              {
                for (j = 0; j != v37; j = j + 1)
                {
                  if (*v102 != v38)
                  {
                    objc_enumerationMutation(axCustomActions2);
                  }

                  v40 = *(*(&v101 + 1) + 8 * j);
                  if ([v40 isReference])
                  {
                    v41 = [v40 dereferenceByCollector:v27];
                    if (v41)
                    {
                      v42 = [v40 copyFromReference:v41];

                      v40 = v42;
                    }
                  }

                  [firstObject addObject:v40];
                }

                v37 = [axCustomActions2 countByEnumeratingWithState:&v101 objects:v110 count:16];
              }

              while (v37);
            }

            [rect setResolvedCustomActions:firstObject];
          }
        }

LABEL_36:
        if (rect)
        {
          [v90 addObject:rect];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
    }

    while (v21);
  }

  [(TUIAXModel *)v88 setChildren:v90];
  axHasNonDefaultAttributess = [v86 axHasNonDefaultAttributess];
  if (axHasNonDefaultAttributess)
  {
    v48 = [[TUIAXAttributes alloc] initWithAXAttributes:v86];
  }

  else
  {
    v48 = 0;
  }

  [(TUIAXModel *)v88 setAxAttributes:v48];
  if (axHasNonDefaultAttributess)
  {
  }

  v49 = [(TUILayout *)layoutCopy box];
  identifier2 = [v49 identifier];
  [(TUIAXModel *)v88 setScrollAncestorIdentifier:identifier2];

  if (v93 == selfCopy)
  {
    scrollAxis = [(TUILayout *)v93 scrollAxis];
  }

  else
  {
    scrollAxis = 0;
  }

  [(TUIAXModel *)v88 setShouldScrollHorizontally:scrollAxis == &dword_0 + 1];
  [(TUIAXModel *)v88 setShouldScrollVertically:scrollAxis == &dword_0 + 2];
  v52 = [(TUILayout *)ancestorLayoutCopy box];
  identifier3 = [v52 identifier];
  [(TUIAXModel *)v88 setLiveTransformAncestorIdentifier:identifier3];

  -[TUIAXModel setLiveTransformKind:](v88, "setLiveTransformKind:", [v86 liveTransformKind]);
  memset(&v100, 0, sizeof(v100));
  [(TUILayout *)selfCopy computedTransformInAncestorLayout:layoutCopy];
  v98 = v100;
  CGAffineTransformTranslate(&v99, &v98, x, y);
  v100 = v99;
  [(TUILayout *)selfCopy computedBounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  computedLayoutDirection = [(TUILayout *)selfCopy computedLayoutDirection];
  [(TUIAXModel *)v88 setFlipsHorizontal:computedLayoutDirection == &dword_0 + 2];
  if (computedLayoutDirection == &dword_0 + 2)
  {
    if (layoutCopy)
    {
      rootLayout = layoutCopy;
    }

    else
    {
      rootLayout = [(TUILayout *)selfCopy rootLayout];
    }

    v64 = rootLayout;
    recta = v61;
    [(TUILayout *)rootLayout computedBounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v98 = v100;
    CGAffineTransformInvert(&v99, &v98);
    v115.origin.x = v66;
    v115.origin.y = v68;
    v115.size.width = v70;
    v115.size.height = v72;
    v116 = CGRectApplyAffineTransform(v115, &v99);
    v73 = v116.origin.x;
    v74 = v116.origin.y;
    width = v116.size.width;
    height = v116.size.height;
    MinX = CGRectGetMinX(v116);
    v117.origin.x = v73;
    v117.origin.y = v74;
    v117.size.width = width;
    v117.size.height = height;
    MaxX = CGRectGetMaxX(v117);
    CGAffineTransformMakeTranslation(&v99, -(MinX + MaxX), 0.0);
    v118.origin.x = v55;
    v118.origin.y = v57;
    v118.size.width = v59;
    v118.size.height = recta;
    v119 = CGRectApplyAffineTransform(v118, &v99);
    v79 = v119.origin.x;
    v80 = v119.origin.y;
    v81 = v119.size.width;
    v82 = v119.size.height;
    CGAffineTransformMakeScale(&v99, -1.0, 1.0);
    v120.origin.x = v79;
    v120.origin.y = v80;
    v120.size.width = v81;
    v120.size.height = v82;
    v121 = CGRectApplyAffineTransform(v120, &v99);
    v99 = v100;
    v122 = CGRectApplyAffineTransform(v121, &v99);
    [(TUIAXModel *)v88 setAccessibilityFrameRelativeToScrollAncestor:v122.origin.x, v122.origin.y, v122.size.width, v122.size.height];
  }

  else
  {
    v99 = v100;
    v113.origin.x = v55;
    v113.origin.y = v57;
    v113.size.width = v59;
    v113.size.height = v61;
    v114 = CGRectApplyAffineTransform(v113, &v99);
    [(TUIAXModel *)v88 setAccessibilityFrameRelativeToScrollAncestor:v114.origin.x, v114.origin.y, v114.size.width, v114.size.height];
  }

  return v88;
}

- (id)_transformedRenderModel:(id)model transform:(CGAffineTransform *)transform context:(id)context allowCache:(BOOL)cache
{
  cacheCopy = cache;
  modelCopy = model;
  contextCopy = context;
  y = CGPointZero.y;
  a = transform->a;
  b = transform->b;
  tx = transform->tx;
  c = transform->c;
  ty = transform->ty;
  d = transform->d;
  [modelCopy size];
  v13 = v12;
  [modelCopy size];
  v15 = v14;
  v17 = transform->a;
  v16 = transform->b;
  v18 = transform->c;
  v19 = transform->d;
  v20 = transform->tx;
  v21 = transform->ty;
  [contextCopy contentsScale];
  v22 = v13 * -0.5;
  v23 = v20 + v15 * -0.5 * v18 + v17 * (v13 * -0.5);
  v24 = v21 + v15 * -0.5 * v19 + v16 * v22;
  v26 = tx + y * c + a * CGPointZero.x + TUIPointRoundedForScale(v23, v24, v25) - v23;
  v28 = ty + y * d + b * CGPointZero.x + v27 - v24;
  v29 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v29;
  *&t1.tx = *&transform->tx;
  memset(&v57, 0, sizeof(v57));
  CGAffineTransformMakeTranslation(&t2, -v26, -v28);
  CGAffineTransformConcat(&v57, &t1, &t2);
  v30 = v57.tx;
  [contextCopy contentsScale];
  v57.tx = TUIFloatRoundedForScale(v30, v31);
  v32 = v57.ty;
  [contextCopy contentsScale];
  v57.ty = TUIFloatRoundedForScale(v32, v33);
  v34 = [(TUILayout *)self computeZIndexWithDefault:0];
  if (!cacheCopy)
  {
    goto LABEL_22;
  }

  cachedTransformModel = self->_cachedTransformModel;
  if (!cachedTransformModel || (*&self->_flags & 0x40) != 0)
  {
    goto LABEL_22;
  }

  submodel2 = 0;
  submodel = [(TUIRenderModelTransform *)cachedTransformModel submodel];
  if (submodel != modelCopy)
  {
    submodel2 = [(TUIRenderModelTransform *)self->_cachedTransformModel submodel];
    if (![submodel2 isEqual:modelCopy])
    {
      goto LABEL_20;
    }
  }

  [(TUIRenderModelTransform *)self->_cachedTransformModel center];
  if (v39 != v26 || v38 != v28)
  {
    goto LABEL_19;
  }

  v41 = self->_cachedTransformModel;
  if (v41)
  {
    [(TUIRenderModelTransform *)v41 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v57;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
LABEL_19:
    if (submodel == modelCopy)
    {
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:

    goto LABEL_21;
  }

  zIndex = [(TUIRenderModelTransform *)self->_cachedTransformModel zIndex];
  if (submodel != modelCopy)
  {
  }

  if (zIndex == v34)
  {
    v43 = self->_cachedTransformModel;
    goto LABEL_24;
  }

LABEL_22:
  v43 = [[TUIRenderModelTransform alloc] initWithSubmodel:modelCopy];
  [(TUIRenderModelTransform *)v43 setCenter:v26, v28];
  t1 = v57;
  [(TUIRenderModelTransform *)v43 setTransform:&t1];
  [(TUIRenderModelTransform *)v43 setZIndex:v34];
  v44 = [(TUILayout *)self computedRefIdWithContext:contextCopy];
  [(TUIRenderModelTransform *)v43 setRefId:v44];

  v45 = [(TUILayout *)self computedRefInstanceWithContext:contextCopy];
  [(TUIRenderModelTransform *)v43 setRefInstance:v45];

  v46 = [(TUILayout *)self box];
  [v46 renderOutsets];
  [(TUIRenderModelTransform *)v43 setOutsets:?];

  if (cacheCopy)
  {
    *&self->_flags &= ~0x40u;
    objc_storeStrong(&self->_cachedTransformModel, v43);
  }

LABEL_24:

  return v43;
}

- (BOOL)shouldUseSubviewRenderModelWithContext:(id)context
{
  currentPointer = [context currentPointer];
  refId = [currentPointer refId];
  v6 = [(TUILayout *)self box];
  refId2 = [v6 refId];
  v8 = [refId isEqualToString:refId2];

  return v8;
}

- (void)appendRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  if (![(TUILayout *)self hidden])
  {
    v12 = *&transform->c;
    v13[0] = *&transform->a;
    v13[1] = v12;
    v13[2] = *&transform->tx;
    [(TUILayout *)self appendRenderModelIgnoreHiddenCompatibleWithKind:kind context:contextCopy transform:v13 toModels:modelsCopy];
  }
}

- (void)appendRenderModelIgnoreHiddenCompatibleWithKind:(unint64_t)kind context:(id)context transform:(CGAffineTransform *)transform toModels:(id)models
{
  contextCopy = context;
  modelsCopy = models;
  [(TUILayout *)self computedTransform];
  v12 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v12;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v13 = *&v31.c;
  *&transform->a = *&v31.a;
  *&transform->c = v13;
  *&transform->tx = *&v31.tx;
  [(TUILayout *)self renderTransform];
  v14 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v14;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v15 = *&v31.c;
  *&transform->a = *&v31.a;
  *&transform->c = v15;
  *&transform->tx = *&v31.tx;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10D048;
  v25[3] = &unk_261D78;
  v25[4] = self;
  v16 = contextCopy;
  v26 = v16;
  v17 = modelsCopy;
  v27 = v17;
  kindCopy = kind;
  v18 = objc_retainBlock(v25);
  currentLiveTransform = [v16 currentLiveTransform];
  if (currentLiveTransform)
  {
  }

  else
  {
    v21 = *&transform->c;
    *&v31.a = *&transform->a;
    *&v31.c = v21;
    *&v31.tx = *&transform->tx;
    v22 = [(TUILayout *)self newLiveTransform:&v31];
    if (v22)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10D404;
      v23[3] = &unk_261DA0;
      v23[4] = self;
      v24 = v18;
      [v16 evaluateWithLiveTransform:v22 block:v23];

      goto LABEL_6;
    }
  }

  v20 = *&transform->tx;
  *&v31.c = *&transform->c;
  *&v31.tx = v20;
  *&v31.a = *&transform->a;
  (v18[2])(v18, &v31, 1);
LABEL_6:
}

- (id)newLiveTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v5 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(v4, CGPointZero.y), *&transform->a, CGPointZero.x));
  *&t1.a = *&transform->a;
  *&t1.c = v4;
  *&t1.tx = *&transform->tx;
  memset(&v21, 0, sizeof(v21));
  v6 = v5;
  CGAffineTransformMakeTranslation(&t2, -v5.f64[0], -v5.f64[1]);
  CGAffineTransformConcat(&v21, &t1, &t2);
  [(TUILayout *)self computedTransformedSize];
  v8 = v7;
  v10 = v9;
  v11 = [(TUILayout *)self box];
  liveTransformKind = [v11 liveTransformKind];

  if ((liveTransformKind - 2) < 5)
  {
    v13 = [(TUILayout *)self box];
    v14 = -[TUILayout pinPositionFromLiveTransformKind:](self, "pinPositionFromLiveTransformKind:", [v13 liveTransformKind]);

    v15 = [TUIPinningLiveTransform alloc];
    t1 = v21;
    return [(TUIPinningLiveTransform *)v15 initWithCenter:&t1 size:v14 transform:*&v6 pinPosition:v8, v10];
  }

  if (liveTransformKind == &dword_0 + 1)
  {
    v17 = TUIFloatingLiveTransform;
    goto LABEL_7;
  }

  if (liveTransformKind == &dword_4 + 3)
  {
    v17 = TUIOverscrollingLiveTransform;
LABEL_7:
    v18 = [v17 alloc];
    t1 = v21;
    return [v18 initWithCenter:&t1 size:*&v6 transform:{v8, v10}];
  }

  return 0;
}

- (unint64_t)pinPositionFromLiveTransformKind:(unint64_t)kind
{
  if (kind - 2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_24D318[kind - 2];
  }
}

- (void)appendHoverRegions:(id)regions relativeToLayout:(id)layout
{
  regionsCopy = regions;
  layoutCopy = layout;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childrenForHoverRegions = [(TUILayout *)self childrenForHoverRegions];
  v9 = [childrenForHoverRegions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(childrenForHoverRegions);
        }

        [*(*(&v12 + 1) + 8 * v11) appendHoverRegions:regionsCopy relativeToLayout:layoutCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [childrenForHoverRegions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)invalidateRenderModel
{
  cachedTransformModel = self->_cachedTransformModel;
  if (cachedTransformModel)
  {
    self->_cachedTransformModel = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parent);
  if (WeakRetained && (v4 = objc_loadWeakRetained(&self->_parent), v5 = [v4 shouldAutoInvalidateRenderModelOnChildInvalidate], v4, WeakRetained, v5))
  {
    v10 = objc_loadWeakRetained(&self->_parent);
    [v10 onChildRenderModelInvalidate:self];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_controller);
    v6 = objc_loadWeakRetained(&self->_parent);
    isLayout = [v6 isLayout];
    if (isLayout)
    {
      v8 = objc_loadWeakRetained(&self->_parent);
    }

    else
    {
      v8 = 0;
    }

    [v10 invalidateCachedRenderModelForLayout:v8];
    if (isLayout)
    {
    }
  }
}

- (BOOL)isDescendentOfLayout:(id)layout
{
  layoutCopy = layout;
  parent = [(TUILayout *)self parent];
  if (parent == layoutCopy)
  {
    v7 = 1;
  }

  else
  {
    parent2 = [(TUILayout *)self parent];
    v7 = [parent2 isDescendentOfLayout:layoutCopy];
  }

  return v7;
}

- (void)setInvalidChildren:(BOOL)children
{
  if (children)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFD | v3);
}

- (void)invalidateLayout
{
  if ((*&self->_flags & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained invalidateLayout:self];
  }
}

- (void)validateLayout
{
  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained validateLayout:self];
  }
}

- (void)_validateLayout
{
  flags = self->_flags;
  self->_flags = (*&flags | 4);
  [(TUILayout *)self computeLayout];
  [(TUILayout *)self _computeAspectConstrainedSpecifiedWidthHeight];
  self->_flags = (*&self->_flags & 0xFFFFFFFB | (4 * ((*&flags >> 2) & 1)));

  TUI::Util::PartialStruct::Storage::compress(&self->_storage);
}

- (void)_validateLayoutWithBlock:(id)block
{
  blockCopy = block;
  flags = self->_flags;
  self->_flags = (*&flags | 4);
  v6 = blockCopy;
  blockCopy[2]();
  [(TUILayout *)self _computeAspectConstrainedSpecifiedWidthHeight];
  self->_flags = (*&self->_flags & 0xFFFFFFFB | (4 * ((*&flags >> 2) & 1)));
  TUI::Util::PartialStruct::Storage::compress(&self->_storage);
}

- (void)setComputedNaturalSize:(CGSize)size
{
  if (fabs(size.width) == INFINITY)
  {
    size.width = 0.0;
  }

  if (fabs(size.height) == INFINITY)
  {
    size.height = 0.0;
  }

  if (self->_computedNaturalSize.width != size.width || self->_computedNaturalSize.height != size.height)
  {
    self->_computedNaturalSize = size;
    parent = [(TUILayout *)self parent];
    [parent onChildTransformedSizeDidChange:self];
  }
}

- (void)setComputedOrigin:(CGPoint)origin
{
  if (self->_computedOrigin.x != origin.x || self->_computedOrigin.y != origin.y)
  {
    self->_computedOrigin = origin;
    [(TUILayout *)self onComputedOriginDidChange];
  }
}

- (void)onComputedOriginDidChange
{
  if (self->_cachedTransformModel)
  {
    *&self->_flags |= 0x40u;
    parent = [(TUILayout *)self parent];
    [parent onChildRenderModelInvalidate:self];
  }
}

- (void)onInvalidate
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  if (layoutAncestor && (layoutAncestor[16] & 4) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    [WeakRetained onChildInvalidate:self];
  }

  [(TUILayout *)self invalidateRenderModel];
}

- (void)onInvalidateIntrinsicSize
{
  [(TUILayout *)self invalidateLayout];
  parent = [(TUILayout *)self parent];
  [parent onChildInvalidateIntrinsicSize:self];
}

- (void)onContainersUpdated
{
  [(TUILayout *)self _updateChildren];

  [(TUILayout *)self onChildrenUpdated];
}

- (void)updateDesdendantSpecifiedWidthModifiedWithFlag:(BOOL)flag
{
  if (flag)
  {
LABEL_12:
    flags = self->_flags;
    if ((*&flags & 0x10000) != 0)
    {
      return;
    }

    v9 = 0x10000;
    goto LABEL_14;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_children;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ((*(*(*(&v10 + 1) + 8 * i) + 17) & 0x104) != 0)
        {

          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  flags = self->_flags;
  if ((*&flags & 0x10000) != 0)
  {
    v9 = 0;
LABEL_14:
    self->_flags = (*&flags & 0xFFFEFFFF | v9);
    [(TUILayout *)self onDesdendantSpecifiedWidthModifiedDidChange];
  }
}

- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)array
{
  arrayCopy = array;
  if ((*(&self->_flags + 1) & 4) != 0)
  {
    [arrayCopy addObject:self];
  }
}

- (void)appendVisibleBoundsObservers:(id)observers axis:(unint64_t)axis offset:(double)offset
{
  observersCopy = observers;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layout = [(TUILayout *)self layout];
  children = [layout children];

  v11 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v11)
  {
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v14 + 1) + 8 * v13) appendVisibleBoundsObservers:observersCopy axis:axis offset:offset];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)teardown
{
  cachedTransformModel = self->_cachedTransformModel;
  self->_cachedTransformModel = 0;
}

- (void)appendAnchorsToSet:(id)set inRoot:(id)root
{
  setCopy = set;
  rootCopy = root;
  anchorPosition = [(TUIModelLayoutable *)self->_model anchorPosition];
  if (!anchorPosition)
  {
    goto LABEL_29;
  }

  width = self->_computedNaturalSize.width;
  height = self->_computedNaturalSize.height;
  axis = [setCopy axis];
  if (axis == &dword_0 + 1)
  {
    if (anchorPosition == (&dword_0 + 1))
    {
      v17 = height * 0.5;
      if ([(TUILayout *)self computedLayoutDirection]== &dword_0 + 1)
      {
        width = 0.0;
      }

      goto LABEL_24;
    }

    if (anchorPosition == (&dword_0 + 2))
    {
      v17 = height * 0.5;
      if ([(TUILayout *)self computedLayoutDirection]!= &dword_0 + 1)
      {
        width = 0.0;
      }

      goto LABEL_24;
    }

    v12 = NAN;
    v13 = anchorPosition == (&dword_0 + 3);
    v14 = height * 0.5;
    if (anchorPosition == (&dword_0 + 3))
    {
      width = width * 0.5;
    }

    else
    {
      width = NAN;
    }
  }

  else
  {
    v12 = NAN;
    v14 = height * 0.5;
    if (anchorPosition == (&dword_4 + 1))
    {
      v15 = width * 0.5;
    }

    else
    {
      v15 = NAN;
    }

    if (anchorPosition == (&dword_4 + 1))
    {
      v12 = 0.0;
    }

    if (anchorPosition == &dword_4)
    {
      v16 = width * 0.5;
    }

    else
    {
      v16 = v15;
    }

    if (anchorPosition == &dword_4)
    {
      v12 = height;
    }

    v13 = anchorPosition == (&dword_0 + 3);
    if (anchorPosition == (&dword_0 + 3))
    {
      width = width * 0.5;
    }

    else
    {
      width = v16;
    }
  }

  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

LABEL_24:
  if (CGFloatIsValid() && CGFloatIsValid())
  {
    [(TUILayout *)self computedTransformInAncestorLayout:rootCopy];
    v18 = v17 * 0.0 + 0.0 * width + 0.0;
    if (axis != &dword_0 + 1)
    {
      v18 = v17 * 0.0 + 0.0 * width + 0.0;
    }

    [setCopy appendScrollAnchor:v18];
  }

LABEL_29:
  if ([(TUILayout *)self shouldAppendChildAnchorsForAncestor])
  {
    [(TUILayout *)self appendChildAnchorsToSet:setCopy inRoot:rootCopy];
  }

  else
  {
    [(TUILayout *)self appendEmbeddedAnchorsToSet:setCopy inRoot:rootCopy];
  }
}

- (void)appendChildAnchorsToSet:(id)set inRoot:(id)root
{
  setCopy = set;
  rootCopy = root;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(TUILayout *)self children];
  v9 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v12 + 1) + 8 * v11) appendAnchorsToSet:setCopy inRoot:rootCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)guideProvider
{
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v4 = [layoutAncestor guideProviderForLayout:self];

  return v4;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)layout edge:(unint64_t)edge
{
  layoutCopy = layout;
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  LOBYTE(edge) = [layoutAncestor shouldUseDefaultGuideForLayout:layoutCopy edge:edge];

  return edge;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TUILayout *)self computedFrame];
  v6 = NSStringFromCGRect(v19);
  v7 = [v3 initWithFormat:@"<%@ %p frame=%@", v5, self, v6];

  guideTop = [(TUILayout *)self guideTop];

  if (guideTop)
  {
    guideTop2 = [(TUILayout *)self guideTop];
    [v7 appendFormat:@" top=%@", guideTop2];
  }

  guideBottom = [(TUILayout *)self guideBottom];

  if (guideBottom)
  {
    guideBottom2 = [(TUILayout *)self guideBottom];
    [v7 appendFormat:@" bottom=%@", guideBottom2];
  }

  guideLeading = [(TUILayout *)self guideLeading];

  if (guideLeading)
  {
    guideLeading2 = [(TUILayout *)self guideLeading];
    [v7 appendFormat:@" leading=%@", guideLeading2];
  }

  guideTrailing = [(TUILayout *)self guideTrailing];

  if (guideTrailing)
  {
    guideTrailing2 = [(TUILayout *)self guideTrailing];
    [v7 appendFormat:@" trailing=%@", guideTrailing2];
  }

  [v7 appendString:@">"];
  v16 = [v7 copy];

  return v16;
}

- (int64_t)computeZIndexWithDefault:(int64_t)default
{
  v5 = [(TUILayout *)self box];
  zIndex = [v5 zIndex];

  if (zIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    return zIndex;
  }

  v7 = [(TUILayout *)self box];
  role = [v7 role];

  if (role == &dword_0 + 1)
  {
    v9 = &TUIZIndexBackground;
LABEL_6:
    zIndex = *v9;
    if (*v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return zIndex;
    }

    goto LABEL_7;
  }

  if (role == &dword_0 + 3)
  {
    v9 = &TUIZIndexForeground;
    goto LABEL_6;
  }

LABEL_7:
  layoutAncestor = [(TUILayout *)self layoutAncestor];
  v11 = layoutAncestor;
  if (layoutAncestor)
  {
    default = [layoutAncestor computeZIndexWithDefault:default];
  }

  return default;
}

- (id)inheritedRefIdWithContext:(id)context
{
  contextCopy = context;
  if ([(TUILayout *)self shouldDescendentsInheritRefSpecWithContext:contextCopy])
  {
    v5 = [(TUILayout *)self computedRefIdWithContext:contextCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inheritedRefInstanceWithContext:(id)context
{
  contextCopy = context;
  if ([(TUILayout *)self shouldDescendentsInheritRefSpecWithContext:contextCopy])
  {
    v5 = [(TUILayout *)self computedRefInstanceWithContext:contextCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)computedRefIdWithContext:(id)context
{
  contextCopy = context;
  v5 = [(TUILayout *)self box];
  refId = [v5 refId];
  v7 = refId;
  if (refId)
  {
    v8 = refId;
  }

  else
  {
    layoutAncestor = [(TUILayout *)self layoutAncestor];
    v8 = [layoutAncestor inheritedRefIdWithContext:contextCopy];
  }

  return v8;
}

- (id)computedRefInstanceWithContext:(id)context
{
  contextCopy = context;
  v5 = [(TUILayout *)self box];
  refInstance = [v5 refInstance];
  v7 = refInstance;
  if (refInstance)
  {
    v8 = refInstance;
  }

  else
  {
    layoutAncestor = [(TUILayout *)self layoutAncestor];
    v8 = [layoutAncestor inheritedRefInstanceWithContext:contextCopy];
  }

  return v8;
}

- (void)appendEmbeddedIdentifierMaps:(id)maps updateControllers:(id)controllers UUIDs:(id)ds
{
  mapsCopy = maps;
  controllersCopy = controllers;
  dsCopy = ds;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(TUILayout *)self children];
  v12 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v15 + 1) + 8 * v14) appendEmbeddedIdentifierMaps:mapsCopy updateControllers:controllersCopy UUIDs:dsCopy];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (CGSize)renderModelSizeWithContext:(id)context
{
  contextCopy = context;
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  [contextCopy contentsScale];
  v10 = TUISizeRoundedForScale(v6, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)hoverIdentifierWithName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  v6 = selfCopy;
  if (selfCopy)
  {
    v7 = selfCopy;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      layoutAncestor = [v7 layoutAncestor];

      v7 = layoutAncestor;
    }

    while (layoutAncestor);
  }

  else
  {
    v7 = 0;
  }

  v9 = [v7 hoverIdentifierWithName:nameCopy forDescdendent:v6];

  return v9;
}

- (UIEdgeInsets)erasableInsetsForContentsScale:(double)scale
{
  [(TUILayout *)self computedBounds];
  v5 = v4;
  v29 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(TUILayout *)self computedErasableBounds];
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  x = v35.origin.x;
  v30 = v35.origin.x;
  MinY = CGRectGetMinY(v35);
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  v32 = MinY - CGRectGetMinY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  v31 = MinX - CGRectGetMinX(v38);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  MaxY = CGRectGetMaxY(v39);
  v40.origin.x = v30;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v18 = MaxY - CGRectGetMaxY(v40);
  v41.origin.y = v7;
  v41.origin.x = v29;
  v41.size.width = v9;
  v41.size.height = v11;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = v30;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v20 = MaxX - CGRectGetMaxX(v42);
  v22 = v31;
  *v21.i64 = v32;
  if (v32 > 0.0)
  {
    *v21.i64 = 0.0;
  }

  if (v31 > 0.0)
  {
    v22 = 0.0;
  }

  if (v18 <= 0.0)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0.0;
  }

  if (v20 > 0.0)
  {
    v20 = 0.0;
  }

  *&v24 = TUIInsetsExtendedForScale(v21, v22, v23, v20, scale).u64[0];
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (id)modelIdentifierForEnclosingScrollable
{
  selfCopy = self;
  do
  {
    layoutAncestor = [(TUILayout *)selfCopy layoutAncestor];

    modelIdentifierForScrollable = [(TUILayout *)layoutAncestor modelIdentifierForScrollable];
    if (modelIdentifierForScrollable)
    {
      break;
    }

    selfCopy = layoutAncestor;
  }

  while (layoutAncestor);

  return modelIdentifierForScrollable;
}

- (TUILayoutController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (TUILayoutContaining)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (CGPoint)computedOrigin
{
  x = self->_computedOrigin.x;
  y = self->_computedOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)computedNaturalSize
{
  width = self->_computedNaturalSize.width;
  height = self->_computedNaturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end