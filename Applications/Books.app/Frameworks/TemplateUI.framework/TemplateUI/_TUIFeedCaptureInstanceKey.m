@interface _TUIFeedCaptureInstanceKey
- (BOOL)isEqual:(id)a3;
- (_TUIFeedCaptureInstanceKey)initWithInstance:(id)a3 options:(id)a4;
@end

@implementation _TUIFeedCaptureInstanceKey

- (_TUIFeedCaptureInstanceKey)initWithInstance:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _TUIFeedCaptureInstanceKey;
  v9 = [(_TUIFeedCaptureInstanceKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instance, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && ((instance = self->_instance, instance == v4[1]) || [instance isEqual:?]))
  {
    options = self->_options;
    if (options == v4[2])
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