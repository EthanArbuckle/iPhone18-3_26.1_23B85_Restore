@interface BCSAppclipCodePayload
- (BCSAppclipCodePayload)initWithCoder:(id)coder;
- (BCSAppclipCodePayload)initWithData:(id)data version:(unint64_t)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSAppclipCodePayload

- (BCSAppclipCodePayload)initWithData:(id)data version:(unint64_t)version
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = BCSAppclipCodePayload;
  v8 = [(BCSAppclipCodePayload *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_payload, data);
    v9->_version = version;
    v10 = v9;
  }

  return v9;
}

- (BCSAppclipCodePayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
  v6 = [coderCopy _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"version"];

  v7 = -[BCSAppclipCodePayload initWithData:version:](self, "initWithData:version:", v5, [v6 unsignedIntegerValue]);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  payload = self->_payload;
  coderCopy = coder;
  [coderCopy encodeObject:payload forKey:@"payloadData"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_version];
  [coderCopy encodeObject:v6 forKey:@"version"];
}

@end