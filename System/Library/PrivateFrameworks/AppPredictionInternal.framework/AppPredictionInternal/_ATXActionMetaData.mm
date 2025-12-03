@interface _ATXActionMetaData
- (_ATXActionMetaData)initWithCoder:(id)coder;
- (_ATXActionMetaData)initWithTitle:(id)title subtitle:(id)subtitle shouldPredict:(BOOL)predict shouldPredictLockScreen:(BOOL)screen actionKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ATXActionMetaData

- (_ATXActionMetaData)initWithTitle:(id)title subtitle:(id)subtitle shouldPredict:(BOOL)predict shouldPredictLockScreen:(BOOL)screen actionKey:(id)key
{
  titleCopy = title;
  subtitleCopy = subtitle;
  keyCopy = key;
  v23.receiver = self;
  v23.super_class = _ATXActionMetaData;
  v15 = [(_ATXActionMetaData *)&v23 init];
  if (v15)
  {
    v16 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v16;

    v18 = [subtitleCopy copy];
    subtitle = v15->_subtitle;
    v15->_subtitle = v18;

    v15->_shouldPredict = predict;
    v15->_shouldPredictLockScreen = screen;
    v20 = [keyCopy copy];
    actionKey = v15->_actionKey;
    v15->_actionKey = v20;
  }

  return v15;
}

- (_ATXActionMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
  v7 = [coderCopy decodeBoolForKey:@"shouldPredict"];
  v8 = [coderCopy decodeBoolForKey:@"shouldPredictLockScreen"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionKey"];

  v10 = [(_ATXActionMetaData *)self initWithTitle:v5 subtitle:v6 shouldPredict:v7 shouldPredictLockScreen:v8 actionKey:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeBool:self->_shouldPredict forKey:@"shouldPredict"];
  [coderCopy encodeBool:self->_shouldPredictLockScreen forKey:@"shouldPredictLockScreen"];
  [coderCopy encodeObject:self->_actionKey forKey:@"actionKey"];
}

@end