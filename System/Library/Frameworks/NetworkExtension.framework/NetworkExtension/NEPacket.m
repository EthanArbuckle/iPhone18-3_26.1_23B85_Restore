@interface NEPacket
- (NEPacket)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithData:(char)a3 protocolFamily:(void *)a4 metadata:;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEPacket

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEPacket allocWithZone:a3];
  v5 = [(NEPacket *)self data];
  v6 = [(NEPacket *)self protocolFamily];
  v7 = [(NEPacket *)self metadata];
  v8 = [(NEPacket *)&v4->super.isa initWithData:v5 protocolFamily:v6 metadata:v7];

  return v8;
}

- (id)initWithData:(char)a3 protocolFamily:(void *)a4 metadata:
{
  v8 = a2;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = NEPacket;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      *(a1 + 8) = a3;
      objc_storeStrong(a1 + 4, a4);
    }
  }

  return a1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEPacket *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  [v4 encodeBool:-[NEPacket protocolFamily](self forKey:{"protocolFamily") != 0, @"protocolFamily"}];
  v6 = [(NEPacket *)self metadata];
  [v4 encodeObject:v6 forKey:@"metadata"];
}

- (NEPacket)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEPacket;
  v5 = [(NEPacket *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v5->_protocolFamily = [v4 decodeIntForKey:@"protocolFamily"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
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