@interface AMSMetricsIdentifierKey
+ (id)keyWithName:(id)name crossDeviceSync:(BOOL)sync isActiveITunesAccountRequired:(BOOL)required;
- (id)description;
@end

@implementation AMSMetricsIdentifierKey

+ (id)keyWithName:(id)name crossDeviceSync:(BOOL)sync isActiveITunesAccountRequired:(BOOL)required
{
  requiredCopy = required;
  syncCopy = sync;
  nameCopy = name;
  v8 = objc_opt_new();
  [v8 setName:nameCopy];

  [v8 setCrossDeviceSync:syncCopy];
  [v8 setIsActiveITunesAccountRequired:requiredCopy];

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