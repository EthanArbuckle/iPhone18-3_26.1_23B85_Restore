@interface NEFilterBrowserFlow
- (BOOL)createDataReply:(id)reply controlSocket:(int)socket direction:(int64_t)direction verdict:(id)verdict context:(id)context;
- (BOOL)createDropReply:(void *)reply verdict:(void *)verdict context:;
- (BOOL)createNewFlowReply:(id)reply controlSocket:(int)socket verdict:(id)verdict context:(id)context;
- (NEFilterBrowserFlow)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterBrowserFlow

- (BOOL)createDataReply:(id)reply controlSocket:(int)socket direction:(int64_t)direction verdict:(id)verdict context:(id)context
{
  replyCopy = reply;
  verdictCopy = verdict;
  contextCopy = context;
  v15 = [(NEFilterFlow *)self updateCurrentVerdictFromDataVerdict:verdictCopy direction:direction];
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
    v15 = [(NEFilterBrowserFlow *)self createDropReply:replyCopy verdict:verdictCopy context:contextCopy];
  }

  else
  {
    v18 = replyCopy;
    if (self)
    {
      v19 = objc_getProperty(self, v17, 112, 1);
      if (direction == 2)
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

- (BOOL)createDropReply:(void *)reply verdict:(void *)verdict context:
{
  v7 = a2;
  replyCopy = reply;
  verdictCopy = verdict;
  if (self)
  {
    xpc_dictionary_set_BOOL(v7, "verdict-drop", 1);
    _principalObject = [verdictCopy _principalObject];
    filterConfiguration = [_principalObject filterConfiguration];
    organization = [filterConfiguration organization];

    if (organization)
    {
      filterConfiguration2 = [_principalObject filterConfiguration];
      organization2 = [filterConfiguration2 organization];
      uTF8String = [organization2 UTF8String];

      if (uTF8String)
      {
        xpc_dictionary_set_string(v7, "organization", uTF8String);
      }
    }

    if (!replyCopy || (replyCopy[11] & 1) == 0)
    {
      self = 1;
LABEL_55:

      goto LABEL_56;
    }

    v17 = objc_getProperty(replyCopy, v13, 16, 1);
    v18 = isa_nsstring(v17);

    if (!v18)
    {
      self = 0;
      v33 = "x-apple-content-filter://nefilter-unblock";
LABEL_42:
      v55 = objc_getProperty(replyCopy, v19, 24, 1);
      v56 = isa_nsstring(v55);

      if (v56)
      {
        remediationMap = [verdictCopy remediationMap];
        v58 = [remediationMap objectForKeyedSubscript:NEFilterProviderRemediationMapRemediationButtonTexts];

        if (isa_nsdictionary(v58))
        {
          v60 = objc_getProperty(replyCopy, v59, 24, 1);
          v61 = [v58 objectForKeyedSubscript:v60];

          v62 = v61;
          if (isa_nsstring(v62))
          {
            alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v63 = [v62 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];
            v64 = [v63 stringByReplacingOccurrencesOfString:@"%20" withString:@" "];

            v65 = "Request Access";
            if (v64)
            {
              uTF8String2 = [v64 UTF8String];
              if (uTF8String2)
              {
                v65 = uTF8String2;
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

    remediationMap2 = [verdictCopy remediationMap];
    v21 = [remediationMap2 objectForKeyedSubscript:NEFilterProviderRemediationMapRemediationURLs];

    if (!isa_nsdictionary(v21))
    {
      self = 0;
      v33 = "x-apple-content-filter://nefilter-unblock";
LABEL_41:

      goto LABEL_42;
    }

    v23 = objc_getProperty(replyCopy, v22, 16, 1);
    v24 = [v21 objectForKeyedSubscript:v23];

    filterConfiguration3 = [_principalObject filterConfiguration];
    v26 = v24;
    selfCopy = self;
    v28 = filterConfiguration3;
    v78 = selfCopy;
    if (!isa_nsstring(v26))
    {
      v34 = 0;
LABEL_35:

      v33 = "x-apple-content-filter://nefilter-unblock";
      if (v34)
      {
        uTF8String3 = [v34 UTF8String];
        self = uTF8String3 != 0;
        if (uTF8String3)
        {
          v33 = uTF8String3;
        }
      }

      else
      {
        self = 0;
      }

      goto LABEL_41;
    }

    v76 = v21;
    v29 = [v26 mutableCopy];
    v30 = [selfCopy URL];
    v70 = v29;
    if (v30)
    {
      v31 = [selfCopy URL];
      absoluteString = [v31 absoluteString];
    }

    else
    {
      absoluteString = &stru_1F3880810;
    }

    v75 = absoluteString;
    v35 = [(__CFString *)absoluteString mutableCopy];
    v36 = [selfCopy URL];
    scheme = [v36 scheme];
    [v35 replaceOccurrencesOfString:scheme withString:&stru_1F3880810 options:0 range:{0, objc_msgSend(v35, "length")}];

    [v35 replaceOccurrencesOfString:@"://" withString:&stru_1F3880810 options:0 range:{0, objc_msgSend(v35, "length")}];
    v74 = v35;
    [v70 replaceOccurrencesOfString:@"NE_FLOW_URL" withString:v35 options:0 range:{0, objc_msgSend(v70, "length")}];
    v38 = [selfCopy URL];
    host = [v38 host];
    v77 = v28;
    if (host)
    {
      v40 = [selfCopy URL];
      host2 = [v40 host];

      v28 = v77;
    }

    else
    {
      host2 = &stru_1F3880810;
    }

    [v70 replaceOccurrencesOfString:@"NE_FLOW_HOSTNAME" withString:host2 options:0 range:{0, objc_msgSend(v70, "length")}];
    organization3 = [v28 organization];
    if (organization3)
    {
      organization4 = [v28 organization];
    }

    else
    {
      organization4 = &stru_1F3880810;
    }

    [v70 replaceOccurrencesOfString:@"NE_ORGANIZATION" withString:organization4 options:0 range:{0, objc_msgSend(v70, "length")}];
    username = [v28 username];
    v72 = host2;
    v73 = organization4;
    if (username)
    {
      username2 = [v28 username];
    }

    else
    {
      username2 = &stru_1F3880810;
    }

    v71 = username2;
    [v70 replaceOccurrencesOfString:@"NE_USERNAME" withString:username2 options:0 range:{0, objc_msgSend(v70, "length")}];
    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v47 = [v70 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

    v48 = [MEMORY[0x1E695DFF8] URLWithString:v47];
    v49 = v48;
    if (v48)
    {
      scheme2 = [v48 scheme];
      lowercaseString = [scheme2 lowercaseString];
      if ([lowercaseString isEqualToString:@"http"])
      {

LABEL_30:
        v34 = v47;
LABEL_34:

        v28 = v77;
        v21 = v76;
        goto LABEL_35;
      }

      scheme3 = [v49 scheme];
      lowercaseString2 = [scheme3 lowercaseString];
      v69 = [lowercaseString2 isEqualToString:@"https"];

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

  return self;
}

- (BOOL)createNewFlowReply:(id)reply controlSocket:(int)socket verdict:(id)verdict context:(id)context
{
  replyCopy = reply;
  verdictCopy = verdict;
  contextCopy = context;
  if (verdictCopy || (+[NEFilterNewFlowVerdict allowVerdict], (verdictCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (verdictCopy[12])
    {
      v13 = objc_getProperty(verdictCopy, v11, 32, 1);
      v14 = isa_nsstring(v13);

      if (v14)
      {
        uRLAppendStringMap = [contextCopy URLAppendStringMap];
        v17 = objc_getProperty(verdictCopy, v16, 32, 1);
        v18 = [uRLAppendStringMap objectForKeyedSubscript:v17];

        if (isa_nsstring(v18))
        {
          uTF8String = [v18 UTF8String];
          if (uTF8String)
          {
            xpc_dictionary_set_string(replyCopy, "url-append-string", uTF8String);
          }
        }
      }

      xpc_dictionary_set_uint64(replyCopy, "verdict-peek", 0);
      xpc_dictionary_set_uint64(replyCopy, "verdict-pass", 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:
      v20 = 1;
      goto LABEL_21;
    }
  }

  if ([verdictCopy drop])
  {
    v20 = [(NEFilterBrowserFlow *)self createDropReply:replyCopy verdict:verdictCopy context:contextCopy];
  }

  else
  {
    xpc_dictionary_set_uint64(replyCopy, "verdict-peek", [verdictCopy peekInboundBytes]);
    xpc_dictionary_set_uint64(replyCopy, "verdict-pass", [verdictCopy filterInbound] - 1);
    if ([verdictCopy filterOutbound])
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "Filtering outbound data is not currently supported for browser flows.", v25, 2u);
      }
    }

    if (![verdictCopy filterInbound])
    {
      goto LABEL_20;
    }

    v23 = -[NEFilterAbsoluteVerdict initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:]([NEFilterAbsoluteVerdict alloc], "initWithDrop:inboundPassOffset:inboundPeekOffset:outboundPassOffset:outboundPeekOffset:", 0, 0, [verdictCopy peekInboundBytes], -1, 0);
    if (self)
    {
      objc_setProperty_atomic(self, v22, v23, 112);
    }

    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NEFilterBrowserFlow;
  v4 = [(NEFilterFlow *)&v12 copyWithZone:zone];
  parentURL = [(NEFilterBrowserFlow *)self parentURL];
  v6 = v4[21];
  v4[21] = parentURL;

  request = [(NEFilterBrowserFlow *)self request];
  v8 = v4[19];
  v4[19] = request;

  response = [(NEFilterBrowserFlow *)self response];
  v10 = v4[20];
  v4[20] = response;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NEFilterBrowserFlow;
  coderCopy = coder;
  [(NEFilterFlow *)&v8 encodeWithCoder:coderCopy];
  v5 = [(NEFilterBrowserFlow *)self parentURL:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"ParentURL"];

  request = [(NEFilterBrowserFlow *)self request];
  [coderCopy encodeObject:request forKey:@"URLRequest"];

  response = [(NEFilterBrowserFlow *)self response];
  [coderCopy encodeObject:response forKey:@"URLResponse"];
}

- (NEFilterBrowserFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEFilterBrowserFlow;
  v5 = [(NEFilterFlow *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ParentURL"];
    parentURL = v5->_parentURL;
    v5->_parentURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLRequest"];
    request = v5->_request;
    v5->_request = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLResponse"];
    response = v5->_response;
    v5->_response = v10;
  }

  return v5;
}

@end