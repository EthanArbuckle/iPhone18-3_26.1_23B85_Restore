@interface BEWebViewFactoryStylesheetSet
- (BEWebViewFactoryStylesheetSet)initWithMainframeOnlyStylesheets:(id)stylesheets allFrameStylesheets:(id)frameStylesheets variableStylesheets:(id)variableStylesheets documentAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (NSString)unifedAllFrameStylesheet;
- (WKContentWorld)allFrameContentWorld;
- (WKContentWorld)mainframeContentWorld;
- (WKContentWorld)variableContentWorld;
- (id)description;
- (void)_addStylesheetSetToUserContentController:(id)controller includeMainframe:(BOOL)mainframe includeAllFrame:(BOOL)frame includeVariable:(BOOL)variable;
- (void)applyToWebView:(id)view;
- (void)applyVariableStylesheetsToWebView:(id)view;
@end

@implementation BEWebViewFactoryStylesheetSet

- (BEWebViewFactoryStylesheetSet)initWithMainframeOnlyStylesheets:(id)stylesheets allFrameStylesheets:(id)frameStylesheets variableStylesheets:(id)variableStylesheets documentAttributes:(id)attributes
{
  stylesheetsCopy = stylesheets;
  frameStylesheetsCopy = frameStylesheets;
  variableStylesheetsCopy = variableStylesheets;
  attributesCopy = attributes;
  v24.receiver = self;
  v24.super_class = BEWebViewFactoryStylesheetSet;
  v14 = [(BEWebViewFactoryStylesheetSet *)&v24 init];
  if (v14)
  {
    v15 = [stylesheetsCopy copy];
    mainframeOnlyStylesheets = v14->_mainframeOnlyStylesheets;
    v14->_mainframeOnlyStylesheets = v15;

    v17 = [frameStylesheetsCopy copy];
    allFrameStylesheets = v14->_allFrameStylesheets;
    v14->_allFrameStylesheets = v17;

    v19 = [variableStylesheetsCopy copy];
    variableStylesheets = v14->_variableStylesheets;
    v14->_variableStylesheets = v19;

    v21 = [attributesCopy copy];
    documentAttributes = v14->_documentAttributes;
    v14->_documentAttributes = v21;
  }

  return v14;
}

- (NSString)unifedAllFrameStylesheet
{
  allFrameStylesheets = [(BEWebViewFactoryStylesheetSet *)self allFrameStylesheets];
  v3 = [allFrameStylesheets componentsJoinedByString:@"\n"];

  return v3;
}

- (void)applyToWebView:(id)view
{
  configuration = [view configuration];
  userContentController = [configuration userContentController];
  [(BEWebViewFactoryStylesheetSet *)self _addStylesheetSetToUserContentController:userContentController includeMainframe:1 includeAllFrame:1 includeVariable:1];
}

- (void)applyVariableStylesheetsToWebView:(id)view
{
  configuration = [view configuration];
  userContentController = [configuration userContentController];
  [(BEWebViewFactoryStylesheetSet *)self _addStylesheetSetToUserContentController:userContentController includeMainframe:0 includeAllFrame:0 includeVariable:1];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    mainframeOnlyStylesheets = [(BEWebViewFactoryStylesheetSet *)self mainframeOnlyStylesheets];
    mainframeOnlyStylesheets2 = [v5 mainframeOnlyStylesheets];
    if ([mainframeOnlyStylesheets isEqual:mainframeOnlyStylesheets2])
    {
      allFrameStylesheets = [(BEWebViewFactoryStylesheetSet *)self allFrameStylesheets];
      allFrameStylesheets2 = [v5 allFrameStylesheets];
      if ([allFrameStylesheets isEqual:allFrameStylesheets2])
      {
        variableStylesheets = [(BEWebViewFactoryStylesheetSet *)self variableStylesheets];
        variableStylesheets2 = [v5 variableStylesheets];
        if ([variableStylesheets isEqual:variableStylesheets2])
        {
          documentAttributes = [(BEWebViewFactoryStylesheetSet *)self documentAttributes];
          documentAttributes2 = [v5 documentAttributes];
          v14 = [documentAttributes isEqual:documentAttributes2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  mainframeOnlyStylesheets = [(BEWebViewFactoryStylesheetSet *)self mainframeOnlyStylesheets];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [mainframeOnlyStylesheets count]);
  allFrameStylesheets = [(BEWebViewFactoryStylesheetSet *)self allFrameStylesheets];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allFrameStylesheets count]);
  variableStylesheets = [(BEWebViewFactoryStylesheetSet *)self variableStylesheets];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [variableStylesheets count]);
  documentAttributes = [(BEWebViewFactoryStylesheetSet *)self documentAttributes];
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [documentAttributes count]);
  v13 = [NSString stringWithFormat:@"<%@ %p mainframeOnlyStylesheets=[%@ items] allFrameStylesheets=[%@ items] variableStylesheets=[%@ items] documentAttributes=[%@ items]>", v4, self, v6, v8, v10, v12];

  return v13;
}

- (WKContentWorld)mainframeContentWorld
{
  mainframeContentWorld = self->_mainframeContentWorld;
  if (!mainframeContentWorld)
  {
    v4 = [WKContentWorld worldWithName:@"BEWebViewFactoryStylesheetSet.mainframe"];
    v5 = self->_mainframeContentWorld;
    self->_mainframeContentWorld = v4;

    mainframeContentWorld = self->_mainframeContentWorld;
  }

  return mainframeContentWorld;
}

- (WKContentWorld)allFrameContentWorld
{
  allFrameContentWorld = self->_allFrameContentWorld;
  if (!allFrameContentWorld)
  {
    v4 = [WKContentWorld worldWithName:@"BEWebViewFactoryStylesheetSet.allFrame"];
    v5 = self->_allFrameContentWorld;
    self->_allFrameContentWorld = v4;

    allFrameContentWorld = self->_allFrameContentWorld;
  }

  return allFrameContentWorld;
}

- (WKContentWorld)variableContentWorld
{
  variableContentWorld = self->_variableContentWorld;
  if (!variableContentWorld)
  {
    v4 = [WKContentWorld worldWithName:@"BEWebViewFactoryStylesheetSet.variable"];
    v5 = self->_variableContentWorld;
    self->_variableContentWorld = v4;

    variableContentWorld = self->_variableContentWorld;
  }

  return variableContentWorld;
}

- (void)_addStylesheetSetToUserContentController:(id)controller includeMainframe:(BOOL)mainframe includeAllFrame:(BOOL)frame includeVariable:(BOOL)variable
{
  variableCopy = variable;
  frameCopy = frame;
  mainframeCopy = mainframe;
  controllerCopy = controller;
  v42 = variableCopy;
  if (mainframeCopy)
  {
    v41 = frameCopy;
    mainframeContentWorld = [(BEWebViewFactoryStylesheetSet *)self mainframeContentWorld];
    [controllerCopy _removeAllUserStyleSheetsAssociatedWithContentWorld:mainframeContentWorld];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = self->_mainframeOnlyStylesheets;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v18 = [_WKUserStyleSheet alloc];
          mainframeContentWorld2 = [(BEWebViewFactoryStylesheetSet *)self mainframeContentWorld];
          v20 = [v18 initWithSource:v17 forWKWebView:0 forMainFrameOnly:1 includeMatchPatternStrings:0 excludeMatchPatternStrings:0 baseURL:0 level:0 contentWorld:mainframeContentWorld2];

          [controllerCopy _addUserStyleSheet:v20];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v14);
    }

    if (!v41)
    {
LABEL_3:
      if (!variableCopy)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  else if (!frameCopy)
  {
    goto LABEL_3;
  }

  allFrameContentWorld = [(BEWebViewFactoryStylesheetSet *)self allFrameContentWorld];
  [controllerCopy _removeAllUserStyleSheetsAssociatedWithContentWorld:allFrameContentWorld];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = self->_allFrameStylesheets;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v47 + 1) + 8 * j);
        v28 = [_WKUserStyleSheet alloc];
        allFrameContentWorld2 = [(BEWebViewFactoryStylesheetSet *)self allFrameContentWorld];
        v30 = [v28 initWithSource:v27 forWKWebView:0 forMainFrameOnly:0 includeMatchPatternStrings:0 excludeMatchPatternStrings:0 baseURL:0 level:0 contentWorld:allFrameContentWorld2];

        [controllerCopy _addUserStyleSheet:v30];
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v24);
  }

  if (v42)
  {
LABEL_21:
    variableContentWorld = [(BEWebViewFactoryStylesheetSet *)self variableContentWorld];
    [controllerCopy _removeAllUserStyleSheetsAssociatedWithContentWorld:variableContentWorld];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = self->_variableStylesheets;
    v33 = [(NSArray *)v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v43 + 1) + 8 * k);
          v38 = [_WKUserStyleSheet alloc];
          variableContentWorld2 = [(BEWebViewFactoryStylesheetSet *)self variableContentWorld];
          v40 = [v38 initWithSource:v37 forWKWebView:0 forMainFrameOnly:0 includeMatchPatternStrings:0 excludeMatchPatternStrings:0 baseURL:0 level:0 contentWorld:variableContentWorld2];

          [controllerCopy _addUserStyleSheet:v40];
        }

        v34 = [(NSArray *)v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v34);
    }
  }

LABEL_29:
}

@end