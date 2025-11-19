@interface RAPTransitDirectionsStepsListDataSource
- (RAPTransitDirectionsStepsListDelegate)rapDelegate;
- (id)_rapDisclosureViewForCell:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int)_displayModeForItem:(id)a3;
- (void)_attachDisclosureViewToCell:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation RAPTransitDirectionsStepsListDataSource

- (RAPTransitDirectionsStepsListDelegate)rapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rapDelegate);

  return WeakRetained;
}

- (int)_displayModeForItem:(id)a3
{
  v3 = a3;
  if (![v3 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (([v4 shouldDisplayExpandButton] & 1) == 0 && objc_msgSend(v4, "type") != 3)
  {

LABEL_9:
    if (([v3 type] & 0xFFFFFFFFFFFFFFFELL) == 6)
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

- (id)_rapDisclosureViewForCell:(id)a3
{
  v4 = a3;
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
    v8 = [(RAPTransitDirectionsStepsListDataSource *)self rapDelegate];
    v9 = [v4 transitListItem];
    v10 = [v9 matchingRouteStep];
    v11 = [v4 transitListItem];
    v12 = [v8 RAPTransitDirectionsStepsList:self shouldShowFlagForStep:v10 listItem:v11];
    v13 = [(RAPInstructionIncorrectView *)v5 flagView];
    [v13 setHidden:v12 ^ 1];

    v14 = [v4 transitListItem];
    [(RAPInstructionIncorrectView *)v5 setDisplayMode:[(RAPTransitDirectionsStepsListDataSource *)self _displayModeForItem:v14]];

    if ([(RAPInstructionIncorrectView *)v5 displayMode]== 1 || [(RAPInstructionIncorrectView *)v5 displayMode]== 2)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1007956DC;
      v15[3] = &unk_101661A90;
      v16 = v4;
      v17 = self;
      [(RAPInstructionIncorrectView *)v5 setTapblock:v15];
    }
  }

  return v5;
}

- (void)_attachDisclosureViewToCell:(id)a3
{
  v4 = a3;
  v5 = [(RAPTransitDirectionsStepsListDataSource *)self _rapDisclosureViewForCell:v4];
  if (v5)
  {
    v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v5];
    v7 = [v5 leadingAnchor];
    v8 = [v6 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v23[0] = v9;
    v10 = [v5 trailingAnchor];
    v11 = [v6 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[1] = v12;
    v13 = [NSArray arrayWithObjects:v23 count:2];
    [NSLayoutConstraint activateConstraints:v13];
  }

  else
  {
    v6 = 0;
  }

  [v4 setTrailingView:v6];
  v14 = [v4 trailingView];

  if (v14)
  {
    v15 = [v4 trailingView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v4 stepView];
      v17 = [v16 iconImageView];
      v18 = [v17 imageSource];
      if (v18)
      {
        [v16 iconImageView];
      }

      else
      {
        [v16 trailingView];
      }
      v19 = ;

      v15 = v19;
    }

    v20 = [v5 centerYAnchor];
    v21 = [v15 centerYAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [v22 setActive:1];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RAPTransitDirectionsStepsListDataSource;
  [(TransitDirectionsStepsListDataSource *)&v14 tableView:v8 willDisplayCell:v9 forRowAtIndexPath:v10];
  v11 = v9;
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
    [v13 set_mapkit_forceSeparatorFrameToCGRectZero:{-[TransitDirectionsStepsListDataSource tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v8, objc_msgSend(v10, "section")) - 2 == objc_msgSend(v10, "row")}];
    [v13 setUseLeadingInstructionMarginAsLeadingSeparatorInset:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = RAPTransitDirectionsStepsListDataSource;
  v5 = [(TransitDirectionsStepsListDataSource *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  [v5 setAccessoryType:0];
  v6 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v5 setBackgroundColor:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 stepView];
    v8 = [v7 detailButton];
    [v8 setHidden:1];
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