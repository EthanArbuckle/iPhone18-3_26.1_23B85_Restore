@interface CXSetTTYTypeCallAction
- (CXSetTTYTypeCallAction)initWithCallUUID:(id)d ttyType:(int64_t)type;
- (CXSetTTYTypeCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetTTYTypeCallAction

- (CXSetTTYTypeCallAction)initWithCallUUID:(id)d ttyType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = CXSetTTYTypeCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_ttyType = type;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetTTYTypeCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" ttyType=%ld", -[CXSetTTYTypeCallAction ttyType](self, "ttyType")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetTTYTypeCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setTtyType:{-[CXSetTTYTypeCallAction ttyType](self, "ttyType", v7.receiver, v7.super_class)}];
}

- (CXSetTTYTypeCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetTTYTypeCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_ttyType);
    v5->_ttyType = [coderCopy decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetTTYTypeCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetTTYTypeCallAction *)self ttyType:v7.receiver];
  v6 = NSStringFromSelector(sel_ttyType);
  [coderCopy encodeInteger:v5 forKey:v6];
}

@end