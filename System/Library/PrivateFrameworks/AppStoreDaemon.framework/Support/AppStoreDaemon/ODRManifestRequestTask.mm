@interface ODRManifestRequestTask
- (void)main;
@end

@implementation ODRManifestRequestTask

- (void)main
{
  selfCopy = self;
  v3 = self->_application;
  objc_opt_self();
  v4 = +[BagService appstoredService];
  amsBag = [v4 amsBag];

  v6 = [[AMSURLRequestEncoder alloc] initWithBag:amsBag];
  v7 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v7 ams_activeiTunesAccount];

  if (ams_activeiTunesAccount)
  {
    v9 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount2 = [v9 ams_activeiTunesAccount];
    [v6 setAccount:ams_activeiTunesAccount2];
  }

  v11 = v3;
  objc_opt_self();
  if (sub_10039B560(v11))
  {
    v12 = v6;
    v13 = sub_10039B2FC(v11);
    v14 = v11;
    objc_opt_self();
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = sub_10039AAE4(v14);
    [v15 setObject:v16 forKeyedSubscript:@"adamId"];

    v17 = sub_10039B654(v14);
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_100529300;
    }

    [v15 setObject:v19 forKeyedSubscript:@"thinningVariant"];

    v20 = sub_10039B05C(v14);
    if (v13)
    {
      [v15 setObject:v20 forKeyedSubscript:@"betaExternalVersionId"];

      v21 = sub_10039AC78(v14);
      [v15 setObject:v21 forKeyedSubscript:@"bundleShortVersionId"];

      v22 = sub_10039AF14(v14);
      [v15 setObject:v22 forKeyedSubscript:@"bundleVersionId"];

      LODWORD(v22) = sub_10039B494(v14);
      if (!v22)
      {
        goto LABEL_20;
      }

      v14 = +[AMSDevice serialNumber];
      if (v14)
      {
        [v15 setObject:v14 forKeyedSubscript:@"serial-no"];
      }
    }

    else
    {
      [v15 setObject:v20 forKeyedSubscript:@"externalVersionId"];

      v24 = +[AMSDevice deviceGUID];
      if (v24)
      {
        [v15 setObject:v24 forKeyedSubscript:@"guid"];
      }

      if (sub_10039B494(v14))
      {
        v25 = +[AMSDevice serialNumber];
        if (v25)
        {
          [v15 setObject:v25 forKeyedSubscript:@"serial-no"];
        }
      }
    }

LABEL_20:
    v23 = 0;
    v26 = 0;
    v6 = v12;
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v23 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:117 userInfo:0];
LABEL_21:
  v15 = 0;
  v26 = v23;
LABEL_22:

  v56 = v11;
  v27 = v26;
  v28 = v27;
  v57 = v6;
  if (!v15)
  {
    if (v27)
    {
      object = 0;
    }

    else
    {
      v28 = ASDErrorWithDescription();
      object = 0;
      if (!v28)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    v43 = v28;
    goto LABEL_32;
  }

  v55 = selfCopy;
  v54 = amsBag;
  v29 = [amsBag URLForKey:@"onDemandResources"];
  v30 = [v6 requestWithMethod:4 bagURL:v29 parameters:v15];
  *buf = v28;
  v31 = [v30 resultWithError:buf];
  v32 = *buf;

  v33 = +[AMSURLSession defaultSession];
  v34 = [v33 dataTaskPromiseWithRequest:v31];

  v58 = v32;
  v35 = [v34 resultWithError:&v58];
  v28 = v58;

  object = [v35 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = [object objectForKeyedSubscript:@"error"];
    v38 = [object objectForKeyedSubscript:@"message"];
    v39 = v38;
    if (v37 && v38)
    {
      responseCorrelationId = [v35 responseCorrelationId];
      v41 = [NSString stringWithFormat:@"Error message: %@, Correlation ID: %@", v39, responseCorrelationId];

      [v37 integerValue];
      v42 = ASDErrorWithDescription();

      v28 = v42;
    }
  }

  else
  {
    v37 = [NSString stringWithFormat:@"Error fetching manifest, invalid response received: %@", object];
    ASDErrorWithDescription();
    v28 = v39 = v28;
  }

  selfCopy = v55;
  amsBag = v54;
  if (v28)
  {
    goto LABEL_31;
  }

LABEL_32:

  v44 = v28;
  v45 = v44;
  if (!object)
  {
    if (!v44)
    {
      v45 = ASDErrorWithDescription();
      if (!v45)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    [(Task *)selfCopy completeWithError:v45];

    goto LABEL_40;
  }

  v46 = [ODRManifest alloc];
  v47 = sub_10039A6A0(selfCopy->_application);
  v48 = sub_1002806CC(v46, object, v47, 1);
  manifest = selfCopy->_manifest;
  selfCopy->_manifest = v48;

  if (v45)
  {
    goto LABEL_39;
  }

LABEL_34:
  v50 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = sub_100280E78(&selfCopy->_manifest->super.super.isa);
    v52 = [v51 count];
    application = selfCopy->_application;
    *buf = 134218242;
    *&buf[4] = v52;
    v60 = 2114;
    v61 = application;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Successfully fetched a manifest with %lu asset packs for %{public}@", buf, 0x16u);
  }

  [(Task *)selfCopy completeWithSuccess];
LABEL_40:
}

@end