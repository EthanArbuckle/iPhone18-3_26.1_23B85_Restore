@interface CRLUIApplicationAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling traversalOptions:(id)options;
- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus parameters:(id)parameters;
- (id)_crlaxAccessibilityElementFirstForFocus:(BOOL)focus;
- (id)_unswizzledTargetInChainForAction:(SEL)action sender:(id)sender;
- (id)accessibilityLabel;
@end

@implementation CRLUIApplicationAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)accessibilityLabel
{
  if (objc_opt_respondsToSelector())
  {
    crlaxTarget = [(CRLUIApplicationAccessibility *)self crlaxTarget];
    _localizedApplicationName = [crlaxTarget _localizedApplicationName];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLUIApplicationAccessibility;
    _localizedApplicationName = [(CRLUIApplicationAccessibility *)&v6 accessibilityLabel];
  }

  return _localizedApplicationName;
}

- (id)_crlaxAccessibilityElementFirstForFocus:(BOOL)focus
{
  v5 = +[CRLAccessibility sharedInstance];
  v6 = v5;
  if (!focus)
  {
    _firstElementForUpcomingPageTurn = [v5 _firstElementForUpcomingPageTurn];

    if (_firstElementForUpcomingPageTurn)
    {
      goto LABEL_5;
    }

    v6 = +[CRLAccessibility sharedInstance];
  }

  _firstElementForUpcomingPageTurn = [v6 _firstElementForUpcomingScreenChange];

  if (!_firstElementForUpcomingPageTurn)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_5:
  crlaxAncestorView = [_firstElementForUpcomingPageTurn crlaxAncestorView];
  if (crlaxAncestorView && ([crlaxAncestorView crlaxViewAncestorOfType:objc_opt_class()], v9 = objc_claimAutoreleasedReturnValue(), -[CRLUIApplicationAccessibility crlaxTarget](self, "crlaxTarget"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "_accessibilityMainWindow"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v9 == v11))
  {
    v12 = _firstElementForUpcomingPageTurn;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus parameters:(id)parameters
{
  focusCopy = focus;
  lastCopy = last;
  firstCopy = first;
  parametersCopy = parameters;
  if (!firstCopy || ([(CRLUIApplicationAccessibility *)self _crlaxAccessibilityElementFirstForFocus:focusCopy], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13.receiver = self;
    v13.super_class = CRLUIApplicationAccessibility;
    v11 = [(CRLUIApplicationAccessibility *)&v13 _accessibilityElementFirst:firstCopy last:lastCopy forFocus:focusCopy parameters:parametersCopy];
  }

  return v11;
}

- (id)_accessibilityElementFirst:(BOOL)first last:(BOOL)last forFocus:(BOOL)focus allowScrolling:(BOOL)scrolling traversalOptions:(id)options
{
  scrollingCopy = scrolling;
  focusCopy = focus;
  lastCopy = last;
  firstCopy = first;
  optionsCopy = options;
  if (!firstCopy || ([(CRLUIApplicationAccessibility *)self _crlaxAccessibilityElementFirstForFocus:focusCopy], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = CRLUIApplicationAccessibility;
    v13 = [(CRLUIApplicationAccessibility *)&v15 _accessibilityElementFirst:firstCopy last:lastCopy forFocus:focusCopy allowScrolling:scrollingCopy traversalOptions:optionsCopy];
  }

  return v13;
}

- (id)_unswizzledTargetInChainForAction:(SEL)action sender:(id)sender
{
  senderCopy = sender;
  v17.receiver = self;
  v17.super_class = CRLUIApplicationAccessibility;
  firstResponder = [(CRLUIApplicationAccessibility *)&v17 _unswizzledTargetInChainForAction:action sender:senderCopy];
  v16 = 0;
  v8 = senderCopy;
  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v16);
  if (v16 == 1)
  {
    abort();
  }

  v11 = v10;

  if (firstResponder)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    window = [v11 window];
    firstResponder = [window firstResponder];

    if (firstResponder)
    {
      do
      {
        if ([firstResponder canPerformAction:action withSender:v8])
        {
          break;
        }

        nextResponder = [firstResponder nextResponder];

        firstResponder = nextResponder;
      }

      while (nextResponder);
    }
  }

  return firstResponder;
}

@end