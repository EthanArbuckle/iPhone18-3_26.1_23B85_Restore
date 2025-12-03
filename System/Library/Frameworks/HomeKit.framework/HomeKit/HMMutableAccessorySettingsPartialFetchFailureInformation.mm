@interface HMMutableAccessorySettingsPartialFetchFailureInformation
- (void)setFetchFailureType:(int64_t)type forKeyPath:(id)path;
@end

@implementation HMMutableAccessorySettingsPartialFetchFailureInformation

- (void)setFetchFailureType:(int64_t)type forKeyPath:(id)path
{
  v4.receiver = self;
  v4.super_class = HMMutableAccessorySettingsPartialFetchFailureInformation;
  [(HMAccessorySettingsPartialFetchFailureInformation *)&v4 setFetchFailureType:type forKeyPath:path];
}

@end