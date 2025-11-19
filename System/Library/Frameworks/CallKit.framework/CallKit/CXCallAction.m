@interface CXCallAction
- (CXCallAction)initWithCallUUID:(NSUUID *)callUUID;
- (CXCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDescription;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCallAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXCallAction;
  v3 = [(CXAction *)&v7 customDescription];
  v4 = [(CXCallAction *)self callUUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@" callUUID=%@", v5];

  return v3;
}

- (CXCallAction)initWithCallUUID:(NSUUID *)callUUID
{
  v5 = callUUID;
  v8.receiver = self;
  v8.super_class = CXCallAction;
  v6 = [(CXAction *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXCallAction initWithCallUUID:]", @"callUUID"}];
    }

    objc_storeStrong(&v6->_callUUID, callUUID);
  }

  return v6;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8.receiver = self;
  v8.super_class = CXCallAction;
  v6 = a3;
  [(CXAction *)&v8 updateSanitizedCopy:v6 withZone:a4];
  v7 = [(CXCallAction *)self callUUID:v8.receiver];
  [v6 setCallUUID:v7];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXCallAction *)self callUUID];
  v7 = [v5 initWithCallUUID:v6];

  [(CXCallAction *)self updateSanitizedCopy:v7 withZone:a3];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXCallAction *)self callUUID];
  v7 = [v5 initWithCallUUID:v6];

  [(CXAction *)self updateCopy:v7 withZone:a3];
  return v7;
}

- (CXCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v11.receiver = self;
  v11.super_class = CXCallAction;
  v5 = [(CXAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_callUUID);
    v8 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:v7];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXCallAction;
  v4 = a3;
  [(CXAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXCallAction *)self callUUID:v7.receiver];
  v6 = NSStringFromSelector(sel_callUUID);
  [v4 encodeObject:v5 forKey:v6];
}

@end