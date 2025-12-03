@interface NEPacket
- (NEPacket)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithData:(char)data protocolFamily:(void *)family metadata:;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEPacket

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEPacket allocWithZone:zone];
  data = [(NEPacket *)self data];
  protocolFamily = [(NEPacket *)self protocolFamily];
  metadata = [(NEPacket *)self metadata];
  v8 = [(NEPacket *)&v4->super.isa initWithData:data protocolFamily:protocolFamily metadata:metadata];

  return v8;
}

- (id)initWithData:(char)data protocolFamily:(void *)family metadata:
{
  v8 = a2;
  familyCopy = family;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = NEPacket;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      *(self + 8) = data;
      objc_storeStrong(self + 4, family);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(NEPacket *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  [coderCopy encodeBool:-[NEPacket protocolFamily](self forKey:{"protocolFamily") != 0, @"protocolFamily"}];
  metadata = [(NEPacket *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (NEPacket)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NEPacket;
  v5 = [(NEPacket *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v5->_protocolFamily = [coderCopy decodeIntForKey:@"protocolFamily"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v8;
  }

  return v5;
}

- (void)dealloc
{
  if (self && objc_getProperty(self, a2, 48, 1))
  {
    Property = objc_getProperty(self, v3, 48, 1);
    [(NEFilterPacketInterpose *)Property freePacket:?];
    objc_setProperty_atomic(self, v5, 0, 48);
  }

  v6.receiver = self;
  v6.super_class = NEPacket;
  [(NEPacket *)&v6 dealloc];
}

@end