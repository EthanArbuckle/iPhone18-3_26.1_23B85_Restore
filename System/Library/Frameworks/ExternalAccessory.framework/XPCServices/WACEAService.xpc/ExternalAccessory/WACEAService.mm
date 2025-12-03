@interface WACEAService
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)reconfigureAccessory:(id)accessory withReply:(id)reply;
- (void)setup;
- (void)startSearchForAccessoriesNeedingReprovisioning;
@end

@implementation WACEAService

- (void)setup
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000CEC;
  block[3] = &unk_100004128;
  block[4] = self;
  if (qword_100009250 != -1)
  {
    dispatch_once(&qword_100009250, block);
  }
}

- (void)reconfigureAccessory:(id)accessory withReply:(id)reply
{
  accessoryCopy = accessory;
  selfCopy = self;
  replyCopy = reply;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  homeManager = [(WACEAService *)self homeManager];
  currentHome = [homeManager currentHome];
  accessories = [currentHome accessories];

  obj = accessories;
  v9 = [accessories countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v58 + 1) + 8 * i);
        deviceIdentifier = [v13 deviceIdentifier];
        v15 = [deviceIdentifier stringByReplacingOccurrencesOfString:@":" withString:&stru_1000041D0];
        uppercaseString = [accessoryCopy uppercaseString];
        v17 = [v15 isEqualToString:uppercaseString];

        if (v17)
        {
          if ([v13 accessoryReprovisionState] == 1)
          {
            homeManager2 = [(WACEAService *)selfCopy homeManager];
            currentHome2 = [homeManager2 currentHome];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1000012E0;
            v56[3] = &unk_100004150;
            v32 = replyCopy;
            v35 = replyCopy;
            v57 = v35;
            [currentHome2 reprovisionAccessory:v13 completionHandler:v56];

            v36 = dispatch_group_create();
            v37 = dispatch_get_global_queue(0, 0);
            v38 = dispatch_time(0, 60000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100001300;
            block[3] = &unk_100004128;
            block[4] = v13;
            dispatch_group_async(v36, v37, block);
            dispatch_group_wait(v36, v38);
            if ([v13 accessoryReprovisionState])
            {
              v39 = 0xFFFFFFFFLL;
            }

            else
            {
              v39 = 0;
            }

            (*(v35 + 2))(v35, v39, 0);
          }

          else
          {
            v32 = replyCopy;
            (*(replyCopy + 2))(replyCopy, 1, 0);
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  homeManager3 = [(WACEAService *)selfCopy homeManager];
  homes = [homeManager3 homes];

  v41 = [homes countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v41)
  {
    v20 = *v52;
    obj = homes;
    v40 = *v52;
    do
    {
      v21 = 0;
      do
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(homes);
        }

        v43 = v21;
        v22 = *(*(&v51 + 1) + 8 * v21);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        accessories2 = [v22 accessories];
        v24 = [accessories2 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v48;
          while (2)
          {
            for (j = 0; j != v25; j = j + 1)
            {
              if (*v48 != v26)
              {
                objc_enumerationMutation(accessories2);
              }

              deviceIdentifier2 = [*(*(&v47 + 1) + 8 * j) deviceIdentifier];
              v29 = [deviceIdentifier2 stringByReplacingOccurrencesOfString:@":" withString:&stru_1000041D0];
              uppercaseString2 = [accessoryCopy uppercaseString];
              v31 = [v29 isEqualToString:uppercaseString2];

              if (v31)
              {
                v32 = replyCopy;
                (*(replyCopy + 2))(replyCopy, 2, 0);

                goto LABEL_32;
              }
            }

            v25 = [accessories2 countByEnumeratingWithState:&v47 objects:v62 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v21 = v43 + 1;
        homes = obj;
        v20 = v40;
      }

      while ((v43 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v41);
  }

  v32 = replyCopy;
  (*(replyCopy + 2))(replyCopy, 3, 0);
LABEL_33:
}

- (void)startSearchForAccessoriesNeedingReprovisioning
{
  homeManager = [(WACEAService *)self homeManager];
  currentHome = [homeManager currentHome];
  [currentHome startSearchForAccessoriesNeedingReprovisioning];
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  currentHome = [homesCopy currentHome];

  if (currentHome)
  {
    currentHome2 = [homesCopy currentHome];
    [(WACEAService *)self setCurrentHome:currentHome2];

    currentHome3 = [homesCopy currentHome];
    NSLog(@"### WAC XPC: Current Home: %@", currentHome3);

    currentHome4 = [(WACEAService *)self currentHome];
    [currentHome4 setDelegate:self];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    homeManager = [(WACEAService *)self homeManager];
    primaryHome = [homeManager primaryHome];
    accessories = [primaryHome accessories];

    v12 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(accessories);
          }

          [*(*(&v16 + 1) + 8 * v15) setDelegate:self];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

@end