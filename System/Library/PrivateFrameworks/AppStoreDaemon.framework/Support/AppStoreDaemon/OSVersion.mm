@interface OSVersion
- (BOOL)isEqual:(id)equal;
- (void)description;
@end

@implementation OSVersion

- (void)description
{
  selfCopy = self;
  if (self)
  {
    v2 = [NSMutableString stringWithFormat:@"%lu", self[1]];
    v3 = v2;
    if (selfCopy[2] > 0 || selfCopy[3] >= 1)
    {
      [v2 appendFormat:@".%lu", selfCopy[2]];
      if (selfCopy[3] >= 1)
      {
        [v3 appendFormat:@".%lu", selfCopy[3]];
      }
    }

    selfCopy = [v3 copy];
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self)
      {
        LOBYTE(self) = v5->_version.major == self->_version.major && v5->_version.minor == self->_version.minor && v5->_version.patch == self->_version.patch;
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

@end