@interface SFFormAutoFillFrameHandle
+ (id)frameHandleFromSerializedData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)serializedData;
- (NSString)description;
- (SFFormAutoFillFrameHandle)initWithCoder:(id)a3;
- (SFFormAutoFillFrameHandle)initWithFrameHandle:(id)a3 URL:(id)a4 serverTrust:(__SecTrust *)a5 pageID:(id)a6;
- (SFFormAutoFillFrameHandle)initWithFrameInfo:(id)a3;
- (SFFormAutoFillFrameHandle)initWithWebProcessPlugInFrame:(id)a3;
- (WBSGlobalFrameIdentifier)webFrameIdentifier;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)serializedData;
@end

@implementation SFFormAutoFillFrameHandle

- (SFFormAutoFillFrameHandle)initWithFrameHandle:(id)a3 URL:(id)a4 serverTrust:(__SecTrust *)a5 pageID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = SFFormAutoFillFrameHandle;
  v14 = [(SFFormAutoFillFrameHandle *)&v18 init];
  v15 = v14;
  v16 = 0;
  if (v14 && v11 && v12)
  {
    objc_storeStrong(&v14->_frameHandle, a3);
    objc_storeStrong(&v15->_URL, a4);
    if (a5)
    {
      v15->_serverTrust = CFRetain(a5);
    }

    objc_storeStrong(&v15->_pageID, a6);
    v16 = v15;
  }

  return v16;
}

- (SFFormAutoFillFrameHandle)initWithFrameInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFFormAutoFillFrameHandle;
  v5 = [(SFFormAutoFillFrameHandle *)&v15 init];
  if (v5)
  {
    v6 = [v4 _handle];
    frameHandle = v5->_frameHandle;
    v5->_frameHandle = v6;

    v8 = [v4 request];
    v9 = [v8 URL];
    URL = v5->_URL;
    v5->_URL = v9;

    if (objc_opt_respondsToSelector())
    {
      v5->_serverTrust = CFRetain([v4 _serverTrust]);
    }

    v11 = [v4 _documentIdentifier];
    documentIdentifier = v5->_documentIdentifier;
    v5->_documentIdentifier = v11;

    v13 = v5;
  }

  return v5;
}

- (WBSGlobalFrameIdentifier)webFrameIdentifier
{
  documentIdentifier = self->_documentIdentifier;
  v4 = objc_alloc(MEMORY[0x1E69C88A0]);
  v5 = v4;
  if (documentIdentifier)
  {
    v6 = [v4 initWithDocumentID:self->_documentIdentifier];
  }

  else
  {
    pageID = self->_pageID;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_WKFrameHandle frameID](self->_frameHandle, "frameID")}];
    v6 = [v5 initWithPageID:pageID frameID:v8];
  }

  return v6;
}

- (void)dealloc
{
  serverTrust = self->_serverTrust;
  if (serverTrust)
  {
    CFRelease(serverTrust);
  }

  v4.receiver = self;
  v4.super_class = SFFormAutoFillFrameHandle;
  [(SFFormAutoFillFrameHandle *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      if (WBSIsEqual() && WBSIsEqual() && WBSIsEqual())
      {
        v8 = WBSIsEqual();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_WKFrameHandle *)self->_frameHandle hash];
  v4 = [(NSURL *)self->_URL hash]^ v3;
  v5 = [(NSNumber *)self->_pageID hash];
  return v4 ^ v5 ^ [(NSUUID *)self->_documentIdentifier hash];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p URL = %@; frameID: %llu, pageID: %llu>", v5, self, self->_URL, -[_WKFrameHandle frameID](self->_frameHandle, "frameID"), -[NSNumber unsignedLongLongValue](self->_pageID, "unsignedLongLongValue")];;

  return v6;
}

- (SFFormAutoFillFrameHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFFormAutoFillFrameHandle;
  v5 = [(SFFormAutoFillFrameHandle *)&v13 init];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverTrust"];
    if (v7)
    {
      v8 = SecTrustDeserialize();
      if (!v8)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"frameHandle"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pageID"];
    v6 = [(SFFormAutoFillFrameHandle *)v6 initWithFrameHandle:v9 URL:v10 serverTrust:v8 pageID:v11];

    if (v8)
    {
      CFRelease(v8);
    }

    v8 = v6;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_frameHandle forKey:@"frameHandle"];
  [v6 encodeObject:self->_URL forKey:@"URL"];
  [v6 encodeObject:self->_pageID forKey:@"pageID"];
  if (self->_serverTrust)
  {
    v4 = SecTrustSerialize();
    if (v4)
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithData:v4];
      [v6 encodeObject:v5 forKey:@"serverTrust"];
    }
  }
}

- (NSData)serializedData
{
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SFFormAutoFillFrameHandle *)v4 serializedData];
    }
  }

  return v2;
}

+ (id)frameHandleFromSerializedData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v18 = 0;
  v13 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v12 fromData:v3 error:&v18];
  v14 = v18;
  if (v14)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SFFormAutoFillFrameHandle *)v15 frameHandleFromSerializedData:v14];
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = v13;
LABEL_9:

LABEL_10:

  return v16;
}

- (SFFormAutoFillFrameHandle)initWithWebProcessPlugInFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 _browserContextController];
  v6 = [v5 handle];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "_webPageID")}];
  v8 = [v4 handle];
  v9 = [v4 URL];
  v10 = [v4 _serverTrust];

  v11 = [(SFFormAutoFillFrameHandle *)self initWithFrameHandle:v8 URL:v9 serverTrust:v10 pageID:v7];
  return v11;
}

- (void)serializedData
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed to archive SFFormAutoFillFrameHandle: %{public}@", v7, v8, v9, v10, 2u);
}

+ (void)frameHandleFromSerializedData:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D4644000, v5, v6, "Failed to read from SFFormAutoFillFrameHandle data with exception: %{public}@", v7, v8, v9, v10, 2u);
}

@end