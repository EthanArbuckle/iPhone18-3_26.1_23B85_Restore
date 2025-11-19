@interface FAFollowupActionViewController
- (void)handleAKAction:(id)a3 completion:(id)a4;
- (void)handleActionWithURL:(id)a3;
- (void)handleActionWithURLKey:(id)a3 completion:(id)a4;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation FAFollowupActionViewController

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 userInfo];
    v30 = 138412290;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing followup item with info: %@", &v30, 0xCu);
  }

  objc_storeStrong(&self->_followupItem, a3);
  v14 = [v11 userInfo];
  v15 = [v14 objectForKeyedSubscript:AKActionKey];

  v16 = [v11 userInfo];
  v17 = [v16 objectForKeyedSubscript:AKFollowUpSafariURLKey];

  v18 = [v11 userInfo];

  v19 = [v18 objectForKeyedSubscript:AKFollowUpURLKey];

  if (v19)
  {
    v20 = _FALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received URL key: %@", &v30, 0xCu);
    }

    [(FAFollowupActionViewController *)self handleActionWithURLKey:v19 completion:v10];
    goto LABEL_22;
  }

  if (v17)
  {
    v21 = [NSURL URLWithString:v17];
    if (v21)
    {
      v22 = _FALogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received URL: %@", &v30, 0xCu);
      }

      [(FAFollowupActionViewController *)self handleActionWithURL:v21];
    }

    v10[2](v10, 1);
LABEL_21:

    goto LABEL_22;
  }

  v23 = _FALogSystem();
  v24 = v23;
  if (v15)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received AKAction %@", &v30, 0xCu);
    }

    v21 = objc_opt_new();
    v25 = [(FLFollowUpItem *)self->_followupItem uniqueIdentifier];
    [v21 setItemIdentifier:v25];

    [v21 setAkAction:v15];
    v26 = [v9 userInfo];
    v27 = [v26 objectForKeyedSubscript:AKFollowUpIDMSDataKey];

    v28 = [v9 userInfo];
    v29 = [v28 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

    if (v27)
    {
      [v21 setIdmsData:v27];
    }

    if (v29)
    {
      [v21 setAltDSID:v29];
    }

    [(FAFollowupActionViewController *)self handleAKAction:v21 completion:v10];

    goto LABEL_21;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100001B6C(v24);
  }

  v10[2](v10, 1);
LABEL_22:
}

- (void)handleActionWithURLKey:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v6, 2u);
  }

  v4[2](v4, 1);
}

- (void)handleAKAction:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v6, 2u);
  }

  v4[2](v4, 1);
}

- (void)handleActionWithURL:(id)a3
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v4, 2u);
  }
}

@end