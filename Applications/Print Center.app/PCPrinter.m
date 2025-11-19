@interface PCPrinter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPCPrinter:(id)a3;
- (BOOL)isEqualToPKPrinter:(id)a3;
- (BOOL)isEqualToiCloudPrinter:(id)a3;
- (BOOL)requiresAuthentication;
- (BOOL)supportsJobAccountID;
- (BOOL)updateIfNeeded:(id)a3;
- (NSArray)classMembers;
- (NSArray)printerStateReasons;
- (NSArray)supportedMimeTypes;
- (NSAttributedString)displayNameWithLocation;
- (NSString)displayName;
- (NSString)location;
- (NSString)makeAndModel;
- (NSString)name;
- (NSString)printerStateMessage;
- (NSString)uuid;
- (NSURL)printerURL;
- (PCPrinter)initWithPKPrinter:(id)a3;
- (PCPrinter)initWithPrinterInfo:(id)a3;
- (id)authInfoRequired;
- (id)deviceURI;
- (id)printerURI;
- (int64_t)kind;
- (int64_t)state;
- (void)dealloc;
@end

@implementation PCPrinter

- (PCPrinter)initWithPrinterInfo:(id)a3
{
  v8.receiver = self;
  v8.super_class = PCPrinter;
  v3 = a3;
  v4 = [(PCPrinter *)&v8 init];
  v5 = [NSDictionary dictionaryWithDictionary:v3, v8.receiver, v8.super_class];

  [(PCPrinter *)v4 setPrinterInfo:v5];
  v6 = +[PKDefaults iCloudPrinters];
  return v4;
}

- (PCPrinter)initWithPKPrinter:(id)a3
{
  v4 = [a3 browseInfo];
  v7.receiver = self;
  v7.super_class = PCPrinter;
  v5 = [(PCPrinter *)&v7 initPKPrinterWithBrowseInfo:v4];

  [(PCPrinter *)v5 setPrinterInfo:0];
  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PCPrinter;
  [(PCPrinter *)&v2 dealloc];
}

- (NSString)name
{
  v3 = [(PCPrinter *)self printerInfo];

  if (v3)
  {
    v4 = [(PCPrinter *)self printerInfo];
    v5 = [v4 objectForKeyedSubscript:@"printer-name"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    v5 = [(PCPrinter *)&v7 name];
  }

  return v5;
}

- (NSURL)printerURL
{
  v3 = [(PCPrinter *)self printerInfo];

  if (v3)
  {
    v4 = [(PCPrinter *)self printerURI];
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    v5 = [(PCPrinter *)&v7 printerURL];
  }

  return v5;
}

- (id)printerURI
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"printer-uri-supported"];

  return v3;
}

- (id)deviceURI
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"device-uri"];

  return v3;
}

- (NSString)uuid
{
  v3 = [(PCPrinter *)self _uuid];

  if (!v3)
  {
    v4 = [(PCPrinter *)self printerInfo];

    if (v4)
    {
      v5 = [(PCPrinter *)self deviceURI];
      v6 = [v5 rangeOfString:@"uuid="];
      if (v7)
      {
        v8 = [v5 substringFromIndex:&v6[v7]];

        if (v8)
        {
LABEL_8:
          v9 = [v8 uppercaseString];
          [(PCPrinter *)self set_uuid:v9];

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v12.receiver = self;
    v12.super_class = PCPrinter;
    v8 = [(PCPrinter *)&v12 uuid];
    goto LABEL_8;
  }

LABEL_9:
  v10 = [(PCPrinter *)self _uuid];

  return v10;
}

- (NSString)displayName
{
  v3 = [(PCPrinter *)self printerInfo];

  if (v3)
  {
    v4 = [(PCPrinter *)self printerInfo];
    v5 = [v4 objectForKeyedSubscript:@"printer-info"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    v5 = [(PCPrinter *)&v7 displayName];
  }

  return v5;
}

- (NSString)location
{
  v3 = [(PCPrinter *)self printerInfo];

  if (v3)
  {
    v4 = [(PCPrinter *)self printerInfo];
    v5 = [v4 objectForKeyedSubscript:@"printer-location"];

    v6 = &stru_100026518;
    if (v5)
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PCPrinter;
    v7 = [(PCPrinter *)&v9 location];
  }

  return v7;
}

- (NSAttributedString)displayNameWithLocation
{
  v3 = [NSMutableAttributedString alloc];
  v4 = [(PCPrinter *)self displayName];
  v5 = [v3 initWithString:v4];

  v6 = [(PCPrinter *)self location];
  if ([v6 length])
  {
    v7 = [(PCPrinter *)self displayName];
    v8 = [v7 containsString:v6];

    if ((v8 & 1) == 0)
    {
      v9 = [NSString stringWithFormat:@" (%@)", v6];
      v10 = [[NSMutableAttributedString alloc] initWithString:v9];
      v15[0] = NSFontAttributeName;
      +[UIFont smallSystemFontSize];
      v11 = [UIFont systemFontOfSize:?];
      v16[0] = v11;
      v15[1] = NSForegroundColorAttributeName;
      v12 = +[UIColor secondaryLabelColor];
      v16[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

      [v10 addAttributes:v13 range:{0, objc_msgSend(v10, "length")}];
      [v5 appendAttributedString:v10];
    }
  }

  return v5;
}

- (NSString)makeAndModel
{
  v3 = [(PCPrinter *)self printerInfo];

  if (v3)
  {
    v4 = [(PCPrinter *)self printerInfo];
    v5 = [v4 objectForKeyedSubscript:@"printer-make-and-model"];

    v6 = &stru_100026518;
    if (v5)
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PCPrinter;
    v7 = [(PCPrinter *)&v9 makeAndModel];
  }

  return v7;
}

- (int64_t)state
{
  v3 = [(PCPrinter *)self printerInfo];

  if (!v3)
  {
    return 3;
  }

  v4 = [(PCPrinter *)self printerInfo];
  v5 = [v4 objectForKeyedSubscript:@"printer-state"];
  v6 = [v5 integerValue];

  return v6;
}

- (NSString)printerStateMessage
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"printer-state-message"];

  return v3;
}

- (NSArray)printerStateReasons
{
  v3 = [(PCPrinter *)self printerInfo];
  v4 = [v3 objectForKeyedSubscript:@"printer-state-reasons"];
  v5 = [NSMutableArray arrayWithArray:v4];

  if ([(PCPrinter *)self isAirPrint])
  {
    v6 = [v5 indexesOfObjectsPassingTest:&stru_100025538];
    [v5 removeObjectsAtIndexes:v6];
  }

  v7 = [NSArray arrayWithArray:v5];

  return v7;
}

- (NSArray)classMembers
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"member-names"];

  return v3;
}

- (int64_t)kind
{
  v2 = [(PCPrinter *)self deviceURI];
  if ([v2 hasPrefix:@"usb:"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"ippusb:") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"bluetooth:"))
  {
    v3 = 3;
  }

  else if ([v2 hasPrefix:@"mdns:"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"dnssd:"))
  {
    v3 = 4;
  }

  else if ([v2 hasPrefix:@"smb:"])
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = [v4 name];
    v7 = [(PCPrinter *)self name];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToPCPrinter:(id)a3
{
  v5 = a3;
  v6 = [v5 name];
  v7 = [(PCPrinter *)self name];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 uuid];
    v9 = [(PCPrinter *)self uuid];
    if (v8 != v9)
    {
      v10 = [v5 uuid];
      v3 = [(PCPrinter *)self uuid];
      if (![v10 isEqualToString:v3])
      {
        v11 = 0;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = v10;
    }

    v12 = [v5 deviceURI];
    v13 = [(PCPrinter *)self deviceURI];
    if ([v12 isEqualToString:v13])
    {
      v14 = [v5 category];
      v11 = v14 == [(PCPrinter *)self category];
    }

    else
    {
      v11 = 0;
    }

    v10 = v16;
    if (v8 == v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)isEqualToPKPrinter:(id)a3
{
  v4 = [a3 uuid];
  v5 = [v4 uppercaseString];
  v6 = [(PCPrinter *)self uuid];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (BOOL)isEqualToiCloudPrinter:(id)a3
{
  v4 = a3;
  v5 = [(PCPrinter *)self deviceURI];
  v6 = [v4 printerURLs];
  v7 = [v6 firstObject];

  v8 = [NSURL URLWithString:v7];
  v9 = [v8 scheme];
  v10 = [v8 host];
  v11 = [v8 path];
  v12 = [NSString stringWithFormat:@"%@://%@%@", v9, v10, v11];

  if (([v7 isEqualToString:v5] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v5))
  {
    v13 = [v4 uuid];
    v14 = [v13 uppercaseString];
    v15 = [(PCPrinter *)self uuid];
    v16 = [v14 isEqualToString:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)updateIfNeeded:(id)a3
{
  v4 = a3;
  if (-[PCPrinter isEqualToPCPrinter:](self, "isEqualToPCPrinter:", v4) && (-[PCPrinter printerInfo](self, "printerInfo"), v5 = objc_claimAutoreleasedReturnValue(), [v4 printerInfo], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, (v7 & 1) == 0))
  {
    v9 = [v4 printerInfo];
    v10 = [NSDictionary dictionaryWithDictionary:v9];
    [(PCPrinter *)self setPrinterInfo:v10];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)supportedMimeTypes
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"document-format-supported"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSArray array];
  }

  v5 = v4;

  return v5;
}

- (BOOL)supportsJobAccountID
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"job-account-id-supported"];
  v4 = v3 != 0;

  return v4;
}

- (id)authInfoRequired
{
  v2 = [(PCPrinter *)self printerInfo];
  v3 = [v2 objectForKeyedSubscript:@"auth-info-required"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

- (BOOL)requiresAuthentication
{
  v2 = [(PCPrinter *)self authInfoRequired];
  v3 = [v2 isEqualToString:@"none"];

  return v3 ^ 1;
}

@end