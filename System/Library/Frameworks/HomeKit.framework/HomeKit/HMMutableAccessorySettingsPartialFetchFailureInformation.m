@interface HMMutableAccessorySettingsPartialFetchFailureInformation
- (void)setFetchFailureType:(int64_t)a3 forKeyPath:(id)a4;
@end

@implementation HMMutableAccessorySettingsPartialFetchFailureInformation

- (void)setFetchFailureType:(int64_t)a3 forKeyPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = HMMutableAccessorySettingsPartialFetchFailureInformation;
  [(HMAccessorySettingsPartialFetchFailureInformation *)&v4 setFetchFailureType:a3 forKeyPath:a4];
}

@end