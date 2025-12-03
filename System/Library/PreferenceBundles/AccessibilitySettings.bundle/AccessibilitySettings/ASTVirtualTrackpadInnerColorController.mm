@interface ASTVirtualTrackpadInnerColorController
- (id)trackpadInnerColor;
- (id)trackpadOpacity;
- (void)setTrackpadInnerColor:(id)color;
- (void)setTrackpadOpacity:(id)opacity;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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

- (void)setTrackpadOpacity:(id)opacity
{
  opacityCopy = opacity;
  v6 = +[AXSettings sharedInstance];
  [opacityCopy floatValue];
  v5 = v4;

  [v6 setAssistiveTouchVirtualTrackpadInnerOpacity:v5];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(ASTVirtualTrackpadInnerColorController *)self specifierForIndexPath:path];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v10 = cellCopy;
    intValue = [v9 intValue];
    intValue2 = [v9 intValue];
    trackpadInnerColor = [(ASTVirtualTrackpadInnerColorController *)self trackpadInnerColor];
    [v10 setChecked:{intValue2 == objc_msgSend(trackpadInnerColor, "intValue")}];

    v14 = _ASTVirtualTrackpadColorValues();
    v15 = [(ASTVirtualTrackpadInnerColorController *)self traitCollection:0];
    userInterfaceStyle = [v15 userInterfaceStyle];

    if (v14)
    {
      v17 = intValue == 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if (userInterfaceStyle == &dword_0 + 2)
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = ASTVirtualTrackpadInnerColorController;
  [(ASTVirtualTrackpadInnerColorController *)&v30 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(ASTVirtualTrackpadInnerColorController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ColorKey"];
  if (v9)
  {
    v22 = v8;
    v23 = pathCopy;
    selfCopy = self;
    v21 = v9;
    [(ASTVirtualTrackpadInnerColorController *)self setTrackpadInnerColor:v9];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = viewCopy;
    obj = [viewCopy visibleCells];
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
          specifier = [v15 specifier];
          v17 = [specifier propertyForKey:@"ColorKey"];
          v18 = v17;
          if (v17)
          {
            intValue = [v17 intValue];
            trackpadInnerColor = [(ASTVirtualTrackpadInnerColorController *)selfCopy trackpadInnerColor];
            [v15 setChecked:{intValue == objc_msgSend(trackpadInnerColor, "intValue")}];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    pathCopy = v23;
    viewCopy = v24;
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

- (void)setTrackpadInnerColor:(id)color
{
  colorCopy = color;
  v5 = +[AXSettings sharedInstance];
  integerValue = [colorCopy integerValue];

  [v5 setAssistiveTouchVirtualTrackpadInnerColor:integerValue];
}

@end