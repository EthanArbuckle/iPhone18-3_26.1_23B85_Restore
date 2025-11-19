@interface CXEndCallAction
- (CXEndCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithDateEnded:(NSDate *)dateEnded;
- (void)updateAsFulfilledWithDateEnded:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXEndCallAction

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXEndCallAction;
  v3 = [(CXCallAction *)&v6 customDescription];
  v4 = [(CXEndCallAction *)self dateEnded];
  [v3 appendFormat:@" dateEnded=%@", v4];

  return v3;
}

- (void)fulfill
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXEndCallAction *)self fulfillWithDateEnded:v3];
}

- (void)fulfillWithDateEnded:(NSDate *)dateEnded
{
  v6 = dateEnded;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXEndCallAction fulfillWithDateEnded:]", @"dateEnded"}];
  }

  v4 = [(CXEndCallAction *)self copy];
  [v4 updateAsFulfilledWithDateEnded:v6];
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateEnded:(id)a3
{
  v4 = a3;
  [(CXAction *)self updateAsFulfilled];
  [(CXEndCallAction *)self setDateEnded:v4];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v8.receiver = self;
  v8.super_class = CXEndCallAction;
  v6 = a3;
  [(CXCallAction *)&v8 updateSanitizedCopy:v6 withZone:a4];
  v7 = [(CXEndCallAction *)self dateEnded:v8.receiver];
  [v6 setDateEnded:v7];
}

- (CXEndCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXEndCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_dateEnded);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    dateEnded = v5->_dateEnded;
    v5->_dateEnded = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXEndCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXEndCallAction *)self dateEnded:v7.receiver];
  v6 = NSStringFromSelector(sel_dateEnded);
  [v4 encodeObject:v5 forKey:v6];
}

@end