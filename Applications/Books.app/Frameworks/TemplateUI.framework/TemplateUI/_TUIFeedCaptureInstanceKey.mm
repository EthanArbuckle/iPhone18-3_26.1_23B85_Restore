@interface _TUIFeedCaptureInstanceKey
- (BOOL)isEqual:(id)equal;
- (_TUIFeedCaptureInstanceKey)initWithInstance:(id)instance options:(id)options;
@end

@implementation _TUIFeedCaptureInstanceKey

- (_TUIFeedCaptureInstanceKey)initWithInstance:(id)instance options:(id)options
{
  instanceCopy = instance;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = _TUIFeedCaptureInstanceKey;
  v9 = [(_TUIFeedCaptureInstanceKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instance, instance);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && ((instance = self->_instance, instance == equalCopy[1]) || [instance isEqual:?]))
  {
    options = self->_options;
    if (options == equalCopy[2])
    {
      v6 = 1;
    }

    else
    {
      v6 = [options isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end