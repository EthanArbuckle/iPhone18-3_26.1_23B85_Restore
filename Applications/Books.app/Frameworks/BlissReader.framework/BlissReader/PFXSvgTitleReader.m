@interface PFXSvgTitleReader
- (void)mapEndElementWithState:(id)a3;
@end

@implementation PFXSvgTitleReader

- (void)mapEndElementWithState:(id)a3
{
  v3 = [a3 currentHtmlStackEntry];
  v4 = [objc_msgSend(v3 "currentEntryMediaState")];
  v5 = [v3 parentHtmlStackEntry];
  if (xmlStrEqual([v5 xmlElementName], "svg"))
  {
    [objc_msgSend(v5 "currentEntryMediaState")];
  }

  v7 = [v4 range];

  [v4 replaceCharactersInRange:v7 withString:v6 notifyObservers:&stru_471858 undoTransaction:{0, 0}];
}

@end