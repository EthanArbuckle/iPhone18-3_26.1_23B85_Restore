@interface ILNetworkResponse
- (ILNetworkResponse)initWithCoder:(id)a3;
- (ILNetworkResponse)initWithURLResponse:(id)a3 data:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ILNetworkResponse

- (ILNetworkResponse)initWithURLResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ILNetworkResponse;
  v8 = [(ILNetworkResponse *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    urlResponse = v8->_urlResponse;
    v8->_urlResponse = v9;

    v11 = [v7 copy];
    data = v8->_data;
    v8->_data = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ILNetworkResponse *)self urlResponse];
  v6 = [(ILNetworkResponse *)self data];
  v7 = [v3 stringWithFormat:@"<%@ %p urlResponse=%@ data.length=%lu>", v4, self, v5, objc_msgSend(v6, "length")];

  return v7;
}

- (ILNetworkResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_urlResponse);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_data);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(ILNetworkResponse *)self initWithURLResponse:v7 data:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ILNetworkResponse *)self urlResponse];
  v6 = NSStringFromSelector(sel_urlResponse);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(ILNetworkResponse *)self data];
  v7 = NSStringFromSelector(sel_data);
  [v4 encodeObject:v8 forKey:v7];
}

@end