@interface CXChannelTransmitStopAction
- (CXChannelTransmitStopAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)fulfill;
- (void)fulfillWithStopDate:(id)date;
- (void)updateAsFulfilledWithStopDate:(id)date;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelTransmitStopAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStopAction;
  customDescription = [(CXChannelAction *)&v7 customDescription];
  v4 = NSStringFromSelector(sel_stopDate);
  stopDate = [(CXChannelTransmitStopAction *)self stopDate];
  [customDescription appendFormat:@" %@=%@", v4, stopDate];

  return customDescription;
}

- (void)fulfill
{
  date = [MEMORY[0x1E695DF00] date];
  [(CXChannelTransmitStopAction *)self fulfillWithStopDate:date];
}

- (void)fulfillWithStopDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXChannelTransmitStopAction fulfillWithStopDate:]", @"stopDate"}];
  }

  v4 = [(CXChannelTransmitStopAction *)self copy];
  [v4 updateAsFulfilledWithStopDate:dateCopy];
  delegate = [v4 delegate];
  [delegate actionCompleted:v4];
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStopAction;
  copyCopy = copy;
  [(CXChannelAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  objc_storeStrong(copyCopy + 8, self->_stopDate);
}

- (CXChannelTransmitStopAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXChannelTransmitStopAction;
  v5 = [(CXChannelAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_stopDate);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    stopDate = v5->_stopDate;
    v5->_stopDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXChannelTransmitStopAction;
  coderCopy = coder;
  [(CXChannelAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXChannelTransmitStopAction *)self stopDate:v7.receiver];
  v6 = NSStringFromSelector(sel_stopDate);
  [coderCopy encodeObject:v5 forKey:v6];
}

- (void)updateAsFulfilledWithStopDate:(id)date
{
  dateCopy = date;
  [(CXAction *)self updateAsFulfilled];
  [(CXChannelTransmitStopAction *)self setStopDate:dateCopy];
}

@end