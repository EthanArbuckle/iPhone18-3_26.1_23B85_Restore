@interface PCPrinter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPCPrinter:(id)printer;
- (BOOL)isEqualToPKPrinter:(id)printer;
- (BOOL)isEqualToiCloudPrinter:(id)printer;
- (BOOL)requiresAuthentication;
- (BOOL)supportsJobAccountID;
- (BOOL)updateIfNeeded:(id)needed;
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
- (PCPrinter)initWithPKPrinter:(id)printer;
- (PCPrinter)initWithPrinterInfo:(id)info;
- (id)authInfoRequired;
- (id)deviceURI;
- (id)printerURI;
- (int64_t)kind;
- (int64_t)state;
- (void)dealloc;
@end

@implementation PCPrinter

- (PCPrinter)initWithPrinterInfo:(id)info
{
  v8.receiver = self;
  v8.super_class = PCPrinter;
  infoCopy = info;
  v4 = [(PCPrinter *)&v8 init];
  v5 = [NSDictionary dictionaryWithDictionary:infoCopy, v8.receiver, v8.super_class];

  [(PCPrinter *)v4 setPrinterInfo:v5];
  v6 = +[PKDefaults iCloudPrinters];
  return v4;
}

- (PCPrinter)initWithPKPrinter:(id)printer
{
  browseInfo = [printer browseInfo];
  v7.receiver = self;
  v7.super_class = PCPrinter;
  v5 = [(PCPrinter *)&v7 initPKPrinterWithBrowseInfo:browseInfo];

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
  printerInfo = [(PCPrinter *)self printerInfo];

  if (printerInfo)
  {
    printerInfo2 = [(PCPrinter *)self printerInfo];
    name = [printerInfo2 objectForKeyedSubscript:@"printer-name"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    name = [(PCPrinter *)&v7 name];
  }

  return name;
}

- (NSURL)printerURL
{
  printerInfo = [(PCPrinter *)self printerInfo];

  if (printerInfo)
  {
    printerURI = [(PCPrinter *)self printerURI];
    printerURL = [NSURL URLWithString:printerURI];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    printerURL = [(PCPrinter *)&v7 printerURL];
  }

  return printerURL;
}

- (id)printerURI
{
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"printer-uri-supported"];

  return v3;
}

- (id)deviceURI
{
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"device-uri"];

  return v3;
}

- (NSString)uuid
{
  _uuid = [(PCPrinter *)self _uuid];

  if (!_uuid)
  {
    printerInfo = [(PCPrinter *)self printerInfo];

    if (printerInfo)
    {
      deviceURI = [(PCPrinter *)self deviceURI];
      v6 = [deviceURI rangeOfString:@"uuid="];
      if (v7)
      {
        uuid = [deviceURI substringFromIndex:&v6[v7]];

        if (uuid)
        {
LABEL_8:
          uppercaseString = [uuid uppercaseString];
          [(PCPrinter *)self set_uuid:uppercaseString];

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v12.receiver = self;
    v12.super_class = PCPrinter;
    uuid = [(PCPrinter *)&v12 uuid];
    goto LABEL_8;
  }

LABEL_9:
  _uuid2 = [(PCPrinter *)self _uuid];

  return _uuid2;
}

- (NSString)displayName
{
  printerInfo = [(PCPrinter *)self printerInfo];

  if (printerInfo)
  {
    printerInfo2 = [(PCPrinter *)self printerInfo];
    displayName = [printerInfo2 objectForKeyedSubscript:@"printer-info"];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PCPrinter;
    displayName = [(PCPrinter *)&v7 displayName];
  }

  return displayName;
}

- (NSString)location
{
  printerInfo = [(PCPrinter *)self printerInfo];

  if (printerInfo)
  {
    printerInfo2 = [(PCPrinter *)self printerInfo];
    v5 = [printerInfo2 objectForKeyedSubscript:@"printer-location"];

    v6 = &stru_100026518;
    if (v5)
    {
      v6 = v5;
    }

    location = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PCPrinter;
    location = [(PCPrinter *)&v9 location];
  }

  return location;
}

- (NSAttributedString)displayNameWithLocation
{
  v3 = [NSMutableAttributedString alloc];
  displayName = [(PCPrinter *)self displayName];
  v5 = [v3 initWithString:displayName];

  location = [(PCPrinter *)self location];
  if ([location length])
  {
    displayName2 = [(PCPrinter *)self displayName];
    v8 = [displayName2 containsString:location];

    if ((v8 & 1) == 0)
    {
      v9 = [NSString stringWithFormat:@" (%@)", location];
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
  printerInfo = [(PCPrinter *)self printerInfo];

  if (printerInfo)
  {
    printerInfo2 = [(PCPrinter *)self printerInfo];
    v5 = [printerInfo2 objectForKeyedSubscript:@"printer-make-and-model"];

    v6 = &stru_100026518;
    if (v5)
    {
      v6 = v5;
    }

    makeAndModel = v6;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PCPrinter;
    makeAndModel = [(PCPrinter *)&v9 makeAndModel];
  }

  return makeAndModel;
}

- (int64_t)state
{
  printerInfo = [(PCPrinter *)self printerInfo];

  if (!printerInfo)
  {
    return 3;
  }

  printerInfo2 = [(PCPrinter *)self printerInfo];
  v5 = [printerInfo2 objectForKeyedSubscript:@"printer-state"];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (NSString)printerStateMessage
{
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"printer-state-message"];

  return v3;
}

- (NSArray)printerStateReasons
{
  printerInfo = [(PCPrinter *)self printerInfo];
  v4 = [printerInfo objectForKeyedSubscript:@"printer-state-reasons"];
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
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"member-names"];

  return v3;
}

- (int64_t)kind
{
  deviceURI = [(PCPrinter *)self deviceURI];
  if ([deviceURI hasPrefix:@"usb:"] & 1) != 0 || (objc_msgSend(deviceURI, "hasPrefix:", @"ippusb:") & 1) != 0 || (objc_msgSend(deviceURI, "hasPrefix:", @"bluetooth:"))
  {
    v3 = 3;
  }

  else if ([deviceURI hasPrefix:@"mdns:"] & 1) != 0 || (objc_msgSend(deviceURI, "hasPrefix:", @"dnssd:"))
  {
    v3 = 4;
  }

  else if ([deviceURI hasPrefix:@"smb:"])
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    name = [equalCopy name];
    name2 = [(PCPrinter *)self name];
    v8 = [name isEqualToString:name2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToPCPrinter:(id)printer
{
  printerCopy = printer;
  name = [printerCopy name];
  name2 = [(PCPrinter *)self name];
  if ([name isEqualToString:name2])
  {
    uuid = [printerCopy uuid];
    uuid2 = [(PCPrinter *)self uuid];
    if (uuid != uuid2)
    {
      uuid3 = [printerCopy uuid];
      uuid4 = [(PCPrinter *)self uuid];
      if (![uuid3 isEqualToString:uuid4])
      {
        v11 = 0;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = uuid3;
    }

    deviceURI = [printerCopy deviceURI];
    deviceURI2 = [(PCPrinter *)self deviceURI];
    if ([deviceURI isEqualToString:deviceURI2])
    {
      category = [printerCopy category];
      v11 = category == [(PCPrinter *)self category];
    }

    else
    {
      v11 = 0;
    }

    uuid3 = v16;
    if (uuid == uuid2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)isEqualToPKPrinter:(id)printer
{
  uuid = [printer uuid];
  uppercaseString = [uuid uppercaseString];
  uuid2 = [(PCPrinter *)self uuid];
  v7 = [uppercaseString isEqualToString:uuid2];

  return v7;
}

- (BOOL)isEqualToiCloudPrinter:(id)printer
{
  printerCopy = printer;
  deviceURI = [(PCPrinter *)self deviceURI];
  printerURLs = [printerCopy printerURLs];
  firstObject = [printerURLs firstObject];

  v8 = [NSURL URLWithString:firstObject];
  scheme = [v8 scheme];
  host = [v8 host];
  path = [v8 path];
  v12 = [NSString stringWithFormat:@"%@://%@%@", scheme, host, path];

  if (([firstObject isEqualToString:deviceURI] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", deviceURI))
  {
    uuid = [printerCopy uuid];
    uppercaseString = [uuid uppercaseString];
    uuid2 = [(PCPrinter *)self uuid];
    v16 = [uppercaseString isEqualToString:uuid2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)updateIfNeeded:(id)needed
{
  neededCopy = needed;
  if (-[PCPrinter isEqualToPCPrinter:](self, "isEqualToPCPrinter:", neededCopy) && (-[PCPrinter printerInfo](self, "printerInfo"), v5 = objc_claimAutoreleasedReturnValue(), [neededCopy printerInfo], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, (v7 & 1) == 0))
  {
    printerInfo = [neededCopy printerInfo];
    v10 = [NSDictionary dictionaryWithDictionary:printerInfo];
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
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"document-format-supported"];

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
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"job-account-id-supported"];
  v4 = v3 != 0;

  return v4;
}

- (id)authInfoRequired
{
  printerInfo = [(PCPrinter *)self printerInfo];
  v3 = [printerInfo objectForKeyedSubscript:@"auth-info-required"];

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
  authInfoRequired = [(PCPrinter *)self authInfoRequired];
  v3 = [authInfoRequired isEqualToString:@"none"];

  return v3 ^ 1;
}

@end