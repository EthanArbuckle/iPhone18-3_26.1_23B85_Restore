@interface GEOMapServiceTraits
+ (void)addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:(id)a3 toTraits:(id)a4;
- (void)addKnownClientResolvedTypesIfAvailable:(id)a3 clientTypeResolver:(id)a4;
@end

@implementation GEOMapServiceTraits

- (void)addKnownClientResolvedTypesIfAvailable:(id)a3 clientTypeResolver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) intValue];
        v13 = v12;
        if ((v12 - 1) >= 6)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }

        if ([v7 hasObjectWithType:v14])
        {
          [(GEOMapServiceTraits *)self addKnownClientResolvedType:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (void)addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:(id)a3 toTraits:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [&off_1016ED070 mutableCopy];
  v8 = +[MKLocationManager sharedLocationManager];
  if ([v8 isLocationServicesApproved] && objc_msgSend(v8, "isAuthorizedForPreciseLocation"))
  {
    [v10 addObject:&off_1016E77A8];
  }

  if (GEOConfigGetBOOL())
  {
    [v10 addObject:&off_1016E77C0];
  }

  v9 = [NSSet setWithArray:v10];
  [a1 addKnownClientResolvedTypesIfAvailable:v9 clientTypeResolver:v7 toTraits:v6];
}

@end