@interface ASDIAPInfoRequestOptions
- (ASDIAPInfoRequestOptions)initWithAdamIds:(id)a3;
- (ASDIAPInfoRequestOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ASDIAPInfoRequestOptions

- (ASDIAPInfoRequestOptions)initWithAdamIds:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDIAPInfoRequestOptions;
  v5 = [(ASDIAPInfoRequestOptions *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    adamIds = v5->_adamIds;
    v5->_adamIds = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSArray *)self->_adamIds copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (ASDIAPInfoRequestOptions)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ASDIAPInfoRequestOptionsAdamIdsCodingKey"];

    adamIds = v5->_adamIds;
    v5->_adamIds = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end