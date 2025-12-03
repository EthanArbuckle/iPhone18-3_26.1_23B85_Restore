@interface _MSPresentationState
+ (BOOL)isRunningInCameraContext;
- (BOOL)isEqual:(id)equal;
- (_MSPresentationState)init;
- (_MSPresentationState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (_MSPresentationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _MSPresentationState;
  v5 = [(_MSPresentationState *)&v7 init];
  if (v5)
  {
    v5->_presentationStyle = [coderCopy decodeIntegerForKey:@"presentationStyle"];
    v5->_presentationContext = [coderCopy decodeIntegerForKey:@"pContext"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  presentationStyle = self->_presentationStyle;
  coderCopy = coder;
  [coderCopy encodeInteger:presentationStyle forKey:@"presentationStyle"];
  [coderCopy encodeInteger:self->_presentationContext forKey:@"pContext"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _MSPresentationState;
    if ([(_MSPresentationState *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
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