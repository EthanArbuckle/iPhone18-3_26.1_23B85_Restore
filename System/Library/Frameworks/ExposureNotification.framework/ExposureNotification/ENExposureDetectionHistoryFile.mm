@interface ENExposureDetectionHistoryFile
- (ENExposureDetectionHistoryFile)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENExposureDetectionHistoryFile

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  fileHash = self->_fileHash;
  if (fileHash)
  {
    v6 = fileHash;
    v7 = [(NSData *)v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [(NSData *)v6 length];

    xpc_dictionary_set_data(v4, "fileHash", v8, v9);
  }

  [(NSDate *)self->_processDate timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v4, "date", v10);
  xpc_dictionary_set_uint64(v4, "keyCt", [(NSNumber *)self->_keyCount unsignedLongLongValue]);
  matchCount = self->_matchCount;
  if (matchCount)
  {
    xpc_dictionary_set_uint64(v4, "mtKC", [(NSNumber *)matchCount unsignedLongLongValue]);
  }

  if (self->_metadata)
  {
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v4, "meta", v12);
  }

  sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
  xdict = v4;
  v14 = [(NSString *)sourceAppBundleIdentifier UTF8String];
  if (v14)
  {
    xpc_dictionary_set_string(xdict, "aBid", v14);
  }

  sourceRegion = self->_sourceRegion;
  if (sourceRegion)
  {
    ENXPCEncodeSecureObject(xdict, "regionData", sourceRegion, 0);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  v13 = NSStringFromClass(v3);
  NSAppendPrintF_safe();
  v4 = 0;

  [(NSData *)self->_fileHash bytes];
  [(NSData *)self->_fileHash length];
  [(NSData *)self->_fileHash length];
  NSAppendPrintF();
  v5 = v4;

  if (self->_sourceAppBundleIdentifier)
  {
    sourceAppBundleIdentifier = self->_sourceAppBundleIdentifier;
    NSAppendPrintF_safe();
    v6 = v5;

    v5 = v6;
  }

  if (self->_sourceRegion)
  {
    sourceRegion = self->_sourceRegion;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  processDate = self->_processDate;
  NSAppendPrintF_safe();
  v8 = v5;

  keyCount = self->_keyCount;
  NSAppendPrintF_safe();
  v9 = v8;

  if (self->_matchCount)
  {
    matchCount = self->_matchCount;
    NSAppendPrintF_safe();
    v10 = v9;

    v9 = v10;
  }

  if (self->_metadata)
  {
    metadata = self->_metadata;
    NSAppendPrintF();
    v11 = v9;

    v9 = v11;
  }

  return v9;
}

- (ENExposureDetectionHistoryFile)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = ENExposureDetectionHistoryFile;
  v7 = [(ENExposureDetectionHistoryFile *)&v27 init];
  if (!v7)
  {
    if (a4)
    {
      ENErrorF(2);
      *a4 = v25 = 0;
      goto LABEL_12;
    }

LABEL_15:
    v25 = 0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_15;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_double(v6, "date")}];
  processDate = v7->_processDate;
  v7->_processDate = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v6, "keyCt")}];
  keyCount = v7->_keyCount;
  v7->_keyCount = v10;

  v12 = xpc_dictionary_get_value(v6, "mtKC");

  if (v12)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v6, "mtKC")}];
    matchCount = v7->_matchCount;
    v7->_matchCount = v13;
  }

  v15 = xpc_dictionary_get_value(v6, "meta");
  v16 = v15;
  if (v15)
  {
    if (MEMORY[0x2383EE9C0](v15) != MEMORY[0x277D86468])
    {
      if (a4)
      {
        ENErrorF(2);
        *a4 = v25 = 0;
        goto LABEL_11;
      }

LABEL_21:
      v25 = 0;
      goto LABEL_11;
    }

    v17 = _CFXPCCreateCFObjectFromXPCObject();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        *a4 = ENErrorF(2);
      }

      goto LABEL_21;
    }

    metadata = v7->_metadata;
    v7->_metadata = v17;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v19 = OUTLINED_FUNCTION_0_0();
  v23 = ENXPCDecodeSecureObjectIfPresent(v19, v20, v21, v22);
  sourceRegion = v7->_sourceRegion;
  v7->_sourceRegion = v23;

  v25 = v7;
LABEL_11:

LABEL_12:
  return v25;
}

@end