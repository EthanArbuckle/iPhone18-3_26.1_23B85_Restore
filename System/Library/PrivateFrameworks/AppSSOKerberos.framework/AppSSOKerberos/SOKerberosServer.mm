@interface SOKerberosServer
+ (id)serverWithString:(id)string;
- (SOKerberosServer)initWithHost:(id)host port:(id)port protocol:(id)protocol path:(id)path;
@end

@implementation SOKerberosServer

+ (id)serverWithString:(id)string
{
  lowercaseString = [string lowercaseString];
  if ([lowercaseString hasPrefix:@"tcp/"])
  {
    v4 = @"tcp";
LABEL_5:
    v5 = 4;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"udp/"])
  {
    v4 = @"udp";
    goto LABEL_5;
  }

  if ([lowercaseString hasPrefix:@"http://"])
  {
    v4 = @"http";
    v5 = 7;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"http/"])
  {
    v4 = @"http";
    v5 = 5;
    goto LABEL_6;
  }

  if ([lowercaseString hasPrefix:@"kkdcp://"])
  {
    v4 = @"kkdcp";
    v5 = 8;
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  v16 = 0;
  if (([lowercaseString containsString:@"://"] & 1) == 0)
  {
LABEL_6:
    if ([lowercaseString length] <= v5)
    {
      host5 = SO_LOG_SOKerberosServer();
      if (os_log_type_enabled(host5, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosServer serverWithString:host5];
      }

      v16 = 0;
      goto LABEL_38;
    }

    v50 = v4;
    v6 = [lowercaseString substringFromIndex:v5];
    v7 = objc_alloc(MEMORY[0x277CCACE0]);
    v8 = [@"host://" stringByAppendingString:v6];
    v9 = [v7 initWithString:v8];

    host = [v9 host];
    if ([host hasPrefix:@"["])
    {
      host2 = [v9 host];
      v12 = [host2 hasSuffix:@"]"];

      if (v12)
      {
        host3 = [v9 host];
        host4 = [v9 host];
        host5 = [host3 substringWithRange:{1, objc_msgSend(host4, "length") - 2}];

        goto LABEL_17;
      }
    }

    else
    {
    }

    host5 = [v9 host];
LABEL_17:
    port = [v9 port];
    stringValue = [port stringValue];

    path = [v9 path];
    if ([path isEqualToString:&stru_285206D08])
    {
      path2 = 0;
    }

    else
    {
      path2 = [v9 path];
    }

    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    invertedSet = [uRLHostAllowedCharacterSet invertedSet];
    v23 = [host5 rangeOfCharacterFromSet:invertedSet];

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (stringValue && ([MEMORY[0x277CCA900] decimalDigitCharacterSet], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "invertedSet"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(stringValue, "rangeOfCharacterFromSet:", v25), v25, v24, v26 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v30 = SO_LOG_SOKerberosServer();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(SOKerberosServer *)stringValue serverWithString:v30, v37, v38, v39, v40, v41, v42];
        }
      }

      else
      {
        if (!path2 || ([MEMORY[0x277CCA900] URLPathAllowedCharacterSet], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "invertedSet"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(path2, "rangeOfCharacterFromSet:", v28), v28, v27, v29 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v16 = [[SOKerberosServer alloc] initWithHost:host5 port:stringValue protocol:v50 path:path2];
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v30 = SO_LOG_SOKerberosServer();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(SOKerberosServer *)path2 serverWithString:v30, v43, v44, v45, v46, v47, v48];
        }
      }
    }

    else
    {
      v30 = SO_LOG_SOKerberosServer();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(SOKerberosServer *)host5 serverWithString:v30, v31, v32, v33, v34, v35, v36];
      }
    }

    v16 = 0;
    goto LABEL_37;
  }

LABEL_39:

  return v16;
}

- (SOKerberosServer)initWithHost:(id)host port:(id)port protocol:(id)protocol path:(id)path
{
  hostCopy = host;
  portCopy = port;
  protocolCopy = protocol;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SOKerberosServer;
  v15 = [(SOKerberosServer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_host, host);
    objc_storeStrong(&v16->_port, port);
    objc_storeStrong(&v16->_protocol, protocol);
    objc_storeStrong(&v16->_path, path);
  }

  return v16;
}

+ (void)serverWithString:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "host contains invalid characters: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)serverWithString:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "port contains invalid characters: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)serverWithString:(uint64_t)a3 .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_24006C000, a2, a3, "path contains invalid characters: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end