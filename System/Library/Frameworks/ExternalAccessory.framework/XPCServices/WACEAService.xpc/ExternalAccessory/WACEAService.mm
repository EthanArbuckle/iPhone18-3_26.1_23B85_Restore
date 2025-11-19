@interface WACEAService
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)reconfigureAccessory:(id)a3 withReply:(id)a4;
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

- (void)reconfigureAccessory:(id)a3 withReply:(id)a4
{
  v46 = a3;
  v42 = self;
  v44 = a4;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v6 = [(WACEAService *)self homeManager];
  v7 = [v6 currentHome];
  v8 = [v7 accessories];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v58 objects:v64 count:16];
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
        v14 = [v13 deviceIdentifier];
        v15 = [v14 stringByReplacingOccurrencesOfString:@":" withString:&stru_1000041D0];
        v16 = [v46 uppercaseString];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          if ([v13 accessoryReprovisionState] == 1)
          {
            v33 = [(WACEAService *)v42 homeManager];
            v34 = [v33 currentHome];
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_1000012E0;
            v56[3] = &unk_100004150;
            v32 = v44;
            v35 = v44;
            v57 = v35;
            [v34 reprovisionAccessory:v13 completionHandler:v56];

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
            v32 = v44;
            (*(v44 + 2))(v44, 1, 0);
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
  v18 = [(WACEAService *)v42 homeManager];
  v19 = [v18 homes];

  v41 = [v19 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v41)
  {
    v20 = *v52;
    obj = v19;
    v40 = *v52;
    do
    {
      v21 = 0;
      do
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v43 = v21;
        v22 = *(*(&v51 + 1) + 8 * v21);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v23 = [v22 accessories];
        v24 = [v23 countByEnumeratingWithState:&v47 objects:v62 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = [*(*(&v47 + 1) + 8 * j) deviceIdentifier];
              v29 = [v28 stringByReplacingOccurrencesOfString:@":" withString:&stru_1000041D0];
              v30 = [v46 uppercaseString];
              v31 = [v29 isEqualToString:v30];

              if (v31)
              {
                v32 = v44;
                (*(v44 + 2))(v44, 2, 0);

                goto LABEL_32;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v47 objects:v62 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v21 = v43 + 1;
        v19 = obj;
        v20 = v40;
      }

      while ((v43 + 1) != v41);
      v41 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v41);
  }

  v32 = v44;
  (*(v44 + 2))(v44, 3, 0);
LABEL_33:
}

- (void)startSearchForAccessoriesNeedingReprovisioning
{
  v3 = [(WACEAService *)self homeManager];
  v2 = [v3 currentHome];
  [v2 startSearchForAccessoriesNeedingReprovisioning];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = a3;
  v5 = [v4 currentHome];

  if (v5)
  {
    v6 = [v4 currentHome];
    [(WACEAService *)self setCurrentHome:v6];

    v7 = [v4 currentHome];
    NSLog(@"### WAC XPC: Current Home: %@", v7);

    v8 = [(WACEAService *)self currentHome];
    [v8 setDelegate:self];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(WACEAService *)self homeManager];
    v10 = [v9 primaryHome];
    v11 = [v10 accessories];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) setDelegate:self];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

@end