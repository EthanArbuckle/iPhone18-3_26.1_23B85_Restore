@interface INExtensionContextSlotResolutionResult
- (INExtensionContextSlotResolutionResult)initWithCoder:(id)a3;
- (INExtensionContextSlotResolutionResult)initWithResult:(int64_t)a3 data:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INExtensionContextSlotResolutionResult

- (void)encodeWithCoder:(id)a3
{
  result = self->_result;
  v5 = a3;
  [v5 encodeInteger:result forKey:@"result"];
  [v5 encodeObject:self->_data forKey:@"data"];
}

- (INExtensionContextSlotResolutionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INExtensionContextSlotResolutionResult;
  v5 = [(INExtensionContextSlotResolutionResult *)&v9 init];
  if (v5)
  {
    v5->_result = [v4 decodeIntegerForKey:@"result"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (INExtensionContextSlotResolutionResult)initWithResult:(int64_t)a3 data:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = INExtensionContextSlotResolutionResult;
  v8 = [(INExtensionContextSlotResolutionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = a3;
    objc_storeStrong(&v8->_data, a4);
  }

  return v9;
}

@end