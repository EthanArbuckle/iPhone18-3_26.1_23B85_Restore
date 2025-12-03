@interface _TUIFeedCaptureDynamicState
- (BOOL)isEqual:(id)equal;
- (_TUIFeedCaptureDynamicState)initWithValue:(id)value kind:(id)kind instance:(id)instance parameters:(id)parameters;
- (unint64_t)hash;
@end

@implementation _TUIFeedCaptureDynamicState

- (_TUIFeedCaptureDynamicState)initWithValue:(id)value kind:(id)kind instance:(id)instance parameters:(id)parameters
{
  valueCopy = value;
  kindCopy = kind;
  instanceCopy = instance;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = _TUIFeedCaptureDynamicState;
  v15 = [(_TUIFeedCaptureDynamicState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_value, value);
    objc_storeStrong(&v16->_kind, kind);
    objc_storeStrong(&v16->_instance, instance);
    objc_storeStrong(&v16->_parameters, parameters);
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, equalCopy);

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