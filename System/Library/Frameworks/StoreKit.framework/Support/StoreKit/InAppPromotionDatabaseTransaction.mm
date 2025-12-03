@interface InAppPromotionDatabaseTransaction
- (BOOL)_migrateITunesStoreDDatabaseAtPath:(id)path;
- (BOOL)removePromotionInfoForBundleID:(id)d;
- (BOOL)setPromotionInfo:(id)info forBundleID:(id)d error:(id *)error;
@end

@implementation InAppPromotionDatabaseTransaction

- (BOOL)setPromotionInfo:(id)info forBundleID:(id)d error:(id *)error
{
  infoCopy = info;
  dCopy = d;
  selfCopy = self;
  connection = [(InAppPromotionDatabaseSession *)self connection];
  v67 = 0;
  v42 = [connection prepareStatement:@"INSERT INTO promoted_iaps (bundle_id error:{product_id, promo_order, visibility) VALUES (?1, ?2, coalesce(?3, (SELECT promo_order FROM promoted_iaps WHERE bundle_id = ?1 AND product_id = ?2), -1), coalesce(?4, (SELECT visibility FROM promoted_iaps WHERE bundle_id = ?1 AND product_id = ?2), -1))", &v67}];;
  v9 = v67;

  v10 = [infoCopy objectForKeyedSubscript:@"ord"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6F20();
    }

    v11 = qword_1003D38C0;
    if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v70 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Clearing previous StoreKit promotion order for %{public}@", buf, 0xCu);
    }

    connection2 = [(InAppPromotionDatabaseSession *)self connection];
    v66 = v9;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100003070;
    v64[3] = &unk_10037F688;
    v65 = dCopy;
    [connection2 executeStatement:@"UPDATE promoted_iaps SET promo_order = -1 WHERE bundle_id = ?;" error:&v66 bindings:v64];
    v13 = v66;

    v14 = v10;
    v9 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [infoCopy objectForKeyedSubscript:@"vis"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v15 mutableCopy];
  }

  else
  {
    v41 = 0;
  }

  v38 = infoCopy;
  v39 = v14;
  if ([v14 count])
  {
    v16 = 0;
    do
    {
      v17 = [v14 objectAtIndexedSubscript:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v41 objectForKeyedSubscript:v17];

        [v41 setObject:0 forKeyedSubscript:v17];
        connection3 = [(InAppPromotionDatabaseSession *)selfCopy connection];
        v63 = v9;
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_100003080;
        v56[3] = &unk_10037F6B0;
        v57 = dCopy;
        v20 = v17;
        v58 = v20;
        v59 = v14;
        v62 = v16;
        v15 = v18;
        v60 = v15;
        v61 = v41;
        v21 = [connection3 executePreparedStatement:v42 error:&v63 bindings:v56];
        v22 = v63;

        if ((v21 & 1) == 0)
        {
          if (qword_1003D3908 != -1)
          {
            sub_1002C6F20();
          }

          v23 = qword_1003D38C0;
          if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v70 = dCopy;
            v71 = 2114;
            v72 = v20;
            v73 = 2114;
            v74 = v22;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error setting StoreKit promotion info for %{public}@:%{public}@ - %{public}@", buf, 0x20u);
          }
        }

        v9 = v22;
        v14 = v39;
      }

      else
      {
        v22 = v9;
      }

      ++v16;
    }

    while ([v14 count] > v16);
  }

  else
  {
    v22 = v9;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [v41 allKeys];
  v24 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      v27 = 0;
      v28 = v22;
      do
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v52 + 1) + 8 * v27);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v41 objectForKeyedSubscript:v29];

          connection4 = [(InAppPromotionDatabaseSession *)selfCopy connection];
          v51 = v28;
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_10000325C;
          v46[3] = &unk_10037F6D8;
          v47 = dCopy;
          v48 = v29;
          v15 = v30;
          v49 = v15;
          v50 = v41;
          v32 = [connection4 executePreparedStatement:v42 error:&v51 bindings:v46];
          v22 = v51;

          if ((v32 & 1) == 0)
          {
            if (qword_1003D3908 != -1)
            {
              sub_1002C6F20();
            }

            v33 = qword_1003D38C0;
            if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v70 = dCopy;
              v71 = 2114;
              v72 = v29;
              v73 = 2114;
              v74 = v22;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error setting StoreKit promotion info for %{public}@:%{public}@ - %{public}@", buf, 0x20u);
            }
          }

          v28 = v22;
        }

        else
        {
          v22 = v28;
        }

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
    }

    while (v25);
  }

  connection5 = [(InAppPromotionDatabaseSession *)selfCopy connection];
  v45 = v22;
  v35 = [connection5 finalizePreparedStatement:v42 error:&v45];
  v36 = v45;

  if ((v35 & 1) == 0)
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6F20();
    }

    if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C6F48();
    }
  }

  return 1;
}

- (BOOL)removePromotionInfoForBundleID:(id)d
{
  dCopy = d;
  connection = [(InAppPromotionDatabaseSession *)self connection];
  v11 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000034B8;
  v9[3] = &unk_10037F688;
  v6 = dCopy;
  v10 = v6;
  [connection executeStatement:@"DELETE FROM promoted_iaps WHERE bundle_id = ?;" error:&v11 bindings:v9];
  v7 = v11;

  if (v7)
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6F20();
    }

    if (os_log_type_enabled(qword_1003D38C0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C6FC4();
    }
  }

  return v7 == 0;
}

- (BOOL)_migrateITunesStoreDDatabaseAtPath:(id)path
{
  pathCopy = path;
  connection = [(InAppPromotionDatabaseSession *)self connection];
  v14 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003628;
  v12[3] = &unk_10037F688;
  v6 = pathCopy;
  v13 = v6;
  [connection executeStatement:@"ATTACH DATABASE ? AS itunesstoreDb;" error:&v14 bindings:v12];
  v7 = v14;

  connection2 = [(InAppPromotionDatabaseSession *)self connection];
  v11 = v7;
  [connection2 executeStatement:@"INSERT INTO promoted_iaps (bundle_id error:{product_id, promo_order, visibility) SELECT promoted_iaps_order_table.bundle_id, promoted_iaps_order_table.product_id, promoted_iaps_order_table.iap_order, promoted_iaps_visibility_table.visibility FROM itunesstoreDb.promoted_iaps_order_table INNER JOIN promoted_iaps_visibility_table ON promoted_iaps_order_table.product_id=promoted_iaps_visibility_table.product_id;", &v11}];
  v9 = v11;

  if (v9)
  {
    if (qword_1003D3908 != -1)
    {
      sub_1002C6F20();
    }

    if (os_log_type_enabled(qword_1003D38F0, OS_LOG_TYPE_ERROR))
    {
      sub_1002C702C();
    }
  }

  return v9 == 0;
}

@end