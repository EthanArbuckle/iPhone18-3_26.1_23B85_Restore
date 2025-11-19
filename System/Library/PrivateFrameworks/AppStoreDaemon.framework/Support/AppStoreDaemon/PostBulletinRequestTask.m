@interface PostBulletinRequestTask
- (void)main;
@end

@implementation PostBulletinRequestTask

- (void)main
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = v3;
    if (self)
    {
      options = self->super._options;
    }

    else
    {
      options = 0;
    }

    v6 = options;
    v7 = [(ASDRequestOptions *)v6 title];
    if (self)
    {
      v8 = self->super._options;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [(ASDRequestOptions *)v9 message];
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v12 = client;
    v57 = 138413058;
    v58 = v3;
    v59 = 2112;
    v60 = v7;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "[%@]: Posting bulletin with title: %@ message: %@ for client %@", &v57, 0x2Au);
  }

  if (self)
  {
    v13 = self->super._options;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [(ASDRequestOptions *)v14 title];
  if (self)
  {
    v16 = self->super._options;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [(ASDRequestOptions *)v17 message];
  v19 = sub_10030440C(Bulletin, v15, v18);

  if (self)
  {
    v20 = self->super._options;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [(ASDRequestOptions *)v21 actionButtonTitle];

  if (v22)
  {
    if (self)
    {
      v23 = self->super._options;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v26 = [(ASDRequestOptions *)v24 actionButtonTitle];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v25, v26, 8);
    }
  }

  if (self)
  {
    v27 = self->super._options;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;
  v29 = [(ASDRequestOptions *)v28 actionButtonURL];

  if (v29)
  {
    if (self)
    {
      v30 = self->super._options;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v33 = [(ASDRequestOptions *)v31 actionButtonURL];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v32, v33, 16);
    }
  }

  if (self)
  {
    v34 = self->super._options;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = [(ASDRequestOptions *)v35 creationDate];

  if (v36)
  {
    if (self)
    {
      v37 = self->super._options;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v40 = [(ASDRequestOptions *)v38 creationDate];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v39, v40, 32);
    }
  }

  if (self)
  {
    v41 = self->super._options;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = [(ASDRequestOptions *)v42 launchURL];

  if (v43)
  {
    if (self)
    {
      v44 = self->super._options;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44;
    v47 = [(ASDRequestOptions *)v45 launchURL];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v46, v47, 24);
    }
  }

  if (self)
  {
    v48 = self->super._options;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;
  v50 = [(ASDRequestOptions *)v49 recordID];

  if (v50)
  {
    if (self)
    {
      v51 = self->super._options;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;
    v54 = [(ASDRequestOptions *)v52 recordID];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v53, v54, 56);
    }
  }

  v55 = sub_1003E9190();
  sub_1003E926C(v55, v19);

  if (self)
  {
    self->super.super._success = 1;
    objc_setProperty_atomic_copy(self, v56, 0, 32);
  }
}

@end