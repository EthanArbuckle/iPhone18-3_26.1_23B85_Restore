@interface TUIAXElement
- (BOOL)_presentContextMenu;
- (BOOL)_shouldInferAccessibilityLabel;
- (BOOL)accessibilityActivate;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (NSString)inferredLabel;
- (TUIAXElement)initWithEvaluationContext:(id)a3 accessibilityContainer:(id)a4;
- (id)_accessibilityParentForFindingScrollParent;
- (id)_currentStateForControl;
- (id)_scrollAncestor;
- (id)_viewForOverrideIdentifier:(id)a3 outParentRenderModelSection:(id *)a4 outParentView:(id *)a5;
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
- (void)updateWithAXModel:(id)a3;
@end

@implementation TUIAXElement

- (TUIAXElement)initWithEvaluationContext:(id)a3 accessibilityContainer:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUIAXElement;
  v8 = [(TUIAXElement *)&v11 initWithAccessibilityContainer:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(TUIAXModel *)self->_axModel identifier];

  if (v3)
  {
    v4 = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
    v5 = [(TUIAXModel *)self->_axModel identifier];
    [v4 removeObjectForKey:v5];
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
  v32 = [(TUIAXElement *)self axModel];
  v6 = [(TUIAXElement *)self isAccessibilityElement];
  v7 = @" accessible=YES;";
  if (!v6)
  {
    v7 = &stru_264550;
  }

  v26 = v7;
  v8 = NSString;
  [(TUIAXElement *)self accessibilityFrame];
  v28 = NSStringFromCGRect(v34);
  v31 = [NSString stringWithFormat:@" frame=%@", v28];;
  v27 = [v3 count];
  if (v27)
  {
    v8 = NSString;
    v25 = [v3 componentsJoinedByString:{@", "}];
    v30 = [NSString stringWithFormat:@" traits=%@", v25];;
  }

  else
  {
    v30 = &stru_264550;
  }

  v9 = [(TUIAXElement *)self accessibilityLabel];
  if (v9)
  {
    v8 = NSString;
    v24 = [(TUIAXElement *)self accessibilityLabel];
    v29 = [NSString stringWithFormat:@" label=%@", v24];;
  }

  else
  {
    v29 = &stru_264550;
  }

  v10 = [(TUIAXElement *)self accessibilityValue];
  if (v10)
  {
    v8 = NSString;
    v23 = [(TUIAXElement *)self accessibilityValue];
    v11 = [NSString stringWithFormat:@" value=%@", v23];;
  }

  else
  {
    v11 = &stru_264550;
  }

  v12 = [(TUIAXElement *)self accessibilityHint];
  if (v12)
  {
    v8 = [(TUIAXElement *)self accessibilityHint];
    v13 = [NSString stringWithFormat:@" hint=%@", v8];;
  }

  else
  {
    v13 = &stru_264550;
  }

  v14 = [(TUIAXElement *)self axModel];
  if ([v14 shouldScrollVertically])
  {
    v15 = [NSString stringWithFormat:@"<%@: %p (%@) %@%@%@%@%@%@%@>", v5, self, v32, v26, v31, v30, v29, v11, v13, @" scroll=v;"];;
  }

  else
  {
    [(TUIAXElement *)self axModel];
    v22 = v9;
    v16 = v8;
    v18 = v17 = v3;
    v19 = [v18 shouldScrollHorizontally];
    v20 = @" scroll=h;";
    if (!v19)
    {
      v20 = &stru_264550;
    }

    v15 = [NSString stringWithFormat:@"<%@: %p (%@) %@%@%@%@%@%@%@>", v5, self, v32, v26, v31, v30, v29, v11, v13, v20];;

    v3 = v17;
    v8 = v16;
    v9 = v22;
  }

  if (v12)
  {
  }

  if (v10)
  {
  }

  if (v9)
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
  v4 = [(TUIAXElement *)self children];
  v5 = [NSMutableArray tui_stackWithObjectsFromArray:v4];

  while ([v5 count])
  {
    v6 = [v5 tui_pop];
    v7 = [v6 axModel];
    v8 = [v7 axAttributes];

    if ([v8 isAXElement] && (objc_msgSend(v8, "axLabel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
    {
      v11 = [v8 axLabel];
      [v3 addObject:v11];
    }

    else
    {
      v12 = [v6 children];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_9;
      }

      v11 = [v6 children];
      [v5 tui_pushObjectsFromArray:v11];
    }

LABEL_9:
  }

  v14 = [v3 componentsJoinedByString:{@", "}];

  return v14;
}

- (void)updateWithAXModel:(id)a3
{
  v5 = a3;
  v6 = self->_axModel;
  v7 = [v5 identifier];
  v64 = v6;
  v8 = [(TUIAXModel *)v6 identifier];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [(TUIAXModel *)v64 identifier];

    if (v10)
    {
      v11 = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
      v12 = [(TUIAXModel *)v64 identifier];
      [v11 removeObjectForKey:v12];
    }

    v13 = [v5 identifier];

    if (v13)
    {
      v14 = [(TUIAXEvaluationContext *)self->_context identifierToAXElementMap];
      v15 = [v5 identifier];
      [v14 setObject:self forKey:v15];
    }
  }

  objc_storeStrong(&self->_axModel, a3);
  v67 = objc_opt_new();
  if ([v5 isControl] && (-[TUIAXElement context](self, "context"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "renderModelSection"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = [(TUIAXElement *)self _currentStateForControl];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v19 = [v5 children];
    v20 = [v19 countByEnumeratingWithState:&v78 objects:v84 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v78 + 1) + 8 * i);
          v25 = [v24 stateName];
          v26 = [v18 isEqualToString:v25];

          if (v26)
          {
            v27 = v24;

            v69 = v27;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v78 objects:v84 count:16];
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
  v28 = [v5 children];
  v29 = [v28 countByEnumeratingWithState:&v74 objects:v83 count:16];
  v68 = v5;
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v74 + 1) + 8 * j);
        if ([v33 hasAccessibleDescendants])
        {
          if (([v33 hidden] & 1) == 0)
          {
            if (![v5 isControl] || (-[TUIAXElement context](self, "context"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "renderModelSection"), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, !v35) || v33 == v69 || !v69 && (objc_msgSend(v33, "stateName"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "isEqualToString:", @"default"), v36, v37))
            {
              v38 = [v33 identifier];
              v39 = [(TUIAXElement *)self context];
              v40 = [v39 identifierToAXElementMap];
              v41 = [v40 objectForKey:v38];

              if (!v41)
              {
                v42 = [TUIAXElement alloc];
                v43 = [(TUIAXElement *)self context];
                v41 = [(TUIAXElement *)v42 initWithEvaluationContext:v43 accessibilityContainer:self];
              }

              if (v41 != self)
              {
                [(TUIAXElement *)v41 updateWithAXModel:v33];
                [(TUIAXElement *)v41 setAccessibilityContainer:self];
                [v67 addObject:v41];
              }

              v5 = v68;
            }
          }
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v30);
  }

  v44 = [v5 resolvedCustomActions];
  if ([v44 count])
  {
  }

  else
  {
    v45 = [v5 hasContextMenu];

    if ((v45 & 1) == 0)
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
  v46 = [v5 resolvedCustomActions];
  v47 = [v46 countByEnumeratingWithState:&v70 objects:v82 count:16];
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
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v70 + 1) + 8 * k);
        if ([v51 isDefault])
        {
          [(TUIAXElement *)self setDefaultAction:v51];
        }

        else
        {
          v52 = [v51 trigger];
          v53 = [v52 isEqualToString:@"accessibilityIncrement"];

          if (v53)
          {
            [(TUIAXElement *)self setIncrementAction:v51];
          }

          else
          {
            v54 = [v51 trigger];
            v55 = [v54 isEqualToString:@"accessibilityDecrement"];

            if (v55)
            {
              [(TUIAXElement *)self setDecrementAction:v51];
            }

            else
            {
              v56 = [[TUIAXCustomActionInstantiation alloc] initWithCustomAction:v51 arguments:0 axElement:self];
              v57 = [UIAccessibilityCustomAction alloc];
              v58 = [v51 label];
              v59 = [v57 initWithName:v58 target:v56 selector:"invoke"];

              [v66 addObject:v59];
              [v65 addObject:v56];
            }
          }
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v48);
  }

  v5 = v68;
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

- (id)_viewForOverrideIdentifier:(id)a3 outParentRenderModelSection:(id *)a4 outParentView:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(TUIAXElement *)self axModel];
    v10 = [v11 identifier];
  }

  v12 = [(TUIAXElement *)self axModel];
  v13 = [v12 scrollAncestorIdentifier];

  v14 = [(TUIAXElement *)self context];
  v15 = v14;
  v48 = a4;
  if (!v13)
  {
    v26 = [v14 renderModelSection];
    v27 = [v26 identifierToModelMap];
    v23 = [v27 objectForKey:v10];

    if (v23)
    {
      v28 = [v23 itemIndex];
      v29 = [(TUIAXElement *)self context];
      v30 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v28, [v29 sectionIndex]);

      v31 = [(TUIAXElement *)self context];
      v32 = [v31 screenOffsetProvider];
      v33 = [v32 feedViewForAX];
      v25 = [v33 viewAtIndexPath:v30];

      v21 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v45 = [(TUIAXElement *)self context];
      v46 = [v45 screenOffsetProvider];
      v47 = [v46 feedViewForAX];

      v25 = [v47 descendentViewWithIdentifier:v10];

      v21 = 0;
      v23 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v34 = v21;
    *a5 = v21;
    goto LABEL_13;
  }

  v16 = [v14 identifierToAXElementMap];
  v17 = [v16 objectForKey:v13];

  v18 = objc_opt_class();
  v49 = 0;
  v19 = [v17 _viewForOverrideIdentifier:0 outParentRenderModelSection:&v49 outParentView:0];
  v20 = v49;
  v21 = TUIDynamicCast(v18, v19);

  v22 = [v20 identifierToModelMap];
  v23 = [v22 objectForKey:v10];

  if (v23)
  {
    v24 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v23 itemIndex], 0);
    v25 = [v21 viewAtIndexPath:v24];
  }

  else
  {
    v25 = [v21 descendentViewWithIdentifier:v10];
  }

  if (a5)
  {
    goto LABEL_12;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = objc_opt_class();
    v36 = TUIDynamicCast(v35, v25);
    v37 = [v36 scrollView];

    v25 = v37;
  }

  if (v25)
  {
    v38 = objc_opt_class();
    v39 = TUIDynamicCast(v38, v25);
    v40 = [v39 renderModel];

    v41 = [v40 sections];
    v42 = [v41 objectAtIndexedSubscript:0];

    if (v48)
    {
      v43 = v42;
      *v48 = v42;
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
    v6 = [v5 currentState];
  }

  else
  {
    v6 = @"default";
  }

  v7 = v6;

  return v7;
}

- (BOOL)_shouldInferAccessibilityLabel
{
  v2 = [(TUIAXElement *)self axModel];
  v3 = [v2 axAttributes];

  LOBYTE(v2) = [v3 isAXElement];
  v4 = [v3 accessibilityTraits];
  v5 = [v3 axTouchContainer] ^ 1;

  return (v2 | ((v4 & 4) != 0)) & v5;
}

- (BOOL)_presentContextMenu
{
  v3 = objc_opt_class();
  v4 = [(TUIAXElement *)self axModel];
  v5 = [v4 identifier];
  v6 = [(TUIAXElement *)self controlViewForOverrideIdentifier:v5];
  v7 = TUIDynamicCast(v3, v6);

  LOBYTE(v6) = [v7 presentContextMenuForAccessibility];
  return v6;
}

- (id)accessibilityIdentifier
{
  v3 = [(TUIAXElement *)self axModel];
  v4 = [v3 axAttributes];
  v5 = [v4 axIdentifier];

  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = TUIAXElement;
    v5 = [(TUIAXElement *)&v7 accessibilityIdentifier];
  }

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(TUIAXElement *)self axModel];
  v3 = [v2 axAttributes];
  v4 = [v3 isAXElement];

  return v4;
}

- (id)accessibilityElements
{
  v3 = [(TUIAXElement *)self children];
  v4 = [(TUIAXElement *)self axModel];
  v5 = [v4 shouldVendControlView];

  if (v5)
  {
    v6 = [(TUIAXElement *)self axModel];
    v7 = [v6 identifier];
    v8 = [(TUIAXElement *)self controlViewForOverrideIdentifier:v7];

    if (v8)
    {
      v11 = v8;
      v9 = [NSArray arrayWithObjects:&v11 count:1];

      [v8 setAccessibilityContainer:self];
      v3 = v9;
    }
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(TUIAXElement *)self axModel];
  v4 = [v3 axAttributes];
  v5 = [v4 axLabel];

  if (![v5 length] && -[TUIAXElement _shouldInferAccessibilityLabel](self, "_shouldInferAccessibilityLabel"))
  {
    v6 = [(TUIAXElement *)self inferredLabel];

    v5 = v6;
  }

  v7 = [(TUIAXElement *)self axModel];
  if (![v7 isControl])
  {
    goto LABEL_12;
  }

  if (![v5 length])
  {

    goto LABEL_9;
  }

  v8 = [(TUIAXElement *)self axModel];
  v9 = [v8 isEditableControl];

  if (v9)
  {
LABEL_9:
    v7 = [(TUIAXElement *)self controlViewForOverrideIdentifier:0];
    v10 = [v7 accessibilityLabel];
    if ([v10 length])
    {
      v11 = v10;

      v5 = v11;
    }

LABEL_12:
  }

  return v5;
}

- (id)accessibilityValue
{
  v2 = [(TUIAXElement *)self axModel];
  v3 = [v2 axAttributes];
  v4 = [v3 axValue];

  return v4;
}

- (id)accessibilityHint
{
  v2 = [(TUIAXElement *)self axModel];
  v3 = [v2 axAttributes];
  v4 = [v3 axHint];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v22.receiver = self;
  v22.super_class = TUIAXElement;
  v3 = [(TUIAXElement *)&v22 accessibilityTraits];
  v4 = [(TUIAXElement *)self axModel];
  v5 = [v4 axAttributes];
  v6 = [v5 axButton];
  v7 = UIAccessibilityTraitButton;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7 | v3;
  if ([v5 axImage])
  {
    v9 = UIAccessibilityTraitImage;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 axHeading];
  v11 = UIAccessibilityTraitHeader;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = v8 | v9 | v11;
  if (([v4 shouldScrollVertically] & 1) != 0 || objc_msgSend(v4, "shouldScrollHorizontally"))
  {
    v12 |= UIAccessibilityTraitScrollable;
  }

  if ([v5 axDisabled])
  {
    v13 = UIAccessibilityTraitNotEnabled;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v5 axAdjustable];
  v15 = UIAccessibilityTraitAdjustable;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = v13 | v15;
  v17 = [v5 axToggle];
  v18 = UIAccessibilityTraitToggleButton;
  if (!v17)
  {
    v18 = 0;
  }

  v19 = v16 | v18 | v12;
  if ([v5 axStaticText])
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
  v3 = [(TUIAXElement *)&v11 accessibilityContainer];
  if (!_AXSFullKeyboardAccessEnabled() || !UIAccessibilityIsVoiceOverRunning())
  {
    v8 = v3;
    goto LABEL_12;
  }

  v4 = [(TUIAXElement *)self context];
  v5 = [v4 screenOffsetProvider];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 topLevelAXElement];
    if (v7 == self)
    {
      v9 = [(TUIAXElement *)self _scrollAncestor];
      if (v9 || ([v6 feedViewForAX], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v9;

        goto LABEL_11;
      }
    }
  }

  v8 = v3;
LABEL_11:

LABEL_12:

  return v8;
}

- (int64_t)accessibilityContainerType
{
  v3 = [(TUIAXElement *)self axModel];
  v4 = [v3 axAttributes];
  v7.receiver = self;
  v7.super_class = TUIAXElement;
  v5 = [(TUIAXElement *)&v7 accessibilityContainerType];
  if ([v4 axTouchContainer])
  {
    v5 = &dword_4;
  }

  return v5;
}

- (CGRect)accessibilityFrame
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v5 = [(TUIAXElement *)self axModel];
  [v5 accessibilityFrameRelativeToScrollAncestor];
  v7 = v6;
  v9 = v8;

  v10 = self;
  v11 = v10;
  do
  {
    v12 = [v11 axModel];
    [v12 accessibilityFrameRelativeToScrollAncestor];
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
    v22 = [v11 _scrollAncestor];
    v23 = TUIDynamicCast(v21, v22);

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
    v28 = [v11 axModel];
    v29 = [v28 flipsHorizontal];

    if (v29)
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

    v34 = [v11 axModel];
    v35 = [v34 scrollAncestorIdentifier];

    v36 = [(TUIAXElement *)v10 context];
    v37 = [v36 identifierToAXElementMap];
    v38 = [v37 objectForKey:v35];

    v11 = v38;
  }

  while (v38);
  v39 = [(TUIAXElement *)v10 context];
  [v39 sectionOffset];
  v41 = v40;
  v42 = [(TUIAXElement *)v10 context];
  [v42 sectionOffset];
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

  v49 = [(TUIAXElement *)v10 context];
  v50 = [v49 screenOffsetProvider];

  v51 = [(TUIAXElement *)v10 axModel];
  v52 = [v51 liveTransformAncestorIdentifier];

  v53 = [(TUIAXElement *)v10 context];
  v54 = [v53 identifierToAXElementMap];
  v55 = [v54 objectForKey:v52];

  if (v55)
  {
LABEL_6:
    rect = v48;
    [v50 boundsForFeedView];
    v116 = v56;
    v117 = v57;
    v58 = [v55 axModel];
    [v58 accessibilityFrameRelativeToScrollAncestor];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = [(TUIAXElement *)v10 context];
    [v67 sectionOffset];
    v69 = v68;
    v70 = [(TUIAXElement *)v10 context];
    [v70 sectionOffset];
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

    [v50 contentOffset];
    v78 = -v77;
    [v50 contentOffset];
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
    v85 = [v55 axModel];
    v86 = [v85 liveTransformKind];

    v87 = 0.0;
    if (v86 > 4)
    {
      if (v86 - 5 < 2)
      {
        v134.origin.x = v81;
        v134.origin.y = v82;
        v134.size.width = v83;
        v134.size.height = v84;
        v101 = v117 - CGRectGetMaxY(v134);
        if (v101 < 0.0 && v86 == (&dword_4 + 1))
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

    if (v86 == (&dword_0 + 2))
    {
      v136.origin.x = v81;
      v136.origin.y = v82;
      v136.size.width = v83;
      v136.size.height = v84;
      v87 = -CGRectGetMinY(v136);
      goto LABEL_26;
    }

    if (v86 != (&dword_0 + 3))
    {
      if (v86 != &dword_4)
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

      v88 = [(TUIAXElement *)v10 context];
      [v88 sectionOffset];
      v90 = v89;

      if (v90 > 0.0)
      {
        [(TUIAXEvaluationContext *)v10->_context sectionOffset];
        v118 = v91;
        [v50 availableHeight];
        v115 = v92;
        [v50 contentOffset];
        v94 = -v93;
        [v50 contentOffset];
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

  v98 = [(TUIAXElement *)v10 axModel];
  v99 = [v98 liveTransformKind];

  if (v99)
  {
    v100 = v10;
    if (v100)
    {
      v55 = v100;
      goto LABEL_6;
    }
  }

LABEL_27:
  [v50 screenCoordinatesForFrame:{v45, v46, v47, v48}];
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
  v3 = [(TUIAXElement *)self defaultAction];
  if (v3)
  {
    v4 = [(TUIAXElement *)self axModel];
    v5 = [v4 axAttributes];
    v6 = [v5 axDisabled];

    if ((v6 & 1) == 0)
    {
      v7 = [[TUIAXCustomActionInstantiation alloc] initWithCustomAction:v3 arguments:0 axElement:self];
      [(TUIAXCustomActionInstantiation *)v7 invoke];
    }
  }

  return v3 != 0;
}

- (void)accessibilityIncrement
{
  v3 = [(TUIAXElement *)self axModel];
  v4 = [v3 axAttributes];
  v5 = [v4 axDisabled];

  if ((v5 & 1) == 0)
  {
    v6 = [TUIAXCustomActionInstantiation alloc];
    v8 = [(TUIAXElement *)self incrementAction];
    v7 = [(TUIAXCustomActionInstantiation *)v6 initWithCustomAction:v8 arguments:0 axElement:self];
    [(TUIAXCustomActionInstantiation *)v7 invoke];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(TUIAXElement *)self axModel];
  v4 = [v3 axAttributes];
  v5 = [v4 axDisabled];

  if ((v5 & 1) == 0)
  {
    v6 = [TUIAXCustomActionInstantiation alloc];
    v8 = [(TUIAXElement *)self decrementAction];
    v7 = [(TUIAXCustomActionInstantiation *)v6 initWithCustomAction:v8 arguments:0 axElement:self];
    [(TUIAXCustomActionInstantiation *)v7 invoke];
  }
}

- (id)_accessibilityParentForFindingScrollParent
{
  v3 = [(TUIAXElement *)self _scrollAncestor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(TUIAXElement *)self context];
    v7 = [v6 screenOffsetProvider];
    v5 = [v7 feedViewForAX];
  }

  return v5;
}

@end