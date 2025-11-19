@interface DASProcessor
+ (void)initialize;
- (id)_dump:(id)a3;
- (void)_nameAll:(id)a3;
- (void)dumpAllWithCompletion:(id)a3;
- (void)nameAllWithCompletion:(id)a3;
- (void)nameAndDumpAllWithCompletion:(id)a3;
- (void)stitchWithInfo:(id)a3 completion:(id)a4;
@end

@implementation DASProcessor

+ (void)initialize
{
  if (qword_1000151A8 != -1)
  {
    dispatch_once(&qword_1000151A8, &stru_1000105B0);
  }
}

- (id)_dump:(id)a3
{
  v3 = a3;
  v4 = sub_100005B8C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "archiving all display hierarchies", buf, 2u);
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = objc_autoreleasePoolPush();
  v7 = [v3 parseErrors];
  v8 = [v7 mutableCopy];

  v9 = [v3 displays];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = sub_100005B8C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = [v3 raw];
      *buf = 138412290;
      v24 = v18;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to find any displays to dump : info=%@", buf, 0xCu);
    }
  }

  v12 = [v3 displays];
  v13 = [v12 array];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000627C;
  v19[3] = &unk_1000108C0;
  v14 = v3;
  v20 = v14;
  v21 = v8;
  v15 = v5;
  v22 = v15;
  v16 = v8;
  [v13 bs_each:v19];

  objc_autoreleasePoolPop(v6);

  return v15;
}

- (void)_nameAll:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100005B8C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "naming layers of all contexts", buf, 2u);
  }

  v6 = +[NSMutableSet set];
  v7 = [v3 contexts];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009A94;
  v15[3] = &unk_100010730;
  v16 = v6;
  v8 = v6;
  [v7 bs_each:v15];

  [v8 bs_each:&stru_100010770];
  +[NSMutableSet set];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100009B00;
  v14 = v13 = &unk_100010798;
  v9 = v14;
  [v8 bs_each:&v10];
  usleep(0x493E0u);
  [v9 bs_each:{&stru_1000107D8, v10, v11, v12, v13}];

  objc_autoreleasePoolPop(v4);
}

- (void)stitchWithInfo:(id)a3 completion:(id)a4
{
  v5 = a3;
  v47 = a4;
  v52 = +[NSMutableDictionary dictionary];
  context = objc_autoreleasePoolPush();
  v53 = +[NSMutableDictionary dictionary];
  v54 = v5;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = [v5 contexts];
  v6 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v6)
  {
    v7 = v6;
    v50 = *v76;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v76 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v75 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        [sub_100007224() begin];
        v11 = objc_autoreleasePoolPush();
        v12 = [NSMutableOrderedSet orderedSetWithObject:v9];
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_10000A3E4;
        v73[3] = &unk_1000105F8;
        v74 = v12;
        v13 = v12;
        v14 = objc_retainBlock(v73);
        v15 = [v9 description];
        v16 = [NSOrderedSet orderedSetWithObject:v9];
        sub_100006C6C(v15, v16, v54, v14, 0);

        [v13 removeObject:v9];
        v17 = [v13 copy];
        [v53 setObject:v17 forKey:v9];

        objc_autoreleasePoolPop(v11);
        [sub_100007224() commit];
        objc_autoreleasePoolPop(v10);
      }

      v7 = [obj countByEnumeratingWithState:&v75 objects:v84 count:16];
    }

    while (v7);
  }

  v18 = [v54 contexts];
  v19 = [v18 mutableCopy];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v20 = [v54 contexts];
  v21 = [v20 countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v70;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v70 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v69 + 1) + 8 * j);
        v26 = [v53 objectForKey:v25];
        if ([v26 count])
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v65 objects:v82 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v66;
            do
            {
              for (k = 0; k != v29; k = k + 1)
              {
                if (*v66 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                [v19 removeObject:*(*(&v65 + 1) + 8 * k)];
              }

              v29 = [v27 countByEnumeratingWithState:&v65 objects:v82 count:16];
            }

            while (v29);
          }
        }

        else
        {
          [v19 removeObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v22);
  }

  if (![v19 count])
  {
    v32 = sub_100005B8C();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v81 = v54;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "failed to find any roots to dump in %@", buf, 0xCu);
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v48 = v19;
  v33 = [v48 countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v33)
  {
    v34 = v33;
    v51 = *v62;
    do
    {
      for (m = 0; m != v34; m = m + 1)
      {
        if (*v62 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v36 = *(*(&v61 + 1) + 8 * m);
        v37 = objc_autoreleasePoolPush();
        [sub_100007224() begin];
        v38 = objc_autoreleasePoolPush();
        v39 = [NSMutableOrderedSet orderedSetWithObject:v36];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10000A3F0;
        v59[3] = &unk_1000105F8;
        v40 = v39;
        v60 = v40;
        v41 = objc_retainBlock(v59);
        v42 = [v36 description];
        v43 = [NSOrderedSet orderedSetWithObject:v36];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10000A3FC;
        v55[3] = &unk_100010708;
        v55[4] = v36;
        v44 = v54;
        v56 = v44;
        v57 = v52;
        v58 = v40;
        v45 = v40;
        sub_100006C6C(v42, v43, v44, v41, v55);

        objc_autoreleasePoolPop(v38);
        [sub_100007224() commit];
        objc_autoreleasePoolPop(v37);
      }

      v34 = [v48 countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v34);
  }

  objc_autoreleasePoolPop(context);
  v47[2](v47, v52);
}

- (void)dumpAllWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v9 = sub_100005B8C();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = 0;
    v10 = "ignoring archive request because no completion handler was supplied";
    v11 = &v12;
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  sub_10000B12C();
  if (!v5)
  {
    v9 = sub_100005B8C();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "could not find default render server";
    v11 = buf;
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [DASRenderServerInfo infoFromServerWithPort:v5];
  mach_port_deallocate(mach_task_self_, v6);
  v8 = [(DASProcessor *)self _dump:v7];
  v4[2](v4, v8, 0);

LABEL_8:
}

- (void)nameAndDumpAllWithCompletion:(id)a3
{
  v4 = a3;
  sub_10000B12C();
  if (v5)
  {
    v6 = v5;
    v7 = [DASRenderServerInfo infoFromServerWithPort:v5];
    mach_port_deallocate(mach_task_self_, v6);
    [(DASProcessor *)self _nameAll:v7];
    if (v4)
    {
      v8 = [(DASProcessor *)self _dump:v7];
      v4[2](v4, v8, 0);
    }

    else
    {
      v8 = sub_100005B8C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "ignoring archive request because no completion handler was supplied", &v10, 2u);
      }
    }

    goto LABEL_10;
  }

  v9 = sub_100005B8C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "could not find default render server", &v10, 2u);
  }

  if (v4)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"could not find default render server";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [NSError errorWithDomain:NSMachErrorDomain code:5 userInfo:v7];
    (v4)[2](v4, 0, v8);
LABEL_10:
  }
}

- (void)nameAllWithCompletion:(id)a3
{
  v4 = a3;
  sub_10000B12C();
  if (v5)
  {
    v6 = v5;
    v7 = [DASRenderServerInfo infoFromServerWithPort:v5];
    mach_port_deallocate(mach_task_self_, v6);
    [(DASProcessor *)self _nameAll:v7];
    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v8 = sub_100005B8C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "could not find default render server", v11, 2u);
    }

    if (v4)
    {
      v12 = NSLocalizedFailureReasonErrorKey;
      v13 = @"could not find default render server";
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [NSError errorWithDomain:NSMachErrorDomain code:5 userInfo:v9];
      (v4)[2](v4, v10);
    }
  }
}

@end