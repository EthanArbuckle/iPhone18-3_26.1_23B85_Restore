@interface SFTranscriberReportingOptions
- (SFTranscriberReportingOptions)initWithMultisegmentResults:(BOOL)results;
@end

@implementation SFTranscriberReportingOptions

- (SFTranscriberReportingOptions)initWithMultisegmentResults:(BOOL)results
{
  v5.receiver = self;
  v5.super_class = SFTranscriberReportingOptions;
  result = [(SFTranscriberReportingOptions *)&v5 init];
  result->_multisegmentResults = results;
  return result;
}

@end