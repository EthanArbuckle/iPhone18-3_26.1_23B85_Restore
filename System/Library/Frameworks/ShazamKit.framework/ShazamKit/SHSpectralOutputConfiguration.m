@interface SHSpectralOutputConfiguration
- (SHSpectralOutputConfiguration)initWithNumberOfBins:(int64_t)a3 callbackFrequency:(int64_t)a4;
@end

@implementation SHSpectralOutputConfiguration

- (SHSpectralOutputConfiguration)initWithNumberOfBins:(int64_t)a3 callbackFrequency:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SHSpectralOutputConfiguration;
  result = [(SHSpectralOutputConfiguration *)&v7 init];
  if (result)
  {
    result->_numberOfBins = a3;
    result->_callbackFrequency = a4;
  }

  return result;
}

@end