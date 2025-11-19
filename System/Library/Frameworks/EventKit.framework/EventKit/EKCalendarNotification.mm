@interface EKCalendarNotification
- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4;
- (EKCalendarNotification)initWithType:(int64_t)a3;
- (NSString)uniqueIdentifier;
- (void)dealloc;
- (void)setDotColor:(CGColor *)a3;
@end

@implementation EKCalendarNotification

- (EKCalendarNotification)initWithType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = EKCalendarNotification;
  v4 = [(EKCalendarNotification *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(EKCalendarNotification *)v4 setType:a3];
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
  v2 = [(EKCalendarNotification *)self objectID];
  v3 = [v2 stringRepresentation];

  return v3;
}

- (void)setDotColor:(CGColor *)a3
{
  dotColor = self->_dotColor;
  if (dotColor)
  {
    CFRelease(dotColor);
  }

  if (a3)
  {
    Copy = CGColorCreateCopy(a3);
  }

  else
  {
    Copy = 0;
  }

  self->_dotColor = Copy;
}

- (BOOL)acknowledgeWithEventStore:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EKErrorDomain" code:5 userInfo:0];
  }

  return 0;
}

@end