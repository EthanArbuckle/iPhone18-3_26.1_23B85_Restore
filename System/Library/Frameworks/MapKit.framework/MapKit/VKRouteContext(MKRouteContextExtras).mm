@interface VKRouteContext(MKRouteContextExtras)
- (id)_routeInfoForRoute:()MKRouteContextExtras;
@end

@implementation VKRouteContext(MKRouteContextExtras)

- (id)_routeInfoForRoute:()MKRouteContextExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  routeInfo = [self routeInfo];
  route = [routeInfo route];

  if (route == v4)
  {
    routeInfo2 = [self routeInfo];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    alternateRoutes = [self alternateRoutes];
    routeInfo2 = [alternateRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (routeInfo2)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != routeInfo2; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(alternateRoutes);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          route2 = [v11 route];
          v13 = route2 == v4;

          if (v13)
          {
            routeInfo2 = v11;
            goto LABEL_12;
          }
        }

        routeInfo2 = [alternateRoutes countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (routeInfo2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return routeInfo2;
}

@end