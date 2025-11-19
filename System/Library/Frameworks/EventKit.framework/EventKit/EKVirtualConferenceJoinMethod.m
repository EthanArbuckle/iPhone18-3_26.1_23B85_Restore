@interface EKVirtualConferenceJoinMethod
- (BOOL)isEqual:(id)a3;
- (EKVirtualConferenceJoinMethod)initWithTitle:(id)a3 url:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKVirtualConferenceJoinMethod

- (EKVirtualConferenceJoinMethod)initWithTitle:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = EKVirtualConferenceJoinMethod;
  v8 = [(EKVirtualConferenceJoinMethod *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_URL, a4);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithTitle:self->_title url:self->_URL];
  [v4 setIsBroadcast:self->_isBroadcast];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(EKVirtualConferenceJoinMethod *)v5 isBroadcast];
      v7 = [(EKVirtualConferenceJoinMethod *)self isBroadcast];
      v8 = [(EKVirtualConferenceJoinMethod *)v5 title];
      v9 = [(EKVirtualConferenceJoinMethod *)self title];
      if (CalEqualStrings())
      {
        v10 = v6 ^ v7 ^ 1;
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