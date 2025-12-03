@interface AXIPCMessage
+ (id)archivedMessageFromData:(id)data;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (AXIPCMessage)initWithCoder:(id)coder;
- (AXIPCMessage)initWithKey:(int)key payload:(id)payload;
- (NSString)senderBundleId;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setAuditToken:(id *)token;
- (void)setClientPort:(unsigned int)port;
@end

@implementation AXIPCMessage

- (void)dealloc
{
  clientPort = self->_clientPort;
  if (clientPort)
  {
    v4 = mach_port_deallocate(*MEMORY[0x1E69E9A60], clientPort);
    if (v4)
    {
      v6 = self->_clientPort;
      v7 = v4;
      v5 = "[AXIPCMessage dealloc]";
      _AXAssert();
    }
  }

  v8.receiver = self;
  v8.super_class = AXIPCMessage;
  [(AXIPCMessage *)&v8 dealloc:v5];
}

- (AXIPCMessage)initWithKey:(int)key payload:(id)payload
{
  v4 = *&key;
  payloadCopy = payload;
  v11.receiver = self;
  v11.super_class = AXIPCMessage;
  v7 = [(AXIPCMessage *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(AXIPCMessage *)v7 setKey:v4];
    if (payloadCopy)
    {
      v9 = [payloadCopy copy];
      [(AXIPCMessage *)v8 setPayload:v9];
    }

    else
    {
      [(AXIPCMessage *)v8 setPayload:MEMORY[0x1E695E0F8]];
    }

    v8->_clientPort = 0;
    ++AXIPCMessageUniqueID;
    [(AXIPCMessage *)v8 setUniqueID:?];
  }

  return v8;
}

+ (id)archivedMessageFromData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v18 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v18];
    v5 = v18;
    if (v5)
    {
      mEMORY[0x1E69887F8] = [MEMORY[0x1E69887F8] sharedInstance];
      ignoreLogging = [mEMORY[0x1E69887F8] ignoreLogging];

      if ((ignoreLogging & 1) == 0)
      {
        identifier = [MEMORY[0x1E69887F8] identifier];
        v9 = AXLoggerForFacility();

        v10 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = AXColorizeFormatLog();
          v12 = _AXStringForArgs();
          if (os_log_type_enabled(v9, v10))
          {
            *buf = 138543362;
            v20 = v12;
            _os_log_impl(&dword_18B15E000, v9, v10, "%{public}@", buf, 0xCu);
          }
        }
      }
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (AXIPCMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = AXIPCMessage;
  v5 = [(AXIPCMessage *)&v22 init];
  if (v5)
  {
    -[AXIPCMessage setKey:](v5, "setKey:", [coderCopy decodeInt32ForKey:@"key"]);
    if (!AllowedClasses)
    {
      v21 = MEMORY[0x1E695DFA8];
      v20 = objc_opt_class();
      v19 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v21 setWithObjects:{v20, v19, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = AllowedClasses;
      AllowedClasses = v13;
    }

    v15 = NSClassFromString(&cfstr_Axhearingaidmo.isa);
    if (v15)
    {
      [AllowedClasses addObject:v15];
    }

    v16 = [coderCopy decodeObjectOfClasses:AllowedClasses forKey:@"payload"];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    [(AXIPCMessage *)v5 setPayload:v17];
    ++AXIPCMessageUniqueID;
    [(AXIPCMessage *)v5 setUniqueID:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payload = [(AXIPCMessage *)self payload];
  if (payload && ![objc_opt_class() supportsSecureCoding])
  {
    _AXLogWithFacility();
  }

  else
  {
    [coderCopy encodeObject:payload forKey:@"payload"];
    [coderCopy encodeInt32:-[AXIPCMessage key](self forKey:{"key"), @"key"}];
  }
}

- (NSString)senderBundleId
{
  v2 = MEMORY[0x1EEE9AC00](self);
  v13 = *MEMORY[0x1E69E9840];
  [v2 auditToken];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:proc_pidpath(pid_4 encoding:{buffer, 0x1000u), 4}];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  if (v4)
  {
    v5 = _CFBundleCopyBundleURLForExecutableURL();
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AAE8]);
      path = [v5 path];
      v8 = [v6 initWithPath:path];

      if (v8)
      {
        bundleIdentifier = [v8 bundleIdentifier];
      }

      else
      {
        bundleIdentifier = 0;
      }
    }

    else
    {
      bundleIdentifier = 0;
    }
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = AXIPCMessage;
  v4 = [(AXIPCMessage *)&v11 description];
  clientPort = [(AXIPCMessage *)self clientPort];
  v6 = [(AXIPCMessage *)self key];
  payload = [(AXIPCMessage *)self payload];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AXIPCMessage uniqueID](self, "uniqueID")}];
  v9 = [v3 stringWithFormat:@"%@. Client port: %ld. Key: %d. Payload: %@ (%@)", v4, clientPort, v6, payload, v8];

  return v9;
}

- (void)setClientPort:(unsigned int)port
{
  v5 = AXIncrefSendRight(port);
  clientPort = self->_clientPort;
  if (clientPort)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], clientPort);
  }

  if (v5)
  {
    self->_clientPort = port;
  }
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[6];
  *retstr->var0 = *&self[1].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAuditToken:(id *)token
{
  v3 = *token->var0;
  *&self->_auditToken.val[4] = *&token->var0[4];
  *self->_auditToken.val = v3;
}

@end