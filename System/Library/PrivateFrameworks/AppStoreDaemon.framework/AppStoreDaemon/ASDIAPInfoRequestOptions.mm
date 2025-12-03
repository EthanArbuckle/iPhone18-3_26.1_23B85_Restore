@interface ASDIAPInfoRequestOptions
- (ASDIAPInfoRequestOptions)initWithAdamIds:(id)ids;
- (ASDIAPInfoRequestOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ASDIAPInfoRequestOptions

- (ASDIAPInfoRequestOptions)initWithAdamIds:(id)ids
{
  idsCopy = ids;
  v9.receiver = self;
  v9.super_class = ASDIAPInfoRequestOptions;
  v5 = [(ASDIAPInfoRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [idsCopy copy];
    adamIds = v5->_adamIds;
    v5->_adamIds = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSArray *)self->_adamIds copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (ASDIAPInfoRequestOptions)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDIAPInfoRequestOptions;
  v5 = [(ASDIAPInfoRequestOptions *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ASDIAPInfoRequestOptionsAdamIdsCodingKey"];

    adamIds = v5->_adamIds;
    v5->_adamIds = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end