@interface HMAttributeRequest
- (HMAttributeRequest)initWithAccessoryProfile:(id)profile attribute:(id)attribute;
@end

@implementation HMAttributeRequest

- (HMAttributeRequest)initWithAccessoryProfile:(id)profile attribute:(id)attribute
{
  profileCopy = profile;
  attributeCopy = attribute;
  v9 = attributeCopy;
  selfCopy = 0;
  if (profileCopy && attributeCopy)
  {
    v14.receiver = self;
    v14.super_class = HMAttributeRequest;
    _init = [(HMRequestBase *)&v14 _init];
    v12 = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, profile);
      objc_storeStrong(v12 + 2, attribute);
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

@end