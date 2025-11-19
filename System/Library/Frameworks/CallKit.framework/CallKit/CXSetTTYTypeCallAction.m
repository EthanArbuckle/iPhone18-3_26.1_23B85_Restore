@interface CXSetTTYTypeCallAction
- (CXSetTTYTypeCallAction)initWithCallUUID:(id)a3 ttyType:(int64_t)a4;
- (CXSetTTYTypeCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetTTYTypeCallAction

- (CXSetTTYTypeCallAction)initWithCallUUID:(id)a3 ttyType:(int64_t)a4
{
  v6.receiver = self;
  v6.super_class = CXSetTTYTypeCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_ttyType = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetTTYTypeCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" ttyType=%ld", -[CXSetTTYTypeCallAction ttyType](self, "ttyType")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetTTYTypeCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [v6 setTtyType:{-[CXSetTTYTypeCallAction ttyType](self, "ttyType", v7.receiver, v7.super_class)}];
}

- (CXSetTTYTypeCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetTTYTypeCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_ttyType);
    v5->_ttyType = [v4 decodeIntegerForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetTTYTypeCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetTTYTypeCallAction *)self ttyType:v7.receiver];
  v6 = NSStringFromSelector(sel_ttyType);
  [v4 encodeInteger:v5 forKey:v6];
}

@end