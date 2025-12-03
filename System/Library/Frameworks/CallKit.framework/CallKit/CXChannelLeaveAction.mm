@interface CXChannelLeaveAction
- (CXChannelLeaveAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithLeaveDate:(id)date;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelLeaveAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  customDescription = [(CXChannelAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_leaveDate);
  leaveDate = [(CXChannelLeaveAction *)self leaveDate];
  [customDescription appendFormat:@" %@=%@", v4, leaveDate];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXChannelLeaveAction *)self fulfillWithLeaveDate:date];
}

- (void)fulfillWithLeaveDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelLeaveAction fulfillWithLeaveDate:]", @"leaveDate"}];
  }

  v4 = [(CXChannelLeaveAction *)self copy];
  [v4 setLeaveDate:dateCopy];
  [v4 updateAsFulfilled];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  copyCopy = copy;
  [(CXChannelAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  objc_storeStrong(copyCopy + 8, self->_leaveDate);
}

- (CXChannelLeaveAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXChannelLeaveAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_leaveDate);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    leaveDate = v5->_leaveDate;
    v5->_leaveDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  coderCopy = coder;
  [(CXChannelAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXChannelLeaveAction *)self leaveDate:v7.receiver];
  v6 = NSStringFromSelector(sel_leaveDate);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end