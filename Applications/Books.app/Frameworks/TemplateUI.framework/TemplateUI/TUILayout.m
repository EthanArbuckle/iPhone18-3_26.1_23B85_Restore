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
- (BOOL)isDescendentOfLayout:(id)a3;
- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4;
- (BOOL)shouldUseSubviewRenderModelWithContext:(id)a3;
- (CGAffineTransform)_computedFrameTransform;
- (CGAffineTransform)computedTransformInAncestorLayout:(SEL)a3;
- (CGAffineTransform)renderTransform;
- (CGAffineTransform)specifiedTransform;
- (CGPoint)computedOrigin;
- (CGRect)computedBounds;
- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)a3;
- (CGRect)computedBoundsWithFlags:(unint64_t)a3;
- (CGRect)computedErasableBounds;
- (CGRect)computedFrame;
- (CGSize)computedNaturalSize;
- (CGSize)computedTransformedSize;
- (CGSize)renderModelSizeWithContext:(id)a3;
- (CGSize)validatedIntrinsicSize;
- (NSString)description;
- (TUIGuide)guideBottom;
- (TUIGuide)guideLeading;
- (TUIGuide)guideTop;
- (TUIGuide)guideTrailing;
- (TUIGuideLayoutController)guideLayoutController;
- (TUILayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (TUILayout)layoutAncestor;
- (TUILayoutContaining)parent;
- (TUILayoutController)controller;
- (UIEdgeInsets)erasableInsetsForContentsScale:(double)a3;
- (double)_computeHeight:(BOOL)a3;
- (double)_computeWidth:(BOOL)a3;
- (double)computeDerivedHeight;
- (double)computeDerivedWidth;
- (double)computedScale;
- (double)containingHeight;
- (double)containingMaxWidth;
- (double)containingWidth;
- (double)flexedHeight;
- (double)flexedWidth;
- (id)_transformedRenderModel:(id)a3 transform:(CGAffineTransform *)a4 context:(id)a5 allowCache:(BOOL)a6;
- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6;
- (id)computedRefIdWithContext:(id)a3;
- (id)computedRefInstanceWithContext:(id)a3;
- (id)guideProvider;
- (id)hoverIdentifierWithName:(id)a3;
- (id)inheritedRefIdWithContext:(id)a3;
- (id)inheritedRefInstanceWithContext:(id)a3;
- (id)modelIdentifierForEnclosingScrollable;
- (id)newLiveTransform:(CGAffineTransform *)a3;
- (id)recursiveDescription;
- (id)rootLayout;
- (int64_t)computeZIndexWithDefault:(int64_t)a3;
- (unint64_t)computedLayoutDirection;
- (unint64_t)pinPositionFromLiveTransformKind:(unint64_t)a3;
- (void)_computeAspectConstrainedSpecifiedWidthHeight;
- (void)_updateChildren;
- (void)_validateLayout;
- (void)_validateLayoutWithBlock:(id)a3;
- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4;
- (void)appendChildAnchorsToSet:(id)a3 inRoot:(id)a4;
- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)appendChilden:(id)a3 renderModelCompatibleWithKind:(unint64_t)a4 context:(id)a5 transform:(CGAffineTransform *)a6 toModels:(id)a7;
- (void)appendEmbeddedIdentifierMaps:(id)a3 updateControllers:(id)a4 UUIDs:(id)a5;
- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4;
- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)a3;
- (void)appendRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)appendRenderModelIgnoreHiddenCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6;
- (void)appendVisibleBoundsObservers:(id)a3 axis:(unint64_t)a4 offset:(double)a5;
- (void)computeLayout;
- (void)enumerateChildren:(id)a3;
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
- (void)setComputedNaturalSize:(CGSize)a3;
- (void)setComputedOrigin:(CGPoint)a3;
- (void)setContainingHeight:(double)a3;
- (void)setContainingMaxWidth:(double)a3;
- (void)setContainingWidth:(double)a3;
- (void)setFlexedHeight:(double)a3;
- (void)setFlexedWidth:(double)a3;
- (void)setHidden:(BOOL)a3;
- (void)setInvalidChildren:(BOOL)a3;
- (void)setSpecifiedHeightComputeInherited:(BOOL)a3;
- (void)setSpecifiedWidthComputeInherited:(BOOL)a3;
- (void)setSpecifiedWidthModified:(BOOL)a3;
- (void)teardown;
- (void)updateDesdendantSpecifiedWidthModifiedWithFlag:(BOOL)a3;
- (void)updateGuides;
- (void)updateParent:(id)a3;
- (void)validateGuides;
- (void)validateLayout;
@end

@implementation TUILayout

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if (qword_2E6520 != -1)
    {
      sub_19B854();
    }

    v2 = [qword_2E6518 bytes];
    v3 = v2[1];
    if (v3)
    {
      v4 = v2;
      v5 = 0;
      v6 = (v2 + 2);
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

- (void)setSpecifiedWidthComputeInherited:(BOOL)a3
{
  if (((((*&self->_flags & 0x200) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)setSpecifiedWidthModified:(BOOL)a3
{
  if (((((*&self->_flags & 0x400) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)setSpecifiedHeightComputeInherited:(BOOL)a3
{
  if (((((*&self->_flags & 0x800) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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
  v3 = [(TUILayout *)self layoutAncestor];
  [v3 onSpecifiedWidthChangedForChild:self];
}

- (void)onSpecifiedHeightChanged
{
  v3 = [(TUILayout *)self layoutAncestor];
  [v3 onSpecifiedHeightChangedForChild:self];
}

- ($E297CC25127479E857BE23A4F8632EA4)specifiedWidth
{
  model = self->_model;
  if (model)
  {
    v5 = [(TUIModelLayoutable *)model width];
  }

  else
  {
    v5 = 0x7FC000007FC00000;
  }

  flags = self->_flags;
  if ((*&flags & 0x400) != 0)
  {
    v8 = [(TUILayout *)self layoutAncestor];
    v7 = [v8 modifiedSpecifiedWidthForChild:self];
  }

  else if ((*&flags & 0x200) != 0)
  {
    return (v5 & 0xFFFFFFFF00000000 | 0x7FC00000);
  }

  else
  {
    return v5;
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

- (TUILayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = TUILayout;
  v12 = [(TUILayout *)&v28 init];
  if (!v12)
  {
    goto LABEL_23;
  }

  v12->_storage._data = [objc_opt_class() _storageDataset] | 1;
  v13 = v9;
  objc_storeStrong(&v12->_model, a3);
  objc_storeWeak(&v12->_parent, v10);
  objc_storeWeak(&v12->_controller, v11);
  bzero(&v12->_flags, 8uLL);
  if (v13)
  {
    [v13 width];
    v15 = v14;
    [v13 height];
    v17 = v16;
    if (v10)
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
    if (v10)
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
    v25 = [v13 layoutDirection];
    v24 = v12->_flags;
    v26 = (v25 & 3) << 7;
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

- (void)updateParent:(id)a3
{
  obj = a3;
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
  v3 = [(TUILayout *)self children];
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) validateGuides];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)updateGuides
{
  v3 = [(TUILayout *)self box];
  v23 = [v3 guides];

  v4 = [(TUILayout *)self guideProvider];
  if (v23 && v4)
  {
    v5 = [v23 leading];
    v6 = v5;
    if (!v5)
    {
      v6 = [v4 defaultGuideSpecForLayout:self edge:0];
    }

    v7 = [v4 guideForLayout:self spec:v6];
    [(TUILayout *)self setGuideLeading:v7];

    if (!v5)
    {
    }

    v8 = [v23 trailing];
    v9 = v8;
    if (!v8)
    {
      v9 = [v4 defaultGuideSpecForLayout:self edge:1];
    }

    v10 = [v4 guideForLayout:self spec:v9];
    [(TUILayout *)self setGuideTrailing:v10];

    if (!v8)
    {
    }

    v11 = [v23 top];
    v12 = v11;
    if (!v11)
    {
      v12 = [v4 defaultGuideSpecForLayout:self edge:2];
    }

    v13 = [v4 guideForLayout:self spec:v12];
    [(TUILayout *)self setGuideTop:v13];

    if (!v11)
    {
    }

    v14 = [v23 bottom];
    v15 = v14;
    if (!v14)
    {
      v15 = [v4 defaultGuideSpecForLayout:self edge:3];
    }

    v16 = [v4 guideForLayout:self spec:v15];
    [(TUILayout *)self setGuideBottom:v16];

    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v4)
  {
    v17 = [v4 defaultGuideSpecForLayout:self edge:0];
    v18 = [v4 guideForLayout:self spec:v17];
    [(TUILayout *)self setGuideLeading:v18];

    v19 = [v4 defaultGuideSpecForLayout:self edge:1];
    v20 = [v4 guideForLayout:self spec:v19];
    [(TUILayout *)self setGuideTrailing:v20];

    v21 = [v4 defaultGuideSpecForLayout:self edge:2];
    v22 = [v4 guideForLayout:self spec:v21];
    [(TUILayout *)self setGuideTop:v22];

    v14 = [v4 defaultGuideSpecForLayout:self edge:3];
    v15 = [v4 guideForLayout:self spec:v14];
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
  v3 = [WeakRetained layout];

  return v3;
}

- (void)enumerateChildren:(id)a3
{
  v4 = a3;
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

        [*(*(&v9 + 1) + 8 * v8) enumerateLayout:{v4, v9}];
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

- (void)setHidden:(BOOL)a3
{
  if (a3)
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
  v2 = ((self->_flags >> 7) & 3);
  if (!v2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);

    if (WeakRetained)
    {
      v5 = [(TUILayout *)self layoutAncestor];
      v2 = [v5 computedLayoutDirection];
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicWidth
{
  if ((*&self->_flags & 0x10) != 0)
  {
    v4 = [(TUILayout *)self computeIntrinsicWidth];
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
        *DataForKey = v4;
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
    v4 = [(TUILayout *)self computeIntrinsicHeight];
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
        *DataForKey = v4;
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

- (void)setFlexedWidth:(double)a3
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

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, a3))
  {
    v7 = a3;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 6u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = v7;
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

- (void)setFlexedHeight:(double)a3
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

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, a3))
  {
    v7 = a3;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 5u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = v7;
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

- (void)setContainingWidth:(double)a3
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

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, a3))
  {
    v7 = a3;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 0, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = v7;
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

- (void)setContainingMaxWidth:(double)a3
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

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, a3))
  {
    v7 = a3;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 2u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = v7;
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

- (void)setContainingHeight:(double)a3
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

  if (!TUICGFloatIsEqualFloatOrBothNaN(v6, a3))
  {
    v7 = a3;
    DataForKey = TUI::Util::PartialStruct::Storage::allocateDataForKey(&self->_storage, 7u, 4uLL, 1);
    if (DataForKey)
    {
      *DataForKey = v7;
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
  v4 = [(TUILayout *)self specifiedWidth];
  v6 = v5;
  v8 = [(TUILayout *)self validatedIntrinsicWidth];

  return TUILengthCombineSpecifiedAndIntrinsic(v4, v6, v8, v7);
}

- ($E297CC25127479E857BE23A4F8632EA4)validatedIntrinsicHeightConsideringSpecified
{
  v4 = [(TUILayout *)self specifiedHeight];
  v6 = v5;
  v8 = [(TUILayout *)self validatedIntrinsicHeight];

  return TUILengthCombineSpecifiedAndIntrinsic(v4, v6, v8, v7);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedWidth
{
  [(TUILayout *)self aspectConstrainedSpecifiedWidth];
  v5 = v4 & 0x7000000000000;
  v6 = [(TUILayout *)self aspectConstrainedSpecifiedWidth];
  if (v5 < 0x2000000000001)
  {
    [(TUILayout *)self computedContentWidthConsideringTransform];

    TUILengthComputedWithSpecifiedAndContent();
  }

  else
  {
    LODWORD(v7) = HIDWORD(v6);
    [(TUILayout *)self aspectConstrainedSpecifiedWidth];
    LODWORD(v9) = v8;
    v10 = [(TUILayout *)self aspectConstrainedSpecifiedWidth];
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

    return (v12 | v10 & 0xFFFFFFFF00000000);
  }

  return result;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedHeight
{
  [(TUILayout *)self aspectConstrainedSpecifiedHeight];
  v5 = v4 & 0x7000000000000;
  v6 = [(TUILayout *)self aspectConstrainedSpecifiedHeight];
  if (v5 < 0x2000000000001)
  {
    [(TUILayout *)self computedContentHeightConsideringTransform];

    TUILengthComputedWithSpecifiedAndContent();
  }

  else
  {
    LODWORD(v7) = HIDWORD(v6);
    [(TUILayout *)self aspectConstrainedSpecifiedHeight];
    LODWORD(v9) = v8;
    v10 = [(TUILayout *)self aspectConstrainedSpecifiedHeight];
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

    return (v12 | v10 & 0xFFFFFFFF00000000);
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

- (CGRect)computedBoundsWithFlags:(unint64_t)a3
{
  [(TUILayout *)self computedBoundsPrimitiveWithFlags:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (a3)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [(TUILayout *)self computedBoundsChildrenWithFlags:a3];
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
          [v17 computedBoundsWithFlags:a3];
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

- (CGRect)computedBoundsPrimitiveWithFlags:(unint64_t)a3
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
  v2 = [(TUILayout *)self layoutAncestor];
  v3 = v2;
  if (v2)
  {
    [v2 computedScale];
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
  v2 = [(TUILayout *)self children];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) onComputedScaleDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
  v2 = [(TUILayout *)self children];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5) onViewSafeAreaInsetsDidChange];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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

- (CGAffineTransform)computedTransformInAncestorLayout:(SEL)a3
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
    v7 = [(TUILayout *)self layoutAncestor];
    v8 = v7;
    if (!v7 || v7 == v6)
    {
      v11 = v7;
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
        v11 = [v8 layoutAncestor];

        if (!v11)
        {
          break;
        }

        v8 = v11;
      }

      while (v11 != v6);
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
  v11 = [(TUILayout *)self children];
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v12)
  {
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v11);
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

      v12 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
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

- (double)_computeWidth:(BOOL)a3
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

- (double)_computeHeight:(BOOL)a3
{
  v4 = [(TUILayout *)self specifiedHeight];
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
    v9 = *&v4;
    v8 = 1;
  }

  [(TUILayout *)self constrainComputedHeight:v9];
  if (v8)
  {
    return fmin(fmax(result, *(&v4 + 1)), v6);
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
  v4 = [(TUILayout *)self specifiedWidth];
  v5 = v4;
  v6 = HIDWORD(v4);
  if ((*(&self->_flags + 1) & 0x30) != 0)
  {
    [(TUILayout *)self computeIntrinsicAspectRatio];
    if (v7 > 0.0)
    {
      v9 = v7;
      v10 = [(TUILayout *)self specifiedHeight];
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

      v12 = fmin(*&v6, fmaxf(*&v10, *(&v10 + 1)) / v9);
      *&v6 = v12;
    }
  }

  return (v5 | (v6 << 32));
}

- ($E297CC25127479E857BE23A4F8632EA4)aspectConstrainedSpecifiedHeight
{
  v4 = [(TUILayout *)self specifiedHeight];
  v5 = v4;
  v6 = HIDWORD(v4);
  if ((*(&self->_flags + 1) & 0xC0) != 0)
  {
    [(TUILayout *)self computeIntrinsicAspectRatio];
    if (v7 > 0.0)
    {
      v9 = v7;
      v10 = [(TUILayout *)self specifiedWidth];
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

      v12 = fmax(*&v6, v9 * fmaxf(*&v10, *(&v10 + 1)));
      *&v6 = v12;
    }
  }

  return (v5 | (v6 << 32));
}

- (void)_computeAspectConstrainedSpecifiedWidthHeight
{
  v3 = [(TUILayout *)self specifiedWidth];
  v5 = v4;
  v6 = [(TUILayout *)self specifiedHeight];
  *&v7 = v5;
  LODWORD(v9) = HIDWORD(v3);
  *&v12 = v11;
  *&v10 = fmaxf(*&v3, *(&v3 + 1));
  *&v14 = fmaxf(*&v6, *(&v6 + 1));
  *&v13 = fminf(*&v6, v11);
  *&v8 = fminf(*&v3, v5);
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

- (void)appendChildRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(TUILayout *)self children];
  v13 = *&a5->c;
  v14[0] = *&a5->a;
  v14[1] = v13;
  v14[2] = *&a5->tx;
  [(TUILayout *)self appendChilden:v12 renderModelCompatibleWithKind:a3 context:v10 transform:v14 toModels:v11];
}

- (void)appendChilden:(id)a3 renderModelCompatibleWithKind:(unint64_t)a4 context:(id)a5 transform:(CGAffineTransform *)a6 toModels:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  [(TUILayout *)self computedNaturalSize];
  v16 = v15;
  v18 = v17;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v12;
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
        v32 = *&a6->c;
        *&v33.a = *&a6->a;
        *&v33.c = v32;
        *&v33.tx = *&a6->tx;
        CGAffineTransformConcat(&v35, &t1, &v33);
        t1 = v35;
        [v25 appendRenderModelCompatibleWithKind:a4 context:v13 transform:&t1 toModels:v14];
      }

      v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }
}

- (id)rootLayout
{
  v2 = self;
  v3 = [(TUILayout *)v2 layoutAncestor];
  while (v3)
  {
    v4 = v2;
    v2 = v3;

    v3 = [(TUILayout *)v2 layoutAncestor];
  }

  return v2;
}

- (id)axModelTreeWithCustomActionsCollector:(id)a3 scrollAncestorLayout:(id)a4 scrollAncestorTranslation:(CGPoint)a5 liveTransformAncestorLayout:(id)a6
{
  y = a5.y;
  x = a5.x;
  v95 = a3;
  v84 = a4;
  v85 = a6;
  v86 = [(TUILayout *)self box];
  v87 = self;
  v11 = [(TUILayout *)self scrollAncestorForChildrenWithAncestor:v84];
  v12 = y;
  v13 = x;
  v93 = v11;
  if (v11 != v84)
  {
    [(TUILayout *)v11 scrollAdditionalAXTranslation];
    v13 = v14;
    v12 = v15;
  }

  v16 = [v86 liveTransformKind];
  v17 = v85;
  if (v16)
  {
    v17 = self;
  }

  v92 = v17;
  v18 = [TUIAXModel alloc];
  v19 = [v86 identifier];
  v20 = [objc_opt_class() description];
  v88 = [(TUIAXModel *)v18 initWithIdentifier:v19 boxType:v20];

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
        v25 = [v24 isAXElement];
        if (v95)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25;
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
        if (v95)
        {
          v29 = v95;
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
          v32 = [v31 axCustomActions];
          v33 = [v32 count] == 0;

          if (v33)
          {
            v43 = [(TUIAXCustomActionsCollector *)v27 customActionsForPress];
            v44 = [v43 count] == 0;

            if (v44)
            {
              goto LABEL_36;
            }

            v45 = [(TUIAXCustomActionsCollector *)v27 customActionsForPress];
            v34 = [v45 firstObject];

            [v34 setIsDefault:1];
            v109 = v34;
            v46 = [NSArray arrayWithObjects:&v109 count:1];
            [v30 setResolvedCustomActions:v46];
          }

          else
          {
            v34 = objc_opt_new();
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v35 = [v23 box];
            v36 = [v35 axCustomActions];

            v37 = [v36 countByEnumeratingWithState:&v101 objects:v110 count:16];
            if (v37)
            {
              v38 = *v102;
              do
              {
                for (j = 0; j != v37; j = j + 1)
                {
                  if (*v102 != v38)
                  {
                    objc_enumerationMutation(v36);
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

                  [v34 addObject:v40];
                }

                v37 = [v36 countByEnumeratingWithState:&v101 objects:v110 count:16];
              }

              while (v37);
            }

            [rect setResolvedCustomActions:v34];
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
  v47 = [v86 axHasNonDefaultAttributess];
  if (v47)
  {
    v48 = [[TUIAXAttributes alloc] initWithAXAttributes:v86];
  }

  else
  {
    v48 = 0;
  }

  [(TUIAXModel *)v88 setAxAttributes:v48];
  if (v47)
  {
  }

  v49 = [(TUILayout *)v84 box];
  v50 = [v49 identifier];
  [(TUIAXModel *)v88 setScrollAncestorIdentifier:v50];

  if (v93 == v87)
  {
    v51 = [(TUILayout *)v93 scrollAxis];
  }

  else
  {
    v51 = 0;
  }

  [(TUIAXModel *)v88 setShouldScrollHorizontally:v51 == &dword_0 + 1];
  [(TUIAXModel *)v88 setShouldScrollVertically:v51 == &dword_0 + 2];
  v52 = [(TUILayout *)v85 box];
  v53 = [v52 identifier];
  [(TUIAXModel *)v88 setLiveTransformAncestorIdentifier:v53];

  -[TUIAXModel setLiveTransformKind:](v88, "setLiveTransformKind:", [v86 liveTransformKind]);
  memset(&v100, 0, sizeof(v100));
  [(TUILayout *)v87 computedTransformInAncestorLayout:v84];
  v98 = v100;
  CGAffineTransformTranslate(&v99, &v98, x, y);
  v100 = v99;
  [(TUILayout *)v87 computedBounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [(TUILayout *)v87 computedLayoutDirection];
  [(TUIAXModel *)v88 setFlipsHorizontal:v62 == &dword_0 + 2];
  if (v62 == &dword_0 + 2)
  {
    if (v84)
    {
      v63 = v84;
    }

    else
    {
      v63 = [(TUILayout *)v87 rootLayout];
    }

    v64 = v63;
    recta = v61;
    [(TUILayout *)v63 computedBounds];
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

- (id)_transformedRenderModel:(id)a3 transform:(CGAffineTransform *)a4 context:(id)a5 allowCache:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  y = CGPointZero.y;
  a = a4->a;
  b = a4->b;
  tx = a4->tx;
  c = a4->c;
  ty = a4->ty;
  d = a4->d;
  [v10 size];
  v13 = v12;
  [v10 size];
  v15 = v14;
  v17 = a4->a;
  v16 = a4->b;
  v18 = a4->c;
  v19 = a4->d;
  v20 = a4->tx;
  v21 = a4->ty;
  [v11 contentsScale];
  v22 = v13 * -0.5;
  v23 = v20 + v15 * -0.5 * v18 + v17 * (v13 * -0.5);
  v24 = v21 + v15 * -0.5 * v19 + v16 * v22;
  v26 = tx + y * c + a * CGPointZero.x + TUIPointRoundedForScale(v23, v24, v25) - v23;
  v28 = ty + y * d + b * CGPointZero.x + v27 - v24;
  v29 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v29;
  *&t1.tx = *&a4->tx;
  memset(&v57, 0, sizeof(v57));
  CGAffineTransformMakeTranslation(&t2, -v26, -v28);
  CGAffineTransformConcat(&v57, &t1, &t2);
  v30 = v57.tx;
  [v11 contentsScale];
  v57.tx = TUIFloatRoundedForScale(v30, v31);
  v32 = v57.ty;
  [v11 contentsScale];
  v57.ty = TUIFloatRoundedForScale(v32, v33);
  v34 = [(TUILayout *)self computeZIndexWithDefault:0];
  if (!v6)
  {
    goto LABEL_22;
  }

  cachedTransformModel = self->_cachedTransformModel;
  if (!cachedTransformModel || (*&self->_flags & 0x40) != 0)
  {
    goto LABEL_22;
  }

  v36 = 0;
  v37 = [(TUIRenderModelTransform *)cachedTransformModel submodel];
  if (v37 != v10)
  {
    v36 = [(TUIRenderModelTransform *)self->_cachedTransformModel submodel];
    if (![v36 isEqual:v10])
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
    if (v37 == v10)
    {
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:

    goto LABEL_21;
  }

  v42 = [(TUIRenderModelTransform *)self->_cachedTransformModel zIndex];
  if (v37 != v10)
  {
  }

  if (v42 == v34)
  {
    v43 = self->_cachedTransformModel;
    goto LABEL_24;
  }

LABEL_22:
  v43 = [[TUIRenderModelTransform alloc] initWithSubmodel:v10];
  [(TUIRenderModelTransform *)v43 setCenter:v26, v28];
  t1 = v57;
  [(TUIRenderModelTransform *)v43 setTransform:&t1];
  [(TUIRenderModelTransform *)v43 setZIndex:v34];
  v44 = [(TUILayout *)self computedRefIdWithContext:v11];
  [(TUIRenderModelTransform *)v43 setRefId:v44];

  v45 = [(TUILayout *)self computedRefInstanceWithContext:v11];
  [(TUIRenderModelTransform *)v43 setRefInstance:v45];

  v46 = [(TUILayout *)self box];
  [v46 renderOutsets];
  [(TUIRenderModelTransform *)v43 setOutsets:?];

  if (v6)
  {
    *&self->_flags &= ~0x40u;
    objc_storeStrong(&self->_cachedTransformModel, v43);
  }

LABEL_24:

  return v43;
}

- (BOOL)shouldUseSubviewRenderModelWithContext:(id)a3
{
  v4 = [a3 currentPointer];
  v5 = [v4 refId];
  v6 = [(TUILayout *)self box];
  v7 = [v6 refId];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (void)appendRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (![(TUILayout *)self hidden])
  {
    v12 = *&a5->c;
    v13[0] = *&a5->a;
    v13[1] = v12;
    v13[2] = *&a5->tx;
    [(TUILayout *)self appendRenderModelIgnoreHiddenCompatibleWithKind:a3 context:v10 transform:v13 toModels:v11];
  }
}

- (void)appendRenderModelIgnoreHiddenCompatibleWithKind:(unint64_t)a3 context:(id)a4 transform:(CGAffineTransform *)a5 toModels:(id)a6
{
  v10 = a4;
  v11 = a6;
  [(TUILayout *)self computedTransform];
  v12 = *&a5->c;
  *&t2.a = *&a5->a;
  *&t2.c = v12;
  *&t2.tx = *&a5->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v13 = *&v31.c;
  *&a5->a = *&v31.a;
  *&a5->c = v13;
  *&a5->tx = *&v31.tx;
  [(TUILayout *)self renderTransform];
  v14 = *&a5->c;
  *&t2.a = *&a5->a;
  *&t2.c = v14;
  *&t2.tx = *&a5->tx;
  CGAffineTransformConcat(&v31, &t1, &t2);
  v15 = *&v31.c;
  *&a5->a = *&v31.a;
  *&a5->c = v15;
  *&a5->tx = *&v31.tx;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10D048;
  v25[3] = &unk_261D78;
  v25[4] = self;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v28 = a3;
  v18 = objc_retainBlock(v25);
  v19 = [v16 currentLiveTransform];
  if (v19)
  {
  }

  else
  {
    v21 = *&a5->c;
    *&v31.a = *&a5->a;
    *&v31.c = v21;
    *&v31.tx = *&a5->tx;
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

  v20 = *&a5->tx;
  *&v31.c = *&a5->c;
  *&v31.tx = v20;
  *&v31.a = *&a5->a;
  (v18[2])(v18, &v31, 1);
LABEL_6:
}

- (id)newLiveTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v5 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(v4, CGPointZero.y), *&a3->a, CGPointZero.x));
  *&t1.a = *&a3->a;
  *&t1.c = v4;
  *&t1.tx = *&a3->tx;
  memset(&v21, 0, sizeof(v21));
  v6 = v5;
  CGAffineTransformMakeTranslation(&t2, -v5.f64[0], -v5.f64[1]);
  CGAffineTransformConcat(&v21, &t1, &t2);
  [(TUILayout *)self computedTransformedSize];
  v8 = v7;
  v10 = v9;
  v11 = [(TUILayout *)self box];
  v12 = [v11 liveTransformKind];

  if ((v12 - 2) < 5)
  {
    v13 = [(TUILayout *)self box];
    v14 = -[TUILayout pinPositionFromLiveTransformKind:](self, "pinPositionFromLiveTransformKind:", [v13 liveTransformKind]);

    v15 = [TUIPinningLiveTransform alloc];
    t1 = v21;
    return [(TUIPinningLiveTransform *)v15 initWithCenter:&t1 size:v14 transform:*&v6 pinPosition:v8, v10];
  }

  if (v12 == &dword_0 + 1)
  {
    v17 = TUIFloatingLiveTransform;
    goto LABEL_7;
  }

  if (v12 == &dword_4 + 3)
  {
    v17 = TUIOverscrollingLiveTransform;
LABEL_7:
    v18 = [v17 alloc];
    t1 = v21;
    return [v18 initWithCenter:&t1 size:*&v6 transform:{v8, v10}];
  }

  return 0;
}

- (unint64_t)pinPositionFromLiveTransformKind:(unint64_t)a3
{
  if (a3 - 2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_24D318[a3 - 2];
  }
}

- (void)appendHoverRegions:(id)a3 relativeToLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(TUILayout *)self childrenForHoverRegions];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) appendHoverRegions:v6 relativeToLayout:v7];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v7 = [v6 isLayout];
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_parent);
    }

    else
    {
      v8 = 0;
    }

    [v10 invalidateCachedRenderModelForLayout:v8];
    if (v7)
    {
    }
  }
}

- (BOOL)isDescendentOfLayout:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self parent];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(TUILayout *)self parent];
    v7 = [v6 isDescendentOfLayout:v4];
  }

  return v7;
}

- (void)setInvalidChildren:(BOOL)a3
{
  if (a3)
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

- (void)_validateLayoutWithBlock:(id)a3
{
  v4 = a3;
  flags = self->_flags;
  self->_flags = (*&flags | 4);
  v6 = v4;
  v4[2]();
  [(TUILayout *)self _computeAspectConstrainedSpecifiedWidthHeight];
  self->_flags = (*&self->_flags & 0xFFFFFFFB | (4 * ((*&flags >> 2) & 1)));
  TUI::Util::PartialStruct::Storage::compress(&self->_storage);
}

- (void)setComputedNaturalSize:(CGSize)a3
{
  if (fabs(a3.width) == INFINITY)
  {
    a3.width = 0.0;
  }

  if (fabs(a3.height) == INFINITY)
  {
    a3.height = 0.0;
  }

  if (self->_computedNaturalSize.width != a3.width || self->_computedNaturalSize.height != a3.height)
  {
    self->_computedNaturalSize = a3;
    v5 = [(TUILayout *)self parent];
    [v5 onChildTransformedSizeDidChange:self];
  }
}

- (void)setComputedOrigin:(CGPoint)a3
{
  if (self->_computedOrigin.x != a3.x || self->_computedOrigin.y != a3.y)
  {
    self->_computedOrigin = a3;
    [(TUILayout *)self onComputedOriginDidChange];
  }
}

- (void)onComputedOriginDidChange
{
  if (self->_cachedTransformModel)
  {
    *&self->_flags |= 0x40u;
    v3 = [(TUILayout *)self parent];
    [v3 onChildRenderModelInvalidate:self];
  }
}

- (void)onInvalidate
{
  v4 = [(TUILayout *)self layoutAncestor];
  if (v4 && (v4[16] & 4) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parent);
    [WeakRetained onChildInvalidate:self];
  }

  [(TUILayout *)self invalidateRenderModel];
}

- (void)onInvalidateIntrinsicSize
{
  [(TUILayout *)self invalidateLayout];
  v3 = [(TUILayout *)self parent];
  [v3 onChildInvalidateIntrinsicSize:self];
}

- (void)onContainersUpdated
{
  [(TUILayout *)self _updateChildren];

  [(TUILayout *)self onChildrenUpdated];
}

- (void)updateDesdendantSpecifiedWidthModifiedWithFlag:(BOOL)a3
{
  if (a3)
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

- (void)appendLayoutsWithSpecifiedWidthModifiedToArray:(id)a3
{
  v4 = a3;
  if ((*(&self->_flags + 1) & 4) != 0)
  {
    [v4 addObject:self];
  }
}

- (void)appendVisibleBoundsObservers:(id)a3 axis:(unint64_t)a4 offset:(double)a5
{
  v8 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(TUILayout *)self layout];
  v10 = [v9 children];

  v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v10);
        }

        [*(*(&v14 + 1) + 8 * v13) appendVisibleBoundsObservers:v8 axis:a4 offset:a5];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)teardown
{
  cachedTransformModel = self->_cachedTransformModel;
  self->_cachedTransformModel = 0;
}

- (void)appendAnchorsToSet:(id)a3 inRoot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUIModelLayoutable *)self->_model anchorPosition];
  if (!v8)
  {
    goto LABEL_29;
  }

  width = self->_computedNaturalSize.width;
  height = self->_computedNaturalSize.height;
  v11 = [v6 axis];
  if (v11 == &dword_0 + 1)
  {
    if (v8 == (&dword_0 + 1))
    {
      v17 = height * 0.5;
      if ([(TUILayout *)self computedLayoutDirection]== &dword_0 + 1)
      {
        width = 0.0;
      }

      goto LABEL_24;
    }

    if (v8 == (&dword_0 + 2))
    {
      v17 = height * 0.5;
      if ([(TUILayout *)self computedLayoutDirection]!= &dword_0 + 1)
      {
        width = 0.0;
      }

      goto LABEL_24;
    }

    v12 = NAN;
    v13 = v8 == (&dword_0 + 3);
    v14 = height * 0.5;
    if (v8 == (&dword_0 + 3))
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
    if (v8 == (&dword_4 + 1))
    {
      v15 = width * 0.5;
    }

    else
    {
      v15 = NAN;
    }

    if (v8 == (&dword_4 + 1))
    {
      v12 = 0.0;
    }

    if (v8 == &dword_4)
    {
      v16 = width * 0.5;
    }

    else
    {
      v16 = v15;
    }

    if (v8 == &dword_4)
    {
      v12 = height;
    }

    v13 = v8 == (&dword_0 + 3);
    if (v8 == (&dword_0 + 3))
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
    [(TUILayout *)self computedTransformInAncestorLayout:v7];
    v18 = v17 * 0.0 + 0.0 * width + 0.0;
    if (v11 != &dword_0 + 1)
    {
      v18 = v17 * 0.0 + 0.0 * width + 0.0;
    }

    [v6 appendScrollAnchor:v18];
  }

LABEL_29:
  if ([(TUILayout *)self shouldAppendChildAnchorsForAncestor])
  {
    [(TUILayout *)self appendChildAnchorsToSet:v6 inRoot:v7];
  }

  else
  {
    [(TUILayout *)self appendEmbeddedAnchorsToSet:v6 inRoot:v7];
  }
}

- (void)appendChildAnchorsToSet:(id)a3 inRoot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(TUILayout *)self children];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11) appendAnchorsToSet:v6 inRoot:v7];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)guideProvider
{
  v3 = [(TUILayout *)self layoutAncestor];
  v4 = [v3 guideProviderForLayout:self];

  return v4;
}

- (BOOL)shouldUseDefaultGuideForLayout:(id)a3 edge:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TUILayout *)self layoutAncestor];
  LOBYTE(a4) = [v7 shouldUseDefaultGuideForLayout:v6 edge:a4];

  return a4;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(TUILayout *)self computedFrame];
  v6 = NSStringFromCGRect(v19);
  v7 = [v3 initWithFormat:@"<%@ %p frame=%@", v5, self, v6];

  v8 = [(TUILayout *)self guideTop];

  if (v8)
  {
    v9 = [(TUILayout *)self guideTop];
    [v7 appendFormat:@" top=%@", v9];
  }

  v10 = [(TUILayout *)self guideBottom];

  if (v10)
  {
    v11 = [(TUILayout *)self guideBottom];
    [v7 appendFormat:@" bottom=%@", v11];
  }

  v12 = [(TUILayout *)self guideLeading];

  if (v12)
  {
    v13 = [(TUILayout *)self guideLeading];
    [v7 appendFormat:@" leading=%@", v13];
  }

  v14 = [(TUILayout *)self guideTrailing];

  if (v14)
  {
    v15 = [(TUILayout *)self guideTrailing];
    [v7 appendFormat:@" trailing=%@", v15];
  }

  [v7 appendString:@">"];
  v16 = [v7 copy];

  return v16;
}

- (int64_t)computeZIndexWithDefault:(int64_t)a3
{
  v5 = [(TUILayout *)self box];
  v6 = [v5 zIndex];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v6;
  }

  v7 = [(TUILayout *)self box];
  v8 = [v7 role];

  if (v8 == &dword_0 + 1)
  {
    v9 = &TUIZIndexBackground;
LABEL_6:
    v6 = *v9;
    if (*v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v6;
    }

    goto LABEL_7;
  }

  if (v8 == &dword_0 + 3)
  {
    v9 = &TUIZIndexForeground;
    goto LABEL_6;
  }

LABEL_7:
  v10 = [(TUILayout *)self layoutAncestor];
  v11 = v10;
  if (v10)
  {
    a3 = [v10 computeZIndexWithDefault:a3];
  }

  return a3;
}

- (id)inheritedRefIdWithContext:(id)a3
{
  v4 = a3;
  if ([(TUILayout *)self shouldDescendentsInheritRefSpecWithContext:v4])
  {
    v5 = [(TUILayout *)self computedRefIdWithContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inheritedRefInstanceWithContext:(id)a3
{
  v4 = a3;
  if ([(TUILayout *)self shouldDescendentsInheritRefSpecWithContext:v4])
  {
    v5 = [(TUILayout *)self computedRefInstanceWithContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)computedRefIdWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 refId];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(TUILayout *)self layoutAncestor];
    v8 = [v9 inheritedRefIdWithContext:v4];
  }

  return v8;
}

- (id)computedRefInstanceWithContext:(id)a3
{
  v4 = a3;
  v5 = [(TUILayout *)self box];
  v6 = [v5 refInstance];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(TUILayout *)self layoutAncestor];
    v8 = [v9 inheritedRefInstanceWithContext:v4];
  }

  return v8;
}

- (void)appendEmbeddedIdentifierMaps:(id)a3 updateControllers:(id)a4 UUIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(TUILayout *)self children];
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14) appendEmbeddedIdentifierMaps:v8 updateControllers:v9 UUIDs:v10];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (CGSize)renderModelSizeWithContext:(id)a3
{
  v4 = a3;
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  [v4 contentsScale];
  v10 = TUISizeRoundedForScale(v6, v8, v9);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)hoverIdentifierWithName:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      if (objc_opt_respondsToSelector())
      {
        break;
      }

      v8 = [v7 layoutAncestor];

      v7 = v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = [v7 hoverIdentifierWithName:v4 forDescdendent:v6];

  return v9;
}

- (UIEdgeInsets)erasableInsetsForContentsScale:(double)a3
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

  *&v24 = TUIInsetsExtendedForScale(v21, v22, v23, v20, a3).u64[0];
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

- (id)modelIdentifierForEnclosingScrollable
{
  v2 = self;
  do
  {
    v3 = [(TUILayout *)v2 layoutAncestor];

    v4 = [(TUILayout *)v3 modelIdentifierForScrollable];
    if (v4)
    {
      break;
    }

    v2 = v3;
  }

  while (v3);

  return v4;
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