@interface EKVirtualConferenceJoinMethod
- (BOOL)isEqual:(id)equal;
- (EKVirtualConferenceJoinMethod)initWithTitle:(id)title url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKVirtualConferenceJoinMethod

- (EKVirtualConferenceJoinMethod)initWithTitle:(id)title url:(id)url
{
  titleCopy = title;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = EKVirtualConferenceJoinMethod;
  v8 = [(EKVirtualConferenceJoinMethod *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_URL, url);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithTitle:self->_title url:self->_URL];
  [v4 setIsBroadcast:self->_isBroadcast];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isBroadcast = [(EKVirtualConferenceJoinMethod *)v5 isBroadcast];
      isBroadcast2 = [(EKVirtualConferenceJoinMethod *)self isBroadcast];
      title = [(EKVirtualConferenceJoinMethod *)v5 title];
      title2 = [(EKVirtualConferenceJoinMethod *)self title];
      if (CalEqualStrings())
      {
        v10 = isBroadcast ^ isBroadcast2 ^ 1;
        v11 = [(EKVirtualConferenceJoinMethod *)v5 URL];
        v12 = [(EKVirtualConferenceJoinMethod *)self URL];
        v13 = CalEqualObjects() & v10;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  title = self->_title;
  URL = self->_URL;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isBroadcast];
  v6 = [v2 stringWithFormat:@"EKVirtualConferenceJoinMethod title: %@, url: %@, isBroadcast: %@", title, URL, v5];

  return v6;
}

@end