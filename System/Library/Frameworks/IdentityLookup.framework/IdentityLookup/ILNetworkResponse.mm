@interface ILNetworkResponse
- (ILNetworkResponse)initWithCoder:(id)coder;
- (ILNetworkResponse)initWithURLResponse:(id)response data:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ILNetworkResponse

- (ILNetworkResponse)initWithURLResponse:(id)response data:(id)data
{
  responseCopy = response;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = ILNetworkResponse;
  v8 = [(ILNetworkResponse *)&v14 init];
  if (v8)
  {
    v9 = [responseCopy copy];
    urlResponse = v8->_urlResponse;
    v8->_urlResponse = v9;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  urlResponse = [(ILNetworkResponse *)self urlResponse];
  data = [(ILNetworkResponse *)self data];
  v7 = [v3 stringWithFormat:@"<%@ %p urlResponse=%@ data.length=%lu>", v4, self, urlResponse, objc_msgSend(data, "length")];

  return v7;
}

- (ILNetworkResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_urlResponse);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_data);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(ILNetworkResponse *)self initWithURLResponse:v7 data:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  urlResponse = [(ILNetworkResponse *)self urlResponse];
  v6 = NSStringFromSelector(sel_urlResponse);
  [coderCopy encodeObject:urlResponse forKey:v6];

  data = [(ILNetworkResponse *)self data];
  v7 = NSStringFromSelector(sel_data);
  [coderCopy encodeObject:data forKey:v7];
}

@end