@interface _HMUserSettingEntry
- (_HMUserSettingEntry)initWithKeyPath:(id)path constraintArray:(id)array;
@end

@implementation _HMUserSettingEntry

- (_HMUserSettingEntry)initWithKeyPath:(id)path constraintArray:(id)array
{
  pathCopy = path;
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = _HMUserSettingEntry;
  v9 = [(_HMUserSettingEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, path);
    objc_storeStrong(&v10->_constraints, array);
  }

  return v10;
}

@end