@interface APSEnvironment
+ (void)_loadCachedProperties;
+ (void)_saveCachedProperties;
+ (void)initialize;
- (unint64_t)priority;
- (void)setLargeMessageSize:(unint64_t)a3;
- (void)setMessageSize:(unint64_t)a3;
@end

@implementation APSEnvironment

+ (void)initialize
{
  v2 = APSConnectionServer;
  v26 = objc_alloc_init(APSEnvironment);
  v3 = APSEnvironmentProduction;
  [(APSEnvironment *)v26 setName:APSEnvironmentProduction];
  v4 = [NSURL URLWithString:@"https://init.push.apple.com/bag"];
  [(APSEnvironment *)v26 setConfigurationURL:v4];

  [(APSEnvironment *)v26 setDomain:@"push.apple.com"];
  [(APSEnvironment *)v26 setHostname:@"courier"];
  [(APSEnvironment *)v26 setPort:5223];
  [(APSEnvironment *)v26 setAlternatePort:443];
  [(APSEnvironment *)v26 setCertificateValidated:1];
  [(APSEnvironment *)v26 setLoadBalanced:1];
  [(APSEnvironment *)v26 setEnvironmentType:0];
  v5 = sub_100004328(@"APSDebugProductionHost", 1);
  if (v5)
  {
    [(APSEnvironment *)v26 setDebugHostname:1];
    [(APSEnvironment *)v26 setHostname:v5];
    [(APSEnvironment *)v26 setLoadBalanced:0];
    [(APSEnvironment *)v26 setCertificateValidated:0];
  }

  v6 = objc_alloc_init(APSEnvironment);
  v7 = APSEnvironmentDevelopment;
  [(APSEnvironment *)v6 setName:APSEnvironmentDevelopment];
  v8 = [NSURL URLWithString:@"https://init.sandbox.push.apple.com/bag"];
  [(APSEnvironment *)v6 setConfigurationURL:v8];

  [(APSEnvironment *)v6 setDomain:@"sandbox.push.apple.com"];
  [(APSEnvironment *)v6 setHostname:@"courier"];
  [(APSEnvironment *)v6 setPort:5223];
  [(APSEnvironment *)v6 setAlternatePort:443];
  [(APSEnvironment *)v6 setCertificateValidated:1];
  [(APSEnvironment *)v6 setLoadBalanced:1];
  [(APSEnvironment *)v6 setEnvironmentType:1];
  v9 = sub_100004328(@"APSDebugSandboxHost", 1);

  if (v9)
  {
    [(APSEnvironment *)v6 setDebugHostname:1];
    [(APSEnvironment *)v6 setHostname:v9];
    [(APSEnvironment *)v6 setLoadBalanced:0];
    [(APSEnvironment *)v6 setCertificateValidated:0];
  }

  v10 = objc_alloc_init(APSEnvironment);
  v11 = APSEnvironmentQA2;
  [(APSEnvironment *)v10 setName:APSEnvironmentQA2];
  v12 = [NSURL URLWithString:@"https://init.qa2.push.apple.com:80/bag"];
  [(APSEnvironment *)v10 setConfigurationURL:v12];

  [(APSEnvironment *)v10 setDomain:@"qa2.push.apple.com"];
  [(APSEnvironment *)v10 setHostname:@"courier"];
  [(APSEnvironment *)v10 setPort:5223];
  [(APSEnvironment *)v10 setAlternatePort:443];
  [(APSEnvironment *)v10 setCertificateValidated:1];
  [(APSEnvironment *)v10 setLoadBalanced:1];
  [(APSEnvironment *)v10 setEnvironmentType:-1];
  v13 = sub_100004328(@"APSQA2Environment", 1);

  if (v13)
  {
    [(APSEnvironment *)v10 setDebugHostname:1];
    [(APSEnvironment *)v10 setHostname:v13];
    [(APSEnvironment *)v10 setLoadBalanced:0];
    [(APSEnvironment *)v10 setCertificateValidated:0];
  }

  v14 = sub_100004328(@"APSDemoEnvironment", 1);
  v15 = v14;
  if (v14)
  {
    v25 = v7;
    v16 = v3;
    v17 = [v14 componentsSeparatedByString:@"."];
    if ([v15 length] < 3)
    {
      v21 = 0;
    }

    else
    {
      v18 = [v17 objectAtIndex:0];
      v19 = [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
      v20 = [v19 componentsJoinedByString:@"."];

      v21 = objc_alloc_init(APSEnvironment);
      [(APSEnvironment *)v21 setName:APSEnvironmentDemo];
      [(APSEnvironment *)v21 setDomain:v20];
      [(APSEnvironment *)v21 setHostname:v18];
      [(APSEnvironment *)v21 setPort:5223];
      [(APSEnvironment *)v21 setCertificateValidated:0];
      [(APSEnvironment *)v21 setLoadBalanced:0];
      [(APSEnvironment *)v21 setEnvironmentType:-1];

      v2 = APSConnectionServer;
    }

    v3 = v16;
    v7 = v25;
  }

  else
  {
    v21 = 0;
  }

  v22 = [NSDictionary alloc];
  v23 = [v22 initWithObjectsAndKeys:{v26, v3, v6, v7, v10, v11, v21, APSEnvironmentDemo, 0}];
  v24 = qword_1001BF780;
  qword_1001BF780 = v23;

  [&v2[22] _loadCachedProperties];
}

+ (void)_loadCachedProperties
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = sub_100004328(@"APSEnvironments", 1);
  v16 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v16)
  {
    v15 = *v25;
    *&v2 = 138412290;
    v14 = v2;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * i);
        v5 = [qword_1001BF780 objectForKey:{v4, v14}];
        if (v5)
        {
          v18 = i;
          v19 = v4;
          v6 = [obj objectForKey:v4];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
          if (!v7)
          {
            goto LABEL_27;
          }

          v8 = v7;
          v9 = *v21;
          while (1)
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * j);
              v12 = [v6 objectForKey:v11];
              if ([v11 isEqualToString:@"APSMessageSize"])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5[8] = [v12 unsignedIntegerValue];
                  goto LABEL_25;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (![v11 isEqualToString:@"APSLargeMessageSize"])
                {
                  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_25;
                  }

                  *buf = 138412546;
                  v29 = v11;
                  v30 = 2112;
                  v31 = v19;
                  v13 = "Unknown key '%@' in environment '%@' preferences";
                  goto LABEL_24;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v5[9] = [v12 unsignedIntegerValue];
                  goto LABEL_25;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
LABEL_23:
                  *buf = 138412546;
                  v29 = v12;
                  v30 = 2112;
                  v31 = v19;
                  v13 = "Invalid value '%@' in environment '%@' preferences";
LABEL_24:
                  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
                }
              }

LABEL_25:
            }

            v8 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
            if (!v8)
            {
LABEL_27:

              i = v18;
              goto LABEL_30;
            }
          }
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v14;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown environment name '%@' in preferences", buf, 0xCu);
        }

LABEL_30:
      }

      v16 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v16);
  }
}

+ (void)_saveCachedProperties
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = qword_1001BF780;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [qword_1001BF780 objectForKey:v7];
        v9 = [[NSMutableDictionary alloc] initWithCapacity:0];
        v10 = [[NSNumber alloc] initWithUnsignedInteger:{objc_msgSend(v8, "messageSize")}];
        [v9 setObject:v10 forKey:@"APSMessageSize"];
        v11 = [[NSNumber alloc] initWithUnsignedInteger:{objc_msgSend(v8, "largeMessageSize")}];
        [v9 setObject:v11 forKey:@"APSLargeMessageSize"];
        [v2 setObject:v9 forKey:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  sub_100005394(@"APSEnvironments", v2, 1);
  sub_1000054B8(1);
}

- (void)setMessageSize:(unint64_t)a3
{
  if (self->_messageSize != a3)
  {
    self->_messageSize = a3;
    +[APSEnvironment _saveCachedProperties];
  }
}

- (void)setLargeMessageSize:(unint64_t)a3
{
  if (self->_largeMessageSize != a3)
  {
    self->_largeMessageSize = a3;
    +[APSEnvironment _saveCachedProperties];
  }
}

- (unint64_t)priority
{
  name = self->_name;
  if (name == APSEnvironmentProduction)
  {
    return 0;
  }

  if (name == APSEnvironmentDevelopment)
  {
    return 1;
  }

  if (name == APSEnvironmentDemo)
  {
    return 2;
  }

  return 3;
}

@end