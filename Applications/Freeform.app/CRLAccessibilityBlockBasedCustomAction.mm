@interface CRLAccessibilityBlockBasedCustomAction
+ (void)addActionToArray:(id)a3 withName:(id)a4 categoryName:(id)a5 actionBlock:(id)a6;
- (BOOL)_performActionBlock;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)a3 actionBlock:(id)a4 identifier:(id)a5;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)a3 categoryName:(id)a4 actionBlock:(id)a5;
@end

@implementation CRLAccessibilityBlockBasedCustomAction

+ (void)addActionToArray:(id)a3 withName:(id)a4 categoryName:(id)a5 actionBlock:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
  if (!v21)
  {
    if (ShouldPerformValidationChecks)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Array cannot be nil!", v14, v15, v16, v17, v18, v20))
      {
        abort();
      }
    }
  }

  v19 = [[CRLAccessibilityBlockBasedCustomAction alloc] initWithName:v9 categoryName:v10 actionBlock:v11];
  [v21 addObject:v19];
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)a3 actionBlock:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (![v10 length])
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"An identifier is required to prevent issues with UIAccessibility!", v12, v13, v14, v15, v16, v23.receiver))
      {
        abort();
      }
    }
  }

  v23.receiver = self;
  v23.super_class = CRLAccessibilityBlockBasedCustomAction;
  v17 = [(CRLAccessibilityBlockBasedCustomAction *)&v23 initWithName:v8 target:self selector:"_performActionBlock"];
  if (v17)
  {
    v18 = [v9 copy];
    actionBlock = v17->_actionBlock;
    v17->_actionBlock = v18;

    v20 = [v10 copy];
    identifier = v17->_identifier;
    v17->_identifier = v20;
  }

  return v17;
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)a3 categoryName:(id)a4 actionBlock:(id)a5
{
  v8 = a4;
  v9 = [(CRLAccessibilityBlockBasedCustomAction *)self initWithName:a3 actionBlock:a5];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLAccessibilityBlockBasedCustomAction *)v9 setLocalizedActionRotorCategory:v8];
  }

  return v9;
}

- (BOOL)_performActionBlock
{
  actionBlock = self->_actionBlock;
  if (actionBlock)
  {
    LOBYTE(actionBlock) = actionBlock[2]();
  }

  return actionBlock;
}

@end