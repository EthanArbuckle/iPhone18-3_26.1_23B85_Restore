@interface GEORPSuggestedRouteIndex
- (void)setRideSelections:(id)a3;
@end

@implementation GEORPSuggestedRouteIndex

- (void)setRideSelections:(id)a3
{
  v4 = a3;
  [(GEORPSuggestedRouteIndex *)self clearClusteredRouteRideSelections];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[GEORPSuggestedRouteIndex addClusteredRouteRideSelections:](self, "addClusteredRouteRideSelections:", [*(*(&v10 + 1) + 8 * v9) unsignedIntegerValue]);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end