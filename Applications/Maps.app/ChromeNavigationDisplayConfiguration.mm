@interface ChromeNavigationDisplayConfiguration
- ($873BFAB23BBB6E2F0B0288ED2F935688)staticMapRect;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresCameraMotion;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)mergeWithConfiguration:(id)a3;
@end

@implementation ChromeNavigationDisplayConfiguration

- (BOOL)requiresCameraMotion
{
  v3 = objc_opt_class();
  v4 = [(ChromeNavigationDisplayConfiguration *)self cameraStyle];

  return [v3 _cameraStyleRequiresCameraMotion:v4];
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
  v2 = self;
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    if (objc_opt_respondsToSelector())
    {
      v5 = [(ChromeNavigationDisplayConfiguration *)v2 performSelector:"accessibilityIdentifier"];
      v6 = v5;
      if (v5 && ![v5 isEqualToString:v4])
      {
        v7 = [NSString stringWithFormat:@"%@<%p, %@>", v4, v2, v6];

        goto LABEL_7;
      }
    }

    v7 = [NSString stringWithFormat:@"%@<%p>", v4, v2];
LABEL_7:

    goto LABEL_9;
  }

  v7 = @"<nil>";
LABEL_9:

  v8 = [(ChromeNavigationDisplayConfiguration *)v2 cameraStyle];
  if (v8 > 6)
  {
    v9 = @".Unknown";
  }

  else
  {
    v9 = *(&off_10165CD98 + v8);
  }

  v26 = v9;
  v10 = [(ChromeNavigationDisplayConfiguration *)v2 cameraPaused];
  v11 = v10;
  if (v10)
  {
    if ([v10 BOOLValue])
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

  v14 = [(ChromeNavigationDisplayConfiguration *)v2 routeGeniusEntry];
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_24;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_24:

    goto LABEL_26;
  }

  v19 = @"<nil>";
LABEL_26:

  v20 = [(ChromeNavigationDisplayConfiguration *)v2 showsRoadLabel];
  v21 = v20;
  if (v20)
  {
    if ([v20 BOOLValue])
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

  v24 = [NSString stringWithFormat:@"%@ (cameraStyle:%@, cameraPaused:%@, routeGeniusEntry:%@, showsRoadLabel:%@)", v7, v26, v13, v19, v23];

  return v24;
}

- (void)mergeWithConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = v4;
    if ([v4 cameraStyle])
    {
      -[ChromeNavigationDisplayConfiguration setCameraStyle:](self, "setCameraStyle:", [v15 cameraStyle]);
    }

    v5 = [v15 cameraPaused];
    if (v5)
    {
      [(ChromeNavigationDisplayConfiguration *)self setCameraPaused:v5];
    }

    else
    {
      v6 = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
      [(ChromeNavigationDisplayConfiguration *)self setCameraPaused:v6];
    }

    v7 = [v15 routeGeniusEntry];
    if (v7)
    {
      [(ChromeNavigationDisplayConfiguration *)self setRouteGeniusEntry:v7];
    }

    else
    {
      v8 = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
      [(ChromeNavigationDisplayConfiguration *)self setRouteGeniusEntry:v8];
    }

    v9 = [v15 showsRoadLabel];
    if (v9)
    {
      [(ChromeNavigationDisplayConfiguration *)self setShowsRoadLabel:v9];
    }

    else
    {
      v10 = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
      [(ChromeNavigationDisplayConfiguration *)self setShowsRoadLabel:v10];
    }

    v11 = [v15 staticMapCamera];
    if (v11)
    {
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapCamera:v11];
    }

    else
    {
      v12 = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapCamera:v12];
    }

    [v15 staticMapRect];
    v4 = v15;
    if (v14 != MKMapRectNull.origin.x || v13 != MKMapRectNull.origin.y)
    {
      [v15 staticMapRect];
      [(ChromeNavigationDisplayConfiguration *)self setStaticMapRect:?];
      v4 = v15;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setCameraStyle:{-[ChromeNavigationDisplayConfiguration cameraStyle](self, "cameraStyle")}];
  v5 = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
  [v4 setCameraPaused:v5];

  v6 = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
  [v4 setRouteGeniusEntry:v6];

  v7 = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
  [v4 setShowsRoadLabel:v7];

  v8 = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
  [v4 setStaticMapCamera:v8];

  [(ChromeNavigationDisplayConfiguration *)self staticMapRect];
  [v4 setStaticMapRect:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [v5 cameraStyle];
    if (v6 == [(ChromeNavigationDisplayConfiguration *)self cameraStyle])
    {
      v7 = [v5 cameraPaused];
      v8 = [(ChromeNavigationDisplayConfiguration *)self cameraPaused];
      v9 = v7;
      v10 = v8;
      if (v9 | v10 && (v11 = [v9 isEqual:v10], v10, v9, !v11))
      {
        LOBYTE(v21) = 0;
      }

      else
      {
        v12 = [v5 routeGeniusEntry];
        v13 = [(ChromeNavigationDisplayConfiguration *)self routeGeniusEntry];
        v14 = v12;
        v15 = v13;
        if (v14 | v15 && (v16 = [v14 isEqual:v15], v15, v14, !v16))
        {
          LOBYTE(v21) = 0;
        }

        else
        {
          v17 = [v5 showsRoadLabel];
          v18 = [(ChromeNavigationDisplayConfiguration *)self showsRoadLabel];
          v19 = v17;
          v20 = v18;
          if (!(v19 | v20) || (LODWORD(v21) = [v19 isEqual:v20], v20, v19, v21))
          {
            [v5 staticMapRect];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            [(ChromeNavigationDisplayConfiguration *)self staticMapRect];
            LOBYTE(v21) = 0;
            if (v23 == v33 && v25 == v30)
            {
              LOBYTE(v21) = 0;
              if (v27 == v31 && v29 == v32)
              {
                v21 = [v5 staticMapCamera];
                v34 = [(ChromeNavigationDisplayConfiguration *)self staticMapCamera];
                v36 = v21;
                if (v21 | v34)
                {
                  LOBYTE(v21) = [v21 isEqual:v34];
                }

                else
                {
                  LOBYTE(v21) = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

@end