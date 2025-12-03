@interface CXSetScreeningCallAction
- (CXSetScreeningCallAction)initWithCallUUID:(id)d screening:(BOOL)screening;
- (CXSetScreeningCallAction)initWithCallUUID:(id)d screeningMode:(int64_t)mode;
- (CXSetScreeningCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetScreeningCallAction

- (CXSetScreeningCallAction)initWithCallUUID:(id)d screening:(BOOL)screening
{
  screeningCopy = screening;
  v6.receiver = self;
  v6.super_class = CXSetScreeningCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_screeningMode = screeningCopy;
  }

  return result;
}

- (CXSetScreeningCallAction)initWithCallUUID:(id)d screeningMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = CXSetScreeningCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_screeningMode = mode;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetScreeningCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" screeningMode=%ld", -[CXSetScreeningCallAction screeningMode](self, "screeningMode")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetScreeningCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  copyCopy[8] = [(CXSetScreeningCallAction *)self screeningMode:v7.receiver];
}

- (CXSetScreeningCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetScreeningCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_screeningMode);
    v5->_screeningMode = [coderCopy decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetScreeningCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetScreeningCallAction *)self screeningMode:v7.receiver];
  v6 = NSStringFromSelector(sel_screeningMode);
  [coderCopy encodeInteger:v5 forKey:v6];
}

@end