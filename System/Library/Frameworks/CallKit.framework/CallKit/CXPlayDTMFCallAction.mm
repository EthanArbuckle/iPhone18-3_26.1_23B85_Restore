@interface CXPlayDTMFCallAction
- (CXPlayDTMFCallAction)initWithCallUUID:(NSUUID *)callUUID digits:(NSString *)digits type:(CXPlayDTMFCallActionType)type;
- (CXPlayDTMFCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
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
  v3 = [(CXCallAction *)&v6 customDescription];
  v4 = [(CXPlayDTMFCallAction *)self digits];
  [v3 appendFormat:@" digits=%@", v4];

  [v3 appendFormat:@" type=%ld", -[CXPlayDTMFCallAction type](self, "type")];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8.receiver = self;
  v8.super_class = CXPlayDTMFCallAction;
  v6 = a3;
  [(CXCallAction *)&v8 updateSanitizedCopy:v6 withZone:a4];
  v7 = [(CXPlayDTMFCallAction *)self digits:v8.receiver];
  [v6 setDigits:v7];

  [v6 setType:{-[CXPlayDTMFCallAction type](self, "type")}];
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

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CXPlayDTMFCallAction;
  v4 = a3;
  [(CXCallAction *)&v9 encodeWithCoder:v4];
  v5 = [(CXPlayDTMFCallAction *)self digits:v9.receiver];
  v6 = NSStringFromSelector(sel_digits);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXPlayDTMFCallAction *)self type];
  v8 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v7 forKey:v8];
}

@end