@interface OSLogEntryBoundary
- (OSLogEntryBoundary)initWithCoder:(id)coder;
@end

@implementation OSLogEntryBoundary

- (OSLogEntryBoundary)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = OSLogEntryBoundary;
  return [(OSLogEntry *)&v4 initWithCoder:coder];
}

@end