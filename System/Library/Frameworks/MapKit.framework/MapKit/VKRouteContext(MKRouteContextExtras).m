@interface VKRouteContext(MKRouteContextExtras)
- (id)_routeInfoForRoute:()MKRouteContextExtras;
@end

@implementation VKRouteContext(MKRouteContextExtras)

- (id)_routeInfoForRoute:()MKRouteContextExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 routeInfo];
  v6 = [v5 route];

  if (v6 == v4)
  {
    v8 = [a1 routeInfo];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [a1 alternateRoutes];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 route];
          v13 = v12 == v4;

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v8;
}

@end