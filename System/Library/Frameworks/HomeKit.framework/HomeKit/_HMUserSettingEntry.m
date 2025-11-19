@interface _HMUserSettingEntry
- (_HMUserSettingEntry)initWithKeyPath:(id)a3 constraintArray:(id)a4;
@end

@implementation _HMUserSettingEntry

- (_HMUserSettingEntry)initWithKeyPath:(id)a3 constraintArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HMUserSettingEntry;
  v9 = [(_HMUserSettingEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyPath, a3);
    objc_storeStrong(&v10->_constraints, a4);
  }

  return v10;
}

@end