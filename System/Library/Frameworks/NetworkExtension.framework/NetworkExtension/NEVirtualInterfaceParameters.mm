@interface NEVirtualInterfaceParameters
- (NEVirtualInterfaceParameters)initWithCoder:(id)coder;
- (NEVirtualInterfaceParameters)initWithType:(int64_t)type maxPendingPackets:(unint64_t)packets ethernetAddress:(id)address mtu:(id)mtu;
- (NEVirtualInterfaceParameters)initWithVirtualInterface:(NEVirtualInterface_s *)interface;
- (NEVirtualInterface_s)createVirtualInterfaceWithQueue:(id)queue clientInfo:(void *)info;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVirtualInterfaceParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  controlSocket = [(NEVirtualInterfaceParameters *)self controlSocket];
  [coderCopy encodeObject:controlSocket forKey:@"controlSocket"];

  name = [(NEVirtualInterfaceParameters *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[NEVirtualInterfaceParameters type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInt64:-[NEVirtualInterfaceParameters maxPendingPackets](self forKey:{"maxPendingPackets"), @"maxPendingPackets"}];
  ethernetAddress = [(NEVirtualInterfaceParameters *)self ethernetAddress];
  [coderCopy encodeObject:ethernetAddress forKey:@"ethernetAddress"];

  v8 = [(NEVirtualInterfaceParameters *)self mtu];
  [coderCopy encodeObject:v8 forKey:@"mtu"];
}

- (NEVirtualInterfaceParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEVirtualInterfaceParameters;
  v5 = [(NEVirtualInterfaceParameters *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"controlSocket"];
    controlSocket = v5->_controlSocket;
    v5->_controlSocket = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_maxPendingPackets = [coderCopy decodeInt64ForKey:@"maxPendingPackets"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ethernetAddress"];
    ethernetAddress = v5->_ethernetAddress;
    v5->_ethernetAddress = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mtu"];
    mtu = v5->_mtu;
    v5->_mtu = v12;
  }

  return v5;
}

- (NEVirtualInterface_s)createVirtualInterfaceWithQueue:(id)queue clientInfo:(void *)info
{
  v20 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  controlSocket = [(NEVirtualInterfaceParameters *)self controlSocket];
  v8 = dup([controlSocket fileDescriptor]);

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
    name = [(NEVirtualInterfaceParameters *)self name];
    v11 = NEVirtualInterfaceCreateFromSocketAndName(v9, v8, [name UTF8String], -[NEVirtualInterfaceParameters type](self, "type"), queueCopy, info);
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

- (NEVirtualInterfaceParameters)initWithType:(int64_t)type maxPendingPackets:(unint64_t)packets ethernetAddress:(id)address mtu:(id)mtu
{
  addressCopy = address;
  mtuCopy = mtu;
  v16.receiver = self;
  v16.super_class = NEVirtualInterfaceParameters;
  v13 = [(NEVirtualInterfaceParameters *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_maxPendingPackets = packets;
    objc_storeStrong(&v13->_ethernetAddress, address);
    objc_storeStrong(&v14->_mtu, mtu);
  }

  return v14;
}

- (NEVirtualInterfaceParameters)initWithVirtualInterface:(NEVirtualInterface_s *)interface
{
  v14.receiver = self;
  v14.super_class = NEVirtualInterfaceParameters;
  v4 = [(NEVirtualInterfaceParameters *)&v14 init];
  if (v4)
  {
    if (interface)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:dup(*(interface + 74)) closeOnDealloc:1];
      controlSocket = v4->_controlSocket;
      v4->_controlSocket = v5;

      v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], interface + 265, 0x600u);
      name = v4->_name;
      v4->_name = &v7->isa;

      v9 = *(interface + 32);
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