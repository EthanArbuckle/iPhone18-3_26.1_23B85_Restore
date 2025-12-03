@interface SHSpectralOutputConfiguration
- (SHSpectralOutputConfiguration)initWithNumberOfBins:(int64_t)bins callbackFrequency:(int64_t)frequency;
@end

@implementation SHSpectralOutputConfiguration

- (SHSpectralOutputConfiguration)initWithNumberOfBins:(int64_t)bins callbackFrequency:(int64_t)frequency
{
  v7.receiver = self;
  v7.super_class = SHSpectralOutputConfiguration;
  result = [(SHSpectralOutputConfiguration *)&v7 init];
  if (result)
  {
    result->_numberOfBins = bins;
    result->_callbackFrequency = frequency;
  }

  return result;
}

@end