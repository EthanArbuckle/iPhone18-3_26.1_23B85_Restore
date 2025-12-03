@interface EKCalendarNotification
- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error;
- (EKCalendarNotification)initWithType:(int64_t)type;
- (NSString)uniqueIdentifier;
- (void)dealloc;
- (void)setDotColor:(CGColor *)color;
@end

@implementation EKCalendarNotification

- (EKCalendarNotification)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = EKCalendarNotification;
  v4 = [(EKCalendarNotification *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(EKCalendarNotification *)v4 setType:type];
  }

  return v5;
}

- (void)dealloc
{
  dotColor = self->_dotColor;
  if (dotColor)
  {
    CFRelease(dotColor);
  }

  v4.receiver = self;
  v4.super_class = EKCalendarNotification;
  [(EKCalendarNotification *)&v4 dealloc];
}

- (NSString)uniqueIdentifier
{
  objectID = [(EKCalendarNotification *)self objectID];
  stringRepresentation = [objectID stringRepresentation];

  return stringRepresentation;
}

- (void)setDotColor:(CGColor *)color
{
  dotColor = self->_dotColor;
  if (dotColor)
  {
    CFRelease(dotColor);
  }

  if (color)
  {
    Copy = CGColorCreateCopy(color);
  }

  else
  {
    Copy = 0;
  }

  self->_dotColor = Copy;
}

- (BOOL)acknowledgeWithEventStore:(id)store error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKErrorDomain" code:5 userInfo:0];
  }

  return 0;
}

@end