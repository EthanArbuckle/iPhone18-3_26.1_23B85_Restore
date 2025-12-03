@interface LayoutConstraintActivationHelper
- (LayoutConstraintActivationHelper)init;
- (id)pendingConstraintsToActivate:(BOOL)activate;
- (void)clearPendingConstraints;
- (void)commitPendingConstraints;
- (void)scheduleConstraint:(id)constraint activate:(BOOL)activate;
- (void)scheduleConstraints:(id)constraints activate:(BOOL)activate;
@end

@implementation LayoutConstraintActivationHelper

- (void)commitPendingConstraints
{
  pendingConstraintsToDeactivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
  v4 = [pendingConstraintsToDeactivate count];

  if (v4)
  {
    pendingConstraintsToDeactivate2 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
    [NSLayoutConstraint deactivateConstraints:pendingConstraintsToDeactivate2];
  }

  pendingConstraintsToActivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
  v7 = [pendingConstraintsToActivate count];

  if (v7)
  {
    pendingConstraintsToActivate2 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
    [NSLayoutConstraint activateConstraints:pendingConstraintsToActivate2];
  }

  [(LayoutConstraintActivationHelper *)self clearPendingConstraints];
}

- (void)clearPendingConstraints
{
  pendingConstraintsToActivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
  [pendingConstraintsToActivate removeAllObjects];

  pendingConstraintsToDeactivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
  [pendingConstraintsToDeactivate removeAllObjects];
}

- (id)pendingConstraintsToActivate:(BOOL)activate
{
  if (activate)
  {
    [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
  }

  else
  {
    [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
  }
  v3 = ;
  v4 = [v3 copy];

  return v4;
}

- (void)scheduleConstraints:(id)constraints activate:(BOOL)activate
{
  activateCopy = activate;
  constraintsCopy = constraints;
  if ([constraintsCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = constraintsCopy;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(LayoutConstraintActivationHelper *)self scheduleConstraint:*(*(&v12 + 1) + 8 * v11) activate:activateCopy, v12];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)scheduleConstraint:(id)constraint activate:(BOOL)activate
{
  activateCopy = activate;
  constraintCopy = constraint;
  v7 = constraintCopy;
  if (constraintCopy)
  {
    v14 = constraintCopy;
    if (activateCopy)
    {
      pendingConstraintsToDeactivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
      [pendingConstraintsToDeactivate removeObject:v14];

      isActive = [v14 isActive];
      v7 = v14;
      if (isActive)
      {
        goto LABEL_8;
      }

      pendingConstraintsToActivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
    }

    else
    {
      pendingConstraintsToActivate2 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
      [pendingConstraintsToActivate2 removeObject:v14];

      isActive2 = [v14 isActive];
      v7 = v14;
      if (!isActive2)
      {
        goto LABEL_8;
      }

      pendingConstraintsToActivate = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
    }

    v13 = pendingConstraintsToActivate;
    [pendingConstraintsToActivate addObject:v14];

    v7 = v14;
  }

LABEL_8:
}

- (LayoutConstraintActivationHelper)init
{
  v8.receiver = self;
  v8.super_class = LayoutConstraintActivationHelper;
  v2 = [(LayoutConstraintActivationHelper *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    pendingConstraintsToActivate = v2->_pendingConstraintsToActivate;
    v2->_pendingConstraintsToActivate = v3;

    v5 = +[NSMutableArray array];
    pendingConstraintsToDeactivate = v2->_pendingConstraintsToDeactivate;
    v2->_pendingConstraintsToDeactivate = v5;
  }

  return v2;
}

@end