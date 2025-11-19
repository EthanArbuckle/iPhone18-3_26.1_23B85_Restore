@interface LoadStoreQueueTask
- (void)main;
@end

@implementation LoadStoreQueueTask

- (void)main
{
  v3 = [[NSMutableArray alloc] initWithObjects:{&off_100548700, 0}];
  rangesToLoad = self->_rangesToLoad;
  self->_rangesToLoad = v3;

  if ([(NSMutableArray *)self->_rangesToLoad count]>= 2)
  {
    while (1)
    {
      if (([(LoadStoreQueueTask *)self isCancelled]& 1) != 0)
      {
        goto LABEL_93;
      }

      v5 = [(NSMutableArray *)self->_rangesToLoad objectAtIndexedSubscript:0];
      v6 = [(NSMutableArray *)self->_rangesToLoad objectAtIndexedSubscript:1];
      v133 = 0;
      v7 = v5;
      v8 = v6;
      if (!self->_requestEncoder)
      {
        v9 = [LoadStoreQueueRequestEncoder alloc];
        v10 = [(Bag *)self->_bag amsBag];
        v11 = [(LoadStoreQueueRequestEncoder *)v9 initWithBag:v10];
        requestEncoder = self->_requestEncoder;
        self->_requestEncoder = v11;

        [(AMSURLRequestEncoder *)self->_requestEncoder setAccount:self->_account];
        [(AMSURLRequestEncoder *)self->_requestEncoder setAnisetteType:1];
        [(AMSURLRequestEncoder *)self->_requestEncoder setRequestEncoding:2];
        v13 = [(LogKey *)self->_logKey description];
        [(AMSURLRequestEncoder *)self->_requestEncoder setLogUUID:v13];
      }

      v14 = +[NSMutableDictionary dictionary];
      v15 = +[AMSDevice deviceGUID];
      [v14 setObject:v15 forKeyedSubscript:@"guid"];

      v16 = sub_1002C5F20(AMSKeybag, self->_account, 1);
      [v14 setObject:v16 forKeyedSubscript:@"kbsync"];

      v123 = v7;
      v17 = [v7 unsignedLongLongValue];
      v124 = v8;
      v18 = [v8 unsignedLongLongValue];
      if (v17 - 1 < v18)
      {
        v19 = v18;
        v20 = [NSString stringWithFormat:@"%llu", v17];
        [v14 setObject:v20 forKeyedSubscript:@"startId"];

        v21 = [NSString stringWithFormat:@"%llu", v19];
        [v14 setObject:v21 forKeyedSubscript:@"endId"];
      }

      v22 = self->_requestEncoder;
      v23 = self->_queueType ? @"pendingApps" : @"automatic-downloads2/downloads-url";
      v24 = [(Bag *)self->_bag URLForKey:v23];
      v25 = [(AMSURLRequestEncoder *)v22 requestWithMethod:4 URL:v24 parameters:v14];
      v26 = [v25 resultWithError:&v133];

      v27 = v123;
      v29 = v133;
      v122 = v26;
      if (!v26)
      {
        break;
      }

      v30 = objc_alloc_init(RequestEnvironment);
      v31 = sub_10000479C();
      v33 = v31;
      if (v30)
      {
        objc_setProperty_atomic_copy(v30, v32, v31, 8);

        objc_setProperty_atomic(v30, v34, self->_presenter, 32);
        objc_setProperty_atomic_copy(v30, v35, self->_logKey, 16);
      }

      else
      {
      }

      v36 = sub_10024A6D0();
      v121 = v30;
      v37 = sub_10024AB48(v36, v26, v30);
      v132 = v29;
      v38 = [v37 resultWithError:&v132];
      v39 = v132;

      if (v38)
      {
        v119 = v39;
        v120 = [v38 object];
        if (v120)
        {
          v118 = v38;
          v41 = [v38 response];
          objc_opt_class();
          v42 = v41;
          v43 = (objc_opt_isKindOfClass() & 1) != 0 ? v42 : 0;

          v46 = sub_1003BE8FC(StoreItemResponse, v120, v43, 0, self->_bag);

          if (v46)
          {
            v48 = objc_getProperty(v46, v47, 72, 1);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v48 length])
            {
              sub_1002C5E18(AMSKeybag, v48);
            }

            v117 = v48;
            v49 = v46;
            v51 = objc_getProperty(v49, v50, 88, 1);

            if (v51)
            {
              v53 = self->_rangesToLoad;
              v54 = objc_getProperty(v49, v52, 88, 1);
              [(NSMutableArray *)v53 addObjectsFromArray:v54];
            }

            v55 = objc_getProperty(v49, v52, 64, 1);

            if (v55)
            {
              [(Task *)self lock];
              if (!self->_storeItems)
              {
                v56 = objc_opt_new();
                storeItems = self->_storeItems;
                self->_storeItems = v56;
              }

              v126 = objc_opt_new();
              v58 = objc_opt_new();
              v59 = objc_opt_new();
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              obj = objc_getProperty(v49, v60, 64, 1);
              v129 = v59;
              v131 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
              if (v131)
              {
                v62 = *v139;
                v127 = *v139;
                v128 = v58;
                v125 = v49;
                do
                {
                  v63 = 0;
                  do
                  {
                    if (*v139 != v62)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v64 = *(*(&v138 + 1) + 8 * v63);
                    if (v64)
                    {
                      Property = objc_getProperty(*(*(&v138 + 1) + 8 * v63), v61, 216, 1);
                    }

                    else
                    {
                      Property = 0;
                    }

                    v66 = Property;

                    if (!v66)
                    {
                      [v58 addObject:v64];
                      goto LABEL_67;
                    }

                    if (v64)
                    {
                      v68 = objc_getProperty(v64, v67, 216, 1);
                    }

                    else
                    {
                      v68 = 0;
                    }

                    v69 = v68;
                    v70 = [v59 objectForKeyedSubscript:v69];

                    if (v70)
                    {
                      v73 = objc_getProperty(v70, v71, 144, 1);
                      if (v64)
                      {
                        v74 = objc_getProperty(v64, v72, 144, 1);
                        v75 = v74;
                        if (v74 && [v74 compare:v73] == 1)
                        {
                          v76 = ASDLogHandleForCategory();
                          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                          {
                            v78 = objc_getProperty(v64, v77, 216, 1);
                            v80 = objc_getProperty(v64, v79, 96, 1);
                            *buf = 138544130;
                            v145 = v78;
                            v146 = 2114;
                            v147 = v80;
                            v148 = 2114;
                            v149 = v75;
                            v150 = 2114;
                            v151 = v73;
                            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Queue check found duplicate items in the queue for %{public}@ (%{public}@). Choosing %{public}@ over %{public}@.", buf, 0x2Au);

                            v59 = v129;
                          }

                          v82 = objc_getProperty(v64, v81, 216, 1);
                          [v59 setObject:v64 forKeyedSubscript:v82];

                          v83 = v70;
                          goto LABEL_58;
                        }
                      }

                      else
                      {
                        v75 = 0;
                      }

                      v86 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                      {
                        v88 = self;
                        if (v64)
                        {
                          v89 = objc_getProperty(v64, v87, 216, 1);
                          v91 = objc_getProperty(v64, v90, 96, 1);
                          v92 = v89;
                        }

                        else
                        {
                          v89 = 0;
                          v92 = 0;
                          v91 = 0;
                        }

                        v93 = v91;
                        *buf = 138544130;
                        v145 = v89;
                        v146 = 2114;
                        v147 = v93;
                        v148 = 2114;
                        v149 = v73;
                        v150 = 2114;
                        v151 = v75;
                        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Queue check found duplicate items in the queue for %{public}@ (%{public}@). Choosing %{public}@ over %{public}@.", buf, 0x2Au);

                        self = v88;
                        v49 = v125;
                      }

                      v83 = v64;
                      if (v64)
                      {
LABEL_58:
                        v94 = v83;
                        v95 = objc_getProperty(v83, v84, 120, 1);
                        v96 = 0;
                      }

                      else
                      {
                        v94 = 0;
                        v95 = 0;
                        v96 = 1;
                      }

                      v97 = v95;

                      if (v97)
                      {
                        v98 = objc_opt_new();
                        v99 = [(ACAccount *)self->_account ams_DSID];
                        [v98 setObject:v99 forKeyedSubscript:@"account_id"];

                        if (v96)
                        {
                          [v98 setObject:0 forKeyedSubscript:@"item_id"];
                          v103 = 0;
                        }

                        else
                        {
                          v101 = objc_getProperty(v94, v100, 216, 1);
                          [v98 setObject:v101 forKeyedSubscript:@"item_id"];

                          v103 = objc_getProperty(v94, v102, 120, 1);
                        }

                        v104 = v103;
                        [v98 setObject:v104 forKeyedSubscript:@"request_url"];

                        if (v96)
                        {
                          v106 = 0;
                        }

                        else
                        {
                          v106 = objc_getProperty(v94, v105, 312, 1);
                        }

                        v107 = v106;
                        [v98 setObject:v107 forKeyedSubscript:@"transaction_id"];

                        [v126 addObject:v98];
                      }

                      v58 = v128;
                      v59 = v129;
                      v62 = v127;
                      goto LABEL_66;
                    }

                    if (v64)
                    {
                      v85 = objc_getProperty(v64, v71, 216, 1);
                    }

                    else
                    {
                      v85 = 0;
                    }

                    v73 = v85;
                    [v59 setObject:v64 forKeyedSubscript:v73];
LABEL_66:

LABEL_67:
                    v63 = v63 + 1;
                  }

                  while (v131 != v63);
                  v108 = [obj countByEnumeratingWithState:&v138 objects:v152 count:16];
                  v131 = v108;
                }

                while (v108);
              }

              v136 = 0u;
              v137 = 0u;
              v134 = 0u;
              v135 = 0u;
              v109 = [v59 allValues];
              v110 = [v109 countByEnumeratingWithState:&v134 objects:buf count:16];
              if (v110)
              {
                v111 = v110;
                v112 = *v135;
                do
                {
                  for (i = 0; i != v111; i = i + 1)
                  {
                    if (*v135 != v112)
                    {
                      objc_enumerationMutation(v109);
                    }

                    [v58 addObject:*(*(&v134 + 1) + 8 * i)];
                  }

                  v111 = [v109 countByEnumeratingWithState:&v134 objects:buf count:16];
                }

                while (v111);
              }

              [(NSMutableOrderedSet *)self->_storeItems addObjectsFromArray:v58];
              [(Task *)self unlock];
              v114 = v126;
              if ([v114 count])
              {
                v115 = sub_1003C27BC();
                v142[0] = _NSConcreteStackBlock;
                v142[1] = 3221225472;
                v142[2] = sub_1003ECB98;
                v142[3] = &unk_10051D6C8;
                v143 = v114;
                [v115 modifyUsingTransaction:v142];
              }
            }

            v38 = v118;
          }
        }

        v39 = v119;
      }

      else
      {
        objc_setProperty_atomic_copy(self, v40, v39, 32);
      }

      v44 = self->_rangesToLoad;
      v27 = v123;
      v45 = v124;
      if (!v38)
      {
        goto LABEL_89;
      }

      [(NSMutableArray *)v44 removeObjectsInRange:0, 2];
      self->super._success = [(NSMutableArray *)self->_rangesToLoad count]== 0;
LABEL_90:

      if ([(NSMutableArray *)self->_rangesToLoad count]<= 1)
      {
        goto LABEL_93;
      }
    }

    objc_setProperty_atomic_copy(self, v28, v29, 32);

    v44 = self->_rangesToLoad;
    v45 = v8;
LABEL_89:
    [(NSMutableArray *)v44 removeAllObjects];
    goto LABEL_90;
  }

LABEL_93:
  v116 = self->_rangesToLoad;
  self->_rangesToLoad = 0;
}

@end