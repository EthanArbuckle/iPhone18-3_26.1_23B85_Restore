@interface _ATXActionMetaData
- (_ATXActionMetaData)initWithCoder:(id)a3;
- (_ATXActionMetaData)initWithTitle:(id)a3 subtitle:(id)a4 shouldPredict:(BOOL)a5 shouldPredictLockScreen:(BOOL)a6 actionKey:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ATXActionMetaData

- (_ATXActionMetaData)initWithTitle:(id)a3 subtitle:(id)a4 shouldPredict:(BOOL)a5 shouldPredictLockScreen:(BOOL)a6 actionKey:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = _ATXActionMetaData;
  v15 = [(_ATXActionMetaData *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [v13 copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    v15->_shouldPredict = a5;
    v15->_shouldPredictLockScreen = a6;
    v20 = [v14 copy];
    actionKey = v15->_actionKey;
    v15->_actionKey = v20;
  }

  return v15;
}

- (_ATXActionMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [v4 decodeBoolForKey:@"shouldPredict"];
  v8 = [v4 decodeBoolForKey:@"shouldPredictLockScreen"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionKey"];

  v10 = [(_ATXActionMetaData *)self initWithTitle:v5 subtitle:v6 shouldPredict:v7 shouldPredictLockScreen:v8 actionKey:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeBool:self->_shouldPredict forKey:@"shouldPredict"];
  [v5 encodeBool:self->_shouldPredictLockScreen forKey:@"shouldPredictLockScreen"];
  [v5 encodeObject:self->_actionKey forKey:@"actionKey"];
}

@end