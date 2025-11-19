@interface CXMember
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMember:(id)a3;
- (CXMember)initWithCoder:(id)a3;
- (CXMember)initWithHandle:(id)a3 identityBlob:(id)a4 stableDeviceIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXMember

- (CXMember)initWithHandle:(id)a3 identityBlob:(id)a4 stableDeviceIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = CXMember;
  v12 = [(CXMember *)&v14 init];
  if (v12)
  {
    if (!v9)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXMember initWithHandle:identityBlob:stableDeviceIdentifier:]", @"handle"}];
    }

    objc_storeStrong(&v12->_handle, a3);
    objc_storeStrong(&v12->_identityBlob, a4);
    objc_storeStrong(&v12->_stableDeviceIdentifier, a5);
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
  v5 = [(CXMember *)self handle];
  v6 = [v5 description];
  v7 = [(CXMember *)self identityBlob];
  v8 = [v7 description];
  v9 = [v3 stringWithFormat:@"<%@ %p handle=%@ identityBlob=%@>", v4, self, v6, v8];

  return v9;
}

uint64_t __23__CXMember_description__block_invoke()
{
  result = CUTWeakLinkSymbol();
  description__TULoggableStringForHandle_0 = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXMember *)self isEqualToMember:v4];

  return v5;
}

- (BOOL)isEqualToMember:(id)a3
{
  v4 = a3;
  v5 = [(CXMember *)self handle];
  v6 = [v4 handle];
  if (v5 | v6 && ![v5 isEqual:v6])
  {
    v11 = 0;
  }

  else
  {
    v7 = [(CXMember *)self identityBlob];
    v8 = [v4 identityBlob];
    if (v7 | v8 && ![v7 isEqualToData:v8])
    {
      v11 = 0;
    }

    else
    {
      v9 = [(CXMember *)self stableDeviceIdentifier];
      v10 = [v4 stableDeviceIdentifier];
      if (v9 | v10)
      {
        v11 = [v9 isEqual:v10];
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
  v3 = [(CXMember *)self handle];
  v4 = [v3 hash];
  v5 = [(CXMember *)self identityBlob];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXMember *)self stableDeviceIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXMember *)self handle];
  v6 = [(CXMember *)self identityBlob];
  v7 = [(CXMember *)self stableDeviceIdentifier];
  v8 = [v4 initWithHandle:v5 identityBlob:v6 stableDeviceIdentifier:v7];

  return v8;
}

- (CXMember)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_handle);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_identityBlob);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_stableDeviceIdentifier);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = [(CXMember *)self initWithHandle:v7 identityBlob:v10 stableDeviceIdentifier:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXMember *)self handle];
  v6 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXMember *)self identityBlob];
  v8 = NSStringFromSelector(sel_identityBlob);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(CXMember *)self stableDeviceIdentifier];
  v9 = NSStringFromSelector(sel_stableDeviceIdentifier);
  [v4 encodeObject:v10 forKey:v9];
}

@end