@interface NEVirtualInterfaceParameters
- (NEVirtualInterfaceParameters)initWithCoder:(id)a3;
- (NEVirtualInterfaceParameters)initWithType:(int64_t)a3 maxPendingPackets:(unint64_t)a4 ethernetAddress:(id)a5 mtu:(id)a6;
- (NEVirtualInterfaceParameters)initWithVirtualInterface:(NEVirtualInterface_s *)a3;
- (NEVirtualInterface_s)createVirtualInterfaceWithQueue:(id)a3 clientInfo:(void *)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEVirtualInterfaceParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEVirtualInterfaceParameters *)self controlSocket];
  [v4 encodeObject:v5 forKey:@"controlSocket"];

  v6 = [(NEVirtualInterfaceParameters *)self name];
  [v4 encodeObject:v6 forKey:@"name"];

  [v4 encodeInteger:-[NEVirtualInterfaceParameters type](self forKey:{"type"), @"type"}];
  [v4 encodeInt64:-[NEVirtualInterfaceParameters maxPendingPackets](self forKey:{"maxPendingPackets"), @"maxPendingPackets"}];
  v7 = [(NEVirtualInterfaceParameters *)self ethernetAddress];
  [v4 encodeObject:v7 forKey:@"ethernetAddress"];

  v8 = [(NEVirtualInterfaceParameters *)self mtu];
  [v4 encodeObject:v8 forKey:@"mtu"];
}

- (NEVirtualInterfaceParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEVirtualInterfaceParameters;
  v5 = [(NEVirtualInterfaceParameters *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"controlSocket"];
    controlSocket = v5->_controlSocket;
    v5->_controlSocket = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_maxPendingPackets = [v4 decodeInt64ForKey:@"maxPendingPackets"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ethernetAddress"];
    ethernetAddress = v5->_ethernetAddress;
    v5->_ethernetAddress = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mtu"];
    mtu = v5->_mtu;
    v5->_mtu = v12;
  }

  return v5;
}

- (NEVirtualInterface_s)createVirtualInterfaceWithQueue:(id)a3 clientInfo:(void *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NEVirtualInterfaceParameters *)self controlSocket];
  v8 = dup([v7 fileDescriptor]);

  if (v8 < 0)
  {
    v12 = *__error();
    if (strerror_r(v12, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16[0] = 67109378;
      v16[1] = v12;
      v17 = 2080;
      v18 = __strerrbuf;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "Failed to dup the interface control socket: [%d] %s", v16, 0x12u);
    }

    v11 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = [(NEVirtualInterfaceParameters *)self name];
    v11 = NEVirtualInterfaceCreateFromSocketAndName(v9, v8, [v10 UTF8String], -[NEVirtualInterfaceParameters type](self, "type"), v6, a4);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  if ([(NEVirtualInterfaceParameters *)self userEthernetController])
  {
    CFRelease([(NEVirtualInterfaceParameters *)self userEthernetController]);
  }

  v3.receiver = self;
  v3.super_class = NEVirtualInterfaceParameters;
  [(NEVirtualInterfaceParameters *)&v3 dealloc];
}

- (NEVirtualInterfaceParameters)initWithType:(int64_t)a3 maxPendingPackets:(unint64_t)a4 ethernetAddress:(id)a5 mtu:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = NEVirtualInterfaceParameters;
  v13 = [(NEVirtualInterfaceParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v13->_maxPendingPackets = a4;
    objc_storeStrong(&v13->_ethernetAddress, a5);
    objc_storeStrong(&v14->_mtu, a6);
  }

  return v14;
}

- (NEVirtualInterfaceParameters)initWithVirtualInterface:(NEVirtualInterface_s *)a3
{
  v14.receiver = self;
  v14.super_class = NEVirtualInterfaceParameters;
  v4 = [(NEVirtualInterfaceParameters *)&v14 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:dup(*(a3 + 74)) closeOnDealloc:1];
      controlSocket = v4->_controlSocket;
      v4->_controlSocket = v5;

      v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a3 + 265, 0x600u);
      name = v4->_name;
      v4->_name = &v7->isa;

      v9 = *(a3 + 32);
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:0xFFFFFFFFLL closeOnDealloc:1];
      v11 = v4->_controlSocket;
      v4->_controlSocket = v10;

      v12 = v4->_name;
      v4->_name = 0;

      v9 = 0;
    }

    v4->_type = v9;
  }

  return v4;
}

@end