@interface ChromeNavigationDisplayConfiguration
- ($873BFAB23BBB6E2F0B0288ED2F935688)staticMapRect;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresCameraMotion;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)mergeWithConfiguration:(id)configuration;
@end

@implementation ChromeNavigationDisplayConfiguration

- (BOOL)requiresCameraMotion
{
  v3 = objc_opt_class();
  cameraStyle = [(ChromeNavigationDisplayConfiguration *)self cameraStyle];

  return [v3 _cameraStyleRequiresCameraMotion:cameraStyle];
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)staticMapRect
{
  x = self->_staticMapRect.origin.x;
  y = self->_staticMapRect.origin.y;
  width = self->_staticMapRect.size.width;
  height = self->_staticMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (id)description
{
  selfCopy = self;
  if (selfCopy)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    if (objc_opt_respondsToSelector())
    {
      v5 = [(ChromeNavigationDisplayConfiguration *)selfCopy performSelector:"accessibilityIdentifier"];
      v6 = v5;
      if (v5 && ![v5 isEqualToString:v4])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v4, selfCopy, v6];

        goto LABEL_7;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v4, selfCopy];
LABEL_7:

    goto LABEL_9;
  }

  selfCopy = @"<nil>";
LABEL_9:

  cameraStyle = [(ChromeNavigationDisplayConfiguration *)selfCopy cameraStyle];
  if (cameraStyle > 6)
  {
    v9 = @".Unknown";
  }

  else
  {
    v9 = *(&off_10165CD98 + cameraStyle);
  }

  v26 = v9;
  cameraPaused = [(ChromeNavigationDisplayConfiguration *)selfCopy cameraPaused];
  v11 = cameraPaused;
  if (cameraPaused)
  {
    if ([cameraPaused BOOLValue])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
  }

  else
  {
    v13 = @"<nil>";
  }

  routeGeniusEntry = [(ChromeNavigationDisplayConfiguration *)selfCopy routeGeniusEntry];
  if (routeGeniusEntry)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [routeGeniusEntry performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, routeGeniusEntry, v18];

        goto LABEL_24;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, routeGeniusEntry];
LABEL_24:

    goto LABEL_26;
  }

  v19 = @"<nil>";
LABEL_26:

  showsRoadLabel = [(ChromeNavigationDisplayConfiguration *)selfCopy showsRoadLabel];
  v21 = showsRoadLabel;
  if (showsRoadLabel)
  {
    if ([showsRoadLabel BOOLValue])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v23 = v22;
  }

  else
  {
    v23 = @"<nil>";
  }

  v24 = [NSString stringWithFormat:@"%@ (cameraStyle:%@, cameraPaused:%@, routeGeniusEntry:%@, showsRoadLabel:%@)", selfCopy, v26, v13, v19, v23];

  return v24;
}

- (void)mergeWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v15 = configurationCopy;
    if ([configurationCopy cameraStyle])
    {
      -[ChromeNavigationDisplayConfiguration setCameraStyle:](self, "setCameraStyle:", [v15 cameraStyle]);
    }

    cameraPaused = [v15 cameraPaused];
    if (cameraPaused)
    {
      [(ChromeNavigationDisplayConfiguration *)self setCameraPaused:cameraPaused];
    }

    else
    {
      cameraPaused2 = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
      [(ChromeNavigationDisplayConfiguration *)self setCameraPaused:cameraPaused2];
    }

    routeGeniusEntry = [v15 routeGeniusEntry];
    if (routeGeniusEntry)
    {
      [(ChromeNavigationDisplayConfiguration *)self setRouteGeniusEntry:routeGeniusEntry];
    }

    else
    {
      routeGeniusEntry2 = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
      [(ChromeNavigationDisplayConfiguration *)self setRouteGeniusEntry:routeGeniusEntry2];
    }

    showsRoadLabel = [v15 showsRoadLabel];
    if (showsRoadLabel)
    {
      [(ChromeNavigationDisplayConfiguration *)self setShowsRoadLabel:showsRoadLabel];
    }

    else
    {
      showsRoadLabel2 = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
      [(ChromeNavigationDisplayConfiguration *)self setShowsRoadLabel:showsRoadLabel2];
    }

    staticMapCamera = [v15 staticMapCamera];
    if (staticMapCamera)
    {
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapCamera:staticMapCamera];
    }

    else
    {
      staticMapCamera2 = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapCamera:staticMapCamera2];
    }

    [v15 staticMapRect];
    configurationCopy = v15;
    if (v14 != MKMapRectNull.origin.x || v13 != MKMapRectNull.origin.y)
    {
      [v15 staticMapRect];
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapRect:?];
      configurationCopy = v15;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setCameraStyle:{-[ChromeNavigationDisplayConfiguration cameraStyle](self, "cameraStyle")}];
  cameraPaused = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
  [v4 setCameraPaused:cameraPaused];

  routeGeniusEntry = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
  [v4 setRouteGeniusEntry:routeGeniusEntry];

  showsRoadLabel = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
  [v4 setShowsRoadLabel:showsRoadLabel];

  staticMapCamera = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
  [v4 setStaticMapCamera:staticMapCamera];

  [(ChromeNavigationDisplayConfiguration *)self staticMapRect];
  [v4 setStaticMapRect:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    cameraStyle = [v5 cameraStyle];
    if (cameraStyle == [(ChromeNavigationDisplayConfiguration *)self cameraStyle])
    {
      cameraPaused = [v5 cameraPaused];
      cameraPaused2 = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
      v9 = cameraPaused;
      v10 = cameraPaused2;
      if (v9 | v10 && (v11 = [v9 isEqual:v10], v10, v9, !v11))
      {
        LOBYTE(staticMapCamera) = 0;
      }

      else
      {
        routeGeniusEntry = [v5 routeGeniusEntry];
        routeGeniusEntry2 = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
        v14 = routeGeniusEntry;
        v15 = routeGeniusEntry2;
        if (v14 | v15 && (v16 = [v14 isEqual:v15], v15, v14, !v16))
        {
          LOBYTE(staticMapCamera) = 0;
        }

        else
        {
          showsRoadLabel = [v5 showsRoadLabel];
          showsRoadLabel2 = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
          v19 = showsRoadLabel;
          v20 = showsRoadLabel2;
          if (!(v19 | v20) || (LODWORD(staticMapCamera) = [v19 isEqual:v20], v20, v19, staticMapCamera))
          {
            [v5 staticMapRect];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            [(ChromeNavigationDisplayConfiguration *)self staticMapRect];
            LOBYTE(staticMapCamera) = 0;
            if (v23 == v33 && v25 == v30)
            {
              LOBYTE(staticMapCamera) = 0;
              if (v27 == v31 && v29 == v32)
              {
                staticMapCamera = [v5 staticMapCamera];
                staticMapCamera2 = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
                v36 = staticMapCamera;
                if (staticMapCamera | staticMapCamera2)
                {
                  LOBYTE(staticMapCamera) = [staticMapCamera isEqual:staticMapCamera2];
                }

                else
                {
                  LOBYTE(staticMapCamera) = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(staticMapCamera) = 0;
    }
  }

  else
  {
    LOBYTE(staticMapCamera) = 0;
  }

  return staticMapCamera;
}

@end