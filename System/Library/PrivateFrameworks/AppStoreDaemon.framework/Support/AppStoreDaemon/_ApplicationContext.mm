@interface _ApplicationContext
- (void)launchApplicationWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation _ApplicationContext

- (void)launchApplicationWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100214D30(self);
  objc_opt_self();
  os_unfair_lock_lock_with_options();
  v9 = sub_1003D0F60(v8);
  if (!v9 || (v10 = qword_1005AA810, sub_1003D0F60(v8), v11 = objc_claimAutoreleasedReturnValue(), [v10 objectForKeyedSubscript:v11], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    os_unfair_lock_unlock(&unk_1005AA808);

    goto LABEL_7;
  }

  [v12 timeIntervalSinceNow];
  v14 = v13;

  os_unfair_lock_unlock(&unk_1005AA808);
  if (v14 < -15.0)
  {
LABEL_7:
    v36 = v6;
    v17 = v8;
    objc_opt_self();
    os_unfair_lock_lock_with_options();
    v18 = qword_1005AA810;
    if (!qword_1005AA810)
    {
      v19 = objc_alloc_init(NSMutableDictionary);
      v20 = qword_1005AA810;
      qword_1005AA810 = v19;

      v18 = qword_1005AA810;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = [v18 allKeys];
    v22 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v41 + 1) + 8 * i);
          v27 = [qword_1005AA810 objectForKeyedSubscript:v26];
          v28 = v27;
          if (v27)
          {
            [v27 timeIntervalSinceNow];
            if (v29 < -15.0)
            {
              [qword_1005AA810 removeObjectForKey:v26];
            }
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v23);
    }

    v30 = sub_1003D0F60(v17);
    if (v30)
    {
      v31 = objc_alloc_init(NSDate);
      [qword_1005AA810 setObject:v31 forKeyedSubscript:v30];
    }

    os_unfair_lock_unlock(&unk_1005AA808);

    v7 = v35;
    v6 = v36;
    if (v36)
    {
      v16 = [FBSOpenApplicationOptions optionsWithDictionary:v36];
    }

    else
    {
      v16 = 0;
    }

    v32 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v33 = sub_100214D30(self);
    v34 = sub_1003D0F60(v33);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1002151A4;
    v39[3] = &unk_10051D540;
    v40 = v35;
    [v32 openApplication:v34 withOptions:v16 completion:v39];

    goto LABEL_25;
  }

  if (v7)
  {
    v15 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100215218;
    block[3] = &unk_10051BD28;
    v38 = v7;
    dispatch_async(v15, block);

    v16 = v38;
LABEL_25:
  }
}

@end