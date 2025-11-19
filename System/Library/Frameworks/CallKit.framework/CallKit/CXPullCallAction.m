@interface CXPullCallAction
- (CXPullCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithDateConnected:(id)a3;
- (void)updateAsFulfilledWithDateConnected:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXPullCallAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXPullCallAction;
  v3 = [(CXCallAction *)&v7 customDescription];
  v4 = [(CXPullCallAction *)self handoffContext];
  [v3 appendFormat:@" handoffContext=%@", v4];

  v5 = [(CXPullCallAction *)self dateConnected];
  [v3 appendFormat:@" dateConnected=%@", v5];

  return v3;
}

- (void)fulfill
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXPullCallAction *)self fulfillWithDateConnected:v3];
}

- (void)fulfillWithDateConnected:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXPullCallAction fulfillWithDateConnected:]", @"dateConnected"}];
  }

  v4 = [(CXPullCallAction *)self copy];
  [v4 updateAsFulfilledWithDateConnected:v6];
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateConnected:(id)a3
{
  v4 = a3;
  [(CXAction *)self updateAsFulfilled];
  [(CXPullCallAction *)self setDateConnected:v4];
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v9.receiver = self;
  v9.super_class = CXPullCallAction;
  v6 = a3;
  [(CXAction *)&v9 updateCopy:v6 withZone:a4];
  v7 = [(CXPullCallAction *)self dateConnected:v9.receiver];
  [v6 setDateConnected:v7];

  v8 = [(CXPullCallAction *)self handoffContext];
  [v6 setHandoffContext:v8];
}

- (CXPullCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CXPullCallAction;
  v5 = [(CXCallAction *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handoffContext);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    handoffContext = v5->_handoffContext;
    v5->_handoffContext = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_dateConnected);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    dateConnected = v5->_dateConnected;
    v5->_dateConnected = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CXPullCallAction;
  v4 = a3;
  [(CXCallAction *)&v9 encodeWithCoder:v4];
  v5 = [(CXPullCallAction *)self handoffContext:v9.receiver];
  v6 = NSStringFromSelector(sel_handoffContext);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXPullCallAction *)self dateConnected];
  v8 = NSStringFromSelector(sel_dateConnected);
  [v4 encodeObject:v7 forKey:v8];
}

@end