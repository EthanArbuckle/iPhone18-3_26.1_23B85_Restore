@interface CXChannelTransmitStartAction
- (CXChannelTransmitStartAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithStartDate:(id)date;
- (void)updateAsFulfilledWithStartDate:(id)date;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelTransmitStartAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStartAction;
  customDescription = [(CXChannelAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_startDate);
  startDate = [(CXChannelTransmitStartAction *)self startDate];
  [customDescription appendFormat:@" %@=%@", v4, startDate];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXChannelTransmitStartAction *)self fulfillWithStartDate:date];
}

- (void)fulfillWithStartDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelTransmitStartAction fulfillWithStartDate:]", @"startDate"}];
  }

  v4 = [(CXChannelTransmitStartAction *)self copy];
  [v4 updateAsFulfilledWithStartDate:dateCopy];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStartAction;
  copyCopy = copy;
  [(CXChannelAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  objc_storeStrong(copyCopy + 8, self->_startDate);
}

- (CXChannelTransmitStartAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXChannelTransmitStartAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_startDate);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    startDate = v5->_startDate;
    v5->_startDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStartAction;
  coderCopy = coder;
  [(CXChannelAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXChannelTransmitStartAction *)self startDate:v7.receiver];
  v6 = NSStringFromSelector(sel_startDate);
  [coderCopy encodeObject:v5 forKey:v6];
}

- (void)updateAsFulfilledWithStartDate:(id)date
{
  dateCopy = date;
  [(CXAction *)self updateAsFulfilled];
  [(CXChannelTransmitStartAction *)self setStartDate:dateCopy];
}

@end