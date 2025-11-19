@interface BCSAppclipCodePayload
- (BCSAppclipCodePayload)initWithCoder:(id)a3;
- (BCSAppclipCodePayload)initWithData:(id)a3 version:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSAppclipCodePayload

- (BCSAppclipCodePayload)initWithData:(id)a3 version:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = BCSAppclipCodePayload;
  v8 = [(BCSAppclipCodePayload *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_payload, a3);
    v9->_version = a4;
    v10 = v9;
  }

  return v9;
}

- (BCSAppclipCodePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"payloadData"];
  v6 = [v4 _bcs_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"version"];

  v7 = -[BCSAppclipCodePayload initWithData:version:](self, "initWithData:version:", v5, [v6 unsignedIntegerValue]);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  payload = self->_payload;
  v5 = a3;
  [v5 encodeObject:payload forKey:@"payloadData"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_version];
  [v5 encodeObject:v6 forKey:@"version"];
}

@end