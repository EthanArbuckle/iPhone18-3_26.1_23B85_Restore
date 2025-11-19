@interface CXChannelLeaveAction
- (CXChannelLeaveAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)fulfill;
- (void)fulfillWithLeaveDate:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXChannelLeaveAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  v3 = [(CXChannelAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_leaveDate);
  v5 = [(CXChannelLeaveAction *)self leaveDate];
  [v3 appendFormat:@" %@=%@", v4, v5];

  return v3;
}

- (void)fulfill
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CXChannelLeaveAction *)self fulfillWithLeaveDate:v3];
}

- (void)fulfillWithLeaveDate:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelLeaveAction fulfillWithLeaveDate:]", @"leaveDate"}];
  }

  v4 = [(CXChannelLeaveAction *)self copy];
  [v4 setLeaveDate:v6];
  [v4 updateAsFulfilled];
  v5 = [v4 delegate];
  [v5 actionCompleted:v4];
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  v6 = a3;
  [(CXChannelAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  objc_storeStrong(v6 + 8, self->_leaveDate);
}

- (CXChannelLeaveAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXChannelLeaveAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_leaveDate);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    leaveDate = v5->_leaveDate;
    v5->_leaveDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXChannelLeaveAction;
  v4 = a3;
  [(CXChannelAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXChannelLeaveAction *)self leaveDate:v7.receiver];
  v6 = NSStringFromSelector(sel_leaveDate);
  [v4 encodeObject:v5 forKey:v6];
}

@end