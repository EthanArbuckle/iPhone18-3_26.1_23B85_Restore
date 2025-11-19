@interface CXCallDTMFUpdate
- (CXCallDTMFUpdate)initWithCoder:(id)a3;
- (CXCallDTMFUpdate)initWithDigits:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCallDTMFUpdate

- (CXCallDTMFUpdate)initWithDigits:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXCallDTMFUpdate;
  v5 = [(CXCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXCallDTMFUpdate initWithDigits:]", @"digits"}];
    }

    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 copy];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallDTMFUpdate *)self digits];
  v6 = [v3 stringWithFormat:@"<%@ %p digits=%@>", v4, self, v5];

  return v6;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v6 = a3;
  v7 = [(CXCallDTMFUpdate *)self UUID];
  v8 = [v7 copyWithZone:a4];
  [v6 setUUID:v8];

  v10 = [(CXCallDTMFUpdate *)self digits];
  v9 = [v10 copyWithZone:a4];
  [v6 setDigits:v9];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallDTMFUpdate *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallDTMFUpdate *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXCallDTMFUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CXCallDTMFUpdate;
  v5 = [(CXCallDTMFUpdate *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_digits);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    digits = v5->_digits;
    v5->_digits = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallDTMFUpdate *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(CXCallDTMFUpdate *)self digits];
  v7 = NSStringFromSelector(sel_digits);
  [v4 encodeObject:v8 forKey:v7];
}

@end