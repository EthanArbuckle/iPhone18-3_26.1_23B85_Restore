@interface CarCardConfiguration
- (CGRect)collisionLayoutGuideFrameForEdge:(unint64_t)edge;
- (CarCardConfiguration)initWithKey:(id)key carSceneType:(int64_t)type;
- (CarCardContent)previousContent;
- (NSString)description;
- (UIEdgeInsets)effectiveMargins;
- (id)_cardToContainerLayoutConstraints;
- (id)_collisionConstraintsForHost:(id)host;
- (id)_collisionLayoutGuidesForHost:(id)host;
- (id)_hidingLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide;
- (id)_mapInsetsConstraintsForHost:(id)host;
- (id)_sharedLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide;
- (id)_showingLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide;
- (id)_viewportConstraintsForHost:(id)host;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)accessoryType;
- (unint64_t)defaultFocusSortValue;
- (unint64_t)effectiveCornerPosition;
- (unint64_t)effectiveEdgePosition;
- (unint64_t)effectiveEdgesAffectingMapInsets;
- (unint64_t)initialFocusSortValue;
- (void)_applyToCardViewWithHost:(id)host;
- (void)_prepareConstraintsForHost:(id)host withLayoutGuide:(id)guide;
- (void)_resetConstraints;
- (void)_setShowContainerVisualisation:(BOOL)visualisation;
- (void)_startIgnoringContainerBoundsChanges;
- (void)_stopIgnoringContainerBoundsChanges;
- (void)_updateAvailableCardSize;
- (void)_updateCardContainerPriorities;
- (void)clear;
- (void)dealloc;
- (void)layoutInHost:(id)host withLayoutGuide:(id)guide;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reset;
- (void)setAccessoryImage:(id)image;
- (void)setAccessoryType:(unint64_t)type;
- (void)setContent:(id)content;
- (void)setHidden:(BOOL)hidden;
- (void)setLayout:(id)layout;
- (void)setPrimaryAccessory:(id)accessory;
- (void)setSecondaryAccessory:(id)accessory;
- (void)setSelectionHandler:(id)handler;
- (void)setSelectionTriggerHeight:(double)height;
- (void)setStaysOnTop:(BOOL)top;
- (void)setTitle:(id)title;
- (void)setTitleNumberOfLines:(int64_t)lines;
- (void)setTransitioning:(BOOL)transitioning;
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
  layout = [(CarCardConfiguration *)self layout];
  [layout margins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([layout pinnedEdges])
  {
    v4 = 0.0;
  }

  if (([layout pinnedEdges] & 2) != 0)
  {
    v6 = 0.0;
  }

  if (([layout pinnedEdges] & 4) != 0)
  {
    v8 = 0.0;
  }

  if (([layout pinnedEdges] & 8) != 0)
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
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    v10 = [(CarCardConfiguration *)selfCopy key];
    *buf = 138543618;
    v12 = selfCopy;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] %@ will start ignoring container bounds changes", buf, 0x16u);
  }

  self->_ignoreContainerBoundsChanges = 1;
}

- (unint64_t)effectiveCornerPosition
{
  layout = [(CarCardConfiguration *)self layout];
  cornerPosition = [layout cornerPosition];
  if ([layout flipForRightHandDrive])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    rightHandDrive = [v4 rightHandDrive];

    if (rightHandDrive)
    {
      switch(cornerPosition)
      {
        case 1uLL:
          cornerPosition = 2;
          break;
        case 4uLL:
          cornerPosition = 8;
          break;
        case 2uLL:
          cornerPosition = 1;
          break;
        case 8uLL:
          cornerPosition = 4;
          break;
      }
    }
  }

  return cornerPosition;
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
  primaryAxis = [(CarCardLayout *)self->_layout primaryAxis];
  *&v14 = v6;
  [(CarCardContainerView *)containerView setContentHuggingPriority:primaryAxis forAxis:v14];
  *&v15 = v10;
  [(CarCardContainerView *)self->_containerView setContentHuggingPriority:v11 forAxis:v15];
  cardView = self->_cardView;
  primaryAxis2 = [(CarCardLayout *)self->_layout primaryAxis];
  *&v18 = v5;
  [(CarCardView *)cardView setContentCompressionResistancePriority:primaryAxis2 forAxis:v18];
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
  content = [(CarCardConfiguration *)self content];
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
  layout = [(CarCardConfiguration *)self layout];
  edgePosition = [layout edgePosition];
  if ([layout flipForRightHandDrive])
  {
    v4 = +[MapsExternalDevice sharedInstance];
    rightHandDrive = [v4 rightHandDrive];

    v6 = 8;
    v7 = 2;
    if (edgePosition != 8)
    {
      v7 = edgePosition;
    }

    if (edgePosition != 2)
    {
      v6 = v7;
    }

    if (rightHandDrive)
    {
      edgePosition = v6;
    }
  }

  return edgePosition;
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
  primaryAxis = [(CarCardLayout *)v6 primaryAxis];
  cornerPosition = [(CarCardLayout *)v6 cornerPosition];
  if (primaryAxis == 1)
  {
    if (cornerPosition == 4 || [(CarCardLayout *)v6 cornerPosition]== 1 || [(CarCardLayout *)v6 edgePosition]== 2)
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
    v10 = cornerPosition == 4 || [(CarCardLayout *)v6 cornerPosition]== 8 || [(CarCardLayout *)v6 edgePosition]== 4;
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
  cornerPosition = [(CarCardLayout *)v6 cornerPosition];
  flipForRightHandDrive = [(CarCardLayout *)v6 flipForRightHandDrive];

  if (flipForRightHandDrive)
  {
    v9 = +[MapsExternalDevice sharedInstance];
    rightHandDrive = [v9 rightHandDrive];

    if (rightHandDrive)
    {
      switch(cornerPosition)
      {
        case 1:
          cornerPosition = 2;
          break;
        case 4:
          cornerPosition = 8;
          break;
        case 2:
          cornerPosition = 1;
          break;
        case 8:
          cornerPosition = 4;
          break;
      }
    }
  }

  v11 = self->_layout;
  edgePosition = [(CarCardLayout *)v11 edgePosition];
  flipForRightHandDrive2 = [(CarCardLayout *)v11 flipForRightHandDrive];

  if (flipForRightHandDrive2)
  {
    v14 = +[MapsExternalDevice sharedInstance];
    rightHandDrive2 = [v14 rightHandDrive];

    if (rightHandDrive2)
    {
      if (edgePosition == 2)
      {
        edgePosition = 8;
      }

      else if (edgePosition == 8)
      {
        edgePosition = 2;
      }
    }
  }

  if ((cornerPosition - 1) < 2 || edgePosition == 1)
  {
    bottomAnchor = [(CarCardView *)self->_cardView bottomAnchor];
    bottomAnchor2 = [(CarCardContainerView *)self->_containerView bottomAnchor];
    v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
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
    if (edgePosition != 4 && cornerPosition != 8 && cornerPosition != 4)
    {
LABEL_5:
      v4 = 1000.0;
      v5 = 1000.0;
      goto LABEL_34;
    }

    bottomAnchor = [(CarCardView *)self->_cardView topAnchor];
    bottomAnchor2 = [(CarCardContainerView *)self->_containerView topAnchor];
    v18 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
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
  cornerPosition2 = [(CarCardLayout *)v19 cornerPosition];
  flipForRightHandDrive3 = [(CarCardLayout *)v19 flipForRightHandDrive];

  if (flipForRightHandDrive3)
  {
    v22 = +[MapsExternalDevice sharedInstance];
    rightHandDrive3 = [v22 rightHandDrive];

    if (rightHandDrive3)
    {
      switch(cornerPosition2)
      {
        case 1:
          cornerPosition2 = 2;
          break;
        case 4:
          cornerPosition2 = 8;
          break;
        case 2:
          cornerPosition2 = 1;
          break;
        case 8:
          cornerPosition2 = 4;
          break;
      }
    }
  }

  v24 = self->_layout;
  edgePosition2 = [(CarCardLayout *)v24 edgePosition];
  flipForRightHandDrive4 = [(CarCardLayout *)v24 flipForRightHandDrive];

  if (flipForRightHandDrive4)
  {
    v27 = +[MapsExternalDevice sharedInstance];
    rightHandDrive4 = [v27 rightHandDrive];

    if (rightHandDrive4)
    {
      if (edgePosition2 != 2)
      {
        if (edgePosition2 == 8)
        {
          edgePosition2 = 2;
        }

        goto LABEL_54;
      }

LABEL_56:
      leftAnchor = [(CarCardView *)self->_cardView leftAnchor];
      leftAnchor2 = [(CarCardContainerView *)self->_containerView leftAnchor];
      v31 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
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

  if (edgePosition2 == 8)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (cornerPosition2 == 8 || cornerPosition2 == 2)
  {
    goto LABEL_56;
  }

  if (edgePosition2 == 2 || cornerPosition2 == 4 || cornerPosition2 == 1)
  {
    leftAnchor = [(CarCardView *)self->_cardView rightAnchor];
    leftAnchor2 = [(CarCardContainerView *)self->_containerView rightAnchor];
    v31 = [leftAnchor constraintLessThanOrEqualToAnchor:leftAnchor2];
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
  topAnchor = [(CarCardView *)self->_cardView topAnchor];
  topAnchor2 = [(CarCardContainerView *)self->_containerView topAnchor];
  *&v36 = v5;
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0 priority:v36];
  [v3 addObject:v37];

  leftAnchor3 = [(CarCardView *)self->_cardView leftAnchor];
  leftAnchor4 = [(CarCardContainerView *)self->_containerView leftAnchor];
  *&v40 = v33;
  v41 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:0.0 priority:v40];
  [v3 addObject:v41];

  bottomAnchor3 = [(CarCardView *)self->_cardView bottomAnchor];
  bottomAnchor4 = [(CarCardContainerView *)self->_containerView bottomAnchor];
  *&v44 = v4;
  v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0 priority:v44];
  [v3 addObject:v45];

  rightAnchor = [(CarCardView *)self->_cardView rightAnchor];
  rightAnchor2 = [(CarCardContainerView *)self->_containerView rightAnchor];
  *&v48 = v32;
  v49 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0 priority:v48];
  [v3 addObject:v49];

  v50 = [v3 copy];

  return v50;
}

- (unint64_t)effectiveEdgesAffectingMapInsets
{
  layout = [(CarCardConfiguration *)self layout];
  edgesAffectingMapInsets = [layout edgesAffectingMapInsets];

  layout2 = [(CarCardConfiguration *)self layout];
  if ([layout2 flipForRightHandDrive])
  {
    v6 = +[MapsExternalDevice sharedInstance];
    rightHandDrive = [v6 rightHandDrive];

    if (rightHandDrive)
    {
      edgesAffectingMapInsets |= (edgesAffectingMapInsets >> 2) & 2 | (8 * ((edgesAffectingMapInsets >> 1) & 1));
    }
  }

  else
  {
  }

  return edgesAffectingMapInsets;
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
  content = [(CarCardConfiguration *)self content];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    [(CarCardContainerView *)self->_containerView bounds];
    v6 = v5;
    v8 = v7;
    content2 = [(CarCardConfiguration *)self content];
    [content2 setAvailableCardSize:{v6, v8}];
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

    selfCopy = self;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v16 = v15;
      if (v15 && ![v15 isEqualToString:v14])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v14, selfCopy, v16];

        goto LABEL_15;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v14, selfCopy];
LABEL_15:

    *buf = 138543362;
    v26 = selfCopy;
    v18 = "[%{public}@] Will not update visibility constraints, no card view";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);

    goto LABEL_25;
  }

  window = [(CarCardView *)cardView window];
  windowScene = [window windowScene];
  if (!windowScene)
  {

LABEL_17:
    v11 = sub_10006CF98();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      selfCopy2 = self;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if (objc_opt_respondsToSelector())
      {
        v22 = [(CarCardConfiguration *)selfCopy2 performSelector:"accessibilityIdentifier"];
        v23 = v22;
        if (v22 && ![v22 isEqualToString:v21])
        {
          selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v21, selfCopy2, v23];

          goto LABEL_23;
        }
      }

      selfCopy = [NSString stringWithFormat:@"%@<%p>", v21, selfCopy2];
LABEL_23:

      *buf = 138543362;
      v26 = selfCopy;
      v18 = "[%{public}@] Will not update visibility constraints, no window or window detached for card view";
      goto LABEL_24;
    }

LABEL_25:

    return;
  }

  v6 = windowScene;
  window2 = [(CarCardView *)self->_cardView window];
  windowScene2 = [window2 windowScene];
  activationState = [windowScene2 activationState];

  if (activationState == -1)
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

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    v12 = [(CarCardConfiguration *)selfCopy key];
    *buf = 138543618;
    v21 = selfCopy;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] %@ will stop ignoring container bounds changes", buf, 0x16u);

    goto LABEL_9;
  }

  if (v5)
  {
    selfCopy2 = self;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarCardConfiguration *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy2, v17];

        goto LABEL_16;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy2];
LABEL_16:

    v19 = [(CarCardConfiguration *)selfCopy2 key];
    *buf = 138543618;
    v21 = selfCopy2;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_1019361D0 != context)
  {
    v21.receiver = self;
    v21.super_class = CarCardConfiguration;
    [(CarCardConfiguration *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_13;
  }

  if (!self->_ignoreContainerBoundsChanges && [pathCopy isEqualToString:@"bounds"])
  {
    v13 = sub_10006CF98();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      [(CarCardConfiguration *)self _updateAvailableCardSize];
      goto LABEL_13;
    }

    selfCopy = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_11;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_11:

    v20 = [(CarCardConfiguration *)selfCopy key];
    *buf = 138543618;
    v23 = selfCopy;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] %@ notified of container bounds change", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_setShowContainerVisualisation:(BOOL)visualisation
{
  visualisationCopy = visualisation;
  v5 = [(CarCardContainerView *)self->_containerView viewWithTag:1234];
  v6 = v5;
  if (visualisationCopy)
  {
    if (!v5)
    {
      v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setTag:1234];
      [v6 setUserInteractionEnabled:0];
      [(CarCardContainerView *)self->_containerView addSubview:v6];
      widthAnchor = [v6 widthAnchor];
      heightAnchor = [v6 heightAnchor];
      v19 = [widthAnchor constraintEqualToAnchor:heightAnchor];
      v23[0] = v19;
      widthAnchor2 = [v6 widthAnchor];
      v7 = [widthAnchor2 constraintEqualToConstant:4.0];
      v23[1] = v7;
      rightAnchor = [v6 rightAnchor];
      leftAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
      v10 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-2.0];
      v23[2] = v10;
      topAnchor = [v6 topAnchor];
      topAnchor2 = [(CarCardContainerView *)self->_containerView topAnchor];
      v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
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

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    self->_transitioning = transitioning;
    [(CarCardView *)self->_cardView setTransitioning:?];
  }
}

- (void)setSelectionTriggerHeight:(double)height
{
  if (vabdd_f64(self->_selectionTriggerHeight, height) > 2.22044605e-16)
  {
    self->_selectionTriggerHeight = height;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setSelectionHandler:(id)handler
{
  if (self->_selectionHandler != handler)
  {
    v4 = objc_retainBlock(handler);
    selectionHandler = self->_selectionHandler;
    self->_selectionHandler = v4;

    self->_invalidationState |= 4uLL;
  }
}

- (void)setStaysOnTop:(BOOL)top
{
  if (self->_staysOnTop != top)
  {
    self->_staysOnTop = top;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setLayout:(id)layout
{
  layoutCopy = layout;
  p_layout = &self->_layout;
  v7 = self->_layout;
  v53 = layoutCopy;
  edgePosition = [(CarCardLayout *)v7 edgePosition];
  if (edgePosition == [v53 edgePosition] && (v9 = -[CarCardLayout cornerPosition](v7, "cornerPosition"), v9 == objc_msgSend(v53, "cornerPosition")) && (v10 = -[CarCardLayout primaryAxis](v7, "primaryAxis"), v10 == objc_msgSend(v53, "primaryAxis")) && (v11 = -[CarCardLayout pinnedEdges](v7, "pinnedEdges"), v11 == objc_msgSend(v53, "pinnedEdges")) && (v12 = -[CarCardLayout primaryAxisFillMode](v7, "primaryAxisFillMode"), v12 == objc_msgSend(v53, "primaryAxisFillMode")) && (-[CarCardLayout primaryAxisFillModePriority](v7, "primaryAxisFillModePriority"), v14 = v13, objc_msgSend(v53, "primaryAxisFillModePriority"), v14 == v15) && (v16 = -[CarCardLayout secondaryAxisFillMode](v7, "secondaryAxisFillMode"), v16 == objc_msgSend(v53, "secondaryAxisFillMode")) && (-[CarCardLayout secondaryAxisFillModePriority](v7, "secondaryAxisFillModePriority"), v18 = v17, objc_msgSend(v53, "secondaryAxisFillModePriority"), v18 == v19) && (v20 = -[CarCardLayout flipForRightHandDrive](v7, "flipForRightHandDrive"), v20 == objc_msgSend(v53, "flipForRightHandDrive")) && (v21 = -[CarCardLayout edgesAffectingMapInsets](v7, "edgesAffectingMapInsets"), v21 == objc_msgSend(v53, "edgesAffectingMapInsets")) && (v22 = -[CarCardLayout horizontallyCenterMapInsets](v7, "horizontallyCenterMapInsets"), v22 == objc_msgSend(v53, "horizontallyCenterMapInsets")) && (-[CarCardLayout margins](v7, "margins"), v41 = v40, v43 = v42, v45 = v44, v47 = v46, objc_msgSend(v53, "margins"), v43 == v51) && v41 == v48 && v47 == v50)
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

  primaryAxis = [(CarCardLayout *)*p_layout primaryAxis];
  if (primaryAxis == [v53 primaryAxis] && (v24 = -[CarCardLayout primaryAxisFillMode](*p_layout, "primaryAxisFillMode"), v24 == objc_msgSend(v53, "primaryAxisFillMode")))
  {
    secondaryAxisFillMode = [(CarCardLayout *)*p_layout secondaryAxisFillMode];
    v26 = secondaryAxisFillMode != [v53 secondaryAxisFillMode];
  }

  else
  {
    v26 = 1;
  }

  cornerPosition = [(CarCardLayout *)*p_layout cornerPosition];
  if (cornerPosition == [v53 cornerPosition])
  {
    edgePosition2 = [(CarCardLayout *)*p_layout edgePosition];
    v29 = edgePosition2 != [v53 edgePosition];
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

  edgesAffectingMapInsets = [(CarCardLayout *)*p_layout edgesAffectingMapInsets];
  if (edgesAffectingMapInsets != [v53 edgesAffectingMapInsets] || (v38 = -[CarCardLayout horizontallyCenterMapInsets](*p_layout, "horizontallyCenterMapInsets"), v39 = objc_msgSend(v53, "horizontallyCenterMapInsets"), v26 || v29 || v33) || v38 != v39)
  {
    self->_invalidationState |= 1uLL;
  }

  objc_storeStrong(&self->_layout, layout);
LABEL_28:
}

- (void)setContent:(id)content
{
  contentCopy = content;
  if (self->_content != contentCopy)
  {
    v6 = contentCopy;
    objc_storeStrong(&self->_content, content);
    contentCopy = v6;
    self->_invalidationState |= 2uLL;
  }
}

- (void)setTitleNumberOfLines:(int64_t)lines
{
  if (self->_titleNumberOfLines != lines)
  {
    self->_titleNumberOfLines = lines;
    self->_invalidationState |= 4uLL;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v10 = titleCopy;
  titleCopy2 = title;
  v8 = v10;
  if (v10 | titleCopy2)
  {
    v9 = [v10 isEqual:titleCopy2];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_title, title);
      v8 = v10;
      self->_invalidationState |= 4uLL;
    }
  }
}

- (void)setAccessoryImage:(id)image
{
  imageCopy = image;
  if (self->_accessoryImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_accessoryImage, image);
    imageCopy = v6;
    self->_invalidationState |= 2uLL;
  }
}

- (void)setAccessoryType:(unint64_t)type
{
  v4 = [[CarCardAccessory alloc] initWithType:type];
  [(CarCardConfiguration *)self setPrimaryAccessory:v4];
}

- (unint64_t)accessoryType
{
  primaryAccessory = [(CarCardConfiguration *)self primaryAccessory];
  type = [primaryAccessory type];

  return type;
}

- (void)setSecondaryAccessory:(id)accessory
{
  accessoryCopy = accessory;
  secondaryAccessory = self->_secondaryAccessory;
  v10 = accessoryCopy;
  v7 = secondaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_secondaryAccessory, accessory);
      v8 = v10;
      self->_invalidationState |= 2uLL;
    }
  }
}

- (void)setPrimaryAccessory:(id)accessory
{
  accessoryCopy = accessory;
  primaryAccessory = self->_primaryAccessory;
  v10 = accessoryCopy;
  v7 = primaryAccessory;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryAccessory, accessory);
      v8 = v10;
      self->_invalidationState |= 2uLL;
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    hiddenCopy = hidden;
    self->_hidden = hidden;
    [(CarCardConfiguration *)self updateVisibility];
    v5 = sub_10006CF98();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      return;
    }

    selfCopy = self;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

    v12 = @"NO";
    if (hiddenCopy)
    {
      v12 = @"YES";
    }

    v13 = v12;
    *buf = 138543874;
    v15 = selfCopy;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Did set hidden (hidden:%@, configuration:%@)", buf, 0x20u);

    goto LABEL_11;
  }
}

- (CGRect)collisionLayoutGuideFrameForEdge:(unint64_t)edge
{
  collisionLayoutGuides = [(CarCardConfiguration *)self collisionLayoutGuides];
  v5 = [NSNumber numberWithUnsignedInteger:edge];
  v6 = [collisionLayoutGuides objectForKeyedSubscript:v5];
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

- (id)_collisionLayoutGuidesForHost:(id)host
{
  hostCopy = host;
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
        v10 = [hostCopy collisionGuideForEdge:{objc_msgSend(v9, "unsignedIntegerValue")}];
        [v4 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [&off_1016EDA30 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_collisionConstraintsForHost:(id)host
{
  hostCopy = host;
  if ([(CarCardConfiguration *)self staysOnTop])
  {
    v5 = &__NSArray0__struct;
    goto LABEL_38;
  }

  v6 = +[NSMutableArray array];
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (effectiveEdgePosition <= 1)
  {
    if (effectiveEdgePosition)
    {
      if (effectiveEdgePosition != 1)
      {
        goto LABEL_37;
      }

      v9 = [hostCopy collisionGuideForEdge:1];
      if (v9)
      {
        leftAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
        leftAnchor2 = [v9 leftAnchor];
        v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        [v6 addObject:v25];

        rightAnchor = [(CarCardContainerView *)self->_containerView rightAnchor];
        rightAnchor2 = [v9 rightAnchor];
        v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
        [v6 addObject:v28];
      }

      v16 = [hostCopy collisionGuideForEdge:2];
      if (v16)
      {
        bottomAnchor = [(CarCardContainerView *)self->_containerView bottomAnchor];
        topAnchor = [v16 topAnchor];
        v31 = [bottomAnchor constraintEqualToAnchor:topAnchor];
        [v6 addObject:v31];
      }

      leftAnchor3 = [hostCopy collisionGuideForEdge:8];
      if (!leftAnchor3)
      {
        goto LABEL_35;
      }

      bottomAnchor2 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      topAnchor2 = [leftAnchor3 topAnchor];
LABEL_33:
      v50 = topAnchor2;
      v51 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
      [v6 addObject:v51];

LABEL_34:
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    if (effectiveCornerPosition > 3)
    {
      if (effectiveCornerPosition != 4)
      {
        if (effectiveCornerPosition != 8)
        {
          goto LABEL_37;
        }

        v9 = [hostCopy collisionGuideForEdge:8];
        if (v9)
        {
          topAnchor3 = [(CarCardContainerView *)self->_containerView topAnchor];
          bottomAnchor3 = [v9 bottomAnchor];
          v60 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
          [v6 addObject:v60];
        }

        v56 = hostCopy;
        v57 = 4;
LABEL_52:
        v16 = [v56 collisionGuideForEdge:v57];
        if (!v16)
        {
          goto LABEL_36;
        }

        leftAnchor3 = [(CarCardContainerView *)self->_containerView leftAnchor];
        rightAnchor3 = [v16 rightAnchor];
        goto LABEL_62;
      }

      v9 = [hostCopy collisionGuideForEdge:2];
      if (v9)
      {
        topAnchor4 = [(CarCardContainerView *)self->_containerView topAnchor];
        bottomAnchor4 = [v9 bottomAnchor];
        v69 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4];
        [v6 addObject:v69];
      }

      v65 = hostCopy;
      v66 = 4;
    }

    else
    {
      if (effectiveCornerPosition != 1)
      {
        if (effectiveCornerPosition != 2)
        {
          goto LABEL_37;
        }

        v9 = [hostCopy collisionGuideForEdge:8];
        if (v9)
        {
          bottomAnchor5 = [(CarCardContainerView *)self->_containerView bottomAnchor];
          topAnchor5 = [v9 topAnchor];
          v55 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5];
          [v6 addObject:v55];
        }

        v56 = hostCopy;
        v57 = 1;
        goto LABEL_52;
      }

      v9 = [hostCopy collisionGuideForEdge:2];
      if (v9)
      {
        bottomAnchor6 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        topAnchor6 = [v9 topAnchor];
        v64 = [bottomAnchor6 constraintEqualToAnchor:topAnchor6];
        [v6 addObject:v64];
      }

      v65 = hostCopy;
      v66 = 1;
    }

    v16 = [v65 collisionGuideForEdge:v66];
    if (!v16)
    {
      goto LABEL_36;
    }

    leftAnchor3 = [(CarCardContainerView *)self->_containerView rightAnchor];
    rightAnchor3 = [v16 leftAnchor];
LABEL_62:
    bottomAnchor2 = rightAnchor3;
    v50 = [leftAnchor3 constraintEqualToAnchor:rightAnchor3];
    [v6 addObject:v50];
    goto LABEL_34;
  }

  switch(effectiveEdgePosition)
  {
    case 2:
      v9 = [hostCopy collisionGuideForEdge:2];
      if (v9)
      {
        topAnchor7 = [(CarCardContainerView *)self->_containerView topAnchor];
        topAnchor8 = [v9 topAnchor];
        v34 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
        [v6 addObject:v34];

        bottomAnchor7 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        bottomAnchor8 = [v9 bottomAnchor];
        v37 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
        [v6 addObject:v37];
      }

      v16 = [hostCopy collisionGuideForEdge:4];
      if (v16)
      {
        rightAnchor4 = [(CarCardContainerView *)self->_containerView rightAnchor];
        leftAnchor4 = [v16 leftAnchor];
        v40 = [rightAnchor4 constraintEqualToAnchor:leftAnchor4];
        [v6 addObject:v40];
      }

      leftAnchor3 = [hostCopy collisionGuideForEdge:1];
      if (!leftAnchor3)
      {
        goto LABEL_35;
      }

      bottomAnchor2 = [(CarCardContainerView *)self->_containerView rightAnchor];
      topAnchor2 = [leftAnchor3 leftAnchor];
      goto LABEL_33;
    case 4:
      v9 = [hostCopy collisionGuideForEdge:4];
      if (v9)
      {
        leftAnchor5 = [(CarCardContainerView *)self->_containerView leftAnchor];
        leftAnchor6 = [v9 leftAnchor];
        v43 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
        [v6 addObject:v43];

        rightAnchor5 = [(CarCardContainerView *)self->_containerView rightAnchor];
        rightAnchor6 = [v9 rightAnchor];
        v46 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
        [v6 addObject:v46];
      }

      v16 = [hostCopy collisionGuideForEdge:2];
      if (v16)
      {
        topAnchor9 = [(CarCardContainerView *)self->_containerView topAnchor];
        bottomAnchor9 = [v16 bottomAnchor];
        v49 = [topAnchor9 constraintEqualToAnchor:bottomAnchor9];
        [v6 addObject:v49];
      }

      leftAnchor3 = [hostCopy collisionGuideForEdge:8];
      if (!leftAnchor3)
      {
        goto LABEL_35;
      }

      bottomAnchor2 = [(CarCardContainerView *)self->_containerView topAnchor];
      topAnchor2 = [leftAnchor3 bottomAnchor];
      goto LABEL_33;
    case 8:
      v9 = [hostCopy collisionGuideForEdge:8];
      if (v9)
      {
        topAnchor10 = [(CarCardContainerView *)self->_containerView topAnchor];
        topAnchor11 = [v9 topAnchor];
        v12 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
        [v6 addObject:v12];

        bottomAnchor10 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        bottomAnchor11 = [v9 bottomAnchor];
        v15 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
        [v6 addObject:v15];
      }

      v16 = [hostCopy collisionGuideForEdge:4];
      if (v16)
      {
        leftAnchor7 = [(CarCardContainerView *)self->_containerView leftAnchor];
        rightAnchor7 = [v16 rightAnchor];
        v19 = [leftAnchor7 constraintEqualToAnchor:rightAnchor7];
        [v6 addObject:v19];
      }

      leftAnchor3 = [hostCopy collisionGuideForEdge:1];
      if (!leftAnchor3)
      {
        goto LABEL_35;
      }

      bottomAnchor2 = [(CarCardContainerView *)self->_containerView leftAnchor];
      topAnchor2 = [leftAnchor3 rightAnchor];
      goto LABEL_33;
  }

LABEL_37:
  v5 = [v6 copy];

LABEL_38:

  return v5;
}

- (id)_mapInsetsConstraintsForHost:(id)host
{
  hostCopy = host;
  contentLayoutGuide = [hostCopy contentLayoutGuide];
  mapInsetsLayoutGuide = [hostCopy mapInsetsLayoutGuide];

  if (!mapInsetsLayoutGuide || (v7 = [(CarCardConfiguration *)self effectiveEdgesAffectingMapInsets]) == 0)
  {
    v22 = &__NSArray0__struct;
    goto LABEL_36;
  }

  v8 = v7;
  v9 = +[NSMutableArray array];
  layout = [(CarCardConfiguration *)self layout];
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  if ([layout horizontallyCenterMapInsets])
  {
    centerXAnchor = [mapInsetsLayoutGuide centerXAnchor];
    centerXAnchor2 = [contentLayoutGuide centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v28 = v8;
    v15 = effectiveCornerPosition;
    v16 = mapInsetsLayoutGuide;
    v17 = contentLayoutGuide;
    v19 = v18 = layout;
    [v9 addObject:v19];

    layout = v18;
    contentLayoutGuide = v17;
    mapInsetsLayoutGuide = v16;
    effectiveCornerPosition = v15;
    v8 = v28;
  }

  if (effectiveEdgePosition <= 1)
  {
    if (effectiveEdgePosition)
    {
      if (effectiveEdgePosition != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_14;
    }

    if (effectiveCornerPosition > 3)
    {
      if (effectiveCornerPosition == 4)
      {
        if ([layout primaryAxis] != 1)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      if (effectiveCornerPosition != 8)
      {
        goto LABEL_35;
      }

      if ([layout primaryAxis] != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (effectiveCornerPosition == 1)
      {
        if ([layout primaryAxis] == 1)
        {
          goto LABEL_28;
        }

LABEL_14:
        if ((v8 & 4) == 0)
        {
          goto LABEL_35;
        }

        bottomAnchor = [(CarCardView *)self->_cardView bottomAnchor];
        topAnchor = [mapInsetsLayoutGuide topAnchor];
LABEL_30:
        v24 = topAnchor;
        v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor];
LABEL_34:
        v26 = v25;
        [v9 addObject:v25];

        goto LABEL_35;
      }

      if (effectiveCornerPosition != 2)
      {
        goto LABEL_35;
      }

      if ([layout primaryAxis] != 1)
      {
        goto LABEL_14;
      }
    }

LABEL_9:
    if ((v8 & 2) != 0)
    {
      bottomAnchor = [(CarCardView *)self->_cardView leftAnchor];
      rightAnchor = [mapInsetsLayoutGuide rightAnchor];
LABEL_33:
      v24 = rightAnchor;
      v25 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:rightAnchor];
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (effectiveEdgePosition == 2)
  {
LABEL_28:
    if ((v8 & 8) == 0)
    {
      goto LABEL_35;
    }

    bottomAnchor = [(CarCardView *)self->_cardView rightAnchor];
    topAnchor = [mapInsetsLayoutGuide leftAnchor];
    goto LABEL_30;
  }

  if (effectiveEdgePosition != 4)
  {
    if (effectiveEdgePosition != 8)
    {
      goto LABEL_35;
    }

    goto LABEL_9;
  }

LABEL_31:
  if (v8)
  {
    bottomAnchor = [(CarCardView *)self->_cardView topAnchor];
    rightAnchor = [mapInsetsLayoutGuide bottomAnchor];
    goto LABEL_33;
  }

LABEL_35:
  v22 = [v9 copy];

LABEL_36:

  return v22;
}

- (id)_viewportConstraintsForHost:(id)host
{
  viewportLayoutGuide = [host viewportLayoutGuide];
  if (!viewportLayoutGuide)
  {
    v12 = &__NSArray0__struct;
    goto LABEL_21;
  }

  v5 = +[NSMutableArray array];
  layout = [(CarCardConfiguration *)self layout];
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (effectiveEdgePosition <= 1)
  {
    if (effectiveEdgePosition)
    {
      if (effectiveEdgePosition != 1)
      {
        goto LABEL_20;
      }

      cardView = self->_cardView;
    }

    else
    {
      if (effectiveCornerPosition > 3)
      {
        if (effectiveCornerPosition != 4)
        {
          if (effectiveCornerPosition != 8)
          {
            goto LABEL_20;
          }

          primaryAxis = [layout primaryAxis];
          cardView = self->_cardView;
          if (primaryAxis == 1)
          {
            goto LABEL_7;
          }

LABEL_17:
          topAnchor = [(CarCardView *)cardView topAnchor];
          bottomAnchor = [viewportLayoutGuide bottomAnchor];
          goto LABEL_18;
        }

        primaryAxis2 = [layout primaryAxis];
        cardView = self->_cardView;
        if (primaryAxis2 != 1)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (effectiveCornerPosition == 1)
      {
        primaryAxis3 = [layout primaryAxis];
        cardView = self->_cardView;
        if (primaryAxis3 == 1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (effectiveCornerPosition != 2)
        {
          goto LABEL_20;
        }

        primaryAxis4 = [layout primaryAxis];
        cardView = self->_cardView;
        if (primaryAxis4 == 1)
        {
          goto LABEL_7;
        }
      }
    }

    topAnchor = [(CarCardView *)cardView bottomAnchor];
    topAnchor2 = [viewportLayoutGuide topAnchor];
LABEL_15:
    v14 = topAnchor2;
    v15 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
LABEL_19:
    v16 = v15;
    [v5 addObject:v15];

    goto LABEL_20;
  }

  switch(effectiveEdgePosition)
  {
    case 2:
      cardView = self->_cardView;
LABEL_14:
      topAnchor = [(CarCardView *)cardView rightAnchor];
      topAnchor2 = [viewportLayoutGuide leftAnchor];
      goto LABEL_15;
    case 4:
      cardView = self->_cardView;
      goto LABEL_17;
    case 8:
      cardView = self->_cardView;
LABEL_7:
      topAnchor = [(CarCardView *)cardView leftAnchor];
      bottomAnchor = [viewportLayoutGuide rightAnchor];
LABEL_18:
      v14 = bottomAnchor;
      v15 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
      goto LABEL_19;
  }

LABEL_20:
  v12 = [v5 copy];

LABEL_21:

  return v12;
}

- (id)_hidingLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide
{
  hostCopy = host;
  guideCopy = guide;
  v8 = +[NSMutableArray array];
  layout = [(CarCardConfiguration *)self layout];
  [(CarCardConfiguration *)self effectiveMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (effectiveEdgePosition > 1)
  {
    if (effectiveEdgePosition != 2)
    {
      if (effectiveEdgePosition == 4)
      {
        topAnchor = [(CarCardContainerView *)self->_containerView topAnchor];
        bottomAnchor = [guideCopy bottomAnchor];
        goto LABEL_32;
      }

      if (effectiveEdgePosition != 8)
      {
        goto LABEL_34;
      }

LABEL_5:
      topAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
      bottomAnchor = [guideCopy rightAnchor];
LABEL_32:
      leftAnchor = bottomAnchor;
      v42 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (effectiveEdgePosition)
  {
    if (effectiveEdgePosition != 1)
    {
      goto LABEL_34;
    }

    topAnchor = [(CarCardContainerView *)self->_containerView bottomAnchor];
    bottomAnchor = [guideCopy topAnchor];
    goto LABEL_32;
  }

  if (effectiveCornerPosition > 3)
  {
    if (effectiveCornerPosition != 4)
    {
      if (effectiveCornerPosition != 8)
      {
        goto LABEL_34;
      }

      primaryAxis = [layout primaryAxis];
      containerView = self->_containerView;
      if (primaryAxis == 1)
      {
        topAnchor2 = [(CarCardContainerView *)containerView topAnchor];
        bottomAnchor2 = [guideCopy bottomAnchor];
        goto LABEL_19;
      }

      bottomAnchor3 = [(CarCardContainerView *)containerView bottomAnchor];
      bottomAnchor4 = [guideCopy bottomAnchor];
      v47 = -v15;
      v45 = bottomAnchor3;
      v46 = bottomAnchor4;
LABEL_28:
      v48 = [v45 constraintEqualToAnchor:v46 constant:v47];
      [v8 addObject:v48];

      goto LABEL_5;
    }

    primaryAxis2 = [layout primaryAxis];
    v39 = self->_containerView;
    if (primaryAxis2 != 1)
    {
      bottomAnchor5 = [(CarCardContainerView *)v39 bottomAnchor];
      bottomAnchor6 = [guideCopy bottomAnchor];
      v59 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-v15];
      [v8 addObject:v59];

      cardView = self->_cardView;
      goto LABEL_31;
    }

    topAnchor3 = [(CarCardContainerView *)v39 topAnchor];
    bottomAnchor7 = [guideCopy bottomAnchor];
LABEL_24:
    v40 = bottomAnchor7;
    v41 = [topAnchor3 constraintEqualToAnchor:bottomAnchor7];
    [v8 addObject:v41];

    topAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
    leftAnchor = [guideCopy leftAnchor];
    v32 = topAnchor;
    v33 = leftAnchor;
    v31 = v13;
    goto LABEL_25;
  }

  if (effectiveCornerPosition == 1)
  {
    primaryAxis3 = [layout primaryAxis];
    v35 = self->_containerView;
    if (primaryAxis3 != 1)
    {
      topAnchor4 = [(CarCardContainerView *)v35 topAnchor];
      topAnchor5 = [guideCopy topAnchor];
      v51 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:v11];
      [v8 addObject:v51];

LABEL_30:
      cardView = self->_containerView;
LABEL_31:
      topAnchor = [cardView rightAnchor];
      bottomAnchor = [guideCopy leftAnchor];
      goto LABEL_32;
    }

    topAnchor3 = [(CarCardContainerView *)v35 bottomAnchor];
    bottomAnchor7 = [guideCopy topAnchor];
    goto LABEL_24;
  }

  if (effectiveCornerPosition != 2)
  {
    goto LABEL_34;
  }

  primaryAxis4 = [layout primaryAxis];
  v23 = self->_containerView;
  if (primaryAxis4 != 1)
  {
    bottomAnchor3 = [(CarCardContainerView *)v23 topAnchor];
    bottomAnchor4 = [guideCopy topAnchor];
    v45 = bottomAnchor3;
    v46 = bottomAnchor4;
    v47 = v11;
    goto LABEL_28;
  }

  topAnchor2 = [(CarCardContainerView *)v23 bottomAnchor];
  bottomAnchor2 = [guideCopy topAnchor];
LABEL_19:
  v28 = bottomAnchor2;
  v29 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  [v8 addObject:v29];

  topAnchor = [(CarCardContainerView *)self->_containerView rightAnchor];
  leftAnchor = [guideCopy rightAnchor];
  v31 = -v17;
  v32 = topAnchor;
  v33 = leftAnchor;
LABEL_25:
  v42 = [v32 constraintEqualToAnchor:v33 constant:v31];
LABEL_33:
  v53 = v42;
  [v8 addObject:v42];

LABEL_34:
  v54 = [(CarCardConfiguration *)self _sharedLayoutConstraintsForHost:hostCopy withLayoutGuide:guideCopy];
  [v8 addObjectsFromArray:v54];

  v55 = [v8 copy];

  return v55;
}

- (id)_showingLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide
{
  hostCopy = host;
  guideCopy = guide;
  v8 = +[NSMutableArray array];
  [(CarCardConfiguration *)self effectiveMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  if (effectiveEdgePosition <= 1)
  {
    if (effectiveEdgePosition)
    {
      if (effectiveEdgePosition != 1)
      {
        goto LABEL_27;
      }

      topAnchor = [(CarCardContainerView *)self->_containerView topAnchor];
      topAnchor2 = [guideCopy topAnchor];
      v21 = topAnchor;
      v22 = topAnchor2;
      v23 = v10;
      goto LABEL_25;
    }

    if (effectiveCornerPosition <= 1)
    {
      if (!effectiveCornerPosition)
      {
        centerYAnchor = [(CarCardContainerView *)self->_containerView centerYAnchor];
        centerYAnchor2 = [guideCopy centerYAnchor];
        v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [v8 addObject:v43];

        topAnchor = [(CarCardContainerView *)self->_containerView centerXAnchor];
        topAnchor2 = [guideCopy centerXAnchor];
        v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
        goto LABEL_26;
      }

      if (effectiveCornerPosition != 1)
      {
        goto LABEL_27;
      }

      topAnchor3 = [(CarCardContainerView *)self->_containerView topAnchor];
      topAnchor4 = [guideCopy topAnchor];
      v31 = topAnchor3;
      v32 = topAnchor4;
      v33 = v10;
    }

    else
    {
      if (effectiveCornerPosition == 2)
      {
        topAnchor5 = [(CarCardContainerView *)self->_containerView topAnchor];
        topAnchor6 = [guideCopy topAnchor];
        v27 = topAnchor5;
        v28 = topAnchor6;
        v26 = v10;
LABEL_19:
        v34 = [v27 constraintEqualToAnchor:v28 constant:v26];
        [v8 addObject:v34];

        goto LABEL_20;
      }

      if (effectiveCornerPosition != 4)
      {
        if (effectiveCornerPosition != 8)
        {
          goto LABEL_27;
        }

        topAnchor5 = [(CarCardContainerView *)self->_containerView bottomAnchor];
        topAnchor6 = [guideCopy bottomAnchor];
        v26 = -v14;
        v27 = topAnchor5;
        v28 = topAnchor6;
        goto LABEL_19;
      }

      topAnchor3 = [(CarCardContainerView *)self->_containerView bottomAnchor];
      topAnchor4 = [guideCopy bottomAnchor];
      v33 = -v14;
      v31 = topAnchor3;
      v32 = topAnchor4;
    }

    v35 = [v31 constraintEqualToAnchor:v32 constant:v33];
    [v8 addObject:v35];

    goto LABEL_24;
  }

  switch(effectiveEdgePosition)
  {
    case 2:
LABEL_24:
      topAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
      topAnchor2 = [guideCopy leftAnchor];
      v21 = topAnchor;
      v22 = topAnchor2;
      v23 = v12;
      goto LABEL_25;
    case 4:
      topAnchor = [(CarCardContainerView *)self->_containerView bottomAnchor];
      topAnchor2 = [guideCopy bottomAnchor];
      v23 = -v14;
LABEL_21:
      v21 = topAnchor;
      v22 = topAnchor2;
LABEL_25:
      v36 = [v21 constraintEqualToAnchor:v22 constant:v23];
LABEL_26:
      v37 = v36;
      [v8 addObject:v36];

      break;
    case 8:
LABEL_20:
      topAnchor = [(CarCardContainerView *)self->_containerView rightAnchor];
      topAnchor2 = [guideCopy rightAnchor];
      v23 = -v16;
      goto LABEL_21;
  }

LABEL_27:
  v38 = [(CarCardConfiguration *)self _sharedLayoutConstraintsForHost:hostCopy withLayoutGuide:guideCopy];
  [v8 addObjectsFromArray:v38];

  v39 = [v8 copy];

  return v39;
}

- (id)_sharedLayoutConstraintsForHost:(id)host withLayoutGuide:(id)guide
{
  guideCopy = guide;
  v6 = +[NSMutableArray array];
  layout = [(CarCardConfiguration *)self layout];
  [(CarCardConfiguration *)self effectiveMargins];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  effectiveEdgePosition = [(CarCardConfiguration *)self effectiveEdgePosition];
  v156 = v6;
  if (effectiveEdgePosition > 3)
  {
    if (effectiveEdgePosition == 4)
    {
      rightAnchor = [(CarCardContainerView *)self->_containerView rightAnchor];
      rightAnchor2 = [guideCopy rightAnchor];
      v152 = rightAnchor;
      v147 = [rightAnchor constraintLessThanOrEqualToAnchor:-v15 constant:?];
      v162[0] = v147;
      leftAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
      leftAnchor2 = [guideCopy leftAnchor];
      [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v11];
      v21 = v35 = guideCopy;
      v162[1] = v21;
      centerXAnchor = [(CarCardContainerView *)self->_containerView centerXAnchor];
      v23 = v35;
      centerXAnchor2 = [v35 centerXAnchor];
      LODWORD(v36) = 1148829696;
      v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0 priority:v36];
      v162[2] = v26;
      v27 = v162;
    }

    else
    {
      if (effectiveEdgePosition != 8)
      {
        goto LABEL_11;
      }

      bottomAnchor = [(CarCardContainerView *)self->_containerView bottomAnchor];
      rightAnchor2 = [guideCopy bottomAnchor];
      v152 = bottomAnchor;
      v147 = [bottomAnchor constraintLessThanOrEqualToAnchor:-v13 constant:?];
      v161[0] = v147;
      leftAnchor = [(CarCardContainerView *)self->_containerView topAnchor];
      leftAnchor2 = [guideCopy topAnchor];
      [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v9];
      v21 = v29 = guideCopy;
      v161[1] = v21;
      centerXAnchor = [(CarCardContainerView *)self->_containerView centerYAnchor];
      v23 = v29;
      centerXAnchor2 = [v29 centerYAnchor];
      LODWORD(v30) = 1148829696;
      v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0 priority:v30];
      v161[2] = v26;
      v27 = v161;
    }
  }

  else if (effectiveEdgePosition == 1)
  {
    rightAnchor3 = [(CarCardContainerView *)self->_containerView rightAnchor];
    rightAnchor2 = [guideCopy rightAnchor];
    v152 = rightAnchor3;
    v147 = [rightAnchor3 constraintLessThanOrEqualToAnchor:-v15 constant:?];
    v164[0] = v147;
    leftAnchor = [(CarCardContainerView *)self->_containerView leftAnchor];
    leftAnchor2 = [guideCopy leftAnchor];
    [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v11];
    v21 = v32 = guideCopy;
    v164[1] = v21;
    centerXAnchor = [(CarCardContainerView *)self->_containerView centerXAnchor];
    v23 = v32;
    centerXAnchor2 = [v32 centerXAnchor];
    LODWORD(v33) = 1148829696;
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0 priority:v33];
    v164[2] = v26;
    v27 = v164;
  }

  else
  {
    if (effectiveEdgePosition != 2)
    {
      goto LABEL_11;
    }

    bottomAnchor2 = [(CarCardContainerView *)self->_containerView bottomAnchor];
    rightAnchor2 = [guideCopy bottomAnchor];
    v152 = bottomAnchor2;
    v147 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:-v13 constant:?];
    v163[0] = v147;
    leftAnchor = [(CarCardContainerView *)self->_containerView topAnchor];
    leftAnchor2 = [guideCopy topAnchor];
    [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v9];
    v21 = v20 = guideCopy;
    v163[1] = v21;
    centerXAnchor = [(CarCardContainerView *)self->_containerView centerYAnchor];
    v23 = v20;
    centerXAnchor2 = [v20 centerYAnchor];
    LODWORD(v25) = 1148829696;
    v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0 priority:v25];
    v163[2] = v26;
    v27 = v163;
  }

  v37 = [NSArray arrayWithObjects:v27 count:3];
  [v156 addObjectsFromArray:v37];

  guideCopy = v23;
LABEL_11:
  primaryAxis = [layout primaryAxis];
  containerView = self->_containerView;
  if (primaryAxis == 1)
  {
    heightAnchor = [(CarCardContainerView *)containerView heightAnchor];
    heightAnchor2 = [guideCopy heightAnchor];
    v42 = v9 + v13;
  }

  else
  {
    heightAnchor = [(CarCardContainerView *)containerView widthAnchor];
    heightAnchor2 = [guideCopy widthAnchor];
    v42 = v11 + v15;
  }

  v43 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 constant:-v42];
  [v156 addObject:v43];

  primaryAxisFillUpperLimit = [layout primaryAxisFillUpperLimit];

  if (primaryAxisFillUpperLimit)
  {
    primaryAxis2 = [layout primaryAxis];
    v46 = self->_containerView;
    if (primaryAxis2 == 1)
    {
      [(CarCardContainerView *)v46 heightAnchor];
    }

    else
    {
      [(CarCardContainerView *)v46 widthAnchor];
    }
    v47 = ;
    primaryAxisFillUpperLimit2 = [layout primaryAxisFillUpperLimit];
    [primaryAxisFillUpperLimit2 cgFloatValue];
    v49 = [v47 constraintLessThanOrEqualToConstant:?];
    [v156 addObject:v49];
  }

  primaryAxisFillLowerLimit = [layout primaryAxisFillLowerLimit];

  if (primaryAxisFillLowerLimit)
  {
    primaryAxis3 = [layout primaryAxis];
    v52 = self->_containerView;
    if (primaryAxis3 == 1)
    {
      [(CarCardContainerView *)v52 heightAnchor];
    }

    else
    {
      [(CarCardContainerView *)v52 widthAnchor];
    }
    v53 = ;
    primaryAxisFillLowerLimit2 = [layout primaryAxisFillLowerLimit];
    [primaryAxisFillLowerLimit2 cgFloatValue];
    v55 = [v53 constraintGreaterThanOrEqualToConstant:?];
    [v156 addObject:v55];
  }

  secondaryAxisFillUpperLimit = [layout secondaryAxisFillUpperLimit];

  if (secondaryAxisFillUpperLimit)
  {
    primaryAxis4 = [layout primaryAxis];
    v58 = self->_containerView;
    if (primaryAxis4 == 1)
    {
      [(CarCardContainerView *)v58 widthAnchor];
    }

    else
    {
      [(CarCardContainerView *)v58 heightAnchor];
    }
    v59 = ;
    secondaryAxisFillUpperLimit2 = [layout secondaryAxisFillUpperLimit];
    [secondaryAxisFillUpperLimit2 cgFloatValue];
    v61 = [v59 constraintLessThanOrEqualToConstant:?];
    [v156 addObject:v61];
  }

  secondaryAxisFillLowerLimit = [layout secondaryAxisFillLowerLimit];

  if (secondaryAxisFillLowerLimit)
  {
    primaryAxis5 = [layout primaryAxis];
    v64 = self->_containerView;
    if (primaryAxis5 == 1)
    {
      [(CarCardContainerView *)v64 widthAnchor];
    }

    else
    {
      [(CarCardContainerView *)v64 heightAnchor];
    }
    v65 = ;
    secondaryAxisFillLowerLimit2 = [layout secondaryAxisFillLowerLimit];
    [secondaryAxisFillLowerLimit2 cgFloatValue];
    v67 = [v65 constraintGreaterThanOrEqualToConstant:?];
    [v156 addObject:v67];
  }

  [(CarCardLayout *)self->_layout primaryAxisFillModePriority];
  v69 = (v68 * 0.502) + 249.0;
  [(CarCardLayout *)self->_layout secondaryAxisFillModePriority];
  v71 = v70;
  primaryAxisFillMode = [layout primaryAxisFillMode];
  if (primaryAxisFillMode > 1)
  {
    if (primaryAxisFillMode == 2)
    {
      primaryAxis6 = [layout primaryAxis];
      v88 = self->_containerView;
      if (primaryAxis6 != 1)
      {
        widthAnchor = [(CarCardContainerView *)v88 widthAnchor];
        widthAnchor2 = [guideCopy widthAnchor];
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
        v79 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v94 priority:v92];
        v159[0] = v79;
        widthAnchor3 = [(CarCardContainerView *)self->_containerView widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v97 = v96 * 220.0;
        }

        else
        {
          v97 = 220.0;
        }

        v154 = widthAnchor3;
        v98 = [widthAnchor3 constraintLessThanOrEqualToConstant:v97];
        v159[1] = v98;
        widthAnchor4 = [(CarCardContainerView *)self->_containerView widthAnchor];
        v145 = guideCopy;
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v101 = v100 * 172.0;
        }

        else
        {
          v101 = 172.0;
        }

        v102 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:v101];
        v159[2] = v102;
        v103 = [NSArray arrayWithObjects:v159 count:3];
        [v156 addObjectsFromArray:v103];

        v104 = v154;
LABEL_63:

        guideCopy = v145;
        goto LABEL_64;
      }

      goto LABEL_49;
    }

    if (primaryAxisFillMode != 3)
    {
      goto LABEL_65;
    }

LABEL_46:
    primaryAxis7 = [layout primaryAxis];
    v88 = self->_containerView;
    if (primaryAxis7 != 1)
    {
      widthAnchor = [(CarCardContainerView *)v88 widthAnchor];
      widthAnchor2 = [guideCopy widthAnchor];
      v90 = v11 + v15;
LABEL_50:
      *&v89 = v69;
      v79 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:-v90 priority:v89];
      [v156 addObject:v79];
LABEL_64:

      goto LABEL_65;
    }

LABEL_49:
    widthAnchor = [(CarCardContainerView *)v88 heightAnchor];
    widthAnchor2 = [guideCopy heightAnchor];
    v90 = v9 + v13;
    goto LABEL_50;
  }

  if (!primaryAxisFillMode)
  {
    goto LABEL_46;
  }

  if (primaryAxisFillMode == 1 && ![layout primaryAxis])
  {
    v153 = v11;
    widthAnchor = [(CarCardContainerView *)self->_containerView widthAnchor];
    widthAnchor2 = [guideCopy widthAnchor];
    v76 = 0.449999988;
    v77 = 0.449999988;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      HIDWORD(v75) = 1071434956;
      v77 = v78 * 0.449999988;
    }

    *&v75 = v69;
    v79 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v77 priority:v75];
    v160[0] = v79;
    widthAnchor5 = [(CarCardContainerView *)self->_containerView widthAnchor];
    widthAnchor6 = [guideCopy widthAnchor];
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v76 = v82 * 0.449999988;
    }

    v148 = widthAnchor6;
    v150 = widthAnchor5;
    v83 = [widthAnchor5 constraintLessThanOrEqualToAnchor:widthAnchor6 multiplier:v76];
    v160[1] = v83;
    widthAnchor7 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v145 = guideCopy;
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
    v105 = [widthAnchor7 constraintLessThanOrEqualToConstant:v86];
    v160[2] = v105;
    v106 = [NSArray arrayWithObjects:v160 count:3];
    [v156 addObjectsFromArray:v106];

    v104 = v150;
    goto LABEL_63;
  }

LABEL_65:
  v107 = (v71 * 0.502) + 249.0;
  secondaryAxisFillMode = [layout secondaryAxisFillMode];
  if (secondaryAxisFillMode > 1)
  {
    if (secondaryAxisFillMode == 2)
    {
      primaryAxis8 = [layout primaryAxis];
      v124 = self->_containerView;
      if (primaryAxis8 == 1)
      {
        widthAnchor8 = [(CarCardContainerView *)v124 widthAnchor];
        widthAnchor9 = [guideCopy widthAnchor];
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
        v115 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9 multiplier:v130 priority:v128];
        v157[0] = v115;
        widthAnchor10 = [(CarCardContainerView *)self->_containerView widthAnchor];
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v135 = v134 * 220.0;
        }

        else
        {
          v135 = 220.0;
        }

        v155 = widthAnchor10;
        v136 = [widthAnchor10 constraintLessThanOrEqualToConstant:v135];
        v157[1] = v136;
        widthAnchor11 = [(CarCardContainerView *)self->_containerView widthAnchor];
        v146 = guideCopy;
        if (self->_carSceneType == 6)
        {
          [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
          v139 = v138 * 172.0;
        }

        else
        {
          v139 = 172.0;
        }

        v140 = [widthAnchor11 constraintGreaterThanOrEqualToConstant:v139];
        v157[2] = v140;
        v141 = [NSArray arrayWithObjects:v157 count:3];
        [v156 addObjectsFromArray:v141];

LABEL_94:
        guideCopy = v146;
        goto LABEL_95;
      }

      goto LABEL_82;
    }

    if (secondaryAxisFillMode != 3)
    {
      goto LABEL_96;
    }

LABEL_77:
    primaryAxis9 = [layout primaryAxis];
    v124 = self->_containerView;
    if (primaryAxis9 == 1)
    {
      widthAnchor8 = [(CarCardContainerView *)v124 widthAnchor];
      widthAnchor9 = [guideCopy widthAnchor];
      v126 = v11 + v15;
LABEL_83:
      *&v125 = v107;
      v115 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9 constant:-v126 priority:v125];
      [v156 addObject:v115];
LABEL_95:

      goto LABEL_96;
    }

LABEL_82:
    widthAnchor8 = [(CarCardContainerView *)v124 heightAnchor];
    widthAnchor9 = [guideCopy heightAnchor];
    v126 = v9 + v13;
    goto LABEL_83;
  }

  if (!secondaryAxisFillMode)
  {
    goto LABEL_77;
  }

  if (secondaryAxisFillMode == 1 && [layout primaryAxis] == 1)
  {
    widthAnchor8 = [(CarCardContainerView *)self->_containerView widthAnchor];
    widthAnchor9 = [guideCopy widthAnchor];
    v112 = 0.449999988;
    v113 = 0.449999988;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      HIDWORD(v111) = 1071434956;
      v113 = v114 * 0.449999988;
    }

    *&v111 = v107;
    v115 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9 multiplier:v113 priority:v111];
    v158[0] = v115;
    widthAnchor12 = [(CarCardContainerView *)self->_containerView widthAnchor];
    widthAnchor13 = [guideCopy widthAnchor];
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v112 = v118 * 0.449999988;
    }

    v151 = widthAnchor13;
    v155 = widthAnchor12;
    v119 = [widthAnchor12 constraintLessThanOrEqualToAnchor:widthAnchor13 multiplier:v112];
    v158[1] = v119;
    widthAnchor14 = [(CarCardContainerView *)self->_containerView widthAnchor];
    v146 = guideCopy;
    if (self->_carSceneType == 6)
    {
      [(CarCardContainerView *)self->_containerView _car_dynamicPointScaleValue];
      v122 = v121 * 220.0;
    }

    else
    {
      v122 = 220.0;
    }

    v131 = [widthAnchor14 constraintLessThanOrEqualToConstant:v122];
    v158[2] = v131;
    v132 = [NSArray arrayWithObjects:v158 count:3];
    [v156 addObjectsFromArray:v132];

    goto LABEL_94;
  }

LABEL_96:
  _cardToContainerLayoutConstraints = [(CarCardConfiguration *)self _cardToContainerLayoutConstraints];
  [v156 addObjectsFromArray:_cardToContainerLayoutConstraints];

  v143 = [v156 copy];

  return v143;
}

- (void)_prepareConstraintsForHost:(id)host withLayoutGuide:(id)guide
{
  hostCopy = host;
  guideCopy = guide;
  overlayContentView = [hostCopy overlayContentView];
  viewportLayoutGuide = [hostCopy viewportLayoutGuide];
  mapInsetsLayoutGuide = [hostCopy mapInsetsLayoutGuide];
  v11 = mapInsetsLayoutGuide;
  if (guideCopy && overlayContentView && viewportLayoutGuide && mapInsetsLayoutGuide)
  {
    superview = [(CarCardContainerView *)self->_containerView superview];

    if (superview != overlayContentView)
    {
      [(CarCardContainerView *)self->_containerView removeFromSuperview];
      [overlayContentView addSubview:self->_containerView];
      [(CarCardView *)self->_cardView removeFromSuperview];
      [overlayContentView addSubview:self->_cardView];
      [(CarCardConfiguration *)self _resetConstraints];
    }

    layout = [(CarCardConfiguration *)self layout];
    staysOnTop = [(CarCardConfiguration *)self staysOnTop];
    v15 = staysOnTop;
    if (self->_showingConstraints && self->_hidingConstraints && self->_viewportConstraints && self->_mapInsetsConstraints && self->_collisionConstraints)
    {
      v80 = staysOnTop;
      lastLayout = self->_lastLayout;
      v17 = layout;
      v18 = lastLayout;
      edgePosition = [v17 edgePosition];
      if (edgePosition == -[CarCardLayout edgePosition](v18, "edgePosition") && (v20 = [v17 cornerPosition], v20 == -[CarCardLayout cornerPosition](v18, "cornerPosition")) && (v21 = objc_msgSend(v17, "primaryAxis"), v21 == -[CarCardLayout primaryAxis](v18, "primaryAxis")) && (v22 = objc_msgSend(v17, "pinnedEdges"), v22 == -[CarCardLayout pinnedEdges](v18, "pinnedEdges")) && (v23 = objc_msgSend(v17, "primaryAxisFillMode"), v23 == -[CarCardLayout primaryAxisFillMode](v18, "primaryAxisFillMode")) && (objc_msgSend(v17, "primaryAxisFillModePriority"), v25 = v24, -[CarCardLayout primaryAxisFillModePriority](v18, "primaryAxisFillModePriority"), v25 == v26) && (v27 = objc_msgSend(v17, "secondaryAxisFillMode"), v27 == -[CarCardLayout secondaryAxisFillMode](v18, "secondaryAxisFillMode")) && (objc_msgSend(v17, "secondaryAxisFillModePriority"), v29 = v28, -[CarCardLayout secondaryAxisFillModePriority](v18, "secondaryAxisFillModePriority"), v29 == v30) && (v31 = objc_msgSend(v17, "flipForRightHandDrive"), v31 == -[CarCardLayout flipForRightHandDrive](v18, "flipForRightHandDrive")) && (v32 = objc_msgSend(v17, "edgesAffectingMapInsets"), v32 == -[CarCardLayout edgesAffectingMapInsets](v18, "edgesAffectingMapInsets")) && (v33 = objc_msgSend(v17, "horizontallyCenterMapInsets"), v33 == -[CarCardLayout horizontallyCenterMapInsets](v18, "horizontallyCenterMapInsets")) && (objc_msgSend(v17, "margins"), v65 = v64, v67 = v66, v69 = v68, v71 = v70, -[CarCardLayout margins](v18, "margins"), v67 == v75) && v65 == v72 && v71 == v74)
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

      [overlayContentView removeConstraints:self->_hidingConstraints];
      [overlayContentView removeConstraints:self->_showingConstraints];
      [(CarCardConfiguration *)self _resetConstraints];
      v50 = [(CarCardConfiguration *)self _hidingLayoutConstraintsForHost:hostCopy withLayoutGuide:guideCopy];
      hidingConstraints = self->_hidingConstraints;
      self->_hidingConstraints = v50;

      v52 = [(CarCardConfiguration *)self _showingLayoutConstraintsForHost:hostCopy withLayoutGuide:guideCopy];
      showingConstraints = self->_showingConstraints;
      self->_showingConstraints = v52;

      v54 = [(CarCardConfiguration *)self _viewportConstraintsForHost:hostCopy];
      viewportConstraints = self->_viewportConstraints;
      self->_viewportConstraints = v54;

      v56 = [(CarCardConfiguration *)self _mapInsetsConstraintsForHost:hostCopy];
      mapInsetsConstraints = self->_mapInsetsConstraints;
      self->_mapInsetsConstraints = v56;

      v58 = [(CarCardConfiguration *)self _collisionConstraintsForHost:hostCopy];
      collisionConstraints = self->_collisionConstraints;
      self->_collisionConstraints = v58;

      v60 = [(CarCardConfiguration *)self _collisionLayoutGuidesForHost:hostCopy];
      collisionLayoutGuides = self->_collisionLayoutGuides;
      self->_collisionLayoutGuides = v60;

      contentLayoutGuide = [hostCopy contentLayoutGuide];
      contentLayoutGuide = self->_contentLayoutGuide;
      self->_contentLayoutGuide = contentLayoutGuide;

      [(CarCardConfiguration *)self _updateCardContainerPriorities];
      objc_storeStrong(&self->_lastLayout, layout);
      self->_lastStaysOnTop = v15;
LABEL_40:

      goto LABEL_41;
    }

    v77 = layout;
    v78 = v11;
    v79 = viewportLayoutGuide;
    selfCopy = self;
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = objc_opt_respondsToSelector();
    v39 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    v81 = v15;
    if (v38)
    {
      v40 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v41 = v40;
      if (v40 && ![v40 isEqualToString:v37])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v37, selfCopy, v41];

LABEL_30:
        v43 = selfCopy;
        v44 = hostCopy;
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
        viewportLayoutGuide = v79;
        layout = v77;
        goto LABEL_39;
      }

      v39 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    }

    selfCopy = [v39[459] stringWithFormat:@"%@<%p>", v37, selfCopy];
    goto LABEL_30;
  }

LABEL_41:
}

- (void)_applyToCardViewWithHost:(id)host
{
  hostCopy = host;
  v5 = sub_10006CF98();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(CarCardConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v41 = selfCopy;
    v42 = 2112;
    v43 = selfCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Will apply to card view (%@)", buf, 0x16u);
  }

  containingViewController = [hostCopy containingViewController];

  cardView = [(CarCardConfiguration *)self cardView];
  [cardView setParentViewController:containingViewController];

  collisionLayoutGuides = [(CarCardConfiguration *)self collisionLayoutGuides];
  cardView2 = [(CarCardConfiguration *)self cardView];
  [cardView2 setCollisionLayoutGuides:collisionLayoutGuides];

  contentLayoutGuide = [(CarCardConfiguration *)self contentLayoutGuide];
  cardView3 = [(CarCardConfiguration *)self cardView];
  [cardView3 setContentLayoutGuide:contentLayoutGuide];

  isTransitioning = [(CarCardConfiguration *)self isTransitioning];
  cardView4 = [(CarCardConfiguration *)self cardView];
  [cardView4 setTransitioning:isTransitioning];

  layout = [(CarCardConfiguration *)self layout];
  cardView5 = [(CarCardConfiguration *)self cardView];
  [cardView5 setLayout:layout];

  title = [(CarCardConfiguration *)self title];
  cardView6 = [(CarCardConfiguration *)self cardView];
  [cardView6 setTitle:title];

  titleNumberOfLines = [(CarCardConfiguration *)self titleNumberOfLines];
  cardView7 = [(CarCardConfiguration *)self cardView];
  [cardView7 setTitleNumberOfLines:titleNumberOfLines];

  primaryAccessory = [(CarCardConfiguration *)self primaryAccessory];
  cardView8 = [(CarCardConfiguration *)self cardView];
  [cardView8 setPrimaryAccessory:primaryAccessory];

  secondaryAccessory = [(CarCardConfiguration *)self secondaryAccessory];
  cardView9 = [(CarCardConfiguration *)self cardView];
  [cardView9 setSecondaryAccessory:secondaryAccessory];

  accessoryImage = [(CarCardConfiguration *)self accessoryImage];
  cardView10 = [(CarCardConfiguration *)self cardView];
  [cardView10 setAccessoryImage:accessoryImage];

  selectionHandler = [(CarCardConfiguration *)self selectionHandler];
  cardView11 = [(CarCardConfiguration *)self cardView];
  [cardView11 setSelectionHandler:selectionHandler];

  [(CarCardConfiguration *)self selectionTriggerHeight];
  v35 = v34;
  cardView12 = [(CarCardConfiguration *)self cardView];
  [cardView12 setSelectionTriggerHeight:v35];

  content = [(CarCardConfiguration *)self content];
  cardView13 = [(CarCardConfiguration *)self cardView];
  [cardView13 setContent:content];

  cardView14 = [(CarCardConfiguration *)self cardView];
  [cardView14 setNeedsLayout];

  [(CarCardConfiguration *)self _updateAvailableCardSize];
}

- (void)layoutInHost:(id)host withLayoutGuide:(id)guide
{
  hostCopy = host;
  guideCopy = guide;
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
    previousContent = [(CarCardConfiguration *)self previousContent];
    if (previousContent)
    {
      v9 = previousContent;
      previousContent2 = [(CarCardConfiguration *)self previousContent];
      parentViewController = [previousContent2 parentViewController];
      containingViewController = [hostCopy containingViewController];

      if (parentViewController == containingViewController)
      {
        previousContent3 = [(CarCardConfiguration *)self previousContent];
        [previousContent3 removeFromParentViewController];
      }
    }
  }

  [(CarCardConfiguration *)self _prepareConstraintsForHost:hostCopy withLayoutGuide:guideCopy];
  [(CarCardConfiguration *)self _applyToCardViewWithHost:hostCopy];
  self->_invalidationState = 0;
  [(CarCardConfiguration *)self updateVisibility];
}

- (unint64_t)defaultFocusSortValue
{
  effectiveCornerPosition = [(CarCardConfiguration *)self effectiveCornerPosition];
  layout = [(CarCardConfiguration *)self layout];
  v5 = layout;
  if (effectiveCornerPosition)
  {
    cornerPosition = [layout cornerPosition];
    edgePosition = 0;
  }

  else
  {
    edgePosition = [layout edgePosition];
    cornerPosition = 0;
  }

  v8 = sub_100D8E3AC(cornerPosition, edgePosition);

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

- (id)copyWithZone:(_NSZone *)zone
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

- (CarCardConfiguration)initWithKey:(id)key carSceneType:(int64_t)type
{
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = CarCardConfiguration;
  v7 = [(CarCardConfiguration *)&v26 init];
  v8 = v7;
  if (v7)
  {
    v7->_carSceneType = type;
    if (!keyCopy)
    {
      v9 = +[NSUUID UUID];
      keyCopy = [v9 UUIDString];
    }

    v10 = [keyCopy copy];
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
    height = [(CarCardView *)v15 initWithFrame:CGRectZero.origin.x, y, width, height];
    cardView = v8->_cardView;
    v8->_cardView = height;

    [(CarCardView *)v8->_cardView setTranslatesAutoresizingMaskIntoConstraints:0];
    height2 = [[CarCardContainerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    containerView = v8->_containerView;
    v8->_containerView = height2;

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