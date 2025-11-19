@interface ASTVirtualTrackpadInnerColorController
- (id)trackpadInnerColor;
- (id)trackpadOpacity;
- (void)setTrackpadInnerColor:(id)a3;
- (void)setTrackpadOpacity:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation ASTVirtualTrackpadInnerColorController

- (id)trackpadOpacity
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchVirtualTrackpadInnerOpacity];
  *&v3 = v3;
  v4 = [NSNumber numberWithFloat:v3];

  return v4;
}

- (void)setTrackpadOpacity:(id)a3
{
  v3 = a3;
  v6 = +[AXSettings sharedInstance];
  [v3 floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadInnerOpacity:v5];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(ASTVirtualTrackpadInnerColorController *)self specifierForIndexPath:a5];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v10 = v7;
    v11 = [v9 intValue];
    v12 = [v9 intValue];
    v13 = [(ASTVirtualTrackpadInnerColorController *)self trackpadInnerColor];
    [v10 setChecked:{v12 == objc_msgSend(v13, "intValue")}];

    v14 = _ASTVirtualTrackpadColorValues();
    v15 = [(ASTVirtualTrackpadInnerColorController *)self traitCollection:0];
    v16 = [v15 userInterfaceStyle];

    if (v14)
    {
      v17 = v11 == 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (v16 == &dword_0 + 2)
    {
      v19 = v14 != 0;
    }

    else
    {
      v19 = v18;
    }

    [v10 setFillCircle:v19];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = ASTVirtualTrackpadInnerColorController;
  [(ASTVirtualTrackpadInnerColorController *)&v30 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(ASTVirtualTrackpadInnerColorController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v22 = v8;
    v23 = v7;
    v10 = self;
    v21 = v9;
    [(ASTVirtualTrackpadInnerColorController *)self setTrackpadInnerColor:v9];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = v6;
    obj = [v6 visibleCells];
    v11 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v15 specifier];
          v17 = [v16 propertyForKey:@"ColorKey"];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 intValue];
            v20 = [(ASTVirtualTrackpadInnerColorController *)v10 trackpadInnerColor];
            [v15 setChecked:{v19 == objc_msgSend(v20, "intValue")}];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v7 = v23;
    v6 = v24;
    v9 = v21;
    v8 = v22;
  }
}

- (id)trackpadInnerColor
{
  v2 = +[AXSettings sharedInstance];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 assistiveTouchVirtualTrackpadInnerColor]);

  return v3;
}

- (void)setTrackpadInnerColor:(id)a3
{
  v3 = a3;
  v5 = +[AXSettings sharedInstance];
  v4 = [v3 integerValue];

  [v5 setAssistiveTouchVirtualTrackpadInnerColor:v4];
}

@end