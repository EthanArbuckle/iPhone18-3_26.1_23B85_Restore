@interface SFTranscriberReportingOptions
- (SFTranscriberReportingOptions)initWithMultisegmentResults:(BOOL)a3;
@end

@implementation SFTranscriberReportingOptions

- (SFTranscriberReportingOptions)initWithMultisegmentResults:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFTranscriberReportingOptions;
  result = [(SFTranscriberReportingOptions *)&v5 init];
  result->_multisegmentResults = a3;
  return result;
}

@end