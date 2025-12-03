@interface CXCallDTMFUpdate
- (CXCallDTMFUpdate)initWithCoder:(id)coder;
- (CXCallDTMFUpdate)initWithDigits:(id)digits;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXCallDTMFUpdate

- (CXCallDTMFUpdate)initWithDigits:(id)digits
{
  digitsCopy = digits;
  v11.receiver = self;
  v11.super_class = CXCallDTMFUpdate;
  v5 = [(CXCallDTMFUpdate *)&v11 init];
  if (v5)
  {
    if (!digitsCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXCallDTMFUpdate initWithDigits:]", @"digits"}];
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    v8 = [digitsCopy copy];
    digits = v5->_digits;
    v5->_digits = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  digits = [(CXCallDTMFUpdate *)self digits];
  v6 = [v3 stringWithFormat:@"<%@ %p digits=%@>", v4, self, digits];

  return v6;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  uUID = [(CXCallDTMFUpdate *)self UUID];
  v8 = [uUID copyWithZone:zone];
  [copyCopy setUUID:v8];

  digits = [(CXCallDTMFUpdate *)self digits];
  v9 = [digits copyWithZone:zone];
  [copyCopy setDigits:v9];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallDTMFUpdate *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallDTMFUpdate *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXCallDTMFUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CXCallDTMFUpdate;
  v5 = [(CXCallDTMFUpdate *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_digits);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    digits = v5->_digits;
    v5->_digits = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXCallDTMFUpdate *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  digits = [(CXCallDTMFUpdate *)self digits];
  v7 = NSStringFromSelector(sel_digits);
  [coderCopy encodeObject:digits forKey:v7];
}

@end