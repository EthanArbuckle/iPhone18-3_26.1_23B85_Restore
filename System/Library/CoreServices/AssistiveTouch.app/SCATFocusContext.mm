@interface SCATFocusContext
+ (SCATFocusContext)focusContextWithElement:(id)element elementManager:(id)manager selectBehavior:(int)behavior options:(int)options;
+ (id)adHocFocusContext:(id)context;
+ (id)focusContextAutomatic;
+ (id)focusContextSelf;
+ (id)menuOnlyFocusContext:(id)context;
+ (int)_behaviorForElement:(id)element manager:(id)manager;
- (AXElementGroup)parentGroup;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isGroup;
- (BOOL)shouldDeferFocusToNativeFocusElement;
- (BOOL)shouldSuppressAudioOutput;
- (BOOL)waitsForSelectAction;
- (SCATFocusContext)initWithElement:(id)element elementManager:(id)manager selectBehavior:(int)behavior;
- (id)_descriptionForSelectBehavior:(int)behavior;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)elemLog;
- (unsigned)displayID;
@end

@implementation SCATFocusContext

- (id)elemLog
{
  element = [(SCATFocusContext *)self element];
  v4 = objc_opt_respondsToSelector();
  element2 = [(SCATFocusContext *)self element];
  v6 = element2;
  if (v4)
  {
    [element2 elemLog];
  }

  else
  {
    [element2 description];
  }
  v7 = ;
  v8 = sub_1000DB534([(SCATFocusContext *)self selectBehavior]);
  v9 = [NSString stringWithFormat:@"%@ [%@]", v7, v8];

  return v9;
}

+ (id)focusContextSelf
{
  if (qword_100218C40 != -1)
  {
    sub_10012B5B0();
  }

  v3 = qword_100218C38;

  return v3;
}

+ (id)focusContextAutomatic
{
  if (qword_100218C50 != -1)
  {
    sub_10012B5C4();
  }

  v3 = qword_100218C48;

  return v3;
}

+ (SCATFocusContext)focusContextWithElement:(id)element elementManager:(id)manager selectBehavior:(int)behavior options:(int)options
{
  optionsCopy = options;
  v7 = *&behavior;
  managerCopy = manager;
  elementCopy = element;
  v12 = [[self alloc] initWithElement:elementCopy elementManager:managerCopy selectBehavior:v7];

  if ((optionsCopy & 4) != 0)
  {
    [v12 setShouldResumeFromMenuDismissal:1];
  }

  if (optionsCopy)
  {
    [v12 setSelectBehavior:1];
  }

  return v12;
}

+ (int)_behaviorForElement:(id)element manager:(id)manager
{
  elementCopy = element;
  if ([elementCopy isGroup])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
    if (([elementCopy scatShouldActivateDirectly] & 1) == 0)
    {
      v6 = +[SCATScannerManager sharedManager];
      v7 = [v6 shouldBypassShowingMenuForElement:elementCopy];

      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  return v5;
}

+ (id)menuOnlyFocusContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(SCATFocusContext);
  [(SCATFocusContext *)v4 setMenuElement:contextCopy];

  return v4;
}

+ (id)adHocFocusContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc_init(SCATFocusContext);
  [(SCATFocusContext *)v4 setElement:contextCopy];

  [(SCATFocusContext *)v4 setShouldBeTrackedByZoom:0];
  [(SCATFocusContext *)v4 setSelectBehavior:2];

  return v4;
}

- (SCATFocusContext)initWithElement:(id)element elementManager:(id)manager selectBehavior:(int)behavior
{
  elementCopy = element;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = SCATFocusContext;
  v11 = [(SCATFocusContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    if (elementCopy && managerCopy)
    {
      v11->_shouldBeTrackedByZoom = 1;
      objc_storeStrong(&v11->_element, element);
      if (!behavior)
      {
        behavior = [objc_opt_class() _behaviorForElement:v12->_element manager:v12->_elementManager];
      }

      v12->_selectBehavior = behavior;
      v12->_elementManager = managerCopy;
    }

    else
    {
      v14 = +[NSThread callStackSymbols];
      _AXLogWithFacility();

      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SCATFocusContext);
  element = [(SCATFocusContext *)self element];
  [(SCATFocusContext *)v4 setElement:element];

  menuElement = [(SCATFocusContext *)self menuElement];
  [(SCATFocusContext *)v4 setMenuElement:menuElement];

  elementManager = [(SCATFocusContext *)self elementManager];
  [(SCATFocusContext *)v4 setElementManager:elementManager];

  [(SCATFocusContext *)v4 setSelectBehavior:[(SCATFocusContext *)self selectBehavior]];
  [(SCATFocusContext *)v4 setFirstInSequence:[(SCATFocusContext *)self isFirstInSequence]];
  [(SCATFocusContext *)v4 setShouldResumeFromMenuDismissal:[(SCATFocusContext *)self shouldResumeFromMenuDismissal]];
  [(SCATFocusContext *)v4 setShouldBeTrackedByZoom:[(SCATFocusContext *)self shouldBeTrackedByZoom]];
  return v4;
}

- (id)description
{
  v3 = +[SCATFocusContext focusContextSelf];
  v4 = [(SCATFocusContext *)self isEqual:v3];

  if (v4)
  {
    element = [(SCATFocusContext *)self element];
    elementManager = [(SCATFocusContext *)self elementManager];
    v7 = [(SCATFocusContext *)self _descriptionForSelectBehavior:[(SCATFocusContext *)self selectBehavior]];
    v8 = [NSNumber numberWithBool:[(SCATFocusContext *)self isFirstInSequence]];
    menuElement = [(SCATFocusContext *)self menuElement];
    [NSString stringWithFormat:@"SCATFocusContext<%p>. SELF-SENTINAL. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@", self, element, elementManager, v7, v8, menuElement];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  v10 = +[SCATFocusContext focusContextAutomatic];
  v11 = [(SCATFocusContext *)self isEqual:v10];

  element = [(SCATFocusContext *)self element];
  elementManager = [(SCATFocusContext *)self elementManager];
  v7 = [(SCATFocusContext *)self _descriptionForSelectBehavior:[(SCATFocusContext *)self selectBehavior]];
  v8 = [NSNumber numberWithBool:[(SCATFocusContext *)self isFirstInSequence]];
  menuElement2 = [(SCATFocusContext *)self menuElement];
  menuElement = menuElement2;
  if (v11)
  {
    [NSString stringWithFormat:@"SCATFocusContext<%p>. AUTOMATIC-SENTINAL. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@", self, element, elementManager, v7, v8, menuElement2];
    goto LABEL_5;
  }

  v14 = [NSNumber numberWithBool:[(SCATFocusContext *)self shouldResumeFromMenuDismissal]];
  v13 = [NSString stringWithFormat:@"SCATFocusContext<%p>. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@ resumesFromMenu:%@", self, element, elementManager, v7, v8, menuElement, v14];

LABEL_7:

  return v13;
}

- (id)_descriptionForSelectBehavior:(int)behavior
{
  if ((behavior - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1001D7498[behavior - 1];
  }
}

- (BOOL)waitsForSelectAction
{
  element = [(SCATFocusContext *)self element];
  scatShouldActivateDirectly = [element scatShouldActivateDirectly];

  if (scatShouldActivateDirectly)
  {
    return 0;
  }

  element2 = [(SCATFocusContext *)self element];
  if ([element2 isGroup])
  {
    v5 = [(SCATFocusContext *)self selectBehavior]== 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSuppressAudioOutput
{
  element = [(SCATFocusContext *)self element];
  scatShouldSuppressAudioOutput = [element scatShouldSuppressAudioOutput];

  return (scatShouldSuppressAudioOutput & 1) != 0 || self->_shouldSuppressAudioOutput;
}

- (AXElementGroup)parentGroup
{
  element = [(SCATFocusContext *)self element];
  parentGroup = [element parentGroup];

  return parentGroup;
}

- (BOOL)isGroup
{
  element = [(SCATFocusContext *)self element];
  isGroup = [element isGroup];

  return isGroup;
}

- (unsigned)displayID
{
  menuElement = [(SCATFocusContext *)self menuElement];

  if (menuElement)
  {
    [(SCATFocusContext *)self menuElement];
  }

  else
  {
    [(SCATFocusContext *)self element];
  }
  v4 = ;
  scatDisplayId = [v4 scatDisplayId];

  return scatDisplayId;
}

- (BOOL)shouldDeferFocusToNativeFocusElement
{
  element = [(SCATFocusContext *)self element];
  scatShouldAllowDeferFocusToNativeFocusedElement = [element scatShouldAllowDeferFocusToNativeFocusedElement];

  return scatShouldAllowDeferFocusToNativeFocusedElement;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  element = [(SCATFocusContext *)self element];
  [element scatFrame];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);

  return v6;
}

@end