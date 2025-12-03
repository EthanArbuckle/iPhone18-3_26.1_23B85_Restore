@interface CXPlayDTMFCallAction
- (CXPlayDTMFCallAction)initWithCallUUID:(NSUUID *)callUUID digits:(NSString *)digits type:(CXPlayDTMFCallActionType)type;
- (CXPlayDTMFCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXPlayDTMFCallAction

- (CXPlayDTMFCallAction)initWithCallUUID:(NSUUID *)callUUID digits:(NSString *)digits type:(CXPlayDTMFCallActionType)type
{
  v8 = digits;
  v13.receiver = self;
  v13.super_class = CXPlayDTMFCallAction;
  v9 = [(CXCallAction *)&v13 initWithCallUUID:callUUID];
  if (v9)
  {
    if (!v8)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXPlayDTMFCallAction initWithCallUUID:digits:type:]", @"digits"}];
    }

    v10 = [(NSString *)v8 copy];
    v11 = v9->_digits;
    v9->_digits = v10;

    v9->_type = type;
  }

  return v9;
}

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXPlayDTMFCallAction;
  customDescription = [(CXCallAction *)&v6 customDescription];
  digits = [(CXPlayDTMFCallAction *)self digits];
  [customDescription appendFormat:@" digits=%@", digits];

  [customDescription appendFormat:@" type=%ld", -[CXPlayDTMFCallAction type](self, "type")];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXPlayDTMFCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXPlayDTMFCallAction *)self digits:v8.receiver];
  [copyCopy setDigits:v7];

  [copyCopy setType:{-[CXPlayDTMFCallAction type](self, "type")}];
}

- (CXPlayDTMFCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v12.receiver = self;
  v12.super_class = CXPlayDTMFCallAction;
  v5 = [(CXCallAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_digits);
    v8 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:v7];
    digits = v5->_digits;
    v5->_digits = v8;

    v10 = NSStringFromSelector(sel_type);
    v5->_type = [(NSCoder *)v4 decodeIntegerForKey:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CXPlayDTMFCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CXPlayDTMFCallAction *)self digits:v9.receiver];
  v6 = NSStringFromSelector(sel_digits);
  [coderCopy encodeObject:v5 forKey:v6];

  type = [(CXPlayDTMFCallAction *)self type];
  v8 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v8];
}

@end