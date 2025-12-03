@interface CXEndCallAction
- (CXEndCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithDateEnded:(NSDate *)dateEnded;
- (void)updateAsFulfilledWithDateEnded:(id)ended;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXEndCallAction

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXEndCallAction;
  customDescription = [(CXCallAction *)&v6 customDescription];
  dateEnded = [(CXEndCallAction *)self dateEnded];
  [customDescription appendFormat:@" dateEnded=%@", dateEnded];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXEndCallAction *)self fulfillWithDateEnded:date];
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
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateAsFulfilledWithDateEnded:(id)ended
{
  endedCopy = ended;
  [(CXAction *)self updateAsFulfilled];
  [(CXEndCallAction *)self setDateEnded:endedCopy];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXEndCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXEndCallAction *)self dateEnded:v8.receiver];
  [copyCopy setDateEnded:v7];
}

- (CXEndCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXEndCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_dateEnded);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    dateEnded = v5->_dateEnded;
    v5->_dateEnded = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXEndCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXEndCallAction *)self dateEnded:v7.receiver];
  v6 = NSStringFromSelector(sel_dateEnded);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end