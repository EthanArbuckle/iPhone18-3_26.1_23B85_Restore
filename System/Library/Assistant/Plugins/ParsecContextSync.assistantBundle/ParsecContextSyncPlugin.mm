@interface ParsecContextSyncPlugin
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
@end

@implementation ParsecContextSyncPlugin

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_semaphore_create(0);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_FC0;
  v54 = sub_FD0;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_FC0;
  v48 = sub_FD0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_FC0;
  v42 = sub_FD0;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_FC0;
  v36 = sub_FD0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_FC0;
  v30 = sub_FD0;
  v31 = 0;
  v8 = +[PARSession sharedSession];
  v9 = [PARSearchRequest searchRequestWithString:&stru_4178 triggerEvent:1];
  [v9 setVerboseReply:1];
  [v9 setPretend:1];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_FD8;
  v19 = &unk_4118;
  v21 = &v50;
  v22 = &v44;
  v23 = &v38;
  v24 = &v32;
  v25 = &v26;
  v10 = v7;
  v20 = v10;
  v11 = [v8 taskWithRequest:v9 completion:&v16];
  [v11 resume];
  v12 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v10, v12);
  if ([v27[5] length])
  {
    if ([v5 isEqualToString:v27[5]])
    {
      [v6 setPostAnchor:v5];
      [v6 setObject:0];
    }

    else
    {
      v13 = objc_alloc_init(SAParsecContext);
      v14 = [v33[5] absoluteString];
      [v13 setHttpUrl:v14];

      [v13 setHttpBody:v45[5]];
      [v13 setHttpMethod:v39[5]];
      [v13 setHttpHeaders:v51[5]];
      v15 = [NSURL URLWithString:@"ParsecContextIdentifier"];
      [v13 setIdentifier:v15];

      [v6 setObject:v13];
      [v6 setPostAnchor:v27[5]];
    }
  }

  else
  {
    [v6 setObject:0];
    [v6 setPostAnchor:v5];
  }

  [v6 setIsDelete:0];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v7 = a6;
  if (([a4 isEqualToString:@"ParsecContextValidity"] & 1) == 0)
  {
    [v7 resetWithValidity:@"ParsecContextValidity"];
  }
}

@end