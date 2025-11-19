@interface LayoutConstraintActivationHelper
- (LayoutConstraintActivationHelper)init;
- (id)pendingConstraintsToActivate:(BOOL)a3;
- (void)clearPendingConstraints;
- (void)commitPendingConstraints;
- (void)scheduleConstraint:(id)a3 activate:(BOOL)a4;
- (void)scheduleConstraints:(id)a3 activate:(BOOL)a4;
@end

@implementation LayoutConstraintActivationHelper

- (void)commitPendingConstraints
{
  v3 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
    [NSLayoutConstraint deactivateConstraints:v5];
  }

  v6 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
    [NSLayoutConstraint activateConstraints:v8];
  }

  [(LayoutConstraintActivationHelper *)self clearPendingConstraints];
}

- (void)clearPendingConstraints
{
  v3 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
  [v3 removeAllObjects];

  v4 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
  [v4 removeAllObjects];
}

- (id)pendingConstraintsToActivate:(BOOL)a3
{
  if (a3)
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

- (void)scheduleConstraints:(id)a3 activate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
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

          [(LayoutConstraintActivationHelper *)self scheduleConstraint:*(*(&v12 + 1) + 8 * v11) activate:v4, v12];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)scheduleConstraint:(id)a3 activate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v14 = v6;
    if (v4)
    {
      v8 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
      [v8 removeObject:v14];

      v9 = [v14 isActive];
      v7 = v14;
      if (v9)
      {
        goto LABEL_8;
      }

      v10 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
    }

    else
    {
      v11 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToActivate];
      [v11 removeObject:v14];

      v12 = [v14 isActive];
      v7 = v14;
      if (!v12)
      {
        goto LABEL_8;
      }

      v10 = [(LayoutConstraintActivationHelper *)self pendingConstraintsToDeactivate];
    }

    v13 = v10;
    [v10 addObject:v14];

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