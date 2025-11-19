@interface _TUIFeedCaptureDynamicState
- (BOOL)isEqual:(id)a3;
- (_TUIFeedCaptureDynamicState)initWithValue:(id)a3 kind:(id)a4 instance:(id)a5 parameters:(id)a6;
- (unint64_t)hash;
@end

@implementation _TUIFeedCaptureDynamicState

- (_TUIFeedCaptureDynamicState)initWithValue:(id)a3 kind:(id)a4 instance:(id)a5 parameters:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _TUIFeedCaptureDynamicState;
  v15 = [(_TUIFeedCaptureDynamicState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, a3);
    objc_storeStrong(&v16->_kind, a4);
    objc_storeStrong(&v16->_instance, a5);
    objc_storeStrong(&v16->_parameters, a6);
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (v6 && ((kind = self->_kind, kind == v6[2]) || [(NSString *)kind isEqualToString:?]) && ((instance = self->_instance, instance == v6[3]) || [instance isEqual:?]))
  {
    parameters = self->_parameters;
    if (parameters == v6[4])
    {
      v10 = 1;
    }

    else
    {
      v10 = [parameters isEqual:?];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_kind hash];
  v4 = [self->_instance hash]^ v3;
  return v4 ^ [self->_parameters hash];
}

@end