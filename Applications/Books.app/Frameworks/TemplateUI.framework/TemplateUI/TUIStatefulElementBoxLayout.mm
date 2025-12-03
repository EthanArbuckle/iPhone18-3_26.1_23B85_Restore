@interface TUIStatefulElementBoxLayout
- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight;
- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth;
- (BOOL)collectImpressionsForChild:(id)child;
- (BOOL)collectLinkEntitiesForChild:(id)child;
- (BOOL)groupedContainingIsGrouped;
- (CGRect)computedErasableBoundsPrimitive;
- (UIEdgeInsets)groupedContainingInsets;
- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)_updateSpecifiedWidth;
- (void)computeLayout;
- (void)onChildrenUpdated;
- (void)onSpecifiedWidthChangedForChild:(id)child;
@end

@implementation TUIStatefulElementBoxLayout

- ($E297CC25127479E857BE23A4F8632EA4)computeIntrinsicWidth
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_E46CC;
  v6[3] = &unk_2618B0;
  v6[4] = &__p;
  [stateNameToLayout enumerateKeysAndObjectsUsingBlock:v6];

  v4 = TUILengthCombine(__p, (v8 - __p) >> 4);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v4;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4012000000;
  v15 = sub_E4984;
  v16 = nullsub_5;
  v17 = "";
  v18 = CGSizeZero;
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v6 = [stateNameToLayout count];

  if (v6)
  {
    stateNameToLayout2 = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_E4994;
    v11[3] = &unk_2618D8;
    *&v11[6] = v4;
    v11[4] = self;
    v11[5] = &v12;
    [stateNameToLayout2 enumerateKeysAndObjectsUsingBlock:v11];

    v4 = v13[6];
    v8 = v13[7];
  }

  else
  {
    [(TUILayout *)self computeHeight];
    v8 = v9;
    v10 = v13;
    v13[6] = v4;
    v10[7] = v9;
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v8];
  _Block_object_dispose(&v12, 8);
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentWidth
{
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v5 = [stateNameToLayout objectForKeyedSubscript:@"default"];

  if (v5)
  {
    computedWidth = [v5 computedWidth];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIStatefulElementBoxLayout;
    computedWidth = [($E297CC25127479E857BE23A4F8632EA4 *)&v9 computedContentWidth];
  }

  v7 = computedWidth;

  return v7;
}

- ($E297CC25127479E857BE23A4F8632EA4)computedContentHeight
{
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v5 = [stateNameToLayout objectForKeyedSubscript:@"default"];

  if (v5)
  {
    computedHeight = [v5 computedHeight];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TUIStatefulElementBoxLayout;
    computedHeight = [($E297CC25127479E857BE23A4F8632EA4 *)&v9 computedContentWidth];
  }

  v7 = computedHeight;

  return v7;
}

- (CGRect)computedErasableBoundsPrimitive
{
  v21.receiver = self;
  v21.super_class = TUIStatefulElementBoxLayout;
  [(TUILayout *)&v21 computedErasableBoundsPrimitive];
  x = v3;
  y = v5;
  width = v7;
  height = v9;
  v11 = [(TUILayout *)self box];
  focusStyle = [v11 focusStyle];

  if (focusStyle)
  {
    [(TUILayout *)self computedBounds];
    [focusStyle erasableBoundsWithBounds:?];
    v25.origin.x = v13;
    v25.origin.y = v14;
    v25.size.width = v15;
    v25.size.height = v16;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectUnion(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)onChildrenUpdated
{
  v8.receiver = self;
  v8.super_class = TUIStatefulElementBoxLayout;
  [(TUILayout *)&v8 onChildrenUpdated];
  [(TUILayout *)self invalidateIntrinsicSize];
  v3 = objc_opt_new();
  stateNameToLayout = self->_stateNameToLayout;
  self->_stateNameToLayout = v3;

  v5 = [(TUILayout *)self box];
  stateMap = [v5 stateMap];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E4E14;
  v7[3] = &unk_261900;
  v7[4] = self;
  [stateMap enumerateKeysAndObjectsUsingBlock:v7];

  [(TUIStatefulElementBoxLayout *)self _updateSpecifiedWidth];
}

- (BOOL)collectImpressionsForChild:(id)child
{
  childCopy = child;
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v6 = [stateNameToLayout objectForKeyedSubscript:@"default"];
  v7 = v6 == childCopy;

  return v7;
}

- (BOOL)collectLinkEntitiesForChild:(id)child
{
  childCopy = child;
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v6 = [stateNameToLayout objectForKeyedSubscript:@"default"];
  v7 = v6 == childCopy;

  return v7;
}

- (void)_updateSpecifiedWidth
{
  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v10 = [stateNameToLayout objectForKeyedSubscript:@"default"];

  v4 = [(TUILayout *)self box];
  [v4 width];
  if ((v5 & 0x6000000000000) == 0x2000000000000)
  {
    [v10 specifiedWidth];
    v7 = HIWORD(v6) & 7;
    v9 = v7 == 4 || v7 == 1;
  }

  else
  {
    v9 = 0;
  }

  [(TUILayout *)self setSpecifiedWidthComputeInherited:v9];
}

- (void)onSpecifiedWidthChangedForChild:(id)child
{
  childCopy = child;
  v5.receiver = self;
  v5.super_class = TUIStatefulElementBoxLayout;
  [(TUILayout *)&v5 onSpecifiedWidthChangedForChild:childCopy];
  [(TUIStatefulElementBoxLayout *)self _updateSpecifiedWidth];
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v46 = contextCopy;
  if (kind < 4)
  {
    if (kind == 3)
    {
      stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
      v25 = [stateNameToLayout objectForKeyedSubscript:@"default"];

      if (v25)
      {
        v45 = objc_opt_new();
        [(TUILayout *)self computedNaturalSize];
        memset(&v51, 0, sizeof(v51));
        CGAffineTransformMakeTranslation(&v51, v26 * 0.5, v27 * 0.5);
        stateNameToLayout2 = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
        v29 = [stateNameToLayout2 objectForKeyedSubscript:@"default"];
        v50 = v51;
        [v29 appendRenderModelCompatibleWithKind:3 context:contextCopy transform:&v50 toModels:v45];

        v30 = [[TUIContainerLayerConfig alloc] initWithSize:CGSizeZero.width, CGSizeZero.height];
        v31 = [TUIRenderModelLayer alloc];
        v32 = [v45 copy];
        v33 = [(TUIRenderModelLayer *)v31 initWithSubmodels:v32 config:v30 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

        [(TUILayout *)self renderModelSizeWithContext:contextCopy];
        [(TUIRenderModelLayer *)v33 setSize:?];
        v34 = [(TUILayout *)self box];
        identifier = [v34 identifier];
        [(TUIRenderModelLayer *)v33 setIdentifier:identifier];

        goto LABEL_19;
      }
    }

LABEL_15:
    v33 = 0;
    goto LABEL_19;
  }

  v7 = [(TUILayout *)self box];
  renderModelBlock = [v7 renderModelBlock];

  if (!renderModelBlock)
  {
    goto LABEL_15;
  }

  v41 = objc_opt_new();
  v9 = [(TUILayout *)self box];
  pointer = [v9 pointer];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_E58E8;
  v56[3] = &unk_261950;
  selfCopy = self;
  v56[4] = self;
  v57 = contextCopy;
  v44 = v41;
  v58 = v44;
  v42 = v57;
  [v57 evaluateWithPointer:pointer block:v56];

  v11 = [(TUILayout *)self box];
  menuContainer = [v11 menuContainer];
  imageModelsToLoad = [menuContainer imageModelsToLoad];

  if ([imageModelsToLoad count])
  {
    v48 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [imageModelsToLoad count]);
    [v42 contentsScale];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = imageModelsToLoad;
    v13 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v13)
    {
      v14 = *v53;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          controller = [(TUILayout *)selfCopy controller];
          manager = [controller manager];
          imageResourceCache = [manager imageResourceCache];
          urlString = [v16 urlString];
          baseURL = [v16 baseURL];
          [v16 size];
          v22 = [imageResourceCache imageResourceForTemplatedURL:urlString baseURL:baseURL naturalSize:? contentsScale:?];

          identifier2 = [v16 identifier];
          [v48 setObject:v22 forKeyedSubscript:identifier2];
        }

        v13 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v13);
    }

    self = selfCopy;
  }

  else
  {
    v48 = 0;
  }

  v36 = [(TUILayout *)self box];
  renderModelBlock2 = [v36 renderModelBlock];
  v38 = [(TUILayout *)self box];
  animationGroups = [v38 animationGroups];
  v33 = (renderModelBlock2)[2](renderModelBlock2, self, v44, v48, animationGroups);

  [(TUILayout *)selfCopy renderModelSizeWithContext:v42];
  [(TUIRenderModelLayer *)v33 setSize:?];

LABEL_19:
  return v33;
}

- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout
{
  y = translation.y;
  x = translation.x;
  collectorCopy = collector;
  layoutCopy = layout;
  ancestorLayoutCopy = ancestorLayout;
  v35.receiver = self;
  v35.super_class = TUIStatefulElementBoxLayout;
  v15 = [(TUILayout *)&v35 axModelTreeWithCustomActionsCollector:collectorCopy scrollAncestorLayout:layoutCopy scrollAncestorTranslation:ancestorLayoutCopy liveTransformAncestorLayout:x, y];
  [v15 setIsControl:1];
  v16 = [(TUILayout *)self box];
  [v15 setIsEditableControl:{objc_msgSend(v16, "isEditableControl")}];

  v17 = [(TUILayout *)self box];
  triggerHandler = [v17 triggerHandler];
  v19 = [triggerHandler hasActionForTrigger:@"context-menu"];
  if (v19)
  {
    v6 = [(TUILayout *)self box];
    v20 = [v6 menuIsPrimary] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  [v15 setHasContextMenu:v20];
  if (v19)
  {
  }

  stateNameToLayout = [(TUIStatefulElementBoxLayout *)self stateNameToLayout];
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_E5D1C;
  v32 = &unk_261928;
  selfCopy = self;
  v22 = v15;
  v34 = v22;
  [stateNameToLayout enumerateKeysAndObjectsUsingBlock:&v29];

  if (collectorCopy)
  {
    v23 = [(TUILayout *)self box:v29];
    triggerHandler2 = [v23 triggerHandler];
    identifier = [v22 identifier];
    [collectorCopy addActionTriggerHandler:triggerHandler2 controlIdentifier:identifier];
  }

  v26 = v34;
  v27 = v22;

  return v22;
}

- (BOOL)groupedContainingIsGrouped
{
  v2 = [(TUILayout *)self box];
  grouped = [v2 grouped];

  return grouped;
}

- (UIEdgeInsets)groupedContainingInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end