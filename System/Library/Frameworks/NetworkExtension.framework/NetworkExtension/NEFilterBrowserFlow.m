@interface NEFilterBrowserFlow
- (BOOL)createDataReply:(id)a3 controlSocket:(int)a4 direction:(int64_t)a5 verdict:(id)a6 context:(id)a7;
- (BOOL)createDropReply:(void *)a3 verdict:(void *)a4 context:;
- (BOOL)createNewFlowReply:(id)a3 controlSocket:(int)a4 verdict:(id)a5 context:(id)a6;
- (NEFilterBrowserFlow)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFilterBrowserFlow

- (BOOL)createDataReply:(id)a3 controlSocket:(int)a4 direction:(int64_t)a5 verdict:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v15 = [(NEFilterFlow *)self updateCurrentVerdictFromDataVerdict:v12 direction:a5];
  if (self)
  {
    Property = objc_getProperty(self, v14, 112, 1);
  }

  else
  {
    Property = 0;
  }

  if ([Property drop])
  {
    v15 = [(NEFilterBrowserFlow *)self createDropReply:v11 verdict:v12 context:v13];
  }

  else
  {
    v18 = v11;
    if (self)
    {
      v19 = objc_getProperty(self, v17, 112, 1);
      if (a5 == 2)
      {
        xpc_dictionary_set_uint64(v18, "verdict-peek", [v19 inboundPeekOffset]);
        v21 = [objc_getProperty(self v20];
      }

      else
      {
        xpc_dictionary_set_uint64(v18, "verdict-peek", [v19 outboundPeekOffset]);
        v21 = [objc_getProperty(self v22];
      }

      xpc_dictionary_set_uint64(v18, "verdict-pass", v21);
    }
  }

  return v15;
}

- (BOOL)createDropReply:(void *)a3 verdict:(void *)a4 context:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    xpc_dictionary_set_BOOL(v7, "verdict-drop", 1);
    v10 = [v9 _principalObject];
    v11 = [v10 filterConfiguration];
    v12 = [v11 organization];

    if (v12)
    {
      v14 = [v10 filterConfiguration];
      v15 = [v14 organization];
      v16 = [v15 UTF8String];

      if (v16)
      {
        xpc_dictionary_set_string(v7, "organization", v16);
      }
    }

    if (!v8 || (v8[11] & 1) == 0)
    {
      a1 = 1;
LABEL_55:

      goto LABEL_56;
    }

    v17 = objc_getProperty(v8, v13, 16, 1);
    v18 = isa_nsstring(v17);

    if (!v18)
    {
      a1 = 0;
      v33 = "x-apple-content-filter://nefilter-unblock";
LABEL_42:
      v55 = objc_getProperty(v8, v19, 24, 1);
      v56 = isa_nsstring(v55);

      if (v56)
      {
        v57 = [v9 remediationMap];
        v58 = [v57 objectForKeyedSubscript:NEFilterProviderRemediationMapRemediationButtonTexts];

        if (isa_nsdictionary(v58))
        {
          v60 = objc_getProperty(v8, v59, 24, 1);
          v61 = [v58 objectForKeyedSubscript:v60];

          v62 = v61;
          if (isa_nsstring(v62))
          {
            v79 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v63 = [v62 stringByAddingPercentEncodingWithAllowedCharacters:v79];
            v64 = [v63 stringByReplacingOccurrencesOfString:@"%20" withString:@" "];

            v65 = "Request Access";
            if (v64)
            {
              v66 = [v64 UTF8String];
              if (v66)
              {
                v65 = v66;
              }
            }
          }

          else
          {

            v64 = 0;
            v65 = "Request Access";
          }
        }

        else
        {
          v65 = "Request Access";
        }
      }

      else
      {
        v65 = "Request Access";
      }

      xpc_dictionary_set_string(v7, "remediation-url", v33);
      xpc_dictionary_set_string(v7, "remediation-button-text", v65);
      goto LABEL_55;
    }

    v20 = [v9 remediationMap];
    v21 = [v20 objectForKeyedSubscript:NEFilterProviderRemediationMapRemediationURLs];

    if (!isa_nsdictionary(v21))
    {
      a1 = 0;
      v33 = "x-apple-content-filter://nefilter-unblock";
LABEL_41:

      goto LABEL_42;
    }

    v23 = objc_getProperty(v8, v22, 16, 1);
    v24 = [v21 objectForKeyedSubscript:v23];

    v25 = [v10 filterConfiguration];
    v26 = v24;
    v27 = a1;
    v28 = v25;
    v78 = v27;
    if (!isa_nsstring(v26))
    {
      v34 = 0;
LABEL_35:

      v33 = "x-apple-content-filter://nefilter-unblock";
      if (v34)
      {
        v54 = [v34 UTF8String];
        a1 = v54 != 0;
        if (v54)
        {
          v33 = v54;
        }
      }

      else
      {
        a1 = 0;
      }

      goto LABEL_41;
    }

    v76 = v21;
    v29 = [v26 mutableCopy];
    v30 = [v27 URL];
    v70 = v29;
    if (v30)
    {
      v31 = [v27 URL];
      v32 = [v31 absoluteString];
    }

    else
    {
      v32 = &stru_1F3880810;
    }

    v75 = v32;
    v35 = [(__CFString *)v32 mutableCopy];
    v36 = [v27 URL];
    v37 = [v36 scheme];
    [v35 replaceOccurrencesOfString:v37 withString:&stru_1F3880810 options:0 range:{0, objc_msgSend(v35, "length")}];

    [v35 replaceOccurrencesOfString:@"://" withString:&stru_1F3880810 options:0 range:{0, objc_msgSend(v35, "length")}];
    v74 = v35;
    [v70 replaceOccurrencesOfString:@"NE_FLOW_URL" withString:v35 options:0 range:{0, objc_msgSend(v70, "length")}];
    v38 = [v27 URL];
    v39 = [v38 host];
    v77 = v28;
    if (v39)
    {
      v40 = [v27 URL];
      v41 = [v40 host];

      v28 = v77;
    }

    else
    {
      v41 = &stru_1F3880810;
    }

    [v70 replaceOccurrencesOfString:@"NE_FLOW_HOSTNAME" withString:v41 options:0 range:{0, objc_msgSend(v70, "length")}];
    v42 = [v28 organization];
    if (v42)
    {
      v43 = [v28 organization];
    }

    else
    {
      v43 = &stru_1F3880810;
    }

    [v70 replaceOccurrencesOfString:@"NE_ORGANIZATION" withString:v43 options:0 range:{0, objc_msgSend(v70, "length")}];
    v44 = [v28 username];
    v72 = v41;
    v73 = v43;
    if (v44)
    {
      v45 = [v28 username];
    }

    else
    {
      v45 = &stru_1F3880810;
    }

    v71 = v45;
    [v70 replaceOccurrencesOfString:@"NE_USERNAME" withString:v45 options:0 range:{0, objc_msgSend(v70, "length")}];
    v46 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v47 = [v70 stringByAddingPercentEncodingWithAllowedCharacters:v46];

    v48 = [MEMORY[0x1E695DFF8] URLWithString:v47];
    v49 = v48;
    if (v48)
    {
      v50 = [v48 scheme];
      v51 = [v50 lowercaseString];
      if ([v51 isEqualToString:@"http"])
      {

LABEL_30:
        v34 = v47;
LABEL_34:

        v28 = v77;
        v21 = v76;
        goto LABEL_35;
      }

      v68 = [v49 scheme];
      v52 = [v68 lowercaseString];
      v69 = [v52 isEqualToString:@"https"];

      if (v69)
      {
        goto LABEL_30;
      }
    }

    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "URL is not http or https", buf, 2u);
    }

    v34 = 0;
    goto LABEL_34;
  }

LABEL_56:

  return a1;
}

- (BOOL)createNewFlowReply:(id)a3 controlSocket:(int)a4 verdict:(id)a5 context:(id)a6
{
  v9 = a3;
  v10 = a5;
  v12 = a6;
  if (v10 || (+[NEFilterNewFlowVerdict allowVerdict], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (v10[12])
    {
      v13 = objc_getProperty(v10, v11, 32, 1);
      v14 = isa_nsstring(v13);

      if (v14)
      {
        v15 = [v12 URLAppendStringMap];
        v17 = objc_getProperty(v10, v16, 32, 1);
        v18 = [v15 objectForKeyedSubscript:v17];

        if (isa_nsstring(v18))
        {
          v19 = [v18 UTF8String];
          if (v19)
          {
            xpc_dictionary_set_string(v9, "url-append-string", v19);
          }
        }
      }

      xpc_dictionary_set_uint64(v9, "verdict-peek", 0);
      xpc_dictionary_set_uint64(v9, "verdict-pass", 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:
      v20 = 1;
      goto LABEL_21;
    }
  }

  if ([v10 drop])
  {
    v20 = [(NEFilterBrowserFlow *)self createDropReply:v9 verdict:v10 context:v12];
  }

  else
  {
    xpc_dictionary_set_uint64(v9, "verdict-peek", [v10 peekInboundBytes]);
    xpc_dictionary_set_uint64(v9, "verdict-pass", [v10 filterInbound] - 1);
    if ([v10 filterOutbound])
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "Filtering outbound data is not currently supported for browser flows.", v25, 2u);
      }
    }

    if (![v10 filterInbound])
    {
      goto LABEL_20;
    }

    v23 = -[NEFilterAbsoluteVerdict initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:]([NEFilterAbsoluteVerdict alloc], "initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:", 0, 0, [v10 peekInboundBytes], -1, 0);
    if (self)
    {
      objc_setProperty_atomic(self, v22, v23, 112);
    }

    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = NEFilterBrowserFlow;
  v4 = [(NEFilterFlow *)&v12 copyWithZone:a3];
  v5 = [(NEFilterBrowserFlow *)self parentURL];
  v6 = v4[21];
  v4[21] = v5;

  v7 = [(NEFilterBrowserFlow *)self request];
  v8 = v4[19];
  v4[19] = v7;

  v9 = [(NEFilterBrowserFlow *)self response];
  v10 = v4[20];
  v4[20] = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NEFilterBrowserFlow;
  v4 = a3;
  [(NEFilterFlow *)&v8 encodeWithCoder:v4];
  v5 = [(NEFilterBrowserFlow *)self parentURL:v8.receiver];
  [v4 encodeObject:v5 forKey:@"ParentURL"];

  v6 = [(NEFilterBrowserFlow *)self request];
  [v4 encodeObject:v6 forKey:@"URLRequest"];

  v7 = [(NEFilterBrowserFlow *)self response];
  [v4 encodeObject:v7 forKey:@"URLResponse"];
}

- (NEFilterBrowserFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEFilterBrowserFlow;
  v5 = [(NEFilterFlow *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ParentURL"];
    parentURL = v5->_parentURL;
    v5->_parentURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLRequest"];
    request = v5->_request;
    v5->_request = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLResponse"];
    response = v5->_response;
    v5->_response = v10;
  }

  return v5;
}

@end