@interface RAPWebBundlePOIContext
- (id)context;
@end

@implementation RAPWebBundlePOIContext

- (id)context
{
  v71.receiver = self;
  v71.super_class = RAPWebBundlePOIContext;
  context = [(RAPWebBundleAddToMapContext *)&v71 context];
  v4 = [context mutableCopy];

  v5 = objc_alloc_init(NSMutableArray);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  businessHours = [(RAPWebBundlePOIContext *)self businessHours];
  v7 = [businessHours countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v68;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v68 != v9)
        {
          objc_enumerationMutation(businessHours);
        }

        context2 = [*(*(&v67 + 1) + 8 * i) context];
        [v5 addObject:context2];
      }

      v8 = [businessHours countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v8);
  }

  v12 = [v4 objectForKeyedSubscript:@"place"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
  }

  v15 = v14;

  if ([v5 count])
  {
    [v15 setObject:v5 forKeyedSubscript:@"businessHoursNormal"];
  }

  name = [(RAPWebBundlePOIContext *)self name];

  if (name)
  {
    name2 = [(RAPWebBundlePOIContext *)self name];
    [v15 setObject:name2 forKeyedSubscript:@"entityName"];
  }

  phoneNumber = [(RAPWebBundlePOIContext *)self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [(RAPWebBundlePOIContext *)self phoneNumber];
    [v15 setObject:phoneNumber2 forKeyedSubscript:@"entityTelephone"];
  }

  v20 = [(RAPWebBundlePOIContext *)self url];

  if (v20)
  {
    v21 = [(RAPWebBundlePOIContext *)self url];
    [v15 setObject:v21 forKeyedSubscript:@"entityURL"];
  }

  categories = [(RAPWebBundlePOIContext *)self categories];
  v23 = [categories count];

  if (v23 >= 2)
  {
    categories2 = [(RAPWebBundlePOIContext *)self categories];
    [v15 setObject:categories2 forKeyedSubscript:@"entityCategories"];
  }

  if ([v5 count] >= 2)
  {
    v25 = [NSNumber numberWithBool:[(RAPWebBundlePOIContext *)self permanentClosed]];
    [v15 setObject:v25 forKeyedSubscript:@"businessHoursPermanentClosure"];

    v26 = [NSNumber numberWithBool:[(RAPWebBundlePOIContext *)self temporaryClosed]];
    [v15 setObject:v26 forKeyedSubscript:@"businessHoursTemporaryClosureEnd"];
  }

  v27 = [NSNumber numberWithBool:[(RAPWebBundlePOIContext *)self acceptsApplePay]];
  [v15 setObject:v27 forKeyedSubscript:@"acceptsApplePay"];

  v28 = objc_alloc_init(NSMutableArray);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  transitInfos = [(RAPWebBundlePOIContext *)self transitInfos];
  v30 = [transitInfos countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v64;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v64 != v32)
        {
          objc_enumerationMutation(transitInfos);
        }

        context3 = [*(*(&v63 + 1) + 8 * j) context];
        [v28 addObject:context3];
      }

      v31 = [transitInfos countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v31);
  }

  if ([v28 count])
  {
    v35 = [v28 copy];
    [v15 setObject:v35 forKeyedSubscript:@"transitInfo"];
  }

  v54 = v4;
  v36 = objc_alloc_init(NSMutableArray);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  containsPlaces = [(RAPWebBundlePOIContext *)self containsPlaces];
  v38 = [containsPlaces countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v60;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v60 != v40)
        {
          objc_enumerationMutation(containsPlaces);
        }

        context4 = [*(*(&v59 + 1) + 8 * k) context];
        [v36 addObject:context4];
      }

      v39 = [containsPlaces countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v39);
  }

  if ([v36 count])
  {
    v43 = [v36 copy];
    [v15 setObject:v43 forKeyedSubscript:@"contains"];
  }

  v44 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  containedInPlaces = [(RAPWebBundlePOIContext *)self containedInPlaces];
  v46 = [containedInPlaces countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v56;
    do
    {
      for (m = 0; m != v47; m = m + 1)
      {
        if (*v56 != v48)
        {
          objc_enumerationMutation(containedInPlaces);
        }

        context5 = [*(*(&v55 + 1) + 8 * m) context];
        [v44 addObject:context5];
      }

      v47 = [containedInPlaces countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v47);
  }

  if ([v44 count])
  {
    v51 = [v44 copy];
    [v15 setObject:v51 forKeyedSubscript:@"containedIn"];
  }

  v52 = [v54 copy];

  return v52;
}

@end