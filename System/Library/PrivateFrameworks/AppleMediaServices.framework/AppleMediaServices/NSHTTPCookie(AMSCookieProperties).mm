@interface NSHTTPCookie(AMSCookieProperties)
+ (id)ams_cookiesByMergingProperties:()AMSCookieProperties intoProperties:;
+ (uint64_t)ams_propertyXPCClasses;
@end

@implementation NSHTTPCookie(AMSCookieProperties)

+ (uint64_t)ams_propertyXPCClasses
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)ams_cookiesByMergingProperties:()AMSCookieProperties intoProperties:
{
  v79 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v52 = v7;
  v9 = [a1 ams_cookiesForProperties:v7];
  v51 = v8;
  v50 = [a1 ams_cookiesForProperties:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v50];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v9;
  v64 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v64)
  {
    v63 = *v69;
    v59 = v10;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        v66 = v4;
        if (*v69 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v68 + 1) + 8 * i);
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __83__NSHTTPCookie_AMSCookieProperties__ams_cookiesByMergingProperties_intoProperties___block_invoke;
        v67[3] = &unk_1E73BE310;
        v67[4] = v12;
        v13 = [v10 indexOfObjectPassingTest:v67];
        v14 = v65;
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          v16 = [v15 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = AMSLogKey();
            v18 = MEMORY[0x1E696AEC0];
            v19 = objc_opt_class();
            v20 = v19;
            if (v17)
            {
              v61 = AMSLogKey();
              v21 = [v18 stringWithFormat:@"%@: [%@] ", v20, v61];
              v60 = v21;
            }

            else
            {
              v21 = [v18 stringWithFormat:@"%@: ", v19];
              v14 = v21;
            }

            v40 = AMSHashIfNeeded(v12);
            *buf = 138543618;
            v73 = v21;
            v74 = 2114;
            v75 = v40;
            _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Added cookie %{public}@ from source into existing.", buf, 0x16u);
            v41 = v14;
            if (v17)
            {

              v41 = v61;
            }

            v65 = v14;
          }

          [v10 addObject:v12];
          v4 = v66;
        }

        else
        {
          v22 = v13;
          v23 = [v10 objectAtIndexedSubscript:v13];
          v24 = [v12 ams_shouldReplaceCookie:v23];
          v25 = +[AMSLogConfig sharedAccountsCookiesConfig];
          v26 = v25;
          if (v24)
          {
            if (!v25)
            {
              v26 = +[AMSLogConfig sharedConfig];
            }

            v27 = [v26 OSLogObject];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = AMSLogKey();
              v29 = MEMORY[0x1E696AEC0];
              v30 = objc_opt_class();
              v31 = v30;
              v58 = v28;
              if (v28)
              {
                v55 = AMSLogKey();
                v32 = [v29 stringWithFormat:@"%@: [%@] ", v31, v55];
                v53 = v32;
                v33 = v57;
              }

              else
              {
                v32 = [v29 stringWithFormat:@"%@: ", v30];
                v33 = v32;
              }

              v42 = AMSHashIfNeeded(v23);
              v43 = AMSHashIfNeeded(v12);
              *buf = 138543874;
              v73 = v32;
              v74 = 2114;
              v75 = v42;
              v76 = 2114;
              v77 = v43;
              _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Replacing cookie %{public}@ with cookie %{public}@.", buf, 0x20u);
              v57 = v33;
              v44 = v33;
              if (v58)
              {

                v44 = v55;
              }

              v10 = v59;
            }

            [v10 replaceObjectAtIndex:v22 withObject:v12];
            v4 = v66;
          }

          else
          {
            if (!v25)
            {
              v26 = +[AMSLogConfig sharedConfig];
            }

            v34 = [v26 OSLogObject];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = AMSLogKey();
              v36 = MEMORY[0x1E696AEC0];
              v37 = objc_opt_class();
              v38 = v37;
              if (v35)
              {
                v56 = AMSLogKey();
                v39 = [v36 stringWithFormat:@"%@: [%@] ", v38, v56];
                v54 = v39;
                v4 = v66;
              }

              else
              {
                v39 = [v36 stringWithFormat:@"%@: ", v37];
                v4 = v39;
              }

              v45 = AMSHashIfNeeded(v23);
              v46 = AMSHashIfNeeded(v12);
              *buf = 138543874;
              v73 = v39;
              v74 = 2114;
              v75 = v45;
              v76 = 2114;
              v77 = v46;
              _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Found equivalent cookie %{public}@, but the newer cookie version already exists. Discard this old cookie %{public}@.", buf, 0x20u);
              v47 = v4;
              if (v35)
              {

                v47 = v56;
              }

              v10 = v59;
            }

            else
            {
              v4 = v66;
            }
          }
        }
      }

      v64 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v64);
  }

  v48 = [v10 copy];

  return v48;
}

@end