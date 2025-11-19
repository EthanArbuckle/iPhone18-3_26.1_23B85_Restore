@interface MCPeerID
- (BOOL)isEqual:(id)a3;
- (MCPeerID)init;
- (MCPeerID)initWithCoder:(id)a3;
- (MCPeerID)initWithDisplayName:(NSString *)myDisplayName;
- (MCPeerID)initWithIDString:(id)a3 displayName:(id)a4;
- (MCPeerID)initWithPID:(unsigned int)a3 displayName:(id)a4;
- (MCPeerID)initWithSerializedRepresentation:(id)a3;
- (NSString)displayName;
- (id)description;
- (id)idString;
- (id)internalDescription;
- (id)serializedRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCPeerID

- (id)idString
{
  v2 = [(NSString *)[(MCPeerIDInternal *)self->_internal idString] copy];

  return v2;
}

- (NSString)displayName
{
  v2 = [(NSString *)[(MCPeerIDInternal *)self->_internal displayName] copy];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p DisplayName = %@>", NSStringFromClass(v4), self, -[MCPeerID displayName](self, "displayName")];
}

- (id)internalDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> idString[%@] pid64[%016llX] displayName[%@]", NSStringFromClass(v4), self, -[MCPeerIDInternal idString](self->_internal, "idString"), -[MCPeerIDInternal pid64](self->_internal, "pid64"), -[MCPeerIDInternal displayName](self->_internal, "displayName")];
}

- (MCPeerID)initWithPID:(unsigned int)a3 displayName:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = MCPeerID;
  v6 = [(MCPeerID *)&v14 init];
  if (v6)
  {
    v7 = makebase36string(a3);
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    v6->_internal = [[MCPeerIDInternal alloc] initWithIDString:v8 pid64:a3 displayName:a4];
    v9 = mcpid_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MCPeerID *)v6 idString];
      v11 = [(MCPeerID *)v6 displayNameAndPID];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Created new peerID with idString [%@], displayNameAndPID [%@].", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (MCPeerID)initWithIDString:(id)a3 displayName:(id)a4
{
  v8.receiver = self;
  v8.super_class = MCPeerID;
  v6 = [(MCPeerID *)&v8 init];
  if (v6)
  {
    v6->_internal = -[MCPeerIDInternal initWithIDString:pid64:displayName:]([MCPeerIDInternal alloc], "initWithIDString:pid64:displayName:", a3, strtoull([a3 UTF8String], 0, 36), a4);
  }

  return v6;
}

- (MCPeerID)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = MCPeerID;
  v4 = [(MCPeerID *)&v10 init];
  if (v4)
  {
    v5 = [a3 decodeInt64ForKey:@"id"];
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = makebase36string(v5);
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    v4->_internal = [[MCPeerIDInternal alloc] initWithIDString:v8 pid64:v5 displayName:v6];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[MCPeerIDInternal displayName](self->_internal forKey:{"displayName"), @"name"}];
  v5 = [(MCPeerIDInternal *)self->_internal pid64];

  [a3 encodeInt64:v5 forKey:@"id"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCPeerID;
  [(MCPeerID *)&v3 dealloc];
}

- (MCPeerID)init
{
  v3.receiver = self;
  v3.super_class = MCPeerID;
  [(MCPeerID *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCPeerID)initWithDisplayName:(NSString *)myDisplayName
{
  v23 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = MCPeerID;
  v4 = [(MCPeerID *)&v18 init];
  if (v4)
  {
    if (!myDisplayName || ![(NSString *)myDisplayName length]|| [(NSString *)myDisplayName lengthOfBytesUsingEncoding:4]>= 0x40)
    {
      v5 = MEMORY[0x277CBEAD8];
      v6 = *MEMORY[0x277CBE660];
      v7 = objc_opt_class();
      [v5 raise:v6 format:{@"Invalid displayName passed to %@", NSStringFromClass(v7)}];
    }

    v8 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v9 = CFUUIDGetUUIDBytes(v8);
    v10 = bswap64(*&v9.byte0 ^ *&v9.byte8);
    v11 = makebase36string(v10);
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    free(v11);
    CFRelease(v8);
    v4->_internal = [[MCPeerIDInternal alloc] initWithIDString:v12 pid64:v10 displayName:myDisplayName];
    v13 = mcpid_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MCPeerID *)v4 idString];
      v15 = [(MCPeerID *)v4 displayNameAndPID];
      *buf = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Created new peerID with idString [%@], displayNameAndPID [%@].", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (MCPeerID)initWithSerializedRepresentation:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = MCPeerID;
  v4 = [(MCPeerID *)&v27 init];
  if (v4)
  {
    v5 = [a3 length];
    v6 = MEMORY[0x277CBE660];
    if (v5 <= 9)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = *MEMORY[0x277CBE660];
      v9 = objc_opt_class();
      [v7 raise:v8 format:{@"Invalid serialized representation passed to %@", NSStringFromClass(v9)}];
    }

    v10 = [a3 bytes];
    v11 = bswap64(*v10);
    v12 = *(v10 + 8);
    if (v5 < v12 + 9)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE660];
      v15 = objc_opt_class();
      v26 = NSStringFromClass(v15);
      v16 = v14;
      v6 = MEMORY[0x277CBE660];
      [v13 raise:v16 format:{@"Invalid serialized representation passed to %@", v26}];
    }

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 + 9 length:v12 encoding:4];
    if (v5 < v12 + 9)
    {
      v18 = MEMORY[0x277CBEAD8];
      v19 = *v6;
      v20 = objc_opt_class();
      [v18 raise:v19 format:{@"Invalid serialized representation passed to %@", NSStringFromClass(v20)}];
    }

    v21 = makebase36string(v11);
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
    free(v21);
    v4->_internal = [[MCPeerIDInternal alloc] initWithIDString:v22 pid64:v11 displayName:v17];

    v23 = mcpid_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = a3;
      v30 = 2112;
      v31 = v22;
      v32 = 2048;
      v33 = v5 - v12 - 9;
      _os_log_impl(&dword_239FB7000, v23, OS_LOG_TYPE_DEFAULT, "Created peerID from data[%@], idString[%@], leftover[%lu].", buf, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)serializedRepresentation
{
  v3 = [(NSString *)[(MCPeerIDInternal *)self->_internal displayName] UTF8String];
  v4 = [(NSString *)[(MCPeerIDInternal *)self->_internal displayName] lengthOfBytesUsingEncoding:4];
  v5 = malloc_type_malloc(v4 + 9, 0x100004077774924uLL);
  if (!v5)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Not enough memory %lu", v4 + 9), 0}]);
  }

  v6 = v5;
  *v5 = [(MCPeerIDInternal *)self->_internal pid64]>> 56;
  v6[1] = [(MCPeerIDInternal *)self->_internal pid64]>> 48;
  v6[2] = ([(MCPeerIDInternal *)self->_internal pid64]>> 32) >> 8;
  v6[3] = [(MCPeerIDInternal *)self->_internal pid64]>> 32;
  v6[4] = [(MCPeerIDInternal *)self->_internal pid64]>> 24;
  v6[5] = [(MCPeerIDInternal *)self->_internal pid64]>> 16;
  v6[6] = [(MCPeerIDInternal *)self->_internal pid64]>> 8;
  v6[7] = [(MCPeerIDInternal *)self->_internal pid64];
  v6[8] = v4;
  memcpy(v6 + 9, v3, v4);
  v7 = MEMORY[0x277CBEA90];

  return [v7 dataWithBytesNoCopy:v6 length:v4 + 9 freeWhenDone:1];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(MCPeerIDInternal *)self->_internal pid64];
  return v5 == [*(a3 + 1) pid64];
}

@end