@interface PostRequestTask
- (PostRequestTask)initWithRequestURL:(id)a3 account:(id)a4;
- (id)_requestIdentifierFromResult:(id)a3 withError:(id *)a4;
- (id)_serverRequestWithError:(id *)a3;
- (id)_storeRequestWithResult:(id)a3 error:(id *)a4;
- (id)perform;
@end

@implementation PostRequestTask

- (PostRequestTask)initWithRequestURL:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PostRequestTask;
  v9 = [(PostRequestTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestURL, a3);
    objc_storeStrong(&v10->_account, a4);
    v10->_canSendViaMessages = 0;
    v11 = [AMSBag bagForProfile:@"AskPermission" profileVersion:@"1"];
    bag = v10->_bag;
    v10->_bag = v11;
  }

  return v10;
}

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100017948;
  v4[3] = &unk_100054C08;
  v4[4] = self;
  v2 = [(PostRequestTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (id)_serverRequestWithError:(id *)a3
{
  v3 = [(PostRequestTask *)self account];
  v4 = [v3 accountStore];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[ACAccountStore ams_sharedAccountStore];
  }

  v7 = v6;

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_1000189AC;
  v71 = sub_1000189BC;
  v72 = 0;
  v58 = v7;
  if ([v7 ams_isActiveAccountCombined])
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = [(PostRequestTask *)self peopleClient];
    v10 = v9 == 0;

    if (v10)
    {
      v11 = +[APLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[APLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v13;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Creating PeopleClient to check IDS", &buf, 0xCu);
      }

      location = 0;
      p_location = &location;
      v75 = 0x2050000000;
      v15 = qword_100063CF0;
      v76 = qword_100063CF0;
      if (!qword_100063CF0)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v78 = sub_100019048;
        v79 = &unk_1000554E0;
        v80 = &location;
        sub_100019048(&buf);
        v15 = p_location[3];
      }

      v16 = v15;
      _Block_object_dispose(&location, 8);
      v17 = objc_alloc_init(v15);
      [(PostRequestTask *)self setPeopleClient:v17];
    }

    objc_initWeak(&location, self);
    v18 = [(PostRequestTask *)self peopleClient];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000189C4;
    v63[3] = &unk_1000554B8;
    objc_copyWeak(&v66, &location);
    v63[4] = self;
    v65 = &v67;
    v19 = v8;
    v64 = v19;
    [v18 canSendFamilyAskToBuyIMessageWithCompletion:v63];

    v20 = +[APLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[APLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v22;
      v23 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting on PeopleClient with timeout of 75 seconds", &buf, 0xCu);
    }

    v24 = dispatch_time(0, 75000000000);
    dispatch_group_wait(v19, v24);
    if (!v68[5])
    {
      v25 = +[APLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[APLogConfig sharedConfig];
      }

      v26 = [v25 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        v28 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: PeopleClient timed out. Unable to send via iMessage. Falling back.", &buf, 0xCu);
      }

      v29 = [(PostRequestTask *)self requestURL];
      v30 = v68[5];
      v68[5] = v29;
    }

    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);
  }

  else
  {
    v31 = +[APLogConfig sharedDaemonConfig];
    if (!v31)
    {
      v31 = +[APLogConfig sharedConfig];
    }

    v32 = [v31 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v33;
      v34 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Split Account. Falling back to legacy notifications.", &buf, 0xCu);
    }

    v35 = [(PostRequestTask *)self requestURL];
    v19 = v68[5];
    v68[5] = v35;
  }

  v36 = [v68[5] ap_secureURL];
  v37 = [NSURLRequest requestWithURL:v36];
  v38 = objc_alloc_init(URLRequestEncoder);
  v39 = [(PostRequestTask *)self account];
  [(URLRequestEncoder *)v38 setAccount:v39];

  v40 = [(URLRequestEncoder *)v38 requestByEncodingRequest:v37 parameters:0];
  v62 = 0;
  v41 = [v40 resultWithTimeout:&v62 error:60.0];
  v42 = v62;
  if (v41)
  {
    v43 = +[APLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[APLogConfig sharedConfig];
    }

    v44 = [v43 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v45;
      v46 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: Encoded request successfully", &buf, 0xCu);
    }

    v47 = +[URLSession sharedSession];
    v48 = [v47 dataTaskPromiseWithRequest:v41];

    v61 = v42;
    v49 = [v48 resultWithTimeout:&v61 error:60.0];
    v50 = v61;

    if (v49)
    {
      v51 = +[APLogConfig sharedDaemonConfig];
      if (!v51)
      {
        v51 = +[APLogConfig sharedConfig];
      }

      v52 = [v51 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v36;
        v53 = objc_opt_class();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v53;
        v54 = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: Received server result", &buf, 0xCu);

        v36 = v57;
      }
    }

    v42 = v50;
  }

  else
  {
    v49 = 0;
  }

  if (a3)
  {
    v55 = v42;
    *a3 = v42;
  }

  _Block_object_dispose(&v67, 8);

  return v49;
}

- (id)_storeRequestWithResult:(id)a3 error:(id *)a4
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"salableAdamId"];
    v8 = [v6 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = [StorageHelper approvalRequestWithRequestIdentifier:v9];
    if ((objc_opt_respondsToSelector() & 1) != 0 && v9)
    {
      v12 = +[RequesterStore sharedStore];
      [v12 storeRequest:v11];

      v10 = 0;
    }

    else
    {
      v10 = APError();
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = APError();
  v11 = 0;
  if (a4)
  {
LABEL_15:
    v13 = v10;
    *a4 = v10;
  }

LABEL_16:

  return v11;
}

- (id)_requestIdentifierFromResult:(id)a3 withError:(id *)a4
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 || (([v6 objectForKeyedSubscript:@"requestId"], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v8 = 0) : (v8 = v7), v7, !v8))
  {
    v9 = APError();
    v8 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = 0;
  if (a4)
  {
LABEL_13:
    v10 = v9;
    *a4 = v9;
  }

LABEL_14:

  return v8;
}

@end