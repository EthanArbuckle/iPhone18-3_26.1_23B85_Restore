@interface CXSetScreeningCallAction
- (CXSetScreeningCallAction)initWithCallUUID:(id)a3 screening:(BOOL)a4;
- (CXSetScreeningCallAction)initWithCallUUID:(id)a3 screeningMode:(int64_t)a4;
- (CXSetScreeningCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetScreeningCallAction

- (CXSetScreeningCallAction)initWithCallUUID:(id)a3 screening:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = CXSetScreeningCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_screeningMode = v4;
  }

  return result;
}

- (CXSetScreeningCallAction)initWithCallUUID:(id)a3 screeningMode:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = CXSetScreeningCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_screeningMode = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetScreeningCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" screeningMode=%ld", -[CXSetScreeningCallAction screeningMode](self, "screeningMode")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetScreeningCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  v6[8] = [(CXSetScreeningCallAction *)self screeningMode:v7.receiver];
}

- (CXSetScreeningCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetScreeningCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_screeningMode);
    v5->_screeningMode = [v4 decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetScreeningCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetScreeningCallAction *)self screeningMode:v7.receiver];
  v6 = NSStringFromSelector(sel_screeningMode);
  [v4 encodeInteger:v5 forKey:v6];
}

@end