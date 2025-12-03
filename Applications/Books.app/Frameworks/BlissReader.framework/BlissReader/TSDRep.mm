@interface TSDRep
- (BOOL)allowsAction:(int)action;
- (id)popUpInfo;
- (int)performanceMode;
- (int)pressableAction;
- (unint64_t)widgetInteractionMode;
@end

@implementation TSDRep

- (int)performanceMode
{
  v2 = [-[TSDRep interactiveCanvasController](self "interactiveCanvasController")];

  return [v2 performanceMode];
}

- (unint64_t)widgetInteractionMode
{
  result = [-[TSDRep interactiveCanvasController](self "interactiveCanvasController")];
  if (result)
  {

    return [result widgetInteractionModeForRep:self];
  }

  return result;
}

- (id)popUpInfo
{
  [(TSDRep *)self infoForPressable];
  v2 = TSUProtocolCast();
  if (v2)
  {
    [v2 popUpInfo];
    TSUProtocolCast();
  }

  return TSUProtocolCast();
}

- (int)pressableAction
{
  v3 = [-[TSDRep infoForPressable](self "infoForPressable")];
  if ([(TSDRep *)self popUpInfo])
  {
    objc_opt_class();
    [(TSDRep *)self interactiveCanvasController];
    v4 = TSUDynamicCast();
    if (([v4 isCompactWidth] & 1) != 0 || objc_msgSend(v4, "isCompactHeight")) && (objc_msgSend(v3, "conformsToProtocol:", &OBJC_PROTOCOL___THWExpandableRep))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([v3 conformsToProtocol:&OBJC_PROTOCOL___THWExpandableRep])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)allowsAction:(int)action
{
  objc_opt_class();
  v5 = TSUDynamicCast();
  objc_opt_class();
  v6 = TSUDynamicCast();
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  v8 = TSUDynamicCast();
  [(TSDRep *)self infoForPressable];
  v9 = TSUProtocolCast();
  v10 = v9;
  if (action == 2)
  {
    v12 = (TSUPhoneUI() & 1) != 0 || [v10 popUpInfo] == 0;
    return (v8 | v5 | v6) == 0 && v12;
  }

  else
  {
    return action != 1 || !v7 && [v9 popUpInfo] != 0;
  }
}

@end