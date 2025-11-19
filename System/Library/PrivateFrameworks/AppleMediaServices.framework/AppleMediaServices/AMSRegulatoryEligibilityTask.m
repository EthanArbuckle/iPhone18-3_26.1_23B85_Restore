@interface AMSRegulatoryEligibilityTask
+ (AMSRegulatoryEligibilityTask)sharedInstance;
+ (BOOL)setBillingCountries:(id)a3 withStatus:(unint64_t)a4 error:(id *)a5;
+ (id)fetchRegulatoryiTunesAccounts;
+ (id)setRegulatoryPropertyOnAccounts:(id)a3;
- (AMSRegulatoryEligibilityTask)init;
- (AMSRegulatoryEligibilityTask)initWithServerData:(id)a3;
- (BOOL)setForcedOverride:(id)a3 error:(id *)a4;
- (NSNumber)override;
- (id)update;
- (void)handleCachedDataUpdate;
- (void)setOverride:(id)a3;
- (void)updateAMSDefaultsWith:(id)a3 accounts:(id)a4;
@end

@implementation AMSRegulatoryEligibilityTask

- (AMSRegulatoryEligibilityTask)init
{
  v7.receiver = self;
  v7.super_class = AMSRegulatoryEligibilityTask;
  v2 = [(AMSTask *)&v7 init];
  v3 = v2;
  if (v2 && !v2->_cachedServerDataService)
  {
    v4 = objc_alloc_init(NSClassFromString(&cfstr_Amsdaccountcac.isa));
    cachedServerDataService = v3->_cachedServerDataService;
    v3->_cachedServerDataService = v4;

    v3->_overrideLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (AMSRegulatoryEligibilityTask)initWithServerData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSRegulatoryEligibilityTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cachedServerDataService, a3);
  }

  return v7;
}

+ (AMSRegulatoryEligibilityTask)sharedInstance
{
  if (_MergedGlobals_1_16 != -1)
  {
    dispatch_once(&_MergedGlobals_1_16, &__block_literal_global_124);
  }

  v3 = qword_1ED6E1F78;

  return v3;
}

uint64_t __46__AMSRegulatoryEligibilityTask_sharedInstance__block_invoke()
{
  qword_1ED6E1F78 = objc_alloc_init(AMSRegulatoryEligibilityTask);

  return MEMORY[0x1EEE66BB8]();
}

- (id)update
{
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v3 = off_1ED6E1F80;
  v28 = off_1ED6E1F80;
  if (!off_1ED6E1F80)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v30 = __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_1;
    v31 = &unk_1E73B3880;
    v32 = &v25;
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_1(&buf);
    v3 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v3)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v4 = v3() == 0;
  v5 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v6 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@Skipping regulatory eligibility; process started before first device unlock", &buf, 0xCu);
      if (v15)
      {

        v19 = self;
      }
    }

    v20 = AMSError(119, @"Skipping regulatory eligibility", @"Device has not been unlocked", 0);
    v22 = [AMSBinaryPromise promiseWithError:v20];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMSLogKey();
      v9 = v8 == 0;
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v8)
      {
        v9 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v9];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Starting regulatory eligibility update.", &buf, 0xCu);
      if (v8)
      {

        v13 = v9;
      }
    }

    v20 = [objc_opt_class() fetchRegulatoryiTunesAccounts];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __38__AMSRegulatoryEligibilityTask_update__block_invoke;
    v24[3] = &unk_1E73BB898;
    v24[4] = self;
    v21 = [v20 continueWithBlock:v24];
    v22 = [v21 binaryPromiseAdapter];
  }

  return v22;
}

id __38__AMSRegulatoryEligibilityTask_update__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if ([v6 count])
  {
    v8 = [v6 allValues];
    v9 = [v8 valueForKey:@"ams_accountID"];

    v10 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
    v11 = [MEMORY[0x1E695DFB0] null];
    [v10 removeObjectIdenticalTo:v11];

    if ([v10 count])
    {
      v12 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = [*(a1 + 32) cachedServerDataService];
      v16 = [v12 allObjects];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __38__AMSRegulatoryEligibilityTask_update__block_invoke_41;
      v38[3] = &unk_1E73BBBC0;
      v38[4] = *(a1 + 32);
      v39 = v14;
      v40 = v6;
      v41 = v13;
      v17 = v13;
      v18 = v14;
      [v15 getDataForAccountIDs:v16 reply:v38];

      v19 = [AMSPromise promiseWithAll:v18];
    }

    else
    {
      v27 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = AMSLogKey();
        v30 = MEMORY[0x1E696AEC0];
        v31 = objc_opt_class();
        v32 = v31;
        if (v29)
        {
          a1 = AMSLogKey();
          [v30 stringWithFormat:@"%@: [%@] ", v32, a1];
        }

        else
        {
          [v30 stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        v36 = AMSHashIfNeeded(v6);
        *buf = 138543618;
        v44 = v33;
        v45 = 2114;
        v46 = v36;
        _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Stopping regulatory eligibility flow due to missing account IDs for accounts: %{public}@", buf, 0x16u);
        if (v29)
        {

          v33 = a1;
        }
      }

      v12 = AMSError(111, @"Fetching billing country failed", @"Account(s) do not have account IDs", 0);
      v19 = [AMSPromise promiseWithError:v12];
    }
  }

  else
  {
    v20 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        v3 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, v3];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      v34 = AMSLogableError(v7);
      *buf = 138543618;
      v44 = v26;
      v45 = 2114;
      v46 = v34;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch account(s) for regulatory eligibility. error = %{public}@", buf, 0x16u);
      if (v22)
      {

        v26 = v3;
      }
    }

    v42 = 0;
    v35 = [objc_opt_class() setBillingCountries:0 withStatus:7 error:&v42];
    v9 = v42;
    if (!v35)
    {
      v19 = [AMSPromise promiseWithError:v9];
      goto LABEL_28;
    }

    [*(a1 + 32) clearAMSDefaults];
    [AMSDefaults setRegulatoryEligibilityAccounts:0];
    v10 = +[AMSBinaryPromise promiseWithSuccess];
    v19 = [v10 promiseAdapter];
  }

LABEL_28:

  return v19;
}

void __38__AMSRegulatoryEligibilityTask_update__block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v171 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v140 = v9;
  v136 = a1;
  if (!v9 || v10)
  {
    v78 = v10;
    v79 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v79)
    {
      v79 = +[AMSLogConfig sharedConfig];
    }

    v80 = [v79 OSLogObject];
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      v81 = AMSLogKey();
      v82 = MEMORY[0x1E696AEC0];
      v83 = objc_opt_class();
      v84 = v83;
      if (v81)
      {
        v5 = AMSLogKey();
        [v82 stringWithFormat:@"%@: [%@] ", v84, v5];
      }

      else
      {
        [v82 stringWithFormat:@"%@: ", v83];
      }
      v85 = ;
      v86 = AMSLogableError(v78);
      *buf = 138543618;
      v165 = v85;
      v166 = 2114;
      v167 = v86;
      _os_log_impl(&dword_192869000, v80, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve server data for accounts with error= %{public}@", buf, 0x16u);
      if (v81)
      {

        v85 = v5;
      }

      a1 = v136;
    }

    v87 = *(a1 + 40);
    v88 = [AMSPromise promiseWithError:v78];
    [v87 addObject:v88];
  }

  else
  {
    v162 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    obj = *(a1 + 48);
    v146 = [obj countByEnumeratingWithState:&v159 objects:v170 count:16];
    if (v146)
    {
      v144 = *v160;
      do
      {
        for (i = 0; i != v146; i = i + 1)
        {
          v12 = v6;
          if (*v160 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v159 + 1) + 8 * i);
          v14 = [*(a1 + 48) objectForKeyedSubscript:v13];
          v15 = [v14 ams_accountID];

          if (v15)
          {
            v16 = [v140 allAccountResults];
            v17 = [v14 ams_accountID];
            v5 = [v16 objectForKeyedSubscript:v17];

            if (v5)
            {
              v18 = [v5 fields];
              if (v18)
              {
                v19 = v18;
                v141 = [v18 iso2CountryCode];
                v20 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
                if (!v20)
                {
                  v20 = +[AMSLogConfig sharedConfig];
                }

                v21 = [v20 OSLogObject];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v131 = v14;
                  v133 = v3;
                  v137 = v4;
                  v22 = AMSLogKey();
                  v23 = MEMORY[0x1E696AEC0];
                  v24 = objc_opt_class();
                  v25 = v24;
                  v130 = v22;
                  v148 = v5;
                  if (v22)
                  {
                    v126 = AMSLogKey();
                    v26 = [v23 stringWithFormat:@"%@: [%@] ", v25, v126];
                    v125 = v26;
                    v27 = v127;
                  }

                  else
                  {
                    v26 = [v23 stringWithFormat:@"%@: ", v24];
                    v27 = v26;
                  }

                  v51 = AMSHashIfNeeded(v131);
                  v52 = AMSHashIfNeeded(v141);
                  *buf = 138543874;
                  v165 = v26;
                  v166 = 2114;
                  v167 = v51;
                  v168 = 2114;
                  v169 = v52;
                  _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@The billing country for %{public}@ is %{public}@.", buf, 0x20u);
                  v127 = v27;
                  if (v130)
                  {

                    v27 = v126;
                  }

                  v14 = v131;
                  v3 = v133;
                  v4 = v137;
                  v5 = v148;
                }

                v35 = v141;
                if (v141)
                {
                  a1 = v136;
                  [*(v136 + 56) setObject:v141 forKeyedSubscript:v13];
                  v6 = v12;
                }

                else
                {
                  v53 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
                  if (!v53)
                  {
                    v53 = +[AMSLogConfig sharedConfig];
                  }

                  v54 = [v53 OSLogObject];
                  v6 = v12;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    v150 = v5;
                    v132 = v14;
                    v55 = v4;
                    v56 = v3;
                    v57 = AMSLogKey();
                    v58 = MEMORY[0x1E696AEC0];
                    v59 = objc_opt_class();
                    v60 = v59;
                    if (v57)
                    {
                      v119 = AMSLogKey();
                      v61 = [v58 stringWithFormat:@"%@: [%@] ", v60, v119];
                      v118 = v61;
                      v62 = v120;
                    }

                    else
                    {
                      v61 = [v58 stringWithFormat:@"%@: ", v59];
                      v62 = v61;
                    }

                    *buf = 138543362;
                    v165 = v61;
                    _os_log_impl(&dword_192869000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@The billing country was null, so we won't update eligibility engine for this account.", buf, 0xCu);
                    v120 = v62;
                    v70 = v62;
                    v3 = v56;
                    if (v57)
                    {

                      v70 = v119;
                    }

                    v4 = v55;
                    v14 = v132;
                    v5 = v150;
                  }

                  AMSError(119, @"Eligibility write failed", @"Exited early because of null country code", 0);
                  v35 = 0;
                  a1 = v136;
                }
              }

              else
              {
                v35 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
                v6 = v12;
                if (!v35)
                {
                  v35 = +[AMSLogConfig sharedConfig];
                }

                v42 = [v35 OSLogObject];
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  v142 = v35;
                  v139 = v4;
                  v43 = v3;
                  v44 = AMSLogKey();
                  v45 = MEMORY[0x1E696AEC0];
                  v46 = objc_opt_class();
                  v47 = v46;
                  if (v44)
                  {
                    v122 = AMSLogKey();
                    v48 = [v45 stringWithFormat:@"%@: [%@] ", v47, v122];
                    v121 = v48;
                  }

                  else
                  {
                    v48 = [v45 stringWithFormat:@"%@: ", v46];
                    v43 = v48;
                  }

                  v66 = AMSHashIfNeeded(v14);
                  v151 = v5;
                  v67 = [v5 error];
                  v68 = AMSLogableError(v67);
                  *buf = 138543874;
                  v165 = v48;
                  v166 = 2114;
                  v167 = v66;
                  v168 = 2114;
                  v169 = v68;
                  _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve data for account %{public}@. error = %{public}@", buf, 0x20u);

                  v69 = v43;
                  v3 = v43;
                  if (v44)
                  {

                    v69 = v122;
                  }

                  a1 = v136;
                  v4 = v139;
                  v5 = v151;
                  v35 = v142;
                }

                v19 = 0;
              }
            }

            else
            {
              v19 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
              if (!v19)
              {
                v19 = +[AMSLogConfig sharedConfig];
              }

              v35 = [v19 OSLogObject];
              v6 = v12;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = v35;
                v138 = v4;
                v134 = v3;
                v37 = AMSLogKey();
                v38 = MEMORY[0x1E696AEC0];
                v39 = objc_opt_class();
                v40 = v39;
                if (v37)
                {
                  v124 = AMSLogKey();
                  v41 = [v38 stringWithFormat:@"%@: [%@] ", v40, v124];
                  v123 = v41;
                }

                else
                {
                  v41 = [v38 stringWithFormat:@"%@: ", v39];
                  v6 = v41;
                }

                v63 = AMSHashIfNeeded(v14);
                v64 = AMSLogableError(0);
                *buf = 138543874;
                v165 = v41;
                v166 = 2114;
                v167 = v63;
                v168 = 2114;
                v169 = v64;
                _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@No server data found for account %{public}@. error = %{public}@", buf, 0x20u);
                v65 = v6;
                if (v37)
                {

                  v65 = v124;
                }

                v3 = v134;
                v4 = v138;
                v5 = 0;
                v35 = v36;
              }
            }
          }

          else
          {
            v5 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
            v6 = v12;
            if (!v5)
            {
              v5 = +[AMSLogConfig sharedConfig];
            }

            v19 = [v5 OSLogObject];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v149 = v5;
              v28 = v4;
              v29 = v3;
              v30 = AMSLogKey();
              v31 = MEMORY[0x1E696AEC0];
              v32 = objc_opt_class();
              v33 = v32;
              if (v30)
              {
                v129 = AMSLogKey();
                v34 = [v31 stringWithFormat:@"%@: [%@] ", v33, v129];
                v128 = v34;
              }

              else
              {
                v34 = [v31 stringWithFormat:@"%@: ", v32];
                v28 = v34;
              }

              v49 = AMSHashIfNeeded(v14);
              *buf = 138543618;
              v165 = v34;
              v166 = 2114;
              v167 = v49;
              _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@Skipping regulatory eligibility for account %{public}@; account does not have an AMS account ID.", buf, 0x16u);
              v50 = v28;
              v4 = v28;
              if (v30)
              {

                v50 = v129;
              }

              v3 = v29;
              v5 = v149;
            }
          }
        }

        v146 = [obj countByEnumeratingWithState:&v159 objects:v170 count:16];
      }

      while (v146);
    }

    v71 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v71)
    {
      v71 = +[AMSLogConfig sharedConfig];
    }

    v72 = [v71 OSLogObject];
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v73 = AMSLogKey();
      v74 = MEMORY[0x1E696AEC0];
      v75 = objc_opt_class();
      v76 = v75;
      if (v73)
      {
        v5 = AMSLogKey();
        [v74 stringWithFormat:@"%@: [%@] ", v76, v5];
      }

      else
      {
        [v74 stringWithFormat:@"%@: ", v75];
      }
      v77 = ;
      v89 = *(v136 + 56);
      *buf = 138543618;
      v165 = v77;
      v166 = 2114;
      v167 = v89;
      _os_log_impl(&dword_192869000, v72, OS_LOG_TYPE_DEBUG, "%{public}@Billing countries: %{public}@", buf, 0x16u);
      if (v73)
      {

        v77 = v5;
      }

      a1 = v136;
    }

    if ([*(a1 + 56) count])
    {
      v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v90 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v91 = objc_opt_class();
      v92 = *(a1 + 56);
      v158 = 0;
      v93 = [v91 setBillingCountries:v92 withStatus:0 error:&v158];
      v94 = v158;
      v95 = v94;
      if (v93)
      {
        v143 = v94;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v147 = *(a1 + 56);
        v152 = [v147 countByEnumeratingWithState:&v154 objects:v163 count:16];
        if (v152)
        {
          v96 = @"3PRegulatoryOverride";
          v97 = *v155;
          v145 = *v155;
          do
          {
            for (j = 0; j != v152; ++j)
            {
              if (*v155 != v97)
              {
                objc_enumerationMutation(v147);
              }

              v99 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v154 + 1) + 8 * j)];
              v100 = [v99 accountPropertyForKey:v96];
              v101 = [v99 identifier];
              if (v100)
              {
                v102 = *(a1 + 32);
                v153 = 0;
                [v102 setForcedOverride:v100 error:&v153];
                v103 = v153;
                if (v103)
                {
                  v104 = v103;
                  v105 = v96;
                  v106 = v90;
                  v107 = v88;
                  v108 = *(a1 + 40);
                  v109 = [AMSPromise promiseWithError:v103];
                  v110 = v108;
                  v88 = v107;
                  v90 = v106;
                  v96 = v105;
                  v97 = v145;
                  [v110 addObject:v109];

                  a1 = v136;
                  [v88 addObject:v99];
                  v111 = v90;
                  v112 = @"Failed to set";
                }

                else
                {
                  [v88 addObject:v99];
                  v104 = [v100 stringValue];
                  v111 = v90;
                  v112 = v104;
                }

                [v111 setObject:v112 forKeyedSubscript:v101];
              }

              else
              {
                [v88 addObject:v99];
                [v90 setObject:@"No override" forKeyedSubscript:v101];
              }
            }

            v152 = [v147 countByEnumeratingWithState:&v154 objects:v163 count:16];
          }

          while (v152);
        }

        [*(a1 + 32) updateAMSDefaultsWith:*(a1 + 56) accounts:v90];
        v113 = *(a1 + 40);
        v114 = [objc_opt_class() setRegulatoryPropertyOnAccounts:v88];
        [v113 addObject:v114];
        v95 = v143;
      }

      else
      {
        [*(a1 + 32) clearAMSDefaults];
        v117 = *(a1 + 40);
        v114 = [AMSPromise promiseWithError:v95];
        [v117 addObject:v114];
      }
    }

    else
    {
      v88 = AMSError(119, @"Eligibility write failed", @"No billing countries found associated with accounts", 0);
      v115 = *(a1 + 40);
      v116 = [AMSPromise promiseWithError:v88];
      [v115 addObject:v116];
    }

    v78 = 0;
  }
}

+ (id)fetchRegulatoryiTunesAccounts
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = AMSAccountMediaTypeProduction;
  v5 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:v4];
  v6 = [v5 ams_activeiTunesAccountForMediaType:v4];
  v7 = [v5 ams_activeiCloudAccount];
  if (v7)
  {
    v8 = [v5 ams_iTunesAccountForAccount:v7];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_ICLOUD_ACCOUNT"];
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__AMSRegulatoryEligibilityTask_fetchRegulatoryiTunesAccounts__block_invoke;
  v12[3] = &unk_1E73BBBE8;
  v13 = v3;
  v14 = a1;
  v9 = v3;
  v10 = [v6 continueWithBlock:v12];

  return v10;
}

id __61__AMSRegulatoryEligibilityTask_fetchRegulatoryiTunesAccounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_MUSIC_ACCOUNT"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"OS_ELIGIBILITY_INPUT_COUNTRY_BILLING_KEY_APP_STORE_ACCOUNT"];
  }

  if ([*(a1 + 32) count])
  {
    v7 = [AMSPromise promiseWithResult:*(a1 + 32)];
  }

  else
  {
    v8 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      if (v10)
      {

        v14 = a1;
      }
    }

    v15 = AMSError(107, @"No account", @"No active account(s) available for regulatory eligibility", 0);
    v7 = [AMSPromise promiseWithError:v15];
  }

  return v7;
}

+ (BOOL)setBillingCountries:(id)a3 withStatus:(unint64_t)a4 error:(id *)a5
{
  v53 = a5;
  v54 = a1;
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v51[2] = a4;
    v9 = [v7 count];
    v51[1] = v51;
    v10 = (v51 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    if ((8 * v9) >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = 8 * v9;
    }

    bzero(v51 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v51[0] = [v8 count];
    v12 = 8 * v51[0];
    v13 = v51 - ((8 * v51[0] + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, 8 * v51[0]);
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v52 = v8;
    v5 = v8;
    v14 = [v5 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = [v5 objectForKeyedSubscript:v19];
          v10[v16] = [v19 UTF8String];
          v21 = xpc_string_create([v20 UTF8String]);
          v22 = *&v13[8 * v16];
          *&v13[8 * v16] = v21;

          ++v16;
        }

        v15 = [v5 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v15);
    }

    v23 = xpc_dictionary_create(v10, v13, [v5 count]);
    if (v51[0])
    {
      do
      {

        v12 -= 8;
      }

      while (v12);
    }

    v8 = v52;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0x1E73B0000uLL;
  v25 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = AMSLogKey();
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_opt_class();
    v30 = v29;
    if (v27)
    {
      v5 = AMSLogKey();
      [v28 stringWithFormat:@"%@: [%@] ", v30, v5];
    }

    else
    {
      [v28 stringWithFormat:@"%@: ", v29];
    }
    v31 = ;
    v32 = AMSHashIfNeeded(v23);
    *buf = 138543618;
    v60 = v31;
    v61 = 2114;
    v62 = v32;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Reporting billing country %{public}@ to policy engine...", buf, 0x16u);
    if (v27)
    {

      v31 = v5;
    }
  }

  v33 = os_eligibility_set_input();
  v34 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  v35 = v34;
  if (v33)
  {
    if (!v34)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = AMSLogKey();
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = v39;
      if (v37)
      {
        v24 = AMSLogKey();
        [v38 stringWithFormat:@"%@: [%@] ", v40, v24];
      }

      else
      {
        [v38 stringWithFormat:@"%@: ", v39];
      }
      v41 = ;
      *buf = 138543618;
      v60 = v41;
      v61 = 1024;
      LODWORD(v62) = v33;
      _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to set billing country; status code %i", buf, 0x12u);
      if (v37)
      {

        v41 = v24;
      }
    }

    v48 = v53;
    if (v53)
    {
      *v48 = AMSError(119, @"Eligibility write failed", @"Failed to set account eligibility", 0);
    }
  }

  else
  {
    if (!v34)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v42 = [v35 OSLogObject];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = AMSLogKey();
      v44 = MEMORY[0x1E696AEC0];
      v45 = objc_opt_class();
      v46 = v45;
      if (v43)
      {
        v24 = AMSLogKey();
        [v44 stringWithFormat:@"%@: [%@] ", v46, v24];
      }

      else
      {
        [v44 stringWithFormat:@"%@: ", v45];
      }
      v47 = ;
      v49 = AMSHashIfNeeded(v23);
      *buf = 138543618;
      v60 = v47;
      v61 = 2114;
      v62 = v49;
      _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully set billing country to %{public}@.", buf, 0x16u);
      if (v43)
      {

        v47 = v24;
      }
    }
  }

  return v33 == 0;
}

- (NSNumber)override
{
  os_unfair_lock_lock_with_options();
  v3 = self->_override;
  os_unfair_lock_unlock(&self->_overrideLock);

  return v3;
}

- (void)setOverride:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  override = self->_override;
  self->_override = v4;

  os_unfair_lock_unlock(&self->_overrideLock);
}

- (BOOL)setForcedOverride:(id)a3 error:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    os_unfair_lock_lock(&self->_overrideLock);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__AMSRegulatoryEligibilityTask_setForcedOverride_error___block_invoke;
    aBlock[3] = &unk_1E73B3680;
    aBlock[4] = self;
    v66 = _Block_copy(aBlock);
    if ([(NSNumber *)self->_override isEqualToNumber:v9])
    {
      v10 = +[AMSLogConfig sharedAccountsConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        if (v12)
        {
          v14 = objc_opt_class();
          self = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v14, self];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v15 = ;
        *buf = 138543362;
        v69 = v15;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@The override on the account has not changed, so we will not set it", buf, 0xCu);
        if (v12)
        {

          v15 = self;
        }
      }

      goto LABEL_36;
    }

    if ([v9 intValue])
    {
      v23 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v4 = AMSLogKey();
        v25 = MEMORY[0x1E696AEC0];
        if (v4)
        {
          v26 = objc_opt_class();
          v5 = AMSLogKey();
          [v25 stringWithFormat:@"%@: [%@] ", v26, v5];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v27 = ;
        *buf = 138543618;
        v69 = v27;
        v70 = 2112;
        v71 = v9;
        _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Setting forced override eligibility to %@.", buf, 0x16u);
        if (v4)
        {

          v27 = v5;
        }
      }

      if ([v9 intValue] != 1 && objc_msgSend(v9, "intValue") != 2)
      {
        v47 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
        if (!v47)
        {
          v47 = +[AMSLogConfig sharedConfig];
        }

        v48 = [v47 OSLogObject];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = AMSLogKey();
          v50 = MEMORY[0x1E696AEC0];
          if (v49)
          {
            v51 = objc_opt_class();
            self = AMSLogKey();
            [v50 stringWithFormat:@"%@: [%@] ", v51, self];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v52 = ;
          *buf = 138543362;
          v69 = v52;
          _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to set eligibility override because AK3PRegulatoryOverride was none of 0, 1, or 2", buf, 0xCu);
          if (v49)
          {

            v52 = self;
          }
        }

        if (a4)
        {
          v64 = AMSError(119, @"Force override failed", @"Failed to set eligibility override because AK3PRegulatoryOverride was none of 0, 1, or 2", 0);
          goto LABEL_97;
        }

        goto LABEL_98;
      }

      v34 = os_eligibility_force_domain_set_answers();
      if (v34)
      {
        v35 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
        if (!v35)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v35 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = AMSLogKey();
          v38 = MEMORY[0x1E696AEC0];
          if (v37)
          {
            v39 = objc_opt_class();
            self = AMSLogKey();
            [v38 stringWithFormat:@"%@: [%@] ", v39, self];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v40 = ;
          *buf = 138543618;
          v69 = v40;
          v70 = 1024;
          LODWORD(v71) = v34;
          _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to set forced override; status code %i", buf, 0x12u);
          if (v37)
          {

            v40 = self;
          }
        }

        if (a4)
        {
          v64 = AMSError(119, @"Force eligibility failed", @"Failed to set the eligibility override", 0);
LABEL_97:
          v33 = 0;
          *a4 = v64;
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      v41 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = AMSLogKey();
        v44 = MEMORY[0x1E696AEC0];
        if (v43)
        {
          v45 = objc_opt_class();
          v4 = AMSLogKey();
          [v44 stringWithFormat:@"%@: [%@] ", v45, v4];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v46 = ;
        *buf = 138543362;
        v69 = v46;
        _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully set forced override", buf, 0xCu);
        if (v43)
        {

          v46 = v4;
        }
      }
    }

    else
    {
      v28 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
      if (!v28)
      {
        v28 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v28 OSLogObject];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v4 = AMSLogKey();
        v30 = MEMORY[0x1E696AEC0];
        if (v4)
        {
          v31 = objc_opt_class();
          v5 = AMSLogKey();
          [v30 stringWithFormat:@"%@: [%@] ", v31, v5];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v32 = ;
        *buf = 138543362;
        v69 = v32;
        _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Override value of 0 indicates it has been unset; resetting domain answer", buf, 0xCu);
        if (v4)
        {

          v32 = v5;
        }
      }

      v53 = os_eligibility_reset_all_domains();
      if (v53)
      {
        v54 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
        if (!v54)
        {
          v54 = +[AMSLogConfig sharedConfig];
        }

        v55 = [v54 OSLogObject];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = AMSLogKey();
          v57 = MEMORY[0x1E696AEC0];
          if (v56)
          {
            v58 = objc_opt_class();
            self = AMSLogKey();
            [v57 stringWithFormat:@"%@: [%@] ", v58, self];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
          }
          v59 = ;
          *buf = 138543618;
          v69 = v59;
          v70 = 1024;
          LODWORD(v71) = v53;
          _os_log_impl(&dword_192869000, v55, OS_LOG_TYPE_ERROR, "%{public}@Failed to reset domain answer; status code %i", buf, 0x12u);
          if (v56)
          {

            v59 = self;
          }
        }

        if (a4)
        {
          v64 = AMSError(119, @"Reset domain failed", @"Failed to reset the domain answer", 0);
          goto LABEL_97;
        }

LABEL_98:
        v33 = 0;
        goto LABEL_99;
      }

      v41 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v60 = AMSLogKey();
        v61 = MEMORY[0x1E696AEC0];
        if (v60)
        {
          v62 = objc_opt_class();
          v4 = AMSLogKey();
          [v61 stringWithFormat:@"%@: [%@] ", v62, v4];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v63 = ;
        *buf = 138543362;
        v69 = v63;
        _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully reset the domain answer", buf, 0xCu);
        if (v60)
        {

          v63 = v4;
        }
      }
    }

    objc_storeStrong(&self->_override, a3);
LABEL_36:
    v33 = 1;
LABEL_99:
    v66[2]();

    goto LABEL_100;
  }

  v16 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = AMSLogKey();
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = v20;
    if (v18)
    {
      self = AMSLogKey();
      [v19 stringWithFormat:@"%@: [%@] ", v21, self];
    }

    else
    {
      [v19 stringWithFormat:@"%@: ", v20];
    }
    v22 = ;
    *buf = 138543362;
    v69 = v22;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to set eligibility override because AK3PRegulatoryOverride was not a number", buf, 0xCu);
    if (v18)
    {

      v22 = self;
    }
  }

  if (a4)
  {
    AMSError(119, @"Force override failed", @"Failed to set eligibility override because AK3PRegulatoryOverride was not a number", 0);
    *a4 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_100:

  return v33;
}

+ (id)setRegulatoryPropertyOnAccounts:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v58 = AMSAccountMediaTypeProduction;
  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:?];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = +[AMSDefaults regulatoryEligibilityAccounts];
  v59 = v3;
  v64 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  v7 = [v64 valueForKey:@"identifier"];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
  v70 = v4;
  v71 = v5;
  v60 = v8;
  v61 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v77;
    v65 = 138543618;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v77 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v76 + 1) + 8 * i);
        if (([v7 containsObject:v13] & 1) == 0)
        {
          v14 = [v4 accountWithIdentifier:v13];
          v15 = v14;
          if (v14 && [v14 ams_isRegulatoryAccount])
          {
            v16 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
            if (!v16)
            {
              v16 = +[AMSLogConfig sharedConfig];
            }

            v17 = [v16 OSLogObject];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = AMSLogKey();
              v19 = MEMORY[0x1E696AEC0];
              v20 = objc_opt_class();
              v21 = v20;
              if (v18)
              {
                v67 = AMSLogKey();
                v22 = [v19 stringWithFormat:@"%@: [%@] ", v21, v67];
                v66 = v22;
                v23 = v68;
              }

              else
              {
                v22 = [v19 stringWithFormat:@"%@: ", v20];
                v23 = v22;
              }

              v24 = AMSHashIfNeeded(v15);
              *buf = 138543618;
              v82 = v22;
              v83 = 2114;
              v84 = v24;
              _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Unsetting %{public}@ as regulatory account.", buf, 0x16u);
              v68 = v23;
              if (v18)
              {

                v23 = v67;
              }

              v4 = v70;
              v5 = v71;
              v8 = v60;
              v7 = v61;
            }

            [v15 ams_setRegulatoryAccount:0];
            v25 = [v4 ams_saveAccount:v15];
            [v5 addObject:v25];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v10);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v26 = v64;
  v27 = [v26 countByEnumeratingWithState:&v72 objects:v80 count:16];
  v28 = 0x1E73B0000uLL;
  if (v27)
  {
    v29 = v27;
    v30 = *v73;
    v69 = v26;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v73 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v72 + 1) + 8 * j);
        v33 = [v32 ams_isRegulatoryAccount];
        v34 = [*(v28 + 3552) sharedRegulatoryEligibilityConfig];
        v35 = v34;
        if (v33)
        {
          if (!v34)
          {
            v35 = [*(v28 + 3552) sharedConfig];
          }

          v36 = [v35 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = AMSLogKey();
            v38 = MEMORY[0x1E696AEC0];
            v39 = objc_opt_class();
            v40 = v39;
            if (v37)
            {
              v64 = AMSLogKey();
              v41 = [v38 stringWithFormat:@"%@: [%@] ", v40, v64];
              v62 = v41;
              v42 = v66;
            }

            else
            {
              v41 = [v38 stringWithFormat:@"%@: ", v39];
              v42 = v41;
            }

            v49 = AMSHashIfNeeded(v32);
            *buf = 138543618;
            v82 = v41;
            v83 = 2114;
            v84 = v49;
            _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ is already saved as regulatory account.", buf, 0x16u);
            v66 = v42;
            v50 = v42;
            v26 = v69;
            if (v37)
            {

              v50 = v64;
            }

            v28 = 0x1E73B0000;
          }
        }

        else
        {
          if (!v34)
          {
            v35 = [*(v28 + 3552) sharedConfig];
          }

          v43 = [v35 OSLogObject];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = AMSLogKey();
            v45 = MEMORY[0x1E696AEC0];
            v46 = objc_opt_class();
            v47 = v46;
            if (v44)
            {
              v65 = AMSLogKey();
              v48 = [v45 stringWithFormat:@"%@: [%@] ", v47, v65];
              v63 = v48;
            }

            else
            {
              v48 = [v45 stringWithFormat:@"%@: ", v46];
              v4 = v48;
            }

            v51 = AMSHashIfNeeded(v32);
            *buf = 138543618;
            v82 = v48;
            v83 = 2114;
            v84 = v51;
            _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Saving %{public}@ as regulatory account.", buf, 0x16u);
            v52 = v4;
            if (v44)
            {

              v52 = v65;
            }

            v28 = 0x1E73B0000;
            v26 = v69;
          }

          [v32 ams_setRegulatoryAccount:1];
          v35 = [v70 ams_saveAccount:v32];
          [v71 addObject:v35];
        }
      }

      v29 = [v26 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v29);
  }

  if (![v71 count])
  {
    v53 = +[AMSBinaryPromise promiseWithSuccess];
    [v71 addObject:v53];
  }

  v54 = [v61 allObjects];
  [AMSDefaults setRegulatoryEligibilityAccounts:0];
  [AMSDefaults setRegulatoryEligibilityAccounts:v54];
  v55 = [AMSBinaryPromise promiseWithAny:v71];
  v56 = [v55 promiseAdapter];

  return v56;
}

- (void)handleCachedDataUpdate
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedRegulatoryEligibilityConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v13 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting eligibility flow from cached data update.", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = [(AMSRegulatoryEligibilityTask *)self update];
}

- (void)updateAMSDefaultsWith:(id)a3 accounts:(id)a4
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && !+[AMSUnitTests isRunningUnitTests])
  {
    [(AMSRegulatoryEligibilityTask *)self clearAMSDefaults];
    v9[0] = @"accounts-and-overrides";
    v9[1] = @"billing-countries";
    v10[0] = v7;
    v10[1] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    [AMSDefaults setRegulatoryEligibilityAttributes:v8];
  }
}

@end