@interface CRLAccessibilityBlockBasedCustomAction
+ (void)addActionToArray:(id)array withName:(id)name categoryName:(id)categoryName actionBlock:(id)block;
- (BOOL)_performActionBlock;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name actionBlock:(id)block identifier:(id)identifier;
- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name categoryName:(id)categoryName actionBlock:(id)block;
@end

@implementation CRLAccessibilityBlockBasedCustomAction

+ (void)addActionToArray:(id)array withName:(id)name categoryName:(id)categoryName actionBlock:(id)block
{
  arrayCopy = array;
  nameCopy = name;
  categoryNameCopy = categoryName;
  blockCopy = block;
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks();
  if (!arrayCopy)
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

  v19 = [[CRLAccessibilityBlockBasedCustomAction alloc] initWithName:nameCopy categoryName:categoryNameCopy actionBlock:blockCopy];
  [arrayCopy addObject:v19];
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name actionBlock:(id)block identifier:(id)identifier
{
  nameCopy = name;
  blockCopy = block;
  identifierCopy = identifier;
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (![identifierCopy length])
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
  v17 = [(CRLAccessibilityBlockBasedCustomAction *)&v23 initWithName:nameCopy target:self selector:"_performActionBlock"];
  if (v17)
  {
    v18 = [blockCopy copy];
    actionBlock = v17->_actionBlock;
    v17->_actionBlock = v18;

    v20 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v20;
  }

  return v17;
}

- (CRLAccessibilityBlockBasedCustomAction)initWithName:(id)name categoryName:(id)categoryName actionBlock:(id)block
{
  categoryNameCopy = categoryName;
  v9 = [(CRLAccessibilityBlockBasedCustomAction *)self initWithName:name actionBlock:block];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(CRLAccessibilityBlockBasedCustomAction *)v9 setLocalizedActionRotorCategory:categoryNameCopy];
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