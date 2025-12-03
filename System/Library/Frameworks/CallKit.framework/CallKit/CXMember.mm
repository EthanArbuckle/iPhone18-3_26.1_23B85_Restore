@interface CXMember
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMember:(id)member;
- (CXMember)initWithCoder:(id)coder;
- (CXMember)initWithHandle:(id)handle identityBlob:(id)blob stableDeviceIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXMember

- (CXMember)initWithHandle:(id)handle identityBlob:(id)blob stableDeviceIdentifier:(id)identifier
{
  handleCopy = handle;
  blobCopy = blob;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CXMember;
  v12 = [(CXMember *)&v14 init];
  if (v12)
  {
    if (!handleCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXMember initWithHandle:identityBlob:stableDeviceIdentifier:]", @"handle"}];
    }

    objc_storeStrong(&v12->_handle, handle);
    objc_storeStrong(&v12->_identityBlob, blob);
    objc_storeStrong(&v12->_stableDeviceIdentifier, identifier);
  }

  return v12;
}

- (id)description
{
  if (description__pred_TULoggableStringForHandleTelephonyUtilities_0 != -1)
  {
    [CXMember description];
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  handle = [(CXMember *)self handle];
  v6 = [handle description];
  identityBlob = [(CXMember *)self identityBlob];
  v8 = [identityBlob description];
  v9 = [v3 stringWithFormat:@"<%@ %p handle=%@ identityBlob=%@>", v4, self, v6, v8];

  return v9;
}

uint64_t __23__CXMember_description__block_invoke()
{
  result = CUTWeakLinkSymbol();
  description__TULoggableStringForHandle_0 = result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXMember *)self isEqualToMember:equalCopy];

  return v5;
}

- (BOOL)isEqualToMember:(id)member
{
  memberCopy = member;
  handle = [(CXMember *)self handle];
  handle2 = [memberCopy handle];
  if (handle | handle2 && ![handle isEqual:handle2])
  {
    v11 = 0;
  }

  else
  {
    identityBlob = [(CXMember *)self identityBlob];
    identityBlob2 = [memberCopy identityBlob];
    if (identityBlob | identityBlob2 && ![identityBlob isEqualToData:identityBlob2])
    {
      v11 = 0;
    }

    else
    {
      stableDeviceIdentifier = [(CXMember *)self stableDeviceIdentifier];
      stableDeviceIdentifier2 = [memberCopy stableDeviceIdentifier];
      if (stableDeviceIdentifier | stableDeviceIdentifier2)
      {
        v11 = [stableDeviceIdentifier isEqual:stableDeviceIdentifier2];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

- (unint64_t)hash
{
  handle = [(CXMember *)self handle];
  v4 = [handle hash];
  identityBlob = [(CXMember *)self identityBlob];
  v6 = [identityBlob hash] ^ v4;
  stableDeviceIdentifier = [(CXMember *)self stableDeviceIdentifier];
  v8 = [stableDeviceIdentifier hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  handle = [(CXMember *)self handle];
  identityBlob = [(CXMember *)self identityBlob];
  stableDeviceIdentifier = [(CXMember *)self stableDeviceIdentifier];
  v8 = [v4 initWithHandle:handle identityBlob:identityBlob stableDeviceIdentifier:stableDeviceIdentifier];

  return v8;
}

- (CXMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_identityBlob);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_stableDeviceIdentifier);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(CXMember *)self initWithHandle:v7 identityBlob:v10 stableDeviceIdentifier:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  handle = [(CXMember *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v6];

  identityBlob = [(CXMember *)self identityBlob];
  v8 = NSStringFromSelector(sel_identityBlob);
  [coderCopy encodeObject:identityBlob forKey:v8];

  stableDeviceIdentifier = [(CXMember *)self stableDeviceIdentifier];
  v9 = NSStringFromSelector(sel_stableDeviceIdentifier);
  [coderCopy encodeObject:stableDeviceIdentifier forKey:v9];
}

@end