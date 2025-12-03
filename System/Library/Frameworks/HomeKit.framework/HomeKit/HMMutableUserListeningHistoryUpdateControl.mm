@interface HMMutableUserListeningHistoryUpdateControl
- (HMMutableUserListeningHistoryUpdateControl)initWithAccessories:(id)accessories;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAccessories:(id)accessories;
@end

@implementation HMMutableUserListeningHistoryUpdateControl

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMUserListeningHistoryUpdateControl alloc];
  accessories = [(HMMutableUserListeningHistoryUpdateControl *)self accessories];
  v6 = [accessories copy];
  v7 = [(HMUserListeningHistoryUpdateControl *)v4 initWithAccessories:v6];

  return v7;
}

- (void)setAccessories:(id)accessories
{
  v4 = MEMORY[0x1E695DFA8];
  v7 = [accessories copy];
  v5 = [v4 setWithArray:v7];
  internalAccessories = self->super._internalAccessories;
  self->super._internalAccessories = v5;
}

- (HMMutableUserListeningHistoryUpdateControl)initWithAccessories:(id)accessories
{
  v4.receiver = self;
  v4.super_class = HMMutableUserListeningHistoryUpdateControl;
  return [(HMUserListeningHistoryUpdateControl *)&v4 initWithAccessories:accessories];
}

@end