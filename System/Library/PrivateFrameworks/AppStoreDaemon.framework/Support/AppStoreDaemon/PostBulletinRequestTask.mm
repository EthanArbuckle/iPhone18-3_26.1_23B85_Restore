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
    title = [(ASDRequestOptions *)v6 title];
    if (self)
    {
      v8 = self->super._options;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    message = [(ASDRequestOptions *)v9 message];
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
    v60 = title;
    v61 = 2112;
    v62 = message;
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
  title2 = [(ASDRequestOptions *)v14 title];
  if (self)
  {
    v16 = self->super._options;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  message2 = [(ASDRequestOptions *)v17 message];
  v19 = sub_10030440C(Bulletin, title2, message2);

  if (self)
  {
    v20 = self->super._options;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  actionButtonTitle = [(ASDRequestOptions *)v21 actionButtonTitle];

  if (actionButtonTitle)
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
    actionButtonTitle2 = [(ASDRequestOptions *)v24 actionButtonTitle];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v25, actionButtonTitle2, 8);
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
  actionButtonURL = [(ASDRequestOptions *)v28 actionButtonURL];

  if (actionButtonURL)
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
    actionButtonURL2 = [(ASDRequestOptions *)v31 actionButtonURL];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v32, actionButtonURL2, 16);
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
  creationDate = [(ASDRequestOptions *)v35 creationDate];

  if (creationDate)
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
    creationDate2 = [(ASDRequestOptions *)v38 creationDate];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v39, creationDate2, 32);
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
  launchURL = [(ASDRequestOptions *)v42 launchURL];

  if (launchURL)
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
    launchURL2 = [(ASDRequestOptions *)v45 launchURL];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v46, launchURL2, 24);
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
  recordID = [(ASDRequestOptions *)v49 recordID];

  if (recordID)
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
    recordID2 = [(ASDRequestOptions *)v52 recordID];
    if (v19)
    {
      objc_setProperty_nonatomic_copy(v19, v53, recordID2, 56);
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