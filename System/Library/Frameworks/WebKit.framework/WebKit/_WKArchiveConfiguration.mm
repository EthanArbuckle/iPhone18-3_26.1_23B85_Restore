@interface _WKArchiveConfiguration
- (void)dealloc;
@end

@implementation _WKArchiveConfiguration

- (void)dealloc
{
  self->_directory = 0;

  self->_suggestedFileName = 0;
  self->_exclusionRules = 0;
  v3.receiver = self;
  v3.super_class = _WKArchiveConfiguration;
  [(_WKArchiveConfiguration *)&v3 dealloc];
}

@end