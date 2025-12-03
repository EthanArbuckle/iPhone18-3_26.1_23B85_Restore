@interface RouteTableViewCellButtonConstraintsController
- (NSArray)constraintsWhenButtonHidden;
- (NSArray)constraintsWhenButtonShown;
- (RouteTableViewCellButtonConstraintsController)initWithLeadingAnchor:(id)anchor trailingAnchor:(id)trailingAnchor firstBaselineAnchor:(id)baselineAnchor leadingDistance:(double)distance firstBaselineDistance:(double)baselineDistance;
- (UIButton)button;
- (void)_invalidateButtonConstraints;
- (void)_updateActiveConstraintsToSetButtonVisible:(BOOL)visible;
- (void)setButton:(id)button;
- (void)setButtonVisible:(BOOL)visible;
- (void)setFirstBaselineDistance:(double)distance;
@end

@implementation RouteTableViewCellButtonConstraintsController

- (UIButton)button
{
  WeakRetained = objc_loadWeakRetained(&self->_button);

  return WeakRetained;
}

- (void)_invalidateButtonConstraints
{
  if ([(NSArray *)self->_constraintsWhenButtonShown count])
  {
    [NSLayoutConstraint deactivateConstraints:self->_constraintsWhenButtonShown];
  }

  constraintsWhenButtonShown = self->_constraintsWhenButtonShown;
  self->_constraintsWhenButtonShown = 0;

  firstBaselineConstraintShown = self->_firstBaselineConstraintShown;
  self->_firstBaselineConstraintShown = 0;
}

- (void)_updateActiveConstraintsToSetButtonVisible:(BOOL)visible
{
  if (visible)
  {
    constraintsWhenButtonShown = [(RouteTableViewCellButtonConstraintsController *)self constraintsWhenButtonShown];
    [(RouteTableViewCellButtonConstraintsController *)self constraintsWhenButtonHidden];
  }

  else
  {
    constraintsWhenButtonShown = [(RouteTableViewCellButtonConstraintsController *)self constraintsWhenButtonHidden];
    [(RouteTableViewCellButtonConstraintsController *)self constraintsWhenButtonShown];
  }
  v4 = ;
  if ([v4 count])
  {
    [NSLayoutConstraint deactivateConstraints:v4];
  }

  if ([constraintsWhenButtonShown count])
  {
    [NSLayoutConstraint activateConstraints:constraintsWhenButtonShown];
  }
}

- (NSArray)constraintsWhenButtonShown
{
  if (self->_leadingAnchor && self->_trailingAnchor && self->_firstBaselineAnchor)
  {
    if (![(NSArray *)self->_constraintsWhenButtonShown count])
    {
      button = [(RouteTableViewCellButtonConstraintsController *)self button];

      if (button)
      {
        button2 = [(RouteTableViewCellButtonConstraintsController *)self button];
        leadingAnchor = [button2 leadingAnchor];
        v6 = [leadingAnchor constraintEqualToAnchor:self->_leadingAnchor constant:self->_leadingDistance];

        button3 = [(RouteTableViewCellButtonConstraintsController *)self button];
        trailingAnchor = [button3 trailingAnchor];
        v9 = [trailingAnchor constraintEqualToAnchor:self->_trailingAnchor];

        button4 = [(RouteTableViewCellButtonConstraintsController *)self button];
        firstBaselineAnchor = [button4 firstBaselineAnchor];
        v12 = [firstBaselineAnchor constraintEqualToAnchor:self->_firstBaselineAnchor constant:self->_firstBaselineDistance];
        firstBaselineConstraintShown = self->_firstBaselineConstraintShown;
        self->_firstBaselineConstraintShown = v12;

        LODWORD(v14) = 1148829696;
        [v6 setPriority:v14];
        v19[0] = v6;
        v19[1] = v9;
        v19[2] = self->_firstBaselineConstraintShown;
        v15 = [NSArray arrayWithObjects:v19 count:3];
        constraintsWhenButtonShown = self->_constraintsWhenButtonShown;
        self->_constraintsWhenButtonShown = v15;
      }
    }

    v17 = self->_constraintsWhenButtonShown;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (NSArray)constraintsWhenButtonHidden
{
  if (self->_leadingAnchor && self->_trailingAnchor)
  {
    if (![(NSArray *)self->_constraintsWhenButtonHidden count])
    {
      v3 = [(NSLayoutAnchor *)self->_leadingAnchor constraintLessThanOrEqualToAnchor:self->_trailingAnchor];
      v8 = v3;
      v4 = [NSArray arrayWithObjects:&v8 count:1];
      constraintsWhenButtonHidden = self->_constraintsWhenButtonHidden;
      self->_constraintsWhenButtonHidden = v4;
    }

    v6 = self->_constraintsWhenButtonHidden;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setFirstBaselineDistance:(double)distance
{
  if (self->_firstBaselineDistance != distance)
  {
    self->_firstBaselineDistance = distance;
    [(NSLayoutConstraint *)self->_firstBaselineConstraintShown setConstant:?];
  }
}

- (void)setButtonVisible:(BOOL)visible
{
  if (self->_buttonVisible != visible)
  {
    self->_buttonVisible = visible;
    [(RouteTableViewCellButtonConstraintsController *)self _updateActiveConstraintsToSetButtonVisible:?];
  }
}

- (void)setButton:(id)button
{
  obj = button;
  WeakRetained = objc_loadWeakRetained(&self->_button);

  if (WeakRetained != obj)
  {
    [(RouteTableViewCellButtonConstraintsController *)self _invalidateButtonConstraints];
    v5 = objc_storeWeak(&self->_button, obj);
    [obj setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = objc_loadWeakRetained(&self->_button);
    LODWORD(v7) = 1148846080;
    [v6 _mapkit_setContentCompressionResistancePriority:0 forAxis:v7];

    v8 = objc_loadWeakRetained(&self->_button);
    LODWORD(v9) = 1148846080;
    [v8 _mapkit_setContentHuggingPriority:0 forAxis:v9];

    [(RouteTableViewCellButtonConstraintsController *)self _updateActiveConstraintsToSetButtonVisible:[(RouteTableViewCellButtonConstraintsController *)self isButtonVisible]];
  }
}

- (RouteTableViewCellButtonConstraintsController)initWithLeadingAnchor:(id)anchor trailingAnchor:(id)trailingAnchor firstBaselineAnchor:(id)baselineAnchor leadingDistance:(double)distance firstBaselineDistance:(double)baselineDistance
{
  anchorCopy = anchor;
  trailingAnchorCopy = trailingAnchor;
  baselineAnchorCopy = baselineAnchor;
  v20.receiver = self;
  v20.super_class = RouteTableViewCellButtonConstraintsController;
  v16 = [(RouteTableViewCellButtonConstraintsController *)&v20 init];
  v17 = v16;
  v18 = 0;
  if (v16 && anchorCopy && trailingAnchorCopy && baselineAnchorCopy)
  {
    objc_storeStrong(&v16->_leadingAnchor, anchor);
    objc_storeStrong(&v17->_trailingAnchor, trailingAnchor);
    objc_storeStrong(&v17->_firstBaselineAnchor, baselineAnchor);
    v17->_leadingDistance = distance;
    v17->_firstBaselineDistance = baselineDistance;
    v18 = v17;
  }

  return v18;
}

@end