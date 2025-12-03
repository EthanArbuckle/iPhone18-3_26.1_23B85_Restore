@interface PFXSvgTitleReader
- (void)mapEndElementWithState:(id)state;
@end

@implementation PFXSvgTitleReader

- (void)mapEndElementWithState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  v4 = [objc_msgSend(currentHtmlStackEntry "currentEntryMediaState")];
  parentHtmlStackEntry = [currentHtmlStackEntry parentHtmlStackEntry];
  if (xmlStrEqual([parentHtmlStackEntry xmlElementName], "svg"))
  {
    [objc_msgSend(parentHtmlStackEntry "currentEntryMediaState")];
  }

  range = [v4 range];

  [v4 replaceCharactersInRange:range withString:v6 notifyObservers:&stru_471858 undoTransaction:{0, 0}];
}

@end