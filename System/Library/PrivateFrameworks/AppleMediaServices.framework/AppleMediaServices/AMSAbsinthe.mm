@interface AMSAbsinthe
+ (AMSBagKeySet)bagKeySet;
+ (id)_dataToSignFromRequest:(id)request bagDefinition:(id)definition;
+ (id)_signingDataFromRequest:(id)request buyParams:(id)params definitions:(id)definitions;
+ (id)createBagForSubProfile;
+ (id)handleResponse:(id)response bag:(id)bag;
+ (id)headersForRequest:(id)request buyParams:(id)params bag:(id)bag;
@end

@implementation AMSAbsinthe

+ (id)headersForRequest:(id)request buyParams:(id)params bag:(id)bag
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paramsCopy = params;
  bagCopy = bag;
  v11 = AMSSetLogKeyIfNeeded();
  if (bagCopy)
  {
    v12 = [bagCopy arrayForKey:@"absinthe-requests"];
    valuePromise = [v12 valuePromise];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __47__AMSAbsinthe_headersForRequest_buyParams_bag___block_invoke;
    v22[3] = &unk_1E73B3340;
    v23 = v11;
    selfCopy = self;
    v24 = requestCopy;
    v25 = paramsCopy;
    v26 = bagCopy;
    v14 = [valuePromise continueWithBlock:v22];
  }

  else
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      if (v11)
      {
        [v17 stringWithFormat:@"%@: [%@] ", v18, v11];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18, v21];
      }
      v19 = ;
      *buf = 138543362;
      v29 = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@No bag provided. Defaulting to skipping Absinthe signing.", buf, 0xCu);
    }

    v14 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  return v14;
}

id __47__AMSAbsinthe_headersForRequest_buyParams_bag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      if (v9)
      {
        [v10 stringWithFormat:@"%@: [%@] ", v11, *(a1 + 32)];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11, v22];
      }
      v12 = ;
      v13 = AMSLogableError(v6);
      *buf = 138543618;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to load Absinthe requests from bag. Will continue without adding any signing headers. error = %{public}@", buf, 0x16u);
    }

    v14 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  v15 = [*(a1 + 64) _signingDataFromRequest:*(a1 + 40) buyParams:*(a1 + 48) definitions:v5];
  if (v15)
  {
    v16 = +[AMSAbsintheSession defaultSession];
    v17 = [v16 signData:v15 bag:*(a1 + 56)];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __47__AMSAbsinthe_headersForRequest_buyParams_bag___block_invoke_43;
    v23[3] = &unk_1E73B3318;
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    v24 = v18;
    v26 = v19;
    v25 = *(a1 + 40);
    v20 = [v17 continueWithBlock:v23];
  }

  else
  {
    v20 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  return v20;
}

id __47__AMSAbsinthe_headersForRequest_buyParams_bag___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = [a3 ams_sanitizedForSecureCoding];
    v7 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      if (v10)
      {
        [v11 stringWithFormat:@"%@: [%@] ", v12, *(a1 + 32)];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12, v19];
      }
      v13 = ;
      v14 = AMSLogableURLRequest(*(a1 + 40));
      *buf = 138543618;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Headers generated for request: %{public}@", buf, 0x16u);
    }

    v20[0] = @"X-Apple-AbsintheSignature";
    v15 = [v5 signature];
    v21[0] = v15;
    v20[1] = @"X-Apple-AbsintheSrv";
    v16 = [v5 servKey];
    v21[1] = v16;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v7 = [AMSPromise promiseWithResult:v6];
  }

  v17 = v7;

  return v17;
}

+ (id)handleResponse:(id)response bag:(id)bag
{
  v19 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = responseCopy;

    v7 = 0;
    if (v6 && bag)
    {
      v8 = AMSSetLogKeyIfNeeded();
      v9 = [v6 ams_valueForHTTPHeaderField:@"X-Apple-AbsintheAction"];
      if (![v9 ams_caseInsensitiveEquals:@"RP"])
      {
        goto LABEL_12;
      }

      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling reprovision action", &v15, 0x16u);
      }

      v12 = +[AMSAbsintheSession defaultSession];
      clearSession = [v12 clearSession];

      if (clearSession)
      {
        v7 = +[AMSURLAction retryAction];
        [v7 setReason:@"absinthe"];
        [v7 setRetryIdentifier:0x1F071C5F8];
      }

      else
      {
LABEL_12:
        v7 = 0;
      }
    }
  }

  else
  {

    v6 = 0;
    v7 = 0;
  }

  return v7;
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (id)_dataToSignFromRequest:(id)request bagDefinition:(id)definition
{
  v64 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  definitionCopy = definition;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [definitionCopy objectForKeyedSubscript:@"body"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 BOOLValue])
  {
    hTTPBody = [requestCopy HTTPBody];
    if ([hTTPBody length])
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:hTTPBody encoding:4];
      if (v10)
      {
        [v7 appendString:v10];
      }
    }
  }

  v11 = [definitionCopy objectForKeyedSubscript:@"cookies"];
  objc_opt_class();
  v44 = definitionCopy;
  v45 = requestCopy;
  v46 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;

    if (v12)
    {
      ams_cookies = [requestCopy ams_cookies];
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v12;
      v14 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = v14;
      v16 = *v58;
      while (1)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v57 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;

            if (v19)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }

          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v18];
LABEL_20:
          v20 = [ams_cookies objectForKeyedSubscript:v19];
          if (v20)
          {
            [v7 appendString:v20];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
        if (!v15)
        {
LABEL_24:

          definitionCopy = v44;
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
  }

  obj = 0;
LABEL_27:
  allHTTPHeaderFields = [definitionCopy objectForKeyedSubscript:@"headers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = allHTTPHeaderFields;

    if (v22)
    {
      allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v47 = v22;
      v23 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (!v23)
      {
        goto LABEL_43;
      }

      v24 = v23;
      v25 = *v54;
      while (1)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v47);
          }

          v27 = *(*(&v53 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;

            if (v28)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v27];
LABEL_39:
          v29 = [allHTTPHeaderFields objectForKeyedSubscript:v28];
          if (v29)
          {
            [v7 appendString:v29];
          }
        }

        v24 = [v47 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (!v24)
        {
LABEL_43:

          definitionCopy = v44;
          requestCopy = v45;
          goto LABEL_45;
        }
      }
    }

    v47 = 0;
  }

  else
  {
    v47 = 0;
LABEL_45:
  }

  ams_parameters = [definitionCopy objectForKeyedSubscript:@"params"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = ams_parameters;

    if (v31)
    {
      v32 = [requestCopy URL];
      ams_parameters = [v32 ams_parameters];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (!v34)
      {
        goto LABEL_62;
      }

      v35 = v34;
      v36 = *v50;
      while (1)
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v49 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = v38;

            if (v39)
            {
              goto LABEL_58;
            }
          }

          else
          {
          }

          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v38];
LABEL_58:
          v40 = [ams_parameters objectForKeyedSubscript:v39];
          if (v40)
          {
            [v7 appendString:v40];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (!v35)
        {
LABEL_62:

          definitionCopy = v44;
          requestCopy = v45;
          goto LABEL_64;
        }
      }
    }

    v33 = 0;
  }

  else
  {
    v33 = 0;
LABEL_64:
  }

  if ([v7 length])
  {
    v41 = [v7 cStringUsingEncoding:4];
    v42 = [MEMORY[0x1E695DF88] dataWithLength:32];
    CC_SHA256(v41, [v7 length], objc_msgSend(v42, "mutableBytes"));
    if ([v42 length])
    {
      goto LABEL_69;
    }
  }

  v42 = 0;
LABEL_69:

  return v42;
}

+ (id)_signingDataFromRequest:(id)request buyParams:(id)params definitions:(id)definitions
{
  v91 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  paramsCopy = params;
  definitionsCopy = definitions;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  v13 = 0x1E696A000uLL;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    if (v10)
    {
      [v14 stringWithFormat:@"%@: [%@] ", v15, v10];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15, v66];
    }
    v16 = ;
    v17 = AMSLogableURLRequest(requestCopy);
    *buf = 138543618;
    v88 = v16;
    v89 = 2114;
    v90 = v17;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Determining signing data for request %{public}@", buf, 0x16u);

    v13 = 0x1E696A000uLL;
  }

  selfCopy = self;
  v68 = v10;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v18 = definitionsCopy;
  v19 = [v18 countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (!v19)
  {
    goto LABEL_78;
  }

  v20 = v19;
  v21 = *v82;
  v69 = v18;
  v70 = requestCopy;
  v71 = *v82;
  do
  {
    v22 = 0;
    v72 = v20;
    do
    {
      if (*v82 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v81 + 1) + 8 * v22);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_66;
      }

      v24 = [v23 objectForKeyedSubscript:@"criteria"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (![v25 count])
      {
        goto LABEL_65;
      }

      host = [v25 objectForKeyedSubscript:@"host"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = 0;
        LODWORD(v29) = 1;
LABEL_23:

        goto LABEL_24;
      }

      v27 = host;

      if (v27)
      {
        v28 = [requestCopy URL];
        host = [v28 host];

        if (host)
        {
          LODWORD(v29) = [host hasSuffix:v27];
        }

        else
        {
          LODWORD(v29) = 0;
        }

        goto LABEL_23;
      }

      LODWORD(v29) = 1;
LABEL_24:
      path = [v25 objectForKeyedSubscript:@"path"];
      objc_opt_class();
      v75 = v27;
      if (objc_opt_isKindOfClass())
      {
        v31 = path;

        v76 = v31;
        if (v31)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0;
        }

        if (v32 != 1)
        {
          goto LABEL_33;
        }

        v33 = [requestCopy URL];
        path = [v33 path];

        if (path)
        {
          LODWORD(v29) = [path containsString:v76];
        }

        else
        {
          LODWORD(v29) = 0;
        }
      }

      else
      {
        v76 = 0;
      }

LABEL_33:
      allKeys = [v25 objectForKeyedSubscript:@"buyParams"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = 0;
        goto LABEL_53;
      }

      v35 = allKeys;

      if (v35)
      {
        v36 = v29;
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 1)
      {
        goto LABEL_54;
      }

      if (![v35 count])
      {
        LODWORD(v29) = 1;
        goto LABEL_54;
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      allKeys = [v35 allKeys];
      v37 = [allKeys countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (!v37)
      {
        LODWORD(v29) = 1;
        goto LABEL_53;
      }

      v38 = v37;
      v73 = *v78;
      while (2)
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v78 != v73)
          {
            objc_enumerationMutation(allKeys);
          }

          v40 = *(*(&v77 + 1) + 8 * i);
          v41 = [v35 objectForKeyedSubscript:v40];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v42 = v41;
          }

          else
          {
            v42 = 0;
          }

          v43 = [paramsCopy parameterForKey:v40];
          v29 = v43;
          if (!v43)
          {

LABEL_76:
            v18 = v69;
            requestCopy = v70;
            v13 = 0x1E696A000;
            goto LABEL_53;
          }

          v44 = [v43 rangeOfString:v42 options:1024];

          if (v44 == 0x7FFFFFFFFFFFFFFFLL)
          {
            LODWORD(v29) = 0;
            goto LABEL_76;
          }

          v13 = 0x1E696A000;
        }

        v38 = [allKeys countByEnumeratingWithState:&v77 objects:v85 count:16];
        LODWORD(v29) = 1;
        if (v38)
        {
          continue;
        }

        break;
      }

      v18 = v69;
      requestCopy = v70;
LABEL_53:

LABEL_54:
      v45 = [v25 objectForKeyedSubscript:@"regex"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v46 = 0;
LABEL_63:
        if (v29)
        {
          goto LABEL_83;
        }

        goto LABEL_64;
      }

      v46 = v45;

      if (v46)
      {
        v47 = v29;
      }

      else
      {
        v47 = 0;
      }

      if (v47 != 1)
      {
        goto LABEL_63;
      }

      v48 = [requestCopy URL];
      absoluteString = [v48 absoluteString];

      if (absoluteString)
      {
        v50 = [absoluteString rangeOfString:v46 options:1024];

        v51 = v50 == 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x1E696A000;
        if (!v51)
        {
LABEL_83:
          v58 = [selfCopy _dataToSignFromRequest:requestCopy bagDefinition:v23];

          v55 = v68;
          if (!v58)
          {
            v53 = +[AMSLogConfig sharedConfig];
            if (!v53)
            {
              v53 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [v53 OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v59 = MEMORY[0x1E696AEC0];
              v60 = objc_opt_class();
              if (v68)
              {
                [v59 stringWithFormat:@"%@: [%@] ", v60, v68];
              }

              else
              {
                [v59 stringWithFormat:@"%@: ", v60, v66];
              }
              v61 = ;
              *buf = 138543362;
              v88 = v61;
              v62 = "%{public}@Criteria matches, but no data to sign";
              v63 = oSLogObject2;
              v64 = OS_LOG_TYPE_ERROR;
              goto LABEL_93;
            }

            goto LABEL_94;
          }

          goto LABEL_95;
        }
      }

      else
      {
        v13 = 0x1E696A000;
      }

LABEL_64:

      v21 = v71;
      v20 = v72;
LABEL_65:

LABEL_66:
      ++v22;
    }

    while (v22 != v20);
    v52 = [v18 countByEnumeratingWithState:&v81 objects:v86 count:16];
    v20 = v52;
  }

  while (v52);
LABEL_78:

  v53 = +[AMSLogConfig sharedConfig];
  if (!v53)
  {
    v53 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v53 OSLogObject];
  v55 = v68;
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(v13 + 3776);
    v57 = objc_opt_class();
    if (v68)
    {
      [v56 stringWithFormat:@"%@: [%@] ", v57, v68];
    }

    else
    {
      [v56 stringWithFormat:@"%@: ", v57, v66];
    }
    v61 = ;
    *buf = 138543362;
    v88 = v61;
    v62 = "%{public}@Skipping absinthe";
    v63 = oSLogObject2;
    v64 = OS_LOG_TYPE_DEFAULT;
LABEL_93:
    _os_log_impl(&dword_192869000, v63, v64, v62, buf, 0xCu);
  }

LABEL_94:

  v58 = 0;
LABEL_95:

  return v58;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end