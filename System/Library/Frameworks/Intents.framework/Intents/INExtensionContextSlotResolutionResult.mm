@interface INExtensionContextSlotResolutionResult
- (INExtensionContextSlotResolutionResult)initWithCoder:(id)coder;
- (INExtensionContextSlotResolutionResult)initWithResult:(int64_t)result data:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INExtensionContextSlotResolutionResult

- (void)encodeWithCoder:(id)coder
{
  result = self->_result;
  coderCopy = coder;
  [coderCopy encodeInteger:result forKey:@"result"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

- (INExtensionContextSlotResolutionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INExtensionContextSlotResolutionResult;
  v5 = [(INExtensionContextSlotResolutionResult *)&v9 init];
  if (v5)
  {
    v5->_result = [coderCopy decodeIntegerForKey:@"result"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (INExtensionContextSlotResolutionResult)initWithResult:(int64_t)result data:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = INExtensionContextSlotResolutionResult;
  v8 = [(INExtensionContextSlotResolutionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_result = result;
    objc_storeStrong(&v8->_data, data);
  }

  return v9;
}

@end