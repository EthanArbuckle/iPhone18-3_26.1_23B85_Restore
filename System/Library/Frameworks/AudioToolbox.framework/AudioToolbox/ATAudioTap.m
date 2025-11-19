@interface ATAudioTap
- (ATAudioTap)initWithCoder:(id)a3;
- (ATAudioTap)initWithTapDescription:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATAudioTap

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATAudioTap *)self tapDescription];
      v7 = [(ATAudioTap *)v5 tapDescription];
      if ([v6 isEqual:v7])
      {
        v8 = [(ATAudioTap *)self isScreenSharingHost];
        v9 = v8 ^ [(ATAudioTap *)v5 isScreenSharingHost]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (ATAudioTap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tapDescription"];
  v6 = [(ATAudioTap *)self initWithTapDescription:v5];
  if (v6)
  {
    v6->_screenSharingHost = [v4 decodeBoolForKey:@"screenSharingHost"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_tapDescription forKey:@"tapDescription"];
  [v4 encodeBool:self->_screenSharingHost forKey:@"screenSharingHost"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATAudioTap *)self tapDescription];
  v7 = [v6 description];
  v8 = [(ATAudioTap *)self isScreenSharingHost];
  v9 = "";
  if (v8)
  {
    v9 = ", screen sharing host -> YES";
  }

  v10 = [v3 stringWithFormat:@"<%@@%p: tap description -> %@%s>", v5, self, v7, v9];

  return v10;
}

- (ATAudioTap)initWithTapDescription:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = ATAudioTap;
    v6 = [(ATAudioTap *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_tapDescription, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = gATAudioTapLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "ATAudioTap.mm";
      v15 = 1024;
      v16 = 409;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d tapDescription should be non-nil", buf, 0x12u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

@end