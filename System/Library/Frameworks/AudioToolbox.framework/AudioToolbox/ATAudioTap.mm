@interface ATAudioTap
- (ATAudioTap)initWithCoder:(id)coder;
- (ATAudioTap)initWithTapDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATAudioTap

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      tapDescription = [(ATAudioTap *)self tapDescription];
      tapDescription2 = [(ATAudioTap *)v5 tapDescription];
      if ([tapDescription isEqual:tapDescription2])
      {
        isScreenSharingHost = [(ATAudioTap *)self isScreenSharingHost];
        v9 = isScreenSharingHost ^ [(ATAudioTap *)v5 isScreenSharingHost]^ 1;
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

- (ATAudioTap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tapDescription"];
  v6 = [(ATAudioTap *)self initWithTapDescription:v5];
  if (v6)
  {
    v6->_screenSharingHost = [coderCopy decodeBoolForKey:@"screenSharingHost"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_tapDescription forKey:@"tapDescription"];
  [coderCopy encodeBool:self->_screenSharingHost forKey:@"screenSharingHost"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  tapDescription = [(ATAudioTap *)self tapDescription];
  v7 = [tapDescription description];
  isScreenSharingHost = [(ATAudioTap *)self isScreenSharingHost];
  v9 = "";
  if (isScreenSharingHost)
  {
    v9 = ", screen sharing host -> YES";
  }

  v10 = [v3 stringWithFormat:@"<%@@%p: tap description -> %@%s>", v5, self, v7, v9];

  return v10;
}

- (ATAudioTap)initWithTapDescription:(id)description
{
  v17 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v12.receiver = self;
    v12.super_class = ATAudioTap;
    v6 = [(ATAudioTap *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_tapDescription, description);
    }

    self = v7;
    selfCopy = self;
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

    selfCopy = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end