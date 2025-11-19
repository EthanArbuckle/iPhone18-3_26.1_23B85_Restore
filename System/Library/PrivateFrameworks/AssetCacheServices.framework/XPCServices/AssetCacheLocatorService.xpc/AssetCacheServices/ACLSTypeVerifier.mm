@interface ACLSTypeVerifier
- (ACLSTypeVerifier)initWithTemplate:(id)a3;
- (BOOL)verify:(id)a3 name:(id)a4 withTemplate:(id)a5 tag:(unsigned int)a6;
- (id)sanitize:(id)a3 withTemplate:(id)a4 tag:(unsigned int)a5;
@end

@implementation ACLSTypeVerifier

- (ACLSTypeVerifier)initWithTemplate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ACLSTypeVerifier;
  v5 = [(ACLSTypeVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ACLSTypeVerifier *)v5 setTemplate:v4];
  }

  return v6;
}

- (BOOL)verify:(id)a3 name:(id)a4 withTemplate:(id)a5 tag:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FA60(v13, v11, a6);
  }

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_10001FB4C();
  }

  v14 = [v12 objectForKey:@"mandatory"];
  v15 = [v14 BOOLValue];

  if (v10)
  {
    v16 = [v12 objectForKey:@"class"];
    if (!v16)
    {
      sub_10001FB20();
    }

    if (objc_opt_isKindOfClass())
    {
      if (v16 == objc_opt_class() || v16 == objc_opt_class())
      {
        *buf = 0;
        *v42 = buf;
        *&v42[8] = 0x2020000000;
        v42[16] = 1;
        v26 = [v12 objectForKey:@"template"];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100001760;
        v36[3] = &unk_1000349F0;
        v36[4] = self;
        v37 = v11;
        v27 = v26;
        v40 = a6;
        v38 = v27;
        v39 = buf;
        [v10 enumerateObjectsUsingBlock:v36];
        v17 = *(*v42 + 24);
      }

      else
      {
        if (v16 != objc_opt_class() && v16 != objc_opt_class())
        {
          v17 = 1;
          goto LABEL_22;
        }

        *buf = 0;
        *v42 = buf;
        *&v42[8] = 0x2020000000;
        v42[16] = 1;
        v28 = [v12 objectForKey:@"template"];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100001804;
        v30[3] = &unk_100034A18;
        v31 = v10;
        v32 = self;
        v35 = a6;
        v33 = v11;
        v34 = buf;
        [v28 enumerateKeysAndObjectsUsingBlock:v30];
        v17 = *(*v42 + 24);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_22;
    }

    v20 = gLogHandle;
    v17 = 0;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = currentQueueName();
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromClass(v16);
      *buf = 67110403;
      *&buf[4] = a6;
      *v42 = 2080;
      *&v42[2] = v22;
      *&v42[10] = 2112;
      *&v42[12] = v11;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v25;
      v47 = 2113;
      v48 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ has wrong type: %@; expected %@: %{private}@", buf, 0x3Au);

      v17 = 0;
    }
  }

  else
  {
    if (v15)
    {
      v18 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        *buf = 67109634;
        *&buf[4] = a6;
        *v42 = 2080;
        *&v42[2] = currentQueueName();
        *&v42[10] = 2112;
        *&v42[12] = v11;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ is missing", buf, 0x1Cu);
      }
    }

    v17 = v15 ^ 1;
  }

LABEL_22:

  return v17;
}

- (id)sanitize:(id)a3 withTemplate:(id)a4 tag:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && (v11 = [v9 objectForKey:@"class"], (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v11 == objc_opt_class() || v11 == objc_opt_class())
    {
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
      [v10 objectForKey:@"template"];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100001B4C;
      v23[3] = &unk_100034A40;
      v24 = v23[4] = self;
      v26 = a5;
      v12 = v13;
      v25 = v12;
      v14 = v24;
      [v8 enumerateObjectsUsingBlock:v23];
    }

    else if (v11 == objc_opt_class() || v11 == objc_opt_class())
    {
      v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
      v16 = [v10 objectForKey:@"template"];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100001BB8;
      v18[3] = &unk_100034A68;
      v19 = v8;
      v20 = self;
      v22 = a5;
      v12 = v15;
      v21 = v12;
      [v16 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end