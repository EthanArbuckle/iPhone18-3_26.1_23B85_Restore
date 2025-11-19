@interface CarCardConfiguration
- (CGRect)collisionLayoutGuideFrameForEdge:(unint64_t)a3;
- (CarCardConfiguration)initWithKey:(id)a3 carSceneType:(int64_t)a4;
- (CarCardContent)previousContent;
- (NSString)description;
- (UIEdgeInsets)effectiveMargins;
- (id)_cardToContainerLayoutConstraints;
- (id)_collisionConstraintsForHost:(id)a3;
- (id)_collisionLayoutGuidesForHost:(id)a3;
- (id)_hidingLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4;
- (id)_mapInsetsConstraintsForHost:(id)a3;
- (id)_sharedLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4;
- (id)_showingLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4;
- (id)_viewportConstraintsForHost:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)accessoryType;
- (unint64_t)defaultFocusSortValue;
- (unint64_t)effectiveCornerPosition;
- (unint64_t)effectiveEdgePosition;
- (unint64_t)effectiveEdgesAffectingMapInsets;
- (unint64_t)initialFocusSortValue;
- (void)_applyToCardViewWithHost:(id)a3;
- (void)_prepareConstraintsForHost:(id)a3 withLayoutGuide:(id)a4;
- (void)_resetConstraints;
- (void)_setShowContainerVisualisation:(BOOL)a3;
- (void)_startIgnoringContainerBoundsChanges;
- (void)_stopIgnoringContainerBoundsChanges;
- (void)_updateAvailableCardSize;
- (void)_updateCardContainerPriorities;
- (void)clear;
- (void)dealloc;
- (void)layoutInHost:(id)a3 withLayoutGuide:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reset;
- (void)setAccessoryImage:(id)a3;
- (void)setAccessoryType:(unint64_t)a3;
- (void)setContent:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLayout:(id)a3;
- (void)setPrimaryAccessory:(id)a3;
- (void)setSecondaryAccessory:(id)a3;
- (void)setSelectionHandler:(id)a3;
- (void)setSelectionTriggerHeight:(double)a3;
- (void)setStaysOnTop:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleNumberOfLines:(int64_t)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)updateVisibility;
@end

@implementation CarCardConfiguration

- (void)_resetConstraints
{
  if (self->_showingConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (self->_hidingConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (self->_viewportConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (self->_mapInsetsConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (self->_collisionConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  hidingConstraints = self->_hidingConstraints;
  self->_hidingConstraints = 0;

  showingConstraints = self->_showingConstraints;
  self->_showingConstraints = 0;

  viewportConstraints = self->_viewportConstraints;
  self->_viewportConstraints = 0;

  mapInsetsConstraints = self->_mapInsetsConstraints;
  self->_mapInsetsConstraints = 0;

  collisionConstraints = self->_collisionConstraints;
  self->_collisionConstraints = 0;

  collisionLayoutGuides = self->_collisionLayoutGuides;
  self->_collisionLayoutGuides = 0;

  contentLayoutGuide = self->_contentLayoutGuide;
  self->_contentLayoutGuide = 0;
}

- (UIEdgeInsets)effectiveMargins
{
  v2 = [(CarCardConfiguration *)self layout];
  [v2 margins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([v2 pinnedEdges])
  {
    v4 = 0.0;
  }

  if (([v2 pinnedEdges] & 2) != 0)
  {
    v6 = 0.0;
  }

  if (([v2 pinnedEdges] & 4) != 0)
  {
    v8 = 0.0;
  }

  if (([v2 pinnedEdges] & 8) != 0)
  {
    v10 = 0.0;
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)_startIgnoringContainerBoundsChanges
{
  v3 = sub_10006CF98();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarCardConfiguration *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    v10 = [(CarCardConfiguration *)v4 key];
    *buf = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ will start ignoring container bounds changes", buf, 0x16u);
  }

  self->_ignoreContainerBoundsChanges = 1;
}

- (unint64_t)effectiveCornerPosition
{
  v2 = [(CarCardConfiguration *)self layout];
  v3 = [v2 cornerPosition];
  if ([v2 flipForRightHandDrive])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    v5 = [v4 rightHandDrive];

    if (v5)
    {
      switch(v3)
      {
        case 1uLL:
          v3 = 2;
          break;
        case 4uLL:
          v3 = 8;
          break;
        case 2uLL:
          v3 = 1;
          break;
        case 8uLL:
          v3 = 4;
          break;
      }
    }
  }

  return v3;
}

- (void)_updateCardContainerPriorities
{
  if ([(CarCardLayout *)self->_layout primaryAxisFillMode]> 1)
  {
    v5 = 250.0;
    v6 = 1000.0;
  }

  else
  {
    [(CarCardLayout *)self->_layout primaryAxisFillModePriority];
    v4 = v3 * 0.998;
    v5 = v4 + 1.0;
    v6 = 999.0 - v4;
  }

  if ([(CarCardLayout *)self->_layout secondaryAxisFillMode]> 1)
  {
    v10 = 1000.0;
    v9 = 250.0;
  }

  else
  {
    [(CarCardLayout *)self->_layout secondaryAxisFillModePriority];
    v8 = v7 * 0.998;
    v9 = v8 + 1.0;
    v10 = 999.0 - v8;
  }

  v11 = [(CarCardLayout *)self->_layout primaryAxis]!= 1;
  containerView = self->_containerView;
  v13 = [(CarCardLayout *)self->_layout primaryAxis];
  *&v14 = v6;
  [(CarCardContainerView *)containerView setContentHuggingPriority:v13 forAxis:v14];
  *&v15 = v10;
  [(CarCardContainerView *)self->_containerView setContentHuggingPriority:v11 forAxis:v15];
  cardView = self->_cardView;
  v17 = [(CarCardLayout *)self->_layout primaryAxis];
  *&v18 = v5;
  [(CarCardView *)cardView setContentCompressionResistancePriority:v17 forAxis:v18];
  v19 = self->_cardView;
  *&v20 = v9;

  [(CarCardView *)v19 setContentCompressionResistancePriority:v11 forAxis:v20];
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = CarCardConfiguration;
  v3 = [(CarCardConfiguration *)&v17 description];
  v4 = [(CarCardConfiguration *)self key];
  v5 = [(CarCardConfiguration *)self content];
  v6 = objc_opt_class();
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_7;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_7:

    goto LABEL_9;
  }

  v11 = @"<nil>";
LABEL_9:

  if ([(CarCardConfiguration *)self isHidden])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v12;
  if ([(CarCardConfiguration *)self isValid])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [NSString stringWithFormat:@"%@ (key:%@, content:%@, hidden:%@, valid:%@)", v3, v4, v11, v13, v14];

  return v15;
}

- (unint64_t)effectiveEdgePosition
{
  v2 = [(CarCardConfiguration *)self layout];
  v3 = [v2 edgePosition];
  if ([v2 flipForRightHandDrive])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    v5 = [v4 rightHandDrive];

    v6 = 8;
    v7 = 2;
    if (v3 != 8)
    {
      v7 = v3;
    }

    if (v3 != 2)
    {
      v6 = v7;
    }

    if (v5)
    {
      v3 = v6;
    }
  }

  return v3;
}

- (void)clear
{
  [(CarCardConfiguration *)self setInitialFocusSortValue:0];
  v3 = objc_alloc_init(CarCardLayout);
  [(CarCardLayout *)v3 setEdgePosition:0];
  [(CarCardLayout *)v3 setCornerPosition:4];
  [(CarCardLayout *)v3 setPrimaryAxis:1];
  [(CarCardLayout *)v3 setPinnedEdges:0];
  [(CarCardLayout *)v3 setPrimaryAxisFillMode:3];
  LODWORD(v4) = 1148846080;
  [(CarCardLayout *)v3 setPrimaryAxisFillModePriority:v4];
  [(CarCardLayout *)v3 setSecondaryAxisFillMode:2];
  LODWORD(v5) = 1148846080;
  [(CarCardLayout *)v3 setSecondaryAxisFillModePriority:v5];
  [(CarCardLayout *)v3 setMargins:*&qword_10193E338, *&qword_10193E338, *&qword_10193E338, *&qword_10193E338];
  [(CarCardLayout *)v3 setFlipForRightHandDrive:1];
  v6 = v3;
  v7 = [(CarCardLayout *)v6 primaryAxis];
  v8 = [(CarCardLayout *)v6 cornerPosition];
  if (v7 == 1)
  {
    if (v8 == 4 || [(CarCardLayout *)v6 cornerPosition]== 1 || [(CarCardLayout *)v6 edgePosition]== 2)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if ([(CarCardLayout *)v6 cornerPosition]== 8 || [(CarCardLayout *)v6 cornerPosition]== 2 || [(CarCardLayout *)v6 edgePosition]== 8)
    {
      v9 |= 2uLL;
    }

    if ([(CarCardLayout *)v6 edgePosition]== 1)
    {
      v9 |= 4uLL;
    }

    v10 = v9 | ([(CarCardLayout *)v6 edgePosition]== 4);
  }

  else
  {
    v10 = v8 == 4 || [(CarCardLayout *)v6 cornerPosition]== 8 || [(CarCardLayout *)v6 edgePosition]== 4;
    if ([(CarCardLayout *)v6 cornerPosition]== 1 || [(CarCardLayout *)v6 cornerPosition]== 2 || [(CarCardLayout *)v6 edgePosition]== 1)
    {
      v10 |= 4uLL;
    }

    if ([(CarCardLayout *)v6 edgePosition]== 2)
    {
      v10 |= 8uLL;
    }

    if ([(CarCardLayout *)v6 edgePosition]== 8)
    {
      v10 |= 2uLL;
    }
  }

  [(CarCardLayout *)v6 setEdgesAffectingMapInsets:v10];
  [(CarCardLayout *)v6 setHorizontallyCenterMapInsets:0];
  [(CarCardConfiguration *)self setLayout:v6];

  [(CarCardConfiguration *)self setPreviousContent:self->_content];
  [(CarCardConfiguration *)self setContent:0];
  [(CarCardConfiguration *)self setTitle:0];
  [(CarCardConfiguration *)self setTitleNumberOfLines:3];
  [(CarCardConfiguration *)self setAccessoryType:0];
  [(CarCardConfiguration *)self setSecondaryAccessory:0];
  [(CarCardConfiguration *)self setAccessoryImage:0];
  [(CarCardConfiguration *)self setSelectionHandler:0];

  [(CarCardConfiguration *)self setSelectionTriggerHeight:0.0];
}

- (id)_cardToContainerLayoutConstraints
{
  v3 = +[NSMutableArray array];
  if (([(CarCardLayout *)self->_layout primaryAxisFillMode]> 1 || [(CarCardLayout *)self->_layout primaryAxis]!= 1) && ([(CarCardLayout *)self->_layout secondaryAxisFillMode]> 1 || [(CarCardLayout *)self->_layout primaryAxis]))
  {
    goto LABEL_5;
  }

  v6 = self->_layout;
  v7 = [(CarCardLayout *)v6 cornerPosition];
  v8 = [(CarCardLayout *)v6 flipForRightHandDrive];

  if (v8)
  {
    v9 = +[MapsExternalDevice sharedInstance];
    v10 = [v9 rightHandDrive];

    if (v10)
    {
      switch(v7)
      {
        case 1:
          v7 = 2;
          break;
        case 4:
          v7 = 8;
          break;
        case 2:
          v7 = 1;
          break;
        case 8:
          v7 = 4;
          break;
      }
    }
  }

  v11 = self->_layout;
  v12 = [(CarCardLayout *)v11 edgePosition];
  v13 = [(CarCardLayout *)v11 flipForRightHandDrive];

  if (v13)
  {
    v14 = +[MapsExternalDevice sharedInstance];
    v15 = [v14 rightHandDrive];

    if (v15)
    {
      if (v12 == 2)
      {
        v12 = 8;
      }

      else if (v12 == 8)
      {
        v12 = 2;
      }
    }
  }

  if ((v7 - 1) < 2 || v12 == 1)
  {
    v16 = [(CarCardView *)self->_cardView bottomAnchor];
    v17 = [(CarCardContainerView *)self->_containerView bottomAnchor];
    v18 = [v16 constraintLessThanOrEqualToAnchor:v17];
    v5 = 1000.0;
    if (v18)
    {
      v4 = 50.0;
    }

    else
    {
      v4 = 1000.0;
    }
  }

  else
  {
    if (v12 != 4 && v7 != 8 && v7 != 4)
    {
LABEL_5:
      v4 = 1000.0;
      v5 = 1000.0;
      goto LABEL_34;
    }

    v16 = [(CarCardView *)self->_cardView topAnchor];
    v17 = [(CarCardContainerView *)self->_containerView topAnchor];
    v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17];
    v4 = 1000.0;
    if (v18)
    {
      v5 = 50.0;
    }

    else
    {
      v5 = 1000.0;
    }
  }

  [v3 addObject:v18];
LABEL_34:
  if (([(CarCardLayout *)self->_layout primaryAxisFillMode]> 1 || [(CarCardLayout *)self->_layout primaryAxis]) && ([(CarCardLayout *)self->_layout secondaryAxisFillMode]> 1 || [(CarCardLayout *)self->_layout primaryAxis]!= 1))
  {
    goto LABEL_66;
  }

  v19 = self->_layout;
  v20 = [(CarCardLayout *)v19 cornerPosition];
  v21 = [(CarCardLayout *)v19 flipForRightHandDrive];

  if (v21)
  {
    v22 = +[MapsExternalDevice sharedInstance];
    v23 = [v22 rightHandDrive];

    if (v23)
    {
      switch(v20)
      {
        case 1:
          v20 = 2;
          break;
        case 4:
          v20 = 8;
          break;
        case 2:
          v20 = 1;
          break;
        case 8:
          v20 = 4;
          break;
      }
    }
  }

  v24 = self->_layout;
  v25 = [(CarCardLayout *)v24 edgePosition];
  v26 = [(CarCardLayout *)v24 flipForRightHandDrive];

  if (v26)
  {
    v27 = +[MapsExternalDevice sharedInstance];
    v28 = [v27 rightHandDrive];

    if (v28)
    {
      if (v25 != 2)
      {
        if (v25 == 8)
        {
          v25 = 2;
        }

        goto LABEL_54;
      }

LABEL_56:
      v29 = [(CarCardView *)self->_cardView leftAnchor];
      v30 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
      v32 = 1000.0;
      if (v31)
      {
        v33 = 50.0;
      }

      else
      {
        v33 = 1000.0;
      }

LABEL_59:

      [v3 addObject:v31];
      goto LABEL_67;
    }
  }

  if (v25 == 8)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (v20 == 8 || v20 == 2)
  {
    goto LABEL_56;
  }

  if (v25 == 2 || v20 == 4 || v20 == 1)
  {
    v29 = [(CarCardView *)self->_cardView rightAnchor];
    v30 = [(CarCardContainerView *)self->_containerView rightAnchor];
    v31 = [v29 constraintLessThanOrEqualToAnchor:v30];
    v33 = 1000.0;
    if (v31)
    {
      v32 = 50.0;
    }

    else
    {
      v32 = 1000.0;
    }

    goto LABEL_59;
  }

LABEL_66:
  v32 = 1000.0;
  v33 = 1000.0;
LABEL_67:
  v34 = [(CarCardView *)self->_cardView topAnchor];
  v35 = [(CarCardContainerView *)self->_containerView topAnchor];
  *&v36 = v5;
  v37 = [v34 constraintEqualToAnchor:v35 constant:0.0 priority:v36];
  [v3 addObject:v37];

  v38 = [(CarCardView *)self->_cardView leftAnchor];
  v39 = [(CarCardContainerView *)self->_containerView leftAnchor];
  *&v40 = v33;
  v41 = [v38 constraintEqualToAnchor:v39 constant:0.0 priority:v40];
  [v3 addObject:v41];

  v42 = [(CarCardView *)self->_cardView bottomAnchor];
  v43 = [(CarCardContainerView *)self->_containerView bottomAnchor];
  *&v44 = v4;
  v45 = [v42 constraintEqualToAnchor:v43 constant:0.0 priority:v44];
  [v3 addObject:v45];

  v46 = [(CarCardView *)self->_cardView rightAnchor];
  v47 = [(CarCardContainerView *)self->_containerView rightAnchor];
  *&v48 = v32;
  v49 = [v46 constraintEqualToAnchor:v47 constant:0.0 priority:v48];
  [v3 addObject:v49];

  v50 = [v3 copy];

  return v50;
}

- (unint64_t)effectiveEdgesAffectingMapInsets
{
  v3 = [(CarCardConfiguration *)self layout];
  v4 = [v3 edgesAffectingMapInsets];

  v5 = [(CarCardConfiguration *)self layout];
  if ([v5 flipForRightHandDrive])
  {
    v6 = +[MapsExternalDevice sharedInstance];
    v7 = [v6 rightHandDrive];

    if (v7)
    {
      v4 |= (v4 >> 2) & 2 | (8 * ((v4 >> 1) & 1));
    }
  }

  else
  {
  }

  return v4;
}

- (void)dealloc
{
  [(CarCardContainerView *)self->_containerView removeObserver:self forKeyPath:@"bounds" context:off_1019361D0];
  [(CarCardContainerView *)self->_containerView removeFromSuperview];
  containerView = self->_containerView;
  self->_containerView = 0;

  [(CarCardView *)self->_cardView removeFromSuperview];
  cardView = self->_cardView;
  self->_cardView = 0;

  v5.receiver = self;
  v5.super_class = CarCardConfiguration;
  [(CarCardConfiguration *)&v5 dealloc];
}

- (CarCardContent)previousContent
{
  WeakRetained = objc_loadWeakRetained(&self->_previousContent);

  return WeakRetained;
}

- (void)_updateAvailableCardSize
{
  v3 = [(CarCardConfiguration *)self content];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    [(CarCardContainerView *)self->_containerView bounds];
    v6 = v5;
    v8 = v7;
    v9 = [(CarCardConfiguration *)self content];
    [v9 setAvailableCardSize:{v6, v8}];
  }
}

- (void)updateVisibility
{
  cardView = self->_cardView;
  if (!cardView)
  {
    v11 = sub_10006CF98();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v12 = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardConfiguration *)v12 performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

        goto LABEL_15;
      }
    }

    v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_15:

    *buf = 138543362;
    v26 = v17;
    v18 = "[%{public}@] Will not update visibility constraints, no card view";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

    goto LABEL_25;
  }

  v4 = [(CarCardView *)cardView window];
  v5 = [v4 windowScene];
  if (!v5)
  {

LABEL_17:
    v11 = sub_10006CF98();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = self;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [(CarCardConfiguration *)v19 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ![v22 isEqualToString:v21])
        {
          v17 = [NSString stringWithFormat:@"%@<%p, %@>", v21, v19, v23];

          goto LABEL_23;
        }
      }

      v17 = [NSString stringWithFormat:@"%@<%p>", v21, v19];
LABEL_23:

      *buf = 138543362;
      v26 = v17;
      v18 = "[%{public}@] Will not update visibility constraints, no window or window detached for card view";
      goto LABEL_24;
    }

LABEL_25:

    return;
  }

  v6 = v5;
  v7 = [(CarCardView *)self->_cardView window];
  v8 = [v7 windowScene];
  v9 = [v8 activationState];

  if (v9 == -1)
  {
    goto LABEL_17;
  }

  if ([(CarCardConfiguration *)self isHidden])
  {
    [NSLayoutConstraint deactivateConstraints:self->_showingConstraints];
    [NSLayoutConstraint activateConstraints:self->_hidingConstraints];
    if (![(CarCardConfiguration *)self isTransitioning])
    {
      [NSLayoutConstraint deactivateConstraints:self->_viewportConstraints];
      [NSLayoutConstraint deactivateConstraints:self->_mapInsetsConstraints];
      collisionConstraints = self->_collisionConstraints;

      [NSLayoutConstraint deactivateConstraints:collisionConstraints];
    }
  }

  else
  {
    [NSLayoutConstraint deactivateConstraints:self->_hidingConstraints];
    [NSLayoutConstraint activateConstraints:self->_showingConstraints];
    if (![(CarCardConfiguration *)self isTransitioning])
    {
      [NSLayoutConstraint activateConstraints:self->_viewportConstraints];
      [NSLayoutConstraint activateConstraints:self->_mapInsetsConstraints];
      v24 = self->_collisionConstraints;

      [NSLayoutConstraint activateConstraints:v24];
    }
  }
}

- (void)_stopIgnoringContainerBoundsChanges
{
  ignoreContainerBoundsChanges = self->_ignoreContainerBoundsChanges;
  v4 = sub_10006CF98();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (ignoreContainerBoundsChanges)
  {
    if (!v5)
    {
LABEL_9:

      self->_ignoreContainerBoundsChanges = 0;
      [(CarCardConfiguration *)self _updateAvailableCardSize];
      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    v12 = [(CarCardConfiguration *)v6 key];
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %@ will stop ignoring container bounds changes", buf, 0x16u);

    goto LABEL_9;
  }

  if (v5)
  {
    v13 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarCardConfiguration *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_16;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_16:

    v19 = [(CarCardConfiguration *)v13 key];
    *buf = 138543618;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %@ told to stop ignoring container bounds changes, but wasn't", buf, 0x16u);
  }
}

- (void)reset
{
  if (self->_cardView)
  {
    *&self->_hidden = 1;
    [(CarCardConfiguration *)self clear];
    [(CarCardContainerView *)self->_containerView removeFromSuperview];
    containerView = self->_containerView;
    self->_containerView = 0;

    [(CarCardView *)self->_cardView removeFromSuperview];
    cardView = self->_cardView;
    self->_cardView = 0;

    [(CarCardConfiguration *)self _resetConstraints];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_1019361D0 != a6)
  {
    v21.receiver = self;
    v21.super_class = CarCardConfiguration;
    [(CarCardConfiguration *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_13;
  }

  if (!self->_ignoreContainerBoundsChanges && [v10 isEqualToString:@"bounds"])
  {
    v13 = sub_10006CF98();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(CarCardConfiguration *)self _updateAvailableCardSize];
      goto LABEL_13;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarCardConfiguration *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_11;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_11:

    v20 = [(CarCardConfiguration *)v14 key];
    *buf = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] %@ notified of container bounds change", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_setShowContainerVisualisation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarCardContainerView *)self->_containerView viewWithTag:1234];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setTag:1234];
      [v6 setUserInteractionEnabled:0];
      [(CarCardContainerView *)self->_containerView addSubview:v6];
      v21 = [v6 widthAnchor];
      v20 = [v6 heightAnchor];
      v19 = [v21 constraintEqualToAnchor:v20];
      v23[0] = v19;
      v18 = [v6 widthAnchor];
      v7 = [v18 constraintEqualToConstant:4.0];
      v23[1] = v7;
      v8 = [v6 rightAnchor];
      v9 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v10 = [v8 constraintEqualToAnchor:v9 constant:-2.0];
      v23[2] = v10;
      v11 = [v6 topAnchor];
      v12 = [(CarCardContainerView *)self->_containerView topAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];
      v23[3] = v13;
      v14 = [NSArray arrayWithObjects:v23 count:4];
      [NSLayoutConstraint activateConstraints:v14];
    }

    v15 = (arc4random() % 0xA) * 0.1;
    v16 = [UIColor colorWithHue:v15 saturation:0.800000012 brightness:0.600000024 alpha:0.300000012];
    [(CarCardContainerView *)self->_containerView setBackgroundColor:v16];

    v17 = [UIColor colorWithHue:v15 saturation:0.800000012 brightness:0.600000024 alpha:0.800000012];
    [v6 setBackgroundColor:v17];
  }

  else
  {
    [v5 removeFromSuperview];

    v22 = +[UIColor clearColor];
    [(CarCardContainerView *)self->_containerView setBackgroundColor:?];
  }
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    self->_transitioning = a3;
    [(CarCardView *)self->_cardView setTransitioning:?];
  }
}

- (void)setSelectionTriggerHeight:(double)a3
{
  if (vabdd_f64(self->_selectionTriggerHeight, a3) > 2.22044605e-16)
  {
    self->_selectionTriggerHeight = a3;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setSelectionHandler:(id)a3
{
  if (self->_selectionHandler != a3)
  {
    v4 = objc_retainBlock(a3);
    selectionHandler = self->_selectionHandler;
    self->_selectionHandler = v4;

    self->_invalidationState |= 4uLL;
  }
}

- (void)setStaysOnTop:(BOOL)a3
{
  if (self->_staysOnTop != a3)
  {
    self->_staysOnTop = a3;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setLayout:(id)a3
{
  v5 = a3;
  p_layout = &self->_layout;
  v7 = self->_layout;
  v53 = v5;
  v8 = [(CarCardLayout *)v7 edgePosition];
  if (v8 == [v53 edgePosition] && (v9 = -[CarCardLayout cornerPosition](v7, "cornerPosition"), v9 == objc_msgSend(v53, "cornerPosition")) && (v10 = -[CarCardLayout primaryAxis](v7, "primaryAxis"), v10 == objc_msgSend(v53, "primaryAxis")) && (v11 = -[CarCardLayout pinnedEdges](v7, "pinnedEdges"), v11 == objc_msgSend(v53, "pinnedEdges")) && (v12 = -[CarCardLayout primaryAxisFillMode](v7, "primaryAxisFillMode"), v12 == objc_msgSend(v53, "primaryAxisFillMode")) && (-[CarCardLayout primaryAxisFillModePriority](v7, "primaryAxisFillModePriority"), v14 = v13, objc_msgSend(v53, "primaryAxisFillModePriority"), v14 == v15) && (v16 = -[CarCardLayout secondaryAxisFillMode](v7, "secondaryAxisFillMode"), v16 == objc_msgSend(v53, "secondaryAxisFillMode")) && (-[CarCardLayout secondaryAxisFillModePriority](v7, "secondaryAxisFillModePriority"), v18 = v17, objc_msgSend(v53, "secondaryAxisFillModePriority"), v18 == v19) && (v20 = -[CarCardLayout flipForRightHandDrive](v7, "flipForRightHandDrive"), v20 == objc_msgSend(v53, "flipForRightHandDrive")) && (v21 = -[CarCardLayout edgesAffectingMapInsets](v7, "edgesAffectingMapInsets"), v21 == objc_msgSend(v53, "edgesAffectingMapInsets")) && (v22 = -[CarCardLayout horizontallyCenterMapInsets](v7, "horizontallyCenterMapInsets"), v22 == objc_msgSend(v53, "horizontallyCenterMapInsets")) && (-[CarCardLayout margins](v7, "margins"), v41 = v40, v43 = v42, v45 = v44, v47 = v46, objc_msgSend(v53, "margins"), v43 == v51) && v41 == v48 && v47 == v50)
  {
    v52 = v49;

    if (v45 == v52)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v23 = [(CarCardLayout *)*p_layout primaryAxis];
  if (v23 == [v53 primaryAxis] && (v24 = -[CarCardLayout primaryAxisFillMode](*p_layout, "primaryAxisFillMode"), v24 == objc_msgSend(v53, "primaryAxisFillMode")))
  {
    v25 = [(CarCardLayout *)*p_layout secondaryAxisFillMode];
    v26 = v25 != [v53 secondaryAxisFillMode];
  }

  else
  {
    v26 = 1;
  }

  v27 = [(CarCardLayout *)*p_layout cornerPosition];
  if (v27 == [v53 cornerPosition])
  {
    v28 = [(CarCardLayout *)*p_layout edgePosition];
    v29 = v28 != [v53 edgePosition];
  }

  else
  {
    v29 = 1;
  }

  [(CarCardLayout *)*p_layout primaryAxisFillModePriority];
  v31 = v30;
  [v53 primaryAxisFillModePriority];
  if (v31 == v32)
  {
    [(CarCardLayout *)*p_layout secondaryAxisFillModePriority];
    v35 = v34;
    [v53 secondaryAxisFillModePriority];
    v33 = v35 != v36;
  }

  else
  {
    v33 = 1;
  }

  v37 = [(CarCardLayout *)*p_layout edgesAffectingMapInsets];
  if (v37 != [v53 edgesAffectingMapInsets] || (v38 = -[CarCardLayout horizontallyCenterMapInsets](*p_layout, "horizontallyCenterMapInsets"), v39 = objc_msgSend(v53, "horizontallyCenterMapInsets"), v26 || v29 || v33) || v38 != v39)
  {
    self->_invalidationState |= 1uLL;
  }

  objc_storeStrong(&self->_layout, a3);
LABEL_28:
}

- (void)setContent:(id)a3
{
  v5 = a3;
  if (self->_content != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_content, a3);
    v5 = v6;
    self->_invalidationState |= 2uLL;
  }
}

- (void)setTitleNumberOfLines:(int64_t)a3
{
  if (self->_titleNumberOfLines != a3)
  {
    self->_titleNumberOfLines = a3;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  title = self->_title;
  v10 = v5;
  v7 = title;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_title, a3);
      v8 = v10;
      self->_invalidationState |= 4uLL;
    }
  }
}

- (void)setAccessoryImage:(id)a3
{
  v5 = a3;
  if (self->_accessoryImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryImage, a3);
    v5 = v6;
    self->_invalidationState |= 2uLL;
  }
}

- (void)setAccessoryType:(unint64_t)a3
{
  v4 = [[CarCardAccessory alloc] initWithType:a3];
  [(CarCardConfiguration *)self setPrimaryAccessory:v4];
}

- (unint64_t)accessoryType
{
  v2 = [(CarCardConfiguration *)self primaryAccessory];
  v3 = [v2 type];

  return v3;
}

- (void)setSecondaryAccessory:(id)a3
{
  v5 = a3;
  secondaryAccessory = self->_secondaryAccessory;
  v10 = v5;
  v7 = secondaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessory, a3);
      v8 = v10;
      self->_invalidationState |= 2uLL;
    }
  }
}

- (void)setPrimaryAccessory:(id)a3
{
  v5 = a3;
  primaryAccessory = self->_primaryAccessory;
  v10 = v5;
  v7 = primaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAccessory, a3);
      v8 = v10;
      self->_invalidationState |= 2uLL;
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    v3 = a3;
    self->_hidden = a3;
    [(CarCardConfiguration *)self updateVisibility];
    v5 = sub_10006CF98();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      return;
    }

    v6 = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

    v12 = @"NO";
    if (v3)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543874;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Did set hidden (hidden:%@, configuration:%@)", buf, 0x20u);

    goto LABEL_11;
  }
}

- (CGRect)collisionLayoutGuideFrameForEdge:(unint64_t)a3
{
  v4 = [(CarCardConfiguration *)self collisionLayoutGuides];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)_collisionLayoutGuidesForHost:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [&off_1016EDA30 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(&off_1016EDA30);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 collisionGuideForEdge:{objc_msgSend(v9, "unsignedIntegerValue")}];
        [v4 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [&off_1016EDA30 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_collisionConstraintsForHost:(id)a3
{
  v4 = a3;
  if ([(CarCardConfiguration *)self staysOnTop])
  {
    v5 = &__NSArray0__struct;
    goto LABEL_38;
  }

  v6 = +[NSMutableArray array];
  v7 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v8 = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_37;
      }

      v9 = [v4 collisionGuideForEdge:1];
      if (v9)
      {
        v23 = [(CarCardContainerView *)self->_containerView leftAnchor];
        v24 = [v9 leftAnchor];
        v25 = [v23 constraintEqualToAnchor:v24];
        [v6 addObject:v25];

        v26 = [(CarCardContainerView *)self->_containerView rightAnchor];
        v27 = [v9 rightAnchor];
        v28 = [v26 constraintEqualToAnchor:v27];
        [v6 addObject:v28];
      }

      v16 = [v4 collisionGuideForEdge:2];
      if (v16)
      {
        v29 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        v30 = [v16 topAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];
        [v6 addObject:v31];
      }

      v20 = [v4 collisionGuideForEdge:8];
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      v22 = [v20 topAnchor];
LABEL_33:
      v50 = v22;
      v51 = [v21 constraintEqualToAnchor:v22];
      [v6 addObject:v51];

LABEL_34:
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    if (v8 > 3)
    {
      if (v8 != 4)
      {
        if (v8 != 8)
        {
          goto LABEL_37;
        }

        v9 = [v4 collisionGuideForEdge:8];
        if (v9)
        {
          v58 = [(CarCardContainerView *)self->_containerView topAnchor];
          v59 = [v9 bottomAnchor];
          v60 = [v58 constraintEqualToAnchor:v59];
          [v6 addObject:v60];
        }

        v56 = v4;
        v57 = 4;
LABEL_52:
        v16 = [v56 collisionGuideForEdge:v57];
        if (!v16)
        {
          goto LABEL_36;
        }

        v20 = [(CarCardContainerView *)self->_containerView leftAnchor];
        v61 = [v16 rightAnchor];
        goto LABEL_62;
      }

      v9 = [v4 collisionGuideForEdge:2];
      if (v9)
      {
        v67 = [(CarCardContainerView *)self->_containerView topAnchor];
        v68 = [v9 bottomAnchor];
        v69 = [v67 constraintEqualToAnchor:v68];
        [v6 addObject:v69];
      }

      v65 = v4;
      v66 = 4;
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_37;
        }

        v9 = [v4 collisionGuideForEdge:8];
        if (v9)
        {
          v53 = [(CarCardContainerView *)self->_containerView bottomAnchor];
          v54 = [v9 topAnchor];
          v55 = [v53 constraintEqualToAnchor:v54];
          [v6 addObject:v55];
        }

        v56 = v4;
        v57 = 1;
        goto LABEL_52;
      }

      v9 = [v4 collisionGuideForEdge:2];
      if (v9)
      {
        v62 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        v63 = [v9 topAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];
        [v6 addObject:v64];
      }

      v65 = v4;
      v66 = 1;
    }

    v16 = [v65 collisionGuideForEdge:v66];
    if (!v16)
    {
      goto LABEL_36;
    }

    v20 = [(CarCardContainerView *)self->_containerView rightAnchor];
    v61 = [v16 leftAnchor];
LABEL_62:
    v21 = v61;
    v50 = [v20 constraintEqualToAnchor:v61];
    [v6 addObject:v50];
    goto LABEL_34;
  }

  switch(v7)
  {
    case 2:
      v9 = [v4 collisionGuideForEdge:2];
      if (v9)
      {
        v32 = [(CarCardContainerView *)self->_containerView topAnchor];
        v33 = [v9 topAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        [v6 addObject:v34];

        v35 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        v36 = [v9 bottomAnchor];
        v37 = [v35 constraintEqualToAnchor:v36];
        [v6 addObject:v37];
      }

      v16 = [v4 collisionGuideForEdge:4];
      if (v16)
      {
        v38 = [(CarCardContainerView *)self->_containerView rightAnchor];
        v39 = [v16 leftAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];
        [v6 addObject:v40];
      }

      v20 = [v4 collisionGuideForEdge:1];
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = [(CarCardContainerView *)self->_containerView rightAnchor];
      v22 = [v20 leftAnchor];
      goto LABEL_33;
    case 4:
      v9 = [v4 collisionGuideForEdge:4];
      if (v9)
      {
        v41 = [(CarCardContainerView *)self->_containerView leftAnchor];
        v42 = [v9 leftAnchor];
        v43 = [v41 constraintEqualToAnchor:v42];
        [v6 addObject:v43];

        v44 = [(CarCardContainerView *)self->_containerView rightAnchor];
        v45 = [v9 rightAnchor];
        v46 = [v44 constraintEqualToAnchor:v45];
        [v6 addObject:v46];
      }

      v16 = [v4 collisionGuideForEdge:2];
      if (v16)
      {
        v47 = [(CarCardContainerView *)self->_containerView topAnchor];
        v48 = [v16 bottomAnchor];
        v49 = [v47 constraintEqualToAnchor:v48];
        [v6 addObject:v49];
      }

      v20 = [v4 collisionGuideForEdge:8];
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = [(CarCardContainerView *)self->_containerView topAnchor];
      v22 = [v20 bottomAnchor];
      goto LABEL_33;
    case 8:
      v9 = [v4 collisionGuideForEdge:8];
      if (v9)
      {
        v10 = [(CarCardContainerView *)self->_containerView topAnchor];
        v11 = [v9 topAnchor];
        v12 = [v10 constraintEqualToAnchor:v11];
        [v6 addObject:v12];

        v13 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        v14 = [v9 bottomAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        [v6 addObject:v15];
      }

      v16 = [v4 collisionGuideForEdge:4];
      if (v16)
      {
        v17 = [(CarCardContainerView *)self->_containerView leftAnchor];
        v18 = [v16 rightAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
        [v6 addObject:v19];
      }

      v20 = [v4 collisionGuideForEdge:1];
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v22 = [v20 rightAnchor];
      goto LABEL_33;
  }

LABEL_37:
  v5 = [v6 copy];

LABEL_38:

  return v5;
}

- (id)_mapInsetsConstraintsForHost:(id)a3
{
  v4 = a3;
  v5 = [v4 contentLayoutGuide];
  v6 = [v4 mapInsetsLayoutGuide];

  if (!v6 || (v7 = [(CarCardConfiguration *)self effectiveEdgesAffectingMapInsets]) == 0)
  {
    v22 = &__NSArray0__struct;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = +[NSMutableArray array];
  v10 = [(CarCardConfiguration *)self layout];
  v11 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v12 = [(CarCardConfiguration *)self effectiveCornerPosition];
  if ([v10 horizontallyCenterMapInsets])
  {
    v13 = [v6 centerXAnchor];
    v14 = [v5 centerXAnchor];
    [v13 constraintEqualToAnchor:v14];
    v28 = v8;
    v15 = v12;
    v16 = v6;
    v17 = v5;
    v19 = v18 = v10;
    [v9 addObject:v19];

    v10 = v18;
    v5 = v17;
    v6 = v16;
    v12 = v15;
    v8 = v28;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_14;
    }

    if (v12 > 3)
    {
      if (v12 == 4)
      {
        if ([v10 primaryAxis] != 1)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      if (v12 != 8)
      {
        goto LABEL_35;
      }

      if ([v10 primaryAxis] != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v12 == 1)
      {
        if ([v10 primaryAxis] == 1)
        {
          goto LABEL_28;
        }

LABEL_14:
        if ((v8 & 4) == 0)
        {
          goto LABEL_35;
        }

        v20 = [(CarCardView *)self->_cardView bottomAnchor];
        v23 = [v6 topAnchor];
LABEL_30:
        v24 = v23;
        v25 = [v20 constraintLessThanOrEqualToAnchor:v23];
LABEL_34:
        v26 = v25;
        [v9 addObject:v25];

        goto LABEL_35;
      }

      if (v12 != 2)
      {
        goto LABEL_35;
      }

      if ([v10 primaryAxis] != 1)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    if ((v8 & 2) != 0)
    {
      v20 = [(CarCardView *)self->_cardView leftAnchor];
      v21 = [v6 rightAnchor];
LABEL_33:
      v24 = v21;
      v25 = [v20 constraintGreaterThanOrEqualToAnchor:v21];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v11 == 2)
  {
LABEL_28:
    if ((v8 & 8) == 0)
    {
      goto LABEL_35;
    }

    v20 = [(CarCardView *)self->_cardView rightAnchor];
    v23 = [v6 leftAnchor];
    goto LABEL_30;
  }

  if (v11 != 4)
  {
    if (v11 != 8)
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

LABEL_31:
  if (v8)
  {
    v20 = [(CarCardView *)self->_cardView topAnchor];
    v21 = [v6 bottomAnchor];
    goto LABEL_33;
  }

LABEL_35:
  v22 = [v9 copy];

LABEL_36:

  return v22;
}

- (id)_viewportConstraintsForHost:(id)a3
{
  v4 = [a3 viewportLayoutGuide];
  if (!v4)
  {
    v12 = &__NSArray0__struct;
    goto LABEL_21;
  }

  v5 = +[NSMutableArray array];
  v6 = [(CarCardConfiguration *)self layout];
  v7 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v8 = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_20;
      }

      cardView = self->_cardView;
    }

    else
    {
      if (v8 > 3)
      {
        if (v8 != 4)
        {
          if (v8 != 8)
          {
            goto LABEL_20;
          }

          v19 = [v6 primaryAxis];
          cardView = self->_cardView;
          if (v19 == 1)
          {
            goto LABEL_7;
          }

LABEL_17:
          v10 = [(CarCardView *)cardView topAnchor];
          v11 = [v4 bottomAnchor];
          goto LABEL_18;
        }

        v21 = [v6 primaryAxis];
        cardView = self->_cardView;
        if (v21 != 1)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (v8 == 1)
      {
        v20 = [v6 primaryAxis];
        cardView = self->_cardView;
        if (v20 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_20;
        }

        v18 = [v6 primaryAxis];
        cardView = self->_cardView;
        if (v18 == 1)
        {
          goto LABEL_7;
        }
      }
    }

    v10 = [(CarCardView *)cardView bottomAnchor];
    v13 = [v4 topAnchor];
LABEL_15:
    v14 = v13;
    v15 = [v10 constraintLessThanOrEqualToAnchor:v13];
LABEL_19:
    v16 = v15;
    [v5 addObject:v15];

    goto LABEL_20;
  }

  switch(v7)
  {
    case 2:
      cardView = self->_cardView;
LABEL_14:
      v10 = [(CarCardView *)cardView rightAnchor];
      v13 = [v4 leftAnchor];
      goto LABEL_15;
    case 4:
      cardView = self->_cardView;
      goto LABEL_17;
    case 8:
      cardView = self->_cardView;
LABEL_7:
      v10 = [(CarCardView *)cardView leftAnchor];
      v11 = [v4 rightAnchor];
LABEL_18:
      v14 = v11;
      v15 = [v10 constraintGreaterThanOrEqualToAnchor:v11];
      goto LABEL_19;
  }

LABEL_20:
  v12 = [v5 copy];

LABEL_21:

  return v12;
}

- (id)_hidingLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v9 = [(CarCardConfiguration *)self layout];
  [(CarCardConfiguration *)self effectiveMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v19 = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      if (v18 == 4)
      {
        v20 = [(CarCardContainerView *)self->_containerView topAnchor];
        v21 = [v7 bottomAnchor];
        goto LABEL_32;
      }

      if (v18 != 8)
      {
        goto LABEL_34;
      }

LABEL_5:
      v20 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v21 = [v7 rightAnchor];
LABEL_32:
      v30 = v21;
      v42 = [v20 constraintEqualToAnchor:v21];
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_34;
    }

    v20 = [(CarCardContainerView *)self->_containerView bottomAnchor];
    v21 = [v7 topAnchor];
    goto LABEL_32;
  }

  if (v19 > 3)
  {
    if (v19 != 4)
    {
      if (v19 != 8)
      {
        goto LABEL_34;
      }

      v26 = [v9 primaryAxis];
      containerView = self->_containerView;
      if (v26 == 1)
      {
        v24 = [(CarCardContainerView *)containerView topAnchor];
        v25 = [v7 bottomAnchor];
        goto LABEL_19;
      }

      v43 = [(CarCardContainerView *)containerView bottomAnchor];
      v44 = [v7 bottomAnchor];
      v47 = -v15;
      v45 = v43;
      v46 = v44;
LABEL_28:
      v48 = [v45 constraintEqualToAnchor:v46 constant:v47];
      [v8 addObject:v48];

      goto LABEL_5;
    }

    v38 = [v9 primaryAxis];
    v39 = self->_containerView;
    if (v38 != 1)
    {
      v57 = [(CarCardContainerView *)v39 bottomAnchor];
      v58 = [v7 bottomAnchor];
      v59 = [v57 constraintEqualToAnchor:v58 constant:-v15];
      [v8 addObject:v59];

      cardView = self->_cardView;
      goto LABEL_31;
    }

    v36 = [(CarCardContainerView *)v39 topAnchor];
    v37 = [v7 bottomAnchor];
LABEL_24:
    v40 = v37;
    v41 = [v36 constraintEqualToAnchor:v37];
    [v8 addObject:v41];

    v20 = [(CarCardContainerView *)self->_containerView leftAnchor];
    v30 = [v7 leftAnchor];
    v32 = v20;
    v33 = v30;
    v31 = v13;
    goto LABEL_25;
  }

  if (v19 == 1)
  {
    v34 = [v9 primaryAxis];
    v35 = self->_containerView;
    if (v34 != 1)
    {
      v49 = [(CarCardContainerView *)v35 topAnchor];
      v50 = [v7 topAnchor];
      v51 = [v49 constraintEqualToAnchor:v50 constant:v11];
      [v8 addObject:v51];

LABEL_30:
      cardView = self->_containerView;
LABEL_31:
      v20 = [cardView rightAnchor];
      v21 = [v7 leftAnchor];
      goto LABEL_32;
    }

    v36 = [(CarCardContainerView *)v35 bottomAnchor];
    v37 = [v7 topAnchor];
    goto LABEL_24;
  }

  if (v19 != 2)
  {
    goto LABEL_34;
  }

  v22 = [v9 primaryAxis];
  v23 = self->_containerView;
  if (v22 != 1)
  {
    v43 = [(CarCardContainerView *)v23 topAnchor];
    v44 = [v7 topAnchor];
    v45 = v43;
    v46 = v44;
    v47 = v11;
    goto LABEL_28;
  }

  v24 = [(CarCardContainerView *)v23 bottomAnchor];
  v25 = [v7 topAnchor];
LABEL_19:
  v28 = v25;
  v29 = [v24 constraintEqualToAnchor:v25];
  [v8 addObject:v29];

  v20 = [(CarCardContainerView *)self->_containerView rightAnchor];
  v30 = [v7 rightAnchor];
  v31 = -v17;
  v32 = v20;
  v33 = v30;
LABEL_25:
  v42 = [v32 constraintEqualToAnchor:v33 constant:v31];
LABEL_33:
  v53 = v42;
  [v8 addObject:v42];

LABEL_34:
  v54 = [(CarCardConfiguration *)self _sharedLayoutConstraintsForHost:v6 withLayoutGuide:v7];
  [v8 addObjectsFromArray:v54];

  v55 = [v8 copy];

  return v55;
}

- (id)_showingLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  [(CarCardConfiguration *)self effectiveMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v18 = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_27;
      }

      v19 = [(CarCardContainerView *)self->_containerView topAnchor];
      v20 = [v7 topAnchor];
      v21 = v19;
      v22 = v20;
      v23 = v10;
      goto LABEL_25;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        v41 = [(CarCardContainerView *)self->_containerView centerYAnchor];
        v42 = [v7 centerYAnchor];
        v43 = [v41 constraintEqualToAnchor:v42];
        [v8 addObject:v43];

        v19 = [(CarCardContainerView *)self->_containerView centerXAnchor];
        v20 = [v7 centerXAnchor];
        v36 = [v19 constraintEqualToAnchor:v20];
        goto LABEL_26;
      }

      if (v18 != 1)
      {
        goto LABEL_27;
      }

      v29 = [(CarCardContainerView *)self->_containerView topAnchor];
      v30 = [v7 topAnchor];
      v31 = v29;
      v32 = v30;
      v33 = v10;
    }

    else
    {
      if (v18 == 2)
      {
        v24 = [(CarCardContainerView *)self->_containerView topAnchor];
        v25 = [v7 topAnchor];
        v27 = v24;
        v28 = v25;
        v26 = v10;
LABEL_19:
        v34 = [v27 constraintEqualToAnchor:v28 constant:v26];
        [v8 addObject:v34];

        goto LABEL_20;
      }

      if (v18 != 4)
      {
        if (v18 != 8)
        {
          goto LABEL_27;
        }

        v24 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        v25 = [v7 bottomAnchor];
        v26 = -v14;
        v27 = v24;
        v28 = v25;
        goto LABEL_19;
      }

      v29 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      v30 = [v7 bottomAnchor];
      v33 = -v14;
      v31 = v29;
      v32 = v30;
    }

    v35 = [v31 constraintEqualToAnchor:v32 constant:v33];
    [v8 addObject:v35];

    goto LABEL_24;
  }

  switch(v17)
  {
    case 2:
LABEL_24:
      v19 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v20 = [v7 leftAnchor];
      v21 = v19;
      v22 = v20;
      v23 = v12;
      goto LABEL_25;
    case 4:
      v19 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      v20 = [v7 bottomAnchor];
      v23 = -v14;
LABEL_21:
      v21 = v19;
      v22 = v20;
LABEL_25:
      v36 = [v21 constraintEqualToAnchor:v22 constant:v23];
LABEL_26:
      v37 = v36;
      [v8 addObject:v36];

      break;
    case 8:
LABEL_20:
      v19 = [(CarCardContainerView *)self->_containerView rightAnchor];
      v20 = [v7 rightAnchor];
      v23 = -v16;
      goto LABEL_21;
  }

LABEL_27:
  v38 = [(CarCardConfiguration *)self _sharedLayoutConstraintsForHost:v6 withLayoutGuide:v7];
  [v8 addObjectsFromArray:v38];

  v39 = [v8 copy];

  return v39;
}

- (id)_sharedLayoutConstraintsForHost:(id)a3 withLayoutGuide:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = [(CarCardConfiguration *)self layout];
  [(CarCardConfiguration *)self effectiveMargins];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(CarCardConfiguration *)self effectiveEdgePosition];
  v156 = v6;
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      v34 = [(CarCardContainerView *)self->_containerView rightAnchor];
      v149 = [v5 rightAnchor];
      v152 = v34;
      v147 = [v34 constraintLessThanOrEqualToAnchor:-v15 constant:?];
      v162[0] = v147;
      v18 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v19 = [v5 leftAnchor];
      [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v11];
      v21 = v35 = v5;
      v162[1] = v21;
      v22 = [(CarCardContainerView *)self->_containerView centerXAnchor];
      v23 = v35;
      v24 = [v35 centerXAnchor];
      LODWORD(v36) = 1148829696;
      v26 = [v22 constraintEqualToAnchor:v24 constant:0.0 priority:v36];
      v162[2] = v26;
      v27 = v162;
    }

    else
    {
      if (v16 != 8)
      {
        goto LABEL_11;
      }

      v28 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      v149 = [v5 bottomAnchor];
      v152 = v28;
      v147 = [v28 constraintLessThanOrEqualToAnchor:-v13 constant:?];
      v161[0] = v147;
      v18 = [(CarCardContainerView *)self->_containerView topAnchor];
      v19 = [v5 topAnchor];
      [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v9];
      v21 = v29 = v5;
      v161[1] = v21;
      v22 = [(CarCardContainerView *)self->_containerView centerYAnchor];
      v23 = v29;
      v24 = [v29 centerYAnchor];
      LODWORD(v30) = 1148829696;
      v26 = [v22 constraintEqualToAnchor:v24 constant:0.0 priority:v30];
      v161[2] = v26;
      v27 = v161;
    }
  }

  else if (v16 == 1)
  {
    v31 = [(CarCardContainerView *)self->_containerView rightAnchor];
    v149 = [v5 rightAnchor];
    v152 = v31;
    v147 = [v31 constraintLessThanOrEqualToAnchor:-v15 constant:?];
    v164[0] = v147;
    v18 = [(CarCardContainerView *)self->_containerView leftAnchor];
    v19 = [v5 leftAnchor];
    [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v11];
    v21 = v32 = v5;
    v164[1] = v21;
    v22 = [(CarCardContainerView *)self->_containerView centerXAnchor];
    v23 = v32;
    v24 = [v32 centerXAnchor];
    LODWORD(v33) = 1148829696;
    v26 = [v22 constraintEqualToAnchor:v24 constant:0.0 priority:v33];
    v164[2] = v26;
    v27 = v164;
  }

  else
  {
    if (v16 != 2)
    {
      goto LABEL_11;
    }

    v17 = [(CarCardContainerView *)self->_containerView bottomAnchor];
    v149 = [v5 bottomAnchor];
    v152 = v17;
    v147 = [v17 constraintLessThanOrEqualToAnchor:-v13 constant:?];
    v163[0] = v147;
    v18 = [(CarCardContainerView *)self->_containerView topAnchor];
    v19 = [v5 topAnchor];
    [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v9];
    v21 = v20 = v5;
    v163[1] = v21;
    v22 = [(CarCardContainerView *)self->_containerView centerYAnchor];
    v23 = v20;
    v24 = [v20 centerYAnchor];
    LODWORD(v25) = 1148829696;
    v26 = [v22 constraintEqualToAnchor:v24 constant:0.0 priority:v25];
    v163[2] = v26;
    v27 = v163;
  }

  v37 = [NSArray arrayWithObjects:v27 count:3];
  [v156 addObjectsFromArray:v37];

  v5 = v23;
LABEL_11:
  v38 = [v7 primaryAxis];
  containerView = self->_containerView;
  if (v38 == 1)
  {
    v40 = [(CarCardContainerView *)containerView heightAnchor];
    v41 = [v5 heightAnchor];
    v42 = v9 + v13;
  }

  else
  {
    v40 = [(CarCardContainerView *)containerView widthAnchor];
    v41 = [v5 widthAnchor];
    v42 = v11 + v15;
  }

  v43 = [v40 constraintLessThanOrEqualToAnchor:v41 constant:-v42];
  [v156 addObject:v43];

  v44 = [v7 primaryAxisFillUpperLimit];

  if (v44)
  {
    v45 = [v7 primaryAxis];
    v46 = self->_containerView;
    if (v45 == 1)
    {
      [(CarCardContainerView *)v46 heightAnchor];
    }

    else
    {
      [(CarCardContainerView *)v46 widthAnchor];
    }
    v47 = ;
    v48 = [v7 primaryAxisFillUpperLimit];
    [v48 cgFloatValue];
    v49 = [v47 constraintLessThanOrEqualToConstant:?];
    [v156 addObject:v49];
  }

  v50 = [v7 primaryAxisFillLowerLimit];

  if (v50)
  {
    v51 = [v7 primaryAxis];
    v52 = self->_containerView;
    if (v51 == 1)
    {
      [(CarCardContainerView *)v52 heightAnchor];
    }

    else
    {
      [(CarCardContainerView *)v52 widthAnchor];
    }
    v53 = ;
    v54 = [v7 primaryAxisFillLowerLimit];
    [v54 cgFloatValue];
    v55 = [v53 constraintGreaterThanOrEqualToConstant:?];
    [v156 addObject:v55];
  }

  v56 = [v7 secondaryAxisFillUpperLimit];

  if (v56)
  {
    v57 = [v7 primaryAxis];
    v58 = self->_containerView;
    if (v57 == 1)
    {
      [(CarCardContainerView *)v58 widthAnchor];
    }

    else
    {
      [(CarCardContainerView *)v58 heightAnchor];
    }
    v59 = ;
    v60 = [v7 secondaryAxisFillUpperLimit];
    [v60 cgFloatValue];
    v61 = [v59 constraintLessThanOrEqualToConstant:?];
    [v156 addObject:v61];
  }

  v62 = [v7 secondaryAxisFillLowerLimit];

  if (v62)
  {
    v63 = [v7 primaryAxis];
    v64 = self->_containerView;
    if (v63 == 1)
    {
      [(CarCardContainerView *)v64 widthAnchor];
    }

    else
    {
      [(CarCardContainerView *)v64 heightAnchor];
    }
    v65 = ;
    v66 = [v7 secondaryAxisFillLowerLimit];
    [v66 cgFloatValue];
    v67 = [v65 constraintGreaterThanOrEqualToConstant:?];
    [v156 addObject:v67];
  }

  [(CarCardLayout *)self->_layout primaryAxisFillModePriority];
  v69 = (v68 * 0.502) + 249.0;
  [(CarCardLayout *)self->_layout secondaryAxisFillModePriority];
  v71 = v70;
  v72 = [v7 primaryAxisFillMode];
  if (v72 > 1)
  {
    if (v72 == 2)
    {
      v91 = [v7 primaryAxis];
      v88 = self->_containerView;
      if (v91 != 1)
      {
        v73 = [(CarCardContainerView *)v88 widthAnchor];
        v74 = [v5 widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          HIDWORD(v92) = 1071434956;
          v94 = v93 * 0.449999988;
        }

        else
        {
          v94 = 0.449999988;
        }

        *&v92 = v69;
        v79 = [v73 constraintEqualToAnchor:v74 multiplier:v94 priority:v92];
        v159[0] = v79;
        v95 = [(CarCardContainerView *)self->_containerView widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v97 = v96 * 220.0;
        }

        else
        {
          v97 = 220.0;
        }

        v154 = v95;
        v98 = [v95 constraintLessThanOrEqualToConstant:v97];
        v159[1] = v98;
        v99 = [(CarCardContainerView *)self->_containerView widthAnchor];
        v145 = v5;
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v101 = v100 * 172.0;
        }

        else
        {
          v101 = 172.0;
        }

        v102 = [v99 constraintGreaterThanOrEqualToConstant:v101];
        v159[2] = v102;
        v103 = [NSArray arrayWithObjects:v159 count:3];
        [v156 addObjectsFromArray:v103];

        v104 = v154;
LABEL_63:

        v5 = v145;
        goto LABEL_64;
      }

      goto LABEL_49;
    }

    if (v72 != 3)
    {
      goto LABEL_65;
    }

LABEL_46:
    v87 = [v7 primaryAxis];
    v88 = self->_containerView;
    if (v87 != 1)
    {
      v73 = [(CarCardContainerView *)v88 widthAnchor];
      v74 = [v5 widthAnchor];
      v90 = v11 + v15;
LABEL_50:
      *&v89 = v69;
      v79 = [v73 constraintEqualToAnchor:v74 constant:-v90 priority:v89];
      [v156 addObject:v79];
LABEL_64:

      goto LABEL_65;
    }

LABEL_49:
    v73 = [(CarCardContainerView *)v88 heightAnchor];
    v74 = [v5 heightAnchor];
    v90 = v9 + v13;
    goto LABEL_50;
  }

  if (!v72)
  {
    goto LABEL_46;
  }

  if (v72 == 1 && ![v7 primaryAxis])
  {
    v153 = v11;
    v73 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v74 = [v5 widthAnchor];
    v76 = 0.449999988;
    v77 = 0.449999988;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      HIDWORD(v75) = 1071434956;
      v77 = v78 * 0.449999988;
    }

    *&v75 = v69;
    v79 = [v73 constraintEqualToAnchor:v74 multiplier:v77 priority:v75];
    v160[0] = v79;
    v80 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v81 = [v5 widthAnchor];
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v76 = v82 * 0.449999988;
    }

    v148 = v81;
    v150 = v80;
    v83 = [v80 constraintLessThanOrEqualToAnchor:v81 multiplier:v76];
    v160[1] = v83;
    v84 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v145 = v5;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v86 = v85 * 220.0;
    }

    else
    {
      v86 = 220.0;
    }

    v11 = v153;
    v105 = [v84 constraintLessThanOrEqualToConstant:v86];
    v160[2] = v105;
    v106 = [NSArray arrayWithObjects:v160 count:3];
    [v156 addObjectsFromArray:v106];

    v104 = v150;
    goto LABEL_63;
  }

LABEL_65:
  v107 = (v71 * 0.502) + 249.0;
  v108 = [v7 secondaryAxisFillMode];
  if (v108 > 1)
  {
    if (v108 == 2)
    {
      v127 = [v7 primaryAxis];
      v124 = self->_containerView;
      if (v127 == 1)
      {
        v109 = [(CarCardContainerView *)v124 widthAnchor];
        v110 = [v5 widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          HIDWORD(v128) = 1071434956;
          v130 = v129 * 0.449999988;
        }

        else
        {
          v130 = 0.449999988;
        }

        LODWORD(v128) = 1148844442;
        v115 = [v109 constraintEqualToAnchor:v110 multiplier:v130 priority:v128];
        v157[0] = v115;
        v133 = [(CarCardContainerView *)self->_containerView widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v135 = v134 * 220.0;
        }

        else
        {
          v135 = 220.0;
        }

        v155 = v133;
        v136 = [v133 constraintLessThanOrEqualToConstant:v135];
        v157[1] = v136;
        v137 = [(CarCardContainerView *)self->_containerView widthAnchor];
        v146 = v5;
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v139 = v138 * 172.0;
        }

        else
        {
          v139 = 172.0;
        }

        v140 = [v137 constraintGreaterThanOrEqualToConstant:v139];
        v157[2] = v140;
        v141 = [NSArray arrayWithObjects:v157 count:3];
        [v156 addObjectsFromArray:v141];

LABEL_94:
        v5 = v146;
        goto LABEL_95;
      }

      goto LABEL_82;
    }

    if (v108 != 3)
    {
      goto LABEL_96;
    }

LABEL_77:
    v123 = [v7 primaryAxis];
    v124 = self->_containerView;
    if (v123 == 1)
    {
      v109 = [(CarCardContainerView *)v124 widthAnchor];
      v110 = [v5 widthAnchor];
      v126 = v11 + v15;
LABEL_83:
      *&v125 = v107;
      v115 = [v109 constraintEqualToAnchor:v110 constant:-v126 priority:v125];
      [v156 addObject:v115];
LABEL_95:

      goto LABEL_96;
    }

LABEL_82:
    v109 = [(CarCardContainerView *)v124 heightAnchor];
    v110 = [v5 heightAnchor];
    v126 = v9 + v13;
    goto LABEL_83;
  }

  if (!v108)
  {
    goto LABEL_77;
  }

  if (v108 == 1 && [v7 primaryAxis] == 1)
  {
    v109 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v110 = [v5 widthAnchor];
    v112 = 0.449999988;
    v113 = 0.449999988;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      HIDWORD(v111) = 1071434956;
      v113 = v114 * 0.449999988;
    }

    *&v111 = v107;
    v115 = [v109 constraintEqualToAnchor:v110 multiplier:v113 priority:v111];
    v158[0] = v115;
    v116 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v117 = [v5 widthAnchor];
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v112 = v118 * 0.449999988;
    }

    v151 = v117;
    v155 = v116;
    v119 = [v116 constraintLessThanOrEqualToAnchor:v117 multiplier:v112];
    v158[1] = v119;
    v120 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v146 = v5;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v122 = v121 * 220.0;
    }

    else
    {
      v122 = 220.0;
    }

    v131 = [v120 constraintLessThanOrEqualToConstant:v122];
    v158[2] = v131;
    v132 = [NSArray arrayWithObjects:v158 count:3];
    [v156 addObjectsFromArray:v132];

    goto LABEL_94;
  }

LABEL_96:
  v142 = [(CarCardConfiguration *)self _cardToContainerLayoutConstraints];
  [v156 addObjectsFromArray:v142];

  v143 = [v156 copy];

  return v143;
}

- (void)_prepareConstraintsForHost:(id)a3 withLayoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 overlayContentView];
  v9 = [v6 viewportLayoutGuide];
  v10 = [v6 mapInsetsLayoutGuide];
  v11 = v10;
  if (v7 && v8 && v9 && v10)
  {
    v12 = [(CarCardContainerView *)self->_containerView superview];

    if (v12 != v8)
    {
      [(CarCardContainerView *)self->_containerView removeFromSuperview];
      [v8 addSubview:self->_containerView];
      [(CarCardView *)self->_cardView removeFromSuperview];
      [v8 addSubview:self->_cardView];
      [(CarCardConfiguration *)self _resetConstraints];
    }

    v13 = [(CarCardConfiguration *)self layout];
    v14 = [(CarCardConfiguration *)self staysOnTop];
    v15 = v14;
    if (self->_showingConstraints && self->_hidingConstraints && self->_viewportConstraints && self->_mapInsetsConstraints && self->_collisionConstraints)
    {
      v80 = v14;
      lastLayout = self->_lastLayout;
      v17 = v13;
      v18 = lastLayout;
      v19 = [v17 edgePosition];
      if (v19 == -[CarCardLayout edgePosition](v18, "edgePosition") && (v20 = [v17 cornerPosition], v20 == -[CarCardLayout cornerPosition](v18, "cornerPosition")) && (v21 = objc_msgSend(v17, "primaryAxis"), v21 == -[CarCardLayout primaryAxis](v18, "primaryAxis")) && (v22 = objc_msgSend(v17, "pinnedEdges"), v22 == -[CarCardLayout pinnedEdges](v18, "pinnedEdges")) && (v23 = objc_msgSend(v17, "primaryAxisFillMode"), v23 == -[CarCardLayout primaryAxisFillMode](v18, "primaryAxisFillMode")) && (objc_msgSend(v17, "primaryAxisFillModePriority"), v25 = v24, -[CarCardLayout primaryAxisFillModePriority](v18, "primaryAxisFillModePriority"), v25 == v26) && (v27 = objc_msgSend(v17, "secondaryAxisFillMode"), v27 == -[CarCardLayout secondaryAxisFillMode](v18, "secondaryAxisFillMode")) && (objc_msgSend(v17, "secondaryAxisFillModePriority"), v29 = v28, -[CarCardLayout secondaryAxisFillModePriority](v18, "secondaryAxisFillModePriority"), v29 == v30) && (v31 = objc_msgSend(v17, "flipForRightHandDrive"), v31 == -[CarCardLayout flipForRightHandDrive](v18, "flipForRightHandDrive")) && (v32 = objc_msgSend(v17, "edgesAffectingMapInsets"), v32 == -[CarCardLayout edgesAffectingMapInsets](v18, "edgesAffectingMapInsets")) && (v33 = objc_msgSend(v17, "horizontallyCenterMapInsets"), v33 == -[CarCardLayout horizontallyCenterMapInsets](v18, "horizontallyCenterMapInsets")) && (objc_msgSend(v17, "margins"), v65 = v64, v67 = v66, v69 = v68, v71 = v70, -[CarCardLayout margins](v18, "margins"), v67 == v75) && v65 == v72 && v71 == v74)
      {
        v76 = v73;

        v15 = v80;
        if (v69 == v76 && self->_lastStaysOnTop == v80)
        {
          goto LABEL_40;
        }
      }

      else
      {

        v15 = v80;
      }
    }

    v34 = sub_10006CF98();
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
LABEL_39:

      [v8 removeConstraints:self->_hidingConstraints];
      [v8 removeConstraints:self->_showingConstraints];
      [(CarCardConfiguration *)self _resetConstraints];
      v50 = [(CarCardConfiguration *)self _hidingLayoutConstraintsForHost:v6 withLayoutGuide:v7];
      hidingConstraints = self->_hidingConstraints;
      self->_hidingConstraints = v50;

      v52 = [(CarCardConfiguration *)self _showingLayoutConstraintsForHost:v6 withLayoutGuide:v7];
      showingConstraints = self->_showingConstraints;
      self->_showingConstraints = v52;

      v54 = [(CarCardConfiguration *)self _viewportConstraintsForHost:v6];
      viewportConstraints = self->_viewportConstraints;
      self->_viewportConstraints = v54;

      v56 = [(CarCardConfiguration *)self _mapInsetsConstraintsForHost:v6];
      mapInsetsConstraints = self->_mapInsetsConstraints;
      self->_mapInsetsConstraints = v56;

      v58 = [(CarCardConfiguration *)self _collisionConstraintsForHost:v6];
      collisionConstraints = self->_collisionConstraints;
      self->_collisionConstraints = v58;

      v60 = [(CarCardConfiguration *)self _collisionLayoutGuidesForHost:v6];
      collisionLayoutGuides = self->_collisionLayoutGuides;
      self->_collisionLayoutGuides = v60;

      v62 = [v6 contentLayoutGuide];
      contentLayoutGuide = self->_contentLayoutGuide;
      self->_contentLayoutGuide = v62;

      [(CarCardConfiguration *)self _updateCardContainerPriorities];
      objc_storeStrong(&self->_lastLayout, v13);
      self->_lastStaysOnTop = v15;
LABEL_40:

      goto LABEL_41;
    }

    v77 = v13;
    v78 = v11;
    v79 = v9;
    v35 = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = objc_opt_respondsToSelector();
    v39 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v81 = v15;
    if (v38)
    {
      v40 = [(CarCardConfiguration *)v35 performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v37])
      {
        v42 = [NSString stringWithFormat:@"%@<%p, %@>", v37, v35, v41];

LABEL_30:
        v43 = v42;
        v44 = v6;
        if (!v44)
        {
          v49 = @"<nil>";
          v15 = v81;
          goto LABEL_38;
        }

        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        if (objc_opt_respondsToSelector())
        {
          v47 = [v44 performSelector:"accessibilityIdentifier"];
          v48 = v47;
          if (v47 && ![v47 isEqualToString:v46])
          {
            v49 = [NSString stringWithFormat:@"%@<%p, %@>", v46, v44, v48];

            goto LABEL_36;
          }
        }

        v49 = [NSString stringWithFormat:@"%@<%p>", v46, v44];
LABEL_36:
        v15 = v81;

LABEL_38:
        *buf = 138543618;
        v83 = v43;
        v84 = 2112;
        v85 = v49;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[%{public}@] Will prepare card constraints (%@)", buf, 0x16u);

        v11 = v78;
        v9 = v79;
        v13 = v77;
        goto LABEL_39;
      }

      v39 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    v42 = [v39[459] stringWithFormat:@"%@<%p>", v37, v35];
    goto LABEL_30;
  }

LABEL_41:
}

- (void)_applyToCardViewWithHost:(id)a3
{
  v4 = a3;
  v5 = sub_10006CF98();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v41 = v11;
    v42 = 2112;
    v43 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Will apply to card view (%@)", buf, 0x16u);
  }

  v12 = [v4 containingViewController];

  v13 = [(CarCardConfiguration *)self cardView];
  [v13 setParentViewController:v12];

  v14 = [(CarCardConfiguration *)self collisionLayoutGuides];
  v15 = [(CarCardConfiguration *)self cardView];
  [v15 setCollisionLayoutGuides:v14];

  v16 = [(CarCardConfiguration *)self contentLayoutGuide];
  v17 = [(CarCardConfiguration *)self cardView];
  [v17 setContentLayoutGuide:v16];

  v18 = [(CarCardConfiguration *)self isTransitioning];
  v19 = [(CarCardConfiguration *)self cardView];
  [v19 setTransitioning:v18];

  v20 = [(CarCardConfiguration *)self layout];
  v21 = [(CarCardConfiguration *)self cardView];
  [v21 setLayout:v20];

  v22 = [(CarCardConfiguration *)self title];
  v23 = [(CarCardConfiguration *)self cardView];
  [v23 setTitle:v22];

  v24 = [(CarCardConfiguration *)self titleNumberOfLines];
  v25 = [(CarCardConfiguration *)self cardView];
  [v25 setTitleNumberOfLines:v24];

  v26 = [(CarCardConfiguration *)self primaryAccessory];
  v27 = [(CarCardConfiguration *)self cardView];
  [v27 setPrimaryAccessory:v26];

  v28 = [(CarCardConfiguration *)self secondaryAccessory];
  v29 = [(CarCardConfiguration *)self cardView];
  [v29 setSecondaryAccessory:v28];

  v30 = [(CarCardConfiguration *)self accessoryImage];
  v31 = [(CarCardConfiguration *)self cardView];
  [v31 setAccessoryImage:v30];

  v32 = [(CarCardConfiguration *)self selectionHandler];
  v33 = [(CarCardConfiguration *)self cardView];
  [v33 setSelectionHandler:v32];

  [(CarCardConfiguration *)self selectionTriggerHeight];
  v35 = v34;
  v36 = [(CarCardConfiguration *)self cardView];
  [v36 setSelectionTriggerHeight:v35];

  v37 = [(CarCardConfiguration *)self content];
  v38 = [(CarCardConfiguration *)self cardView];
  [v38 setContent:v37];

  v39 = [(CarCardConfiguration *)self cardView];
  [v39 setNeedsLayout];

  [(CarCardConfiguration *)self _updateAvailableCardSize];
}

- (void)layoutInHost:(id)a3 withLayoutGuide:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CarCardConfiguration *)self isValid])
  {
    v14 = sub_10006D178();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[CarCardConfiguration layoutInHost:withLayoutGuide:]";
      v19 = 2080;
      v20 = "CarCardsOverlay.m";
      v21 = 1024;
      v22 = 350;
      v23 = 2080;
      v24 = "self.isValid";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
    }

    if (sub_100E03634())
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = +[NSThread callStackSymbols];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }

  if ((self->_invalidationState & 2) != 0)
  {
    v8 = [(CarCardConfiguration *)self previousContent];
    if (v8)
    {
      v9 = v8;
      v10 = [(CarCardConfiguration *)self previousContent];
      v11 = [v10 parentViewController];
      v12 = [v6 containingViewController];

      if (v11 == v12)
      {
        v13 = [(CarCardConfiguration *)self previousContent];
        [v13 removeFromParentViewController];
      }
    }
  }

  [(CarCardConfiguration *)self _prepareConstraintsForHost:v6 withLayoutGuide:v7];
  [(CarCardConfiguration *)self _applyToCardViewWithHost:v6];
  self->_invalidationState = 0;
  [(CarCardConfiguration *)self updateVisibility];
}

- (unint64_t)defaultFocusSortValue
{
  v3 = [(CarCardConfiguration *)self effectiveCornerPosition];
  v4 = [(CarCardConfiguration *)self layout];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 cornerPosition];
    v7 = 0;
  }

  else
  {
    v7 = [v4 edgePosition];
    v6 = 0;
  }

  v8 = sub_100D8E3AC(v6, v7);

  return v8;
}

- (unint64_t)initialFocusSortValue
{
  if (self->_initialFocusSortValue)
  {
    return self->_initialFocusSortValue;
  }

  else
  {
    return [(CarCardConfiguration *)self defaultFocusSortValue];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 6, self->_content);
  objc_storeStrong(v4 + 7, self->_layout);
  objc_storeStrong(v4 + 8, self->_title);
  v4[9] = self->_titleNumberOfLines;
  objc_storeStrong(v4 + 11, self->_primaryAccessory);
  objc_storeStrong(v4 + 12, self->_secondaryAccessory);
  objc_storeStrong(v4 + 10, self->_accessoryImage);
  v4[13] = self->_initialFocusSortValue;
  v5 = objc_retainBlock(self->_selectionHandler);
  v6 = v4[14];
  v4[14] = v5;

  v4[15] = *&self->_selectionTriggerHeight;
  *(v4 + 40) = self->_ignoreContainerBoundsChanges;
  *(v4 + 42) = self->_hidden;
  objc_storeStrong(v4 + 20, self->_hidingConstraints);
  objc_storeStrong(v4 + 19, self->_showingConstraints);
  objc_storeStrong(v4 + 21, self->_viewportConstraints);
  objc_storeStrong(v4 + 22, self->_mapInsetsConstraints);
  objc_storeStrong(v4 + 23, self->_collisionConstraints);
  objc_storeStrong(v4 + 24, self->_collisionLayoutGuides);
  objc_storeStrong(v4 + 25, self->_contentLayoutGuide);
  return v4;
}

- (CarCardConfiguration)initWithKey:(id)a3 carSceneType:(int64_t)a4
{
  v6 = a3;
  v26.receiver = self;
  v26.super_class = CarCardConfiguration;
  v7 = [(CarCardConfiguration *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_carSceneType = a4;
    if (!v6)
    {
      v9 = +[NSUUID UUID];
      v6 = [v9 UUIDString];
    }

    v10 = [v6 copy];
    key = v8->_key;
    v8->_key = v10;

    title = v8->_title;
    v8->_title = 0;

    v8->_titleNumberOfLines = 3;
    v8->_hidden = 1;
    v13 = [[CarCardAccessory alloc] initWithType:0];
    primaryAccessory = v8->_primaryAccessory;
    v8->_primaryAccessory = v13;

    v15 = [CarCardView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v19 = [(CarCardView *)v15 initWithFrame:CGRectZero.origin.x, y, width, height];
    cardView = v8->_cardView;
    v8->_cardView = v19;

    [(CarCardView *)v8->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [[CarCardContainerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    containerView = v8->_containerView;
    v8->_containerView = v21;

    [(CarCardContainerView *)v8->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarCardContainerView *)v8->_containerView setUserInteractionEnabled:0];
    [(CarCardContainerView *)v8->_containerView setClipsToBounds:0];
    LODWORD(v23) = 1148846080;
    [(CarCardContainerView *)v8->_containerView setContentHuggingPriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(CarCardContainerView *)v8->_containerView setContentHuggingPriority:0 forAxis:v24];
    [(CarCardContainerView *)v8->_containerView setContentCompressionResistancePriority:1 forAxis:0.0];
    [(CarCardContainerView *)v8->_containerView setContentCompressionResistancePriority:0 forAxis:0.0];
    [(CarCardContainerView *)v8->_containerView addObserver:v8 forKeyPath:@"bounds" options:1 context:off_1019361D0];
  }

  return v8;
}

@end