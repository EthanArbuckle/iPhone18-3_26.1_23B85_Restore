@interface TUIAXElement
- (BOOL)_presentContextMenu;
- (BOOL)_shouldInferAccessibilityLabel;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (NSString)inferredLabel;
- (TUIAXElement)initWithEvaluationContext:(id)context accessibilityContainer:(id)container;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_currentStateForControl;
- (id)_scrollAncestor;
- (id)_viewForOverrideIdentifier:(id)identifier outParentRenderModelSection:(id *)section outParentView:(id *)view;
- (id)accessibilityContainer;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)description;
- (int64_t)accessibilityContainerType;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)dealloc;
- (void)updateWithAXModel:(id)model;
@end

@implementation TUIAXElement

- (TUIAXElement)initWithEvaluationContext:(id)context accessibilityContainer:(id)container
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TUIAXElement;
  v8 = [(TUIAXElement *)&v11 initWithAccessibilityContainer:container];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (void)dealloc
{
  identifier = [(TUIAXModel *)self->_axModel identifier];

  if (identifier)
  {
    identifierToAXElementMap = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
    identifier2 = [(TUIAXModel *)self->_axModel identifier];
    [identifierToAXElementMap removeObjectForKey:identifier2];
  }

  v6.receiver = self;
  v6.super_class = TUIAXElement;
  [(TUIAXElement *)&v6 dealloc];
}

- (id)description
{
  v3 = [(TUIAXElement *)self _accessibilityTraitsAsHumanReadableStrings:[(TUIAXElement *)self accessibilityTraits]];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  axModel = [(TUIAXElement *)self axModel];
  isAccessibilityElement = [(TUIAXElement *)self isAccessibilityElement];
  v7 = @" accessible=YES;";
  if (!isAccessibilityElement)
  {
    v7 = &stru_264550;
  }

  v26 = v7;
  accessibilityHint2 = NSString;
  [(TUIAXElement *)self accessibilityFrame];
  v28 = NSStringFromCGRect(v34);
  v31 = [NSString stringWithFormat:@" frame=%@", v28];;
  v27 = [v3 count];
  if (v27)
  {
    accessibilityHint2 = NSString;
    v25 = [v3 componentsJoinedByString:{@", "}];
    v30 = [NSString stringWithFormat:@" traits=%@", v25];;
  }

  else
  {
    v30 = &stru_264550;
  }

  accessibilityLabel = [(TUIAXElement *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    accessibilityHint2 = NSString;
    accessibilityLabel2 = [(TUIAXElement *)self accessibilityLabel];
    v29 = [NSString stringWithFormat:@" label=%@", accessibilityLabel2];;
  }

  else
  {
    v29 = &stru_264550;
  }

  accessibilityValue = [(TUIAXElement *)self accessibilityValue];
  if (accessibilityValue)
  {
    accessibilityHint2 = NSString;
    accessibilityValue2 = [(TUIAXElement *)self accessibilityValue];
    v11 = [NSString stringWithFormat:@" value=%@", accessibilityValue2];;
  }

  else
  {
    v11 = &stru_264550;
  }

  accessibilityHint = [(TUIAXElement *)self accessibilityHint];
  if (accessibilityHint)
  {
    accessibilityHint2 = [(TUIAXElement *)self accessibilityHint];
    v13 = [NSString stringWithFormat:@" hint=%@", accessibilityHint2];;
  }

  else
  {
    v13 = &stru_264550;
  }

  axModel2 = [(TUIAXElement *)self axModel];
  if ([axModel2 shouldScrollVertically])
  {
    v15 = [NSString stringWithFormat:@"<%@: %p (%@) %@%@%@%@%@%@%@>", v5, self, axModel, v26, v31, v30, v29, v11, v13, @" scroll=v;"];;
  }

  else
  {
    [(TUIAXElement *)self axModel];
    v22 = accessibilityLabel;
    v16 = accessibilityHint2;
    v18 = v17 = v3;
    shouldScrollHorizontally = [v18 shouldScrollHorizontally];
    v20 = @" scroll=h;";
    if (!shouldScrollHorizontally)
    {
      v20 = &stru_264550;
    }

    v15 = [NSString stringWithFormat:@"<%@: %p (%@) %@%@%@%@%@%@%@>", v5, self, axModel, v26, v31, v30, v29, v11, v13, v20];;

    v3 = v17;
    accessibilityHint2 = v16;
    accessibilityLabel = v22;
  }

  if (accessibilityHint)
  {
  }

  if (accessibilityValue)
  {
  }

  if (accessibilityLabel)
  {
  }

  if (v27)
  {
  }

  return v15;
}

- (NSString)inferredLabel
{
  v3 = objc_opt_new();
  children = [(TUIAXElement *)self children];
  v5 = [NSMutableArray tui_stackWithObjectsFromArray:children];

  while ([v5 count])
  {
    tui_pop = [v5 tui_pop];
    axModel = [tui_pop axModel];
    axAttributes = [axModel axAttributes];

    if ([axAttributes isAXElement] && (objc_msgSend(axAttributes, "axLabel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      axLabel = [axAttributes axLabel];
      [v3 addObject:axLabel];
    }

    else
    {
      children2 = [tui_pop children];
      v13 = [children2 count];

      if (!v13)
      {
        goto LABEL_9;
      }

      axLabel = [tui_pop children];
      [v5 tui_pushObjectsFromArray:axLabel];
    }

LABEL_9:
  }

  v14 = [v3 componentsJoinedByString:{@", "}];

  return v14;
}

- (void)updateWithAXModel:(id)model
{
  modelCopy = model;
  v6 = self->_axModel;
  identifier = [modelCopy identifier];
  v64 = v6;
  identifier2 = [(TUIAXModel *)v6 identifier];
  v9 = [identifier isEqual:identifier2];

  if ((v9 & 1) == 0)
  {
    identifier3 = [(TUIAXModel *)v64 identifier];

    if (identifier3)
    {
      identifierToAXElementMap = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
      identifier4 = [(TUIAXModel *)v64 identifier];
      [identifierToAXElementMap removeObjectForKey:identifier4];
    }

    identifier5 = [modelCopy identifier];

    if (identifier5)
    {
      identifierToAXElementMap2 = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
      identifier6 = [modelCopy identifier];
      [identifierToAXElementMap2 setObject:self forKey:identifier6];
    }
  }

  objc_storeStrong(&self->_axModel, model);
  v67 = objc_opt_new();
  if ([modelCopy isControl] && (-[TUIAXElement context](self, "context"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "renderModelSection"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    _currentStateForControl = [(TUIAXElement *)self _currentStateForControl];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    children = [modelCopy children];
    v20 = [children countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v20)
    {
      v21 = v20;
      v69 = 0;
      v22 = *v79;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v79 != v22)
          {
            objc_enumerationMutation(children);
          }

          v24 = *(*(&v78 + 1) + 8 * i);
          stateName = [v24 stateName];
          v26 = [_currentStateForControl isEqualToString:stateName];

          if (v26)
          {
            v27 = v24;

            v69 = v27;
          }
        }

        v21 = [children countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v21);
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  children2 = [modelCopy children];
  v29 = [children2 countByEnumeratingWithState:&v74 objects:v83 count:16];
  v68 = modelCopy;
  if (v29)
  {
    v30 = v29;
    v31 = *v75;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(children2);
        }

        v33 = *(*(&v74 + 1) + 8 * j);
        if ([v33 hasAccessibleDescendants])
        {
          if (([v33 hidden] & 1) == 0)
          {
            if (![modelCopy isControl] || (-[TUIAXElement context](self, "context"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "renderModelSection"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, !v35) || v33 == v69 || !v69 && (objc_msgSend(v33, "stateName"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", @"default"), v36, v37))
            {
              identifier7 = [v33 identifier];
              context = [(TUIAXElement *)self context];
              identifierToAXElementMap3 = [context identifierToAXElementMap];
              v41 = [identifierToAXElementMap3 objectForKey:identifier7];

              if (!v41)
              {
                v42 = [TUIAXElement alloc];
                context2 = [(TUIAXElement *)self context];
                v41 = [(TUIAXElement *)v42 initWithEvaluationContext:context2 accessibilityContainer:self];
              }

              if (v41 != self)
              {
                [(TUIAXElement *)v41 updateWithAXModel:v33];
                [(TUIAXElement *)v41 setAccessibilityContainer:self];
                [v67 addObject:v41];
              }

              modelCopy = v68;
            }
          }
        }
      }

      v30 = [children2 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v30);
  }

  resolvedCustomActions = [modelCopy resolvedCustomActions];
  if ([resolvedCustomActions count])
  {
  }

  else
  {
    hasContextMenu = [modelCopy hasContextMenu];

    if ((hasContextMenu & 1) == 0)
    {
      [(TUIAXElement *)self setAccessibilityCustomActions:0];
      [(TUIAXElement *)self setRetainedCustomActionTargets:0];
      goto LABEL_60;
    }
  }

  v66 = objc_opt_new();
  v65 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  resolvedCustomActions2 = [modelCopy resolvedCustomActions];
  v47 = [resolvedCustomActions2 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v71;
    do
    {
      for (k = 0; k != v48; k = k + 1)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(resolvedCustomActions2);
        }

        v51 = *(*(&v70 + 1) + 8 * k);
        if ([v51 isDefault])
        {
          [(TUIAXElement *)self setDefaultAction:v51];
        }

        else
        {
          trigger = [v51 trigger];
          v53 = [trigger isEqualToString:@"accessibilityIncrement"];

          if (v53)
          {
            [(TUIAXElement *)self setIncrementAction:v51];
          }

          else
          {
            trigger2 = [v51 trigger];
            v55 = [trigger2 isEqualToString:@"accessibilityDecrement"];

            if (v55)
            {
              [(TUIAXElement *)self setDecrementAction:v51];
            }

            else
            {
              v56 = [[TUIAXCustomActionInstantiation alloc] initWithCustomAction:v51 arguments:0 axElement:self];
              v57 = [UIAccessibilityCustomAction alloc];
              label = [v51 label];
              v59 = [v57 initWithName:label target:v56 selector:"invoke"];

              [v66 addObject:v59];
              [v65 addObject:v56];
            }
          }
        }
      }

      v48 = [resolvedCustomActions2 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v48);
  }

  modelCopy = v68;
  if ([v68 hasContextMenu])
  {
    v60 = TUIBundle();
    v61 = [v60 localizedStringForKey:@"Show menu" value:&stru_264550 table:@"TemplateUILocalizable"];

    v62 = [[UIAccessibilityCustomAction alloc] initWithName:v61 target:self selector:"_presentContextMenu"];
    [v66 addObject:v62];
  }

  v63 = [v66 copy];
  [(TUIAXElement *)self setAccessibilityCustomActions:v63];

  [(TUIAXElement *)self setRetainedCustomActionTargets:v65];
LABEL_60:
  [(TUIAXElement *)self setChildren:v67];
}

- (id)_viewForOverrideIdentifier:(id)identifier outParentRenderModelSection:(id *)section outParentView:(id *)view
{
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (identifierCopy)
  {
    identifier = identifierCopy;
  }

  else
  {
    axModel = [(TUIAXElement *)self axModel];
    identifier = [axModel identifier];
  }

  axModel2 = [(TUIAXElement *)self axModel];
  scrollAncestorIdentifier = [axModel2 scrollAncestorIdentifier];

  context = [(TUIAXElement *)self context];
  v15 = context;
  sectionCopy = section;
  if (!scrollAncestorIdentifier)
  {
    renderModelSection = [context renderModelSection];
    identifierToModelMap = [renderModelSection identifierToModelMap];
    v23 = [identifierToModelMap objectForKey:identifier];

    if (v23)
    {
      itemIndex = [v23 itemIndex];
      context2 = [(TUIAXElement *)self context];
      v30 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", itemIndex, [context2 sectionIndex]);

      context3 = [(TUIAXElement *)self context];
      screenOffsetProvider = [context3 screenOffsetProvider];
      feedViewForAX = [screenOffsetProvider feedViewForAX];
      v25 = [feedViewForAX viewAtIndexPath:v30];

      v21 = 0;
      if (!view)
      {
        goto LABEL_13;
      }
    }

    else
    {
      context4 = [(TUIAXElement *)self context];
      screenOffsetProvider2 = [context4 screenOffsetProvider];
      feedViewForAX2 = [screenOffsetProvider2 feedViewForAX];

      v25 = [feedViewForAX2 descendentViewWithIdentifier:identifier];

      v21 = 0;
      v23 = 0;
      if (!view)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v34 = v21;
    *view = v21;
    goto LABEL_13;
  }

  identifierToAXElementMap = [context identifierToAXElementMap];
  v17 = [identifierToAXElementMap objectForKey:scrollAncestorIdentifier];

  v18 = objc_opt_class();
  v49 = 0;
  v19 = [v17 _viewForOverrideIdentifier:0 outParentRenderModelSection:&v49 outParentView:0];
  v20 = v49;
  v21 = TUIDynamicCast(v18, v19);

  identifierToModelMap2 = [v20 identifierToModelMap];
  v23 = [identifierToModelMap2 objectForKey:identifier];

  if (v23)
  {
    v24 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v23 itemIndex], 0);
    v25 = [v21 viewAtIndexPath:v24];
  }

  else
  {
    v25 = [v21 descendentViewWithIdentifier:identifier];
  }

  if (view)
  {
    goto LABEL_12;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = objc_opt_class();
    v36 = TUIDynamicCast(v35, v25);
    scrollView = [v36 scrollView];

    v25 = scrollView;
  }

  if (v25)
  {
    v38 = objc_opt_class();
    v39 = TUIDynamicCast(v38, v25);
    renderModel = [v39 renderModel];

    sections = [renderModel sections];
    v42 = [sections objectAtIndexedSubscript:0];

    if (sectionCopy)
    {
      v43 = v42;
      *sectionCopy = v42;
    }
  }

  return v25;
}

- (id)_scrollAncestor
{
  v5 = 0;
  v2 = [(TUIAXElement *)self _viewForOverrideIdentifier:0 outParentRenderModelSection:0 outParentView:&v5];
  v3 = v5;

  return v3;
}

- (id)_currentStateForControl
{
  v3 = objc_opt_class();
  v4 = [(TUIAXElement *)self controlViewForOverrideIdentifier:0];
  v5 = TUIDynamicCast(v3, v4);

  if (v5)
  {
    currentState = [v5 currentState];
  }

  else
  {
    currentState = @"default";
  }

  v7 = currentState;

  return v7;
}

- (BOOL)_shouldInferAccessibilityLabel
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];

  LOBYTE(axModel) = [axAttributes isAXElement];
  accessibilityTraits = [axAttributes accessibilityTraits];
  v5 = [axAttributes axTouchContainer] ^ 1;

  return (axModel | ((accessibilityTraits & 4) != 0)) & v5;
}

- (BOOL)_presentContextMenu
{
  v3 = objc_opt_class();
  axModel = [(TUIAXElement *)self axModel];
  identifier = [axModel identifier];
  v6 = [(TUIAXElement *)self controlViewForOverrideIdentifier:identifier];
  v7 = TUIDynamicCast(v3, v6);

  LOBYTE(v6) = [v7 presentContextMenuForAccessibility];
  return v6;
}

- (id)accessibilityIdentifier
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axIdentifier = [axAttributes axIdentifier];

  if (!axIdentifier)
  {
    v7.receiver = self;
    v7.super_class = TUIAXElement;
    axIdentifier = [(TUIAXElement *)&v7 accessibilityIdentifier];
  }

  return axIdentifier;
}

- (BOOL)isAccessibilityElement
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  isAXElement = [axAttributes isAXElement];

  return isAXElement;
}

- (id)accessibilityElements
{
  children = [(TUIAXElement *)self children];
  axModel = [(TUIAXElement *)self axModel];
  shouldVendControlView = [axModel shouldVendControlView];

  if (shouldVendControlView)
  {
    axModel2 = [(TUIAXElement *)self axModel];
    identifier = [axModel2 identifier];
    v8 = [(TUIAXElement *)self controlViewForOverrideIdentifier:identifier];

    if (v8)
    {
      v11 = v8;
      v9 = [NSArray arrayWithObjects:&v11 count:1];

      [v8 setAccessibilityContainer:self];
      children = v9;
    }
  }

  return children;
}

- (id)accessibilityLabel
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axLabel = [axAttributes axLabel];

  if (![axLabel length] && -[TUIAXElement _shouldInferAccessibilityLabel](self, "_shouldInferAccessibilityLabel"))
  {
    inferredLabel = [(TUIAXElement *)self inferredLabel];

    axLabel = inferredLabel;
  }

  axModel2 = [(TUIAXElement *)self axModel];
  if (![axModel2 isControl])
  {
    goto LABEL_12;
  }

  if (![axLabel length])
  {

    goto LABEL_9;
  }

  axModel3 = [(TUIAXElement *)self axModel];
  isEditableControl = [axModel3 isEditableControl];

  if (isEditableControl)
  {
LABEL_9:
    axModel2 = [(TUIAXElement *)self controlViewForOverrideIdentifier:0];
    accessibilityLabel = [axModel2 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      v11 = accessibilityLabel;

      axLabel = v11;
    }

LABEL_12:
  }

  return axLabel;
}

- (id)accessibilityValue
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axValue = [axAttributes axValue];

  return axValue;
}

- (id)accessibilityHint
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axHint = [axAttributes axHint];

  return axHint;
}

- (unint64_t)accessibilityTraits
{
  v22.receiver = self;
  v22.super_class = TUIAXElement;
  accessibilityTraits = [(TUIAXElement *)&v22 accessibilityTraits];
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axButton = [axAttributes axButton];
  v7 = UIAccessibilityTraitButton;
  if (!axButton)
  {
    v7 = 0;
  }

  v8 = v7 | accessibilityTraits;
  if ([axAttributes axImage])
  {
    v9 = UIAccessibilityTraitImage;
  }

  else
  {
    v9 = 0;
  }

  axHeading = [axAttributes axHeading];
  v11 = UIAccessibilityTraitHeader;
  if (!axHeading)
  {
    v11 = 0;
  }

  v12 = v8 | v9 | v11;
  if (([axModel shouldScrollVertically] & 1) != 0 || objc_msgSend(axModel, "shouldScrollHorizontally"))
  {
    v12 |= UIAccessibilityTraitScrollable;
  }

  if ([axAttributes axDisabled])
  {
    v13 = UIAccessibilityTraitNotEnabled;
  }

  else
  {
    v13 = 0;
  }

  axAdjustable = [axAttributes axAdjustable];
  v15 = UIAccessibilityTraitAdjustable;
  if (!axAdjustable)
  {
    v15 = 0;
  }

  v16 = v13 | v15;
  axToggle = [axAttributes axToggle];
  v18 = UIAccessibilityTraitToggleButton;
  if (!axToggle)
  {
    v18 = 0;
  }

  v19 = v16 | v18 | v12;
  if ([axAttributes axStaticText])
  {
    v20 = UIAccessibilityTraitStaticText;
  }

  else
  {
    v20 = 0;
  }

  return v19 | v20;
}

- (BOOL)canBecomeFocused
{
  if (UIAccessibilityIsVoiceOverRunning() && [(TUIAXElement *)self _accessibilityIsFKARunningForFocusItem])
  {

    return [(TUIAXElement *)self isAccessibilityElement];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = TUIAXElement;
    return [(TUIAXElement *)&v4 canBecomeFocused];
  }
}

- (id)accessibilityContainer
{
  v11.receiver = self;
  v11.super_class = TUIAXElement;
  accessibilityContainer = [(TUIAXElement *)&v11 accessibilityContainer];
  if (!_AXSFullKeyboardAccessEnabled() || !UIAccessibilityIsVoiceOverRunning())
  {
    v8 = accessibilityContainer;
    goto LABEL_12;
  }

  context = [(TUIAXElement *)self context];
  screenOffsetProvider = [context screenOffsetProvider];
  v6 = screenOffsetProvider;
  if (screenOffsetProvider)
  {
    topLevelAXElement = [screenOffsetProvider topLevelAXElement];
    if (topLevelAXElement == self)
    {
      _scrollAncestor = [(TUIAXElement *)self _scrollAncestor];
      if (_scrollAncestor || ([v6 feedViewForAX], (_scrollAncestor = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = _scrollAncestor;

        goto LABEL_11;
      }
    }
  }

  v8 = accessibilityContainer;
LABEL_11:

LABEL_12:

  return v8;
}

- (int64_t)accessibilityContainerType
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  v7.receiver = self;
  v7.super_class = TUIAXElement;
  accessibilityContainerType = [(TUIAXElement *)&v7 accessibilityContainerType];
  if ([axAttributes axTouchContainer])
  {
    accessibilityContainerType = &dword_4;
  }

  return accessibilityContainerType;
}

- (CGRect)accessibilityFrame
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  axModel = [(TUIAXElement *)self axModel];
  [axModel accessibilityFrameRelativeToScrollAncestor];
  v7 = v6;
  v9 = v8;

  selfCopy = self;
  v11 = selfCopy;
  do
  {
    axModel2 = [v11 axModel];
    [axModel2 accessibilityFrameRelativeToScrollAncestor];
    v14 = v13;
    v16 = v15;

    v120.origin.x = x;
    v120.origin.y = y;
    v120.size.width = v7;
    v120.size.height = v9;
    v121 = CGRectOffset(v120, v14, v16);
    v17 = v121.origin.x;
    v18 = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
    v21 = objc_opt_class();
    _scrollAncestor = [v11 _scrollAncestor];
    v23 = TUIDynamicCast(v21, _scrollAncestor);

    [v23 contentOffset];
    v25 = -v24;
    [v23 contentOffset];
    v27 = -v26;
    v122.origin.x = v17;
    v122.origin.y = v18;
    v122.size.width = width;
    v122.size.height = height;
    v123 = CGRectOffset(v122, v25, v27);
    x = v123.origin.x;
    y = v123.origin.y;
    v7 = v123.size.width;
    v9 = v123.size.height;
    axModel3 = [v11 axModel];
    flipsHorizontal = [axModel3 flipsHorizontal];

    if (flipsHorizontal)
    {
      [v23 contentSize];
      v31 = v30;
      [v23 bounds];
      v33 = v31 - v32;
      v124.origin.x = x;
      v124.origin.y = y;
      v124.size.width = v7;
      v124.size.height = v9;
      v125 = CGRectOffset(v124, v33, 0.0);
      x = v125.origin.x;
      y = v125.origin.y;
      v7 = v125.size.width;
      v9 = v125.size.height;
    }

    axModel4 = [v11 axModel];
    scrollAncestorIdentifier = [axModel4 scrollAncestorIdentifier];

    context = [(TUIAXElement *)selfCopy context];
    identifierToAXElementMap = [context identifierToAXElementMap];
    v38 = [identifierToAXElementMap objectForKey:scrollAncestorIdentifier];

    v11 = v38;
  }

  while (v38);
  context2 = [(TUIAXElement *)selfCopy context];
  [context2 sectionOffset];
  v41 = v40;
  context3 = [(TUIAXElement *)selfCopy context];
  [context3 sectionOffset];
  v44 = v43;
  v126.origin.x = x;
  v126.origin.y = y;
  v126.size.width = v7;
  v126.size.height = v9;
  v127 = CGRectOffset(v126, v41, v44);
  v45 = v127.origin.x;
  v46 = v127.origin.y;
  v47 = v127.size.width;
  v48 = v127.size.height;

  context4 = [(TUIAXElement *)selfCopy context];
  screenOffsetProvider = [context4 screenOffsetProvider];

  axModel5 = [(TUIAXElement *)selfCopy axModel];
  liveTransformAncestorIdentifier = [axModel5 liveTransformAncestorIdentifier];

  context5 = [(TUIAXElement *)selfCopy context];
  identifierToAXElementMap2 = [context5 identifierToAXElementMap];
  v55 = [identifierToAXElementMap2 objectForKey:liveTransformAncestorIdentifier];

  if (v55)
  {
LABEL_6:
    rect = v48;
    [screenOffsetProvider boundsForFeedView];
    v116 = v56;
    v117 = v57;
    axModel6 = [v55 axModel];
    [axModel6 accessibilityFrameRelativeToScrollAncestor];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    context6 = [(TUIAXElement *)selfCopy context];
    [context6 sectionOffset];
    v69 = v68;
    context7 = [(TUIAXElement *)selfCopy context];
    [context7 sectionOffset];
    v72 = v71;
    v128.origin.x = v60;
    v128.origin.y = v62;
    v128.size.width = v64;
    v128.size.height = v66;
    v129 = CGRectOffset(v128, v69, v72);
    v73 = v129.origin.x;
    v74 = v129.origin.y;
    v75 = v129.size.width;
    v76 = v129.size.height;

    [screenOffsetProvider contentOffset];
    v78 = -v77;
    [screenOffsetProvider contentOffset];
    v80 = -v79;
    v130.origin.x = v73;
    v130.origin.y = v74;
    v130.size.width = v75;
    v130.size.height = v76;
    v131 = CGRectOffset(v130, v78, v80);
    v81 = v131.origin.x;
    v82 = v131.origin.y;
    v83 = v131.size.width;
    v84 = v131.size.height;
    axModel7 = [v55 axModel];
    liveTransformKind = [axModel7 liveTransformKind];

    v87 = 0.0;
    if (liveTransformKind > 4)
    {
      if (liveTransformKind - 5 < 2)
      {
        v134.origin.x = v81;
        v134.origin.y = v82;
        v134.size.width = v83;
        v134.size.height = v84;
        v101 = v117 - CGRectGetMaxY(v134);
        if (v101 < 0.0 && liveTransformKind == (&dword_4 + 1))
        {
          v87 = 0.0;
        }

        else
        {
          v87 = v101;
        }
      }

      goto LABEL_26;
    }

    if (liveTransformKind == (&dword_0 + 2))
    {
      v136.origin.x = v81;
      v136.origin.y = v82;
      v136.size.width = v83;
      v136.size.height = v84;
      v87 = -CGRectGetMinY(v136);
      goto LABEL_26;
    }

    if (liveTransformKind != (&dword_0 + 3))
    {
      if (liveTransformKind != &dword_4)
      {
LABEL_26:
        v137.origin.x = v45;
        v137.origin.y = v46;
        v137.size.width = v47;
        v137.size.height = rect;
        v138 = CGRectOffset(v137, 0.0, v87);
        v45 = v138.origin.x;
        v46 = v138.origin.y;
        v47 = v138.size.width;
        v48 = v138.size.height;

        goto LABEL_27;
      }

      context8 = [(TUIAXElement *)selfCopy context];
      [context8 sectionOffset];
      v90 = v89;

      if (v90 > 0.0)
      {
        [(TUIAXEvaluationContext *)selfCopy->_context sectionOffset];
        v118 = v91;
        [screenOffsetProvider availableHeight];
        v115 = v92;
        [screenOffsetProvider contentOffset];
        v94 = -v93;
        [screenOffsetProvider contentOffset];
        v132.origin.y = -v95;
        v132.size.width = v116;
        v132.size.height = v115 + v118;
        v132.origin.x = v94;
        MidY = CGRectGetMidY(v132);
        v133.origin.x = v81;
        v133.origin.y = v82;
        v133.size.width = v83;
        v133.size.height = v84;
        v97 = MidY - CGRectGetMidY(v133);
        if (v97 >= 0.0)
        {
          v87 = v97;
        }

        else
        {
          v87 = 0.0;
        }

        goto LABEL_26;
      }
    }

    v135.origin.x = v81;
    v135.origin.y = v82;
    v135.size.width = v83;
    v135.size.height = v84;
    v87 = v117 * 0.5 - CGRectGetMidY(v135);
    goto LABEL_26;
  }

  axModel8 = [(TUIAXElement *)selfCopy axModel];
  liveTransformKind2 = [axModel8 liveTransformKind];

  if (liveTransformKind2)
  {
    v100 = selfCopy;
    if (v100)
    {
      v55 = v100;
      goto LABEL_6;
    }
  }

LABEL_27:
  [screenOffsetProvider screenCoordinatesForFrame:{v45, v46, v47, v48}];
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;

  v111 = v104;
  v112 = v106;
  v113 = v108;
  v114 = v110;
  result.size.height = v114;
  result.size.width = v113;
  result.origin.y = v112;
  result.origin.x = v111;
  return result;
}

- (BOOL)accessibilityActivate
{
  defaultAction = [(TUIAXElement *)self defaultAction];
  if (defaultAction)
  {
    axModel = [(TUIAXElement *)self axModel];
    axAttributes = [axModel axAttributes];
    axDisabled = [axAttributes axDisabled];

    if ((axDisabled & 1) == 0)
    {
      v7 = [[TUIAXCustomActionInstantiation alloc] initWithCustomAction:defaultAction arguments:0 axElement:self];
      [(TUIAXCustomActionInstantiation *)v7 invoke];
    }
  }

  return defaultAction != 0;
}

- (void)accessibilityIncrement
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axDisabled = [axAttributes axDisabled];

  if ((axDisabled & 1) == 0)
  {
    v6 = [TUIAXCustomActionInstantiation alloc];
    incrementAction = [(TUIAXElement *)self incrementAction];
    v7 = [(TUIAXCustomActionInstantiation *)v6 initWithCustomAction:incrementAction arguments:0 axElement:self];
    [(TUIAXCustomActionInstantiation *)v7 invoke];
  }
}

- (void)accessibilityDecrement
{
  axModel = [(TUIAXElement *)self axModel];
  axAttributes = [axModel axAttributes];
  axDisabled = [axAttributes axDisabled];

  if ((axDisabled & 1) == 0)
  {
    v6 = [TUIAXCustomActionInstantiation alloc];
    decrementAction = [(TUIAXElement *)self decrementAction];
    v7 = [(TUIAXCustomActionInstantiation *)v6 initWithCustomAction:decrementAction arguments:0 axElement:self];
    [(TUIAXCustomActionInstantiation *)v7 invoke];
  }
}

- (id)_accessibilityParentForFindingScrollParent
{
  _scrollAncestor = [(TUIAXElement *)self _scrollAncestor];
  v4 = _scrollAncestor;
  if (_scrollAncestor)
  {
    feedViewForAX = _scrollAncestor;
  }

  else
  {
    context = [(TUIAXElement *)self context];
    screenOffsetProvider = [context screenOffsetProvider];
    feedViewForAX = [screenOffsetProvider feedViewForAX];
  }

  return feedViewForAX;
}

@end