@interface SCATFocusContext
+ (SCATFocusContext)focusContextWithElement:(id)a3 elementManager:(id)a4 selectBehavior:(int)a5 options:(int)a6;
+ (id)adHocFocusContext:(id)a3;
+ (id)focusContextAutomatic;
+ (id)focusContextSelf;
+ (id)menuOnlyFocusContext:(id)a3;
+ (int)_behaviorForElement:(id)a3 manager:(id)a4;
- (AXElementGroup)parentGroup;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)isGroup;
- (BOOL)shouldDeferFocusToNativeFocusElement;
- (BOOL)shouldSuppressAudioOutput;
- (BOOL)waitsForSelectAction;
- (SCATFocusContext)initWithElement:(id)a3 elementManager:(id)a4 selectBehavior:(int)a5;
- (id)_descriptionForSelectBehavior:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)elemLog;
- (unsigned)displayID;
@end

@implementation SCATFocusContext

- (id)elemLog
{
  v3 = [(SCATFocusContext *)self element];
  v4 = objc_opt_respondsToSelector();
  v5 = [(SCATFocusContext *)self element];
  v6 = v5;
  if (v4)
  {
    [v5 elemLog];
  }

  else
  {
    [v5 description];
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

+ (SCATFocusContext)focusContextWithElement:(id)a3 elementManager:(id)a4 selectBehavior:(int)a5 options:(int)a6
{
  v6 = a6;
  v7 = *&a5;
  v10 = a4;
  v11 = a3;
  v12 = [[a1 alloc] initWithElement:v11 elementManager:v10 selectBehavior:v7];

  if ((v6 & 4) != 0)
  {
    [v12 setShouldResumeFromMenuDismissal:1];
  }

  if (v6)
  {
    [v12 setSelectBehavior:1];
  }

  return v12;
}

+ (int)_behaviorForElement:(id)a3 manager:(id)a4
{
  v4 = a3;
  if ([v4 isGroup])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
    if (([v4 scatShouldActivateDirectly] & 1) == 0)
    {
      v6 = +[SCATScannerManager sharedManager];
      v7 = [v6 shouldBypassShowingMenuForElement:v4];

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

+ (id)menuOnlyFocusContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SCATFocusContext);
  [(SCATFocusContext *)v4 setMenuElement:v3];

  return v4;
}

+ (id)adHocFocusContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SCATFocusContext);
  [(SCATFocusContext *)v4 setElement:v3];

  [(SCATFocusContext *)v4 setShouldBeTrackedByZoom:0];
  [(SCATFocusContext *)v4 setSelectBehavior:2];

  return v4;
}

- (SCATFocusContext)initWithElement:(id)a3 elementManager:(id)a4 selectBehavior:(int)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = SCATFocusContext;
  v11 = [(SCATFocusContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    if (v9 && v10)
    {
      v11->_shouldBeTrackedByZoom = 1;
      objc_storeStrong(&v11->_element, a3);
      if (!a5)
      {
        a5 = [objc_opt_class() _behaviorForElement:v12->_element manager:v12->_elementManager];
      }

      v12->_selectBehavior = a5;
      v12->_elementManager = v10;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCATFocusContext);
  v5 = [(SCATFocusContext *)self element];
  [(SCATFocusContext *)v4 setElement:v5];

  v6 = [(SCATFocusContext *)self menuElement];
  [(SCATFocusContext *)v4 setMenuElement:v6];

  v7 = [(SCATFocusContext *)self elementManager];
  [(SCATFocusContext *)v4 setElementManager:v7];

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
    v5 = [(SCATFocusContext *)self element];
    v6 = [(SCATFocusContext *)self elementManager];
    v7 = [(SCATFocusContext *)self _descriptionForSelectBehavior:[(SCATFocusContext *)self selectBehavior]];
    v8 = [NSNumber numberWithBool:[(SCATFocusContext *)self isFirstInSequence]];
    v9 = [(SCATFocusContext *)self menuElement];
    [NSString stringWithFormat:@"SCATFocusContext<%p>. SELF-SENTINAL. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@", self, v5, v6, v7, v8, v9];
    v13 = LABEL_5:;
    goto LABEL_7;
  }

  v10 = +[SCATFocusContext focusContextAutomatic];
  v11 = [(SCATFocusContext *)self isEqual:v10];

  v5 = [(SCATFocusContext *)self element];
  v6 = [(SCATFocusContext *)self elementManager];
  v7 = [(SCATFocusContext *)self _descriptionForSelectBehavior:[(SCATFocusContext *)self selectBehavior]];
  v8 = [NSNumber numberWithBool:[(SCATFocusContext *)self isFirstInSequence]];
  v12 = [(SCATFocusContext *)self menuElement];
  v9 = v12;
  if (v11)
  {
    [NSString stringWithFormat:@"SCATFocusContext<%p>. AUTOMATIC-SENTINAL. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@", self, v5, v6, v7, v8, v12];
    goto LABEL_5;
  }

  v14 = [NSNumber numberWithBool:[(SCATFocusContext *)self shouldResumeFromMenuDismissal]];
  v13 = [NSString stringWithFormat:@"SCATFocusContext<%p>. element:%@ manager:%@ selectBehavior:%@ isFirstInSequence:%@ menuElement:%@ resumesFromMenu:%@", self, v5, v6, v7, v8, v9, v14];

LABEL_7:

  return v13;
}

- (id)_descriptionForSelectBehavior:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1001D7498[a3 - 1];
  }
}

- (BOOL)waitsForSelectAction
{
  v3 = [(SCATFocusContext *)self element];
  v4 = [v3 scatShouldActivateDirectly];

  if (v4)
  {
    return 0;
  }

  v6 = [(SCATFocusContext *)self element];
  if ([v6 isGroup])
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
  v3 = [(SCATFocusContext *)self element];
  v4 = [v3 scatShouldSuppressAudioOutput];

  return (v4 & 1) != 0 || self->_shouldSuppressAudioOutput;
}

- (AXElementGroup)parentGroup
{
  v2 = [(SCATFocusContext *)self element];
  v3 = [v2 parentGroup];

  return v3;
}

- (BOOL)isGroup
{
  v2 = [(SCATFocusContext *)self element];
  v3 = [v2 isGroup];

  return v3;
}

- (unsigned)displayID
{
  v3 = [(SCATFocusContext *)self menuElement];

  if (v3)
  {
    [(SCATFocusContext *)self menuElement];
  }

  else
  {
    [(SCATFocusContext *)self element];
  }
  v4 = ;
  v5 = [v4 scatDisplayId];

  return v5;
}

- (BOOL)shouldDeferFocusToNativeFocusElement
{
  v2 = [(SCATFocusContext *)self element];
  v3 = [v2 scatShouldAllowDeferFocusToNativeFocusedElement];

  return v3;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(SCATFocusContext *)self element];
  [v5 scatFrame];
  v8.x = x;
  v8.y = y;
  v6 = CGRectContainsPoint(v9, v8);

  return v6;
}

@end