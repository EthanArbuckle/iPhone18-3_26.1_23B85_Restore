@interface HMMutableHomePersonManagerSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableHomePersonManagerSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[HMHomePersonManagerSettings allocWithZone:?]];
  [(HMHomePersonManagerSettings *)v4 setFaceClassificationEnabled:[(HMHomePersonManagerSettings *)self isFaceClassificationEnabled]];
  return v4;
}

@end