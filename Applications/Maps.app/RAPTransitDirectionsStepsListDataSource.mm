@interface RAPTransitDirectionsStepsListDataSource
- (RAPTransitDirectionsStepsListDelegate)rapDelegate;
- (id)_rapDisclosureViewForCell:(id)cell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int)_displayModeForItem:(id)item;
- (void)_attachDisclosureViewToCell:(id)cell;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation RAPTransitDirectionsStepsListDataSource

- (RAPTransitDirectionsStepsListDelegate)rapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rapDelegate);

  return WeakRetained;
}

- (int)_displayModeForItem:(id)item
{
  itemCopy = item;
  if (![itemCopy conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    goto LABEL_9;
  }

  v4 = itemCopy;
  if (([v4 shouldDisplayExpandButton] & 1) == 0 && objc_msgSend(v4, "type") != 3)
  {

LABEL_9:
    if (([itemCopy type] & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_12;
  }

  if ([v4 expanded])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

LABEL_12:
  return v5;
}

- (id)_rapDisclosureViewForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 0;
  }

  else
  {
    v5 = [[RAPInstructionIncorrectView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(RAPInstructionIncorrectView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v7) = 1148846080;
    [(RAPInstructionIncorrectView *)v5 setContentCompressionResistancePriority:0 forAxis:v7];
    rapDelegate = [(RAPTransitDirectionsStepsListDataSource *)self rapDelegate];
    transitListItem = [cellCopy transitListItem];
    matchingRouteStep = [transitListItem matchingRouteStep];
    transitListItem2 = [cellCopy transitListItem];
    v12 = [rapDelegate RAPTransitDirectionsStepsList:self shouldShowFlagForStep:matchingRouteStep listItem:transitListItem2];
    flagView = [(RAPInstructionIncorrectView *)v5 flagView];
    [flagView setHidden:v12 ^ 1];

    transitListItem3 = [cellCopy transitListItem];
    [(RAPInstructionIncorrectView *)v5 setDisplayMode:[(RAPTransitDirectionsStepsListDataSource *)self _displayModeForItem:transitListItem3]];

    if ([(RAPInstructionIncorrectView *)v5 displayMode]== 1 || [(RAPInstructionIncorrectView *)v5 displayMode]== 2)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1007956DC;
      v15[3] = &unk_101661A90;
      v16 = cellCopy;
      selfCopy = self;
      [(RAPInstructionIncorrectView *)v5 setTapblock:v15];
    }
  }

  return v5;
}

- (void)_attachDisclosureViewToCell:(id)cell
{
  cellCopy = cell;
  v5 = [(RAPTransitDirectionsStepsListDataSource *)self _rapDisclosureViewForCell:cellCopy];
  if (v5)
  {
    v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v5];
    leadingAnchor = [v5 leadingAnchor];
    leadingAnchor2 = [v6 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[0] = v9;
    trailingAnchor = [v5 trailingAnchor];
    trailingAnchor2 = [v6 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[1] = v12;
    v13 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v13];
  }

  else
  {
    v6 = 0;
  }

  [cellCopy setTrailingView:v6];
  trailingView = [cellCopy trailingView];

  if (trailingView)
  {
    trailingView2 = [cellCopy trailingView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stepView = [cellCopy stepView];
      iconImageView = [stepView iconImageView];
      imageSource = [iconImageView imageSource];
      if (imageSource)
      {
        [stepView iconImageView];
      }

      else
      {
        [stepView trailingView];
      }
      v19 = ;

      trailingView2 = v19;
    }

    centerYAnchor = [v5 centerYAnchor];
    centerYAnchor2 = [trailingView2 centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v22 setActive:1];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = RAPTransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v14 tableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  v11 = cellCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    [v13 set_mapkit_forceSeparatorFrameToCGRectZero:{-[TransitDirectionsStepsListDataSource tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", viewCopy, objc_msgSend(pathCopy, "section")) - 2 == objc_msgSend(pathCopy, "row")}];
    [v13 setUseLeadingInstructionMarginAsLeadingSeparatorInset:1];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = RAPTransitDirectionsStepsListDataSource;
  v5 = [(TransitDirectionsStepsListDataSource *)&v10 tableView:view cellForRowAtIndexPath:path];
  [v5 setAccessoryType:0];
  v6 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v5 setBackgroundColor:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stepView = [v5 stepView];
    detailButton = [stepView detailButton];
    [detailButton setHidden:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setUserInteractionEnabled:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setUserInteractionEnabled:0];
  }

  [(RAPTransitDirectionsStepsListDataSource *)self _attachDisclosureViewToCell:v5];

  return v5;
}

@end