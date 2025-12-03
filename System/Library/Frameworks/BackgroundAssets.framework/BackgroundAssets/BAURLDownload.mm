@interface BAURLDownload
- (BAURLDownload)init;
- (BAURLDownload)initWithCoder:(id)coder;
- (BAURLDownload)initWithIdentifier:(NSString *)identifier request:(NSURLRequest *)request essential:(BOOL)essential fileSize:(NSUInteger)fileSize applicationGroupIdentifier:(NSString *)applicationGroupIdentifier priority:(BADownloaderPriority)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)syncTo:(id)to;
@end

@implementation BAURLDownload

- (void)syncTo:(id)to
{
  toCopy = to;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Non BAURLDownload passed to syncTo for BAURLDownload" userInfo:0];
    [v5 raise];
  }

  request = [toCopy request];
  [(BAURLDownload *)self setRequest:request];

  v7.receiver = self;
  v7.super_class = BAURLDownload;
  [(BADownload *)&v7 syncTo:toCopy];
}

- (BAURLDownload)init
{
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BAURLDownload cannot be constructed using -init.";
    _os_log_fault_impl(&dword_236E28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: BAURLDownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BAURLDownload)initWithIdentifier:(NSString *)identifier request:(NSURLRequest *)request essential:(BOOL)essential fileSize:(NSUInteger)fileSize applicationGroupIdentifier:(NSString *)applicationGroupIdentifier priority:(BADownloaderPriority)priority
{
  v11 = essential;
  v14 = identifier;
  v15 = request;
  v16 = applicationGroupIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE660];
    v24 = @"request must be a URLRequest.";
    goto LABEL_7;
  }

  v17 = [(NSURLRequest *)v15 URL];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE660];
    v24 = @"request must have a valid URL.";
    goto LABEL_7;
  }

  v19 = [(NSURLRequest *)v15 URL];
  scheme = [v19 scheme];
  v21 = [scheme caseInsensitiveCompare:@"https"];

  if (v21)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE660];
    v24 = @"request can only download over HTTPS.";
LABEL_7:
    v25 = [v22 exceptionWithName:v23 reason:v24 userInfo:0];
    [v25 raise];

    selfCopy = 0;
    goto LABEL_8;
  }

  if (([objc_opt_class() supportsSecureCoding] & 1) == 0)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE660];
    v24 = @"request must be secure coding compliant.";
    goto LABEL_7;
  }

  if (!v14)
  {
    v28 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"identifier can not be nil" userInfo:0];
    [v28 raise];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"identifier must be a string." userInfo:0];
    [v29 raise];
  }

  v32.receiver = self;
  v32.super_class = BAURLDownload;
  v30 = [(BADownload *)&v32 initPrivatelyWithApplicationGroupIdentifier:v16];
  v31 = v30;
  if (v30)
  {
    [v30 setRequest:v15];
    [v31 setIdentifier:v14];
    [v31 setNecessity:v11];
    [v31 setPriority:priority];
    [(BADownload *)v31 setClientSpecifiedFileSize:?];
  }

  self = v31;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BAURLDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BAURLDownload;
  v5 = [(BADownload *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"], v6 = objc_claimAutoreleasedReturnValue(), request = v5->_request, v5->_request = v6, request, !v5->_request))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  v4 = [(BADownload *)&v6 copyWithZone:zone];
  [v4 setRequest:self->_request];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"request"];
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  [(BADownload *)&v6 encodeWithCoder:coderCopy];
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = BAURLDownload;
  v3 = [(BADownload *)&v7 debugDescription];
  v4 = [v3 mutableCopy];

  v5 = [(NSURLRequest *)self->_request URL];
  [v4 appendFormat:@"URL: %@\n", v5];

  return v4;
}

@end