@interface CXPullCallAction
- (CXPullCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithDateConnected:(id)connected;
- (void)updateAsFulfilledWithDateConnected:(id)connected;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXPullCallAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXPullCallAction;
  customDescription = [(CXCallAction *)&v7 customDescription];
  handoffContext = [(CXPullCallAction *)self handoffContext];
  [customDescription appendFormat:@" handoffContext=%@", handoffContext];

  dateConnected = [(CXPullCallAction *)self dateConnected];
  [customDescription appendFormat:@" dateConnected=%@", dateConnected];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXPullCallAction *)self fulfillWithDateConnected:date];
}

- (void)fulfillWithDateConnected:(id)connected
{
  connectedCopy = connected;
  if (!connectedCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXPullCallAction fulfillWithDateConnected:]", @"dateConnected"}];
  }

  v4 = [(CXPullCallAction *)self copy];
  [v4 updateAsFulfilledWithDateConnected:connectedCopy];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateConnected:(id)connected
{
  connectedCopy = connected;
  [(CXAction *)self updateAsFulfilled];
  [(CXPullCallAction *)self setDateConnected:connectedCopy];
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CXPullCallAction;
  copyCopy = copy;
  [(CXAction *)&v9 updateCopy:copyCopy withZone:zone];
  v7 = [(CXPullCallAction *)self dateConnected:v9.receiver];
  [copyCopy setDateConnected:v7];

  handoffContext = [(CXPullCallAction *)self handoffContext];
  [copyCopy setHandoffContext:handoffContext];
}

- (CXPullCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CXPullCallAction;
  v5 = [(CXCallAction *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_handoffContext);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    handoffContext = v5->_handoffContext;
    v5->_handoffContext = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_dateConnected);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    dateConnected = v5->_dateConnected;
    v5->_dateConnected = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CXPullCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CXPullCallAction *)self handoffContext:v9.receiver];
  v6 = NSStringFromSelector(sel_handoffContext);
  [coderCopy encodeObject:v5 forKey:v6];

  dateConnected = [(CXPullCallAction *)self dateConnected];
  v8 = NSStringFromSelector(sel_dateConnected);
  [coderCopy encodeObject:dateConnected forKey:v8];
}

@end