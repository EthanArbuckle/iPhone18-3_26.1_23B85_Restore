@interface AMSMetricsIdentifierKey
+ (id)keyWithName:(id)a3 crossDeviceSync:(BOOL)a4 isActiveITunesAccountRequired:(BOOL)a5;
- (id)description;
@end

@implementation AMSMetricsIdentifierKey

+ (id)keyWithName:(id)a3 crossDeviceSync:(BOOL)a4 isActiveITunesAccountRequired:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setName:v7];

  [v8 setCrossDeviceSync:v6];
  [v8 setIsActiveITunesAccountRequired:v5];

  return v8;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = AMSMetricsIdentifierKey;
  v3 = [(AMSMetricsIdentifierKey *)&v9 description];
  name = self->_name;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_crossDeviceSync];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActiveITunesAccountRequired];
  v7 = [v3 stringByAppendingFormat:@" (name: %@, crossDeviceSync: %@, isActiveITunesAccountRequired: %@)", name, v5, v6];

  return v7;
}

@end