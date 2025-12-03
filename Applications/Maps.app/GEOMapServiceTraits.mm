@interface GEOMapServiceTraits
+ (void)addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:(id)resolver toTraits:(id)traits;
- (void)addKnownClientResolvedTypesIfAvailable:(id)available clientTypeResolver:(id)resolver;
@end

@implementation GEOMapServiceTraits

- (void)addKnownClientResolvedTypesIfAvailable:(id)available clientTypeResolver:(id)resolver
{
  availableCopy = available;
  resolverCopy = resolver;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [availableCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(availableCopy);
        }

        intValue = [*(*(&v15 + 1) + 8 * v11) intValue];
        v13 = intValue;
        if ((intValue - 1) >= 6)
        {
          v14 = 0;
        }

        else
        {
          v14 = intValue;
        }

        if ([resolverCopy hasObjectWithType:v14])
        {
          [(GEOMapServiceTraits *)self addKnownClientResolvedType:v13];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [availableCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (void)addCommonKnownClientResolvedTypesIfAvailableWithClientTypeResolver:(id)resolver toTraits:(id)traits
{
  traitsCopy = traits;
  resolverCopy = resolver;
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
  [self addKnownClientResolvedTypesIfAvailable:v9 clientTypeResolver:resolverCopy toTraits:traitsCopy];
}

@end