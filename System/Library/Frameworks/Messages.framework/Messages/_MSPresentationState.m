@interface _MSPresentationState
+ (BOOL)isRunningInCameraContext;
- (BOOL)isEqual:(id)a3;
- (_MSPresentationState)init;
- (_MSPresentationState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MSPresentationState

+ (BOOL)isRunningInCameraContext
{
  if (isRunningInCameraContext_onceToken != -1)
  {
    +[_MSPresentationState isRunningInCameraContext];
  }

  return isRunningInCameraContext_isRunningInCameraContext;
}

- (_MSPresentationState)init
{
  v6.receiver = self;
  v6.super_class = _MSPresentationState;
  v2 = [(_MSPresentationState *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_presentationStyle = 0;
    if ([objc_opt_class() isRunningInCameraContext])
    {
      v4 = 1;
    }

    else
    {
      if (!IMIsRunningIniMessageAppsViewService())
      {
        v3->_presentationContext = 0;
        return v3;
      }

      v4 = 2;
    }

    v3->_presentationContext = v4;
  }

  return v3;
}

- (_MSPresentationState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _MSPresentationState;
  v5 = [(_MSPresentationState *)&v7 init];
  if (v5)
  {
    v5->_presentationStyle = [v4 decodeIntegerForKey:@"presentationStyle"];
    v5->_presentationContext = [v4 decodeIntegerForKey:@"pContext"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  presentationStyle = self->_presentationStyle;
  v5 = a3;
  [v5 encodeInteger:presentationStyle forKey:@"presentationStyle"];
  [v5 encodeInteger:self->_presentationContext forKey:@"pContext"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _MSPresentationState;
    if ([(_MSPresentationState *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      presentationStyle = self->_presentationStyle;
      if (presentationStyle == [(_MSPresentationState *)v5 presentationStyle])
      {
        presentationContext = self->_presentationContext;
        v8 = presentationContext == [(_MSPresentationState *)v5 presentationContext];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end