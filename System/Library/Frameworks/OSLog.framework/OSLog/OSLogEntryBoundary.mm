@interface OSLogEntryBoundary
- (OSLogEntryBoundary)initWithCoder:(id)a3;
@end

@implementation OSLogEntryBoundary

- (OSLogEntryBoundary)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = OSLogEntryBoundary;
  return [(OSLogEntry *)&v4 initWithCoder:a3];
}

@end