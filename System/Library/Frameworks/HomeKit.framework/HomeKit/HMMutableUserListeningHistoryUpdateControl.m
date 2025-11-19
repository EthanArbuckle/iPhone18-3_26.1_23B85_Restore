@interface HMMutableUserListeningHistoryUpdateControl
- (HMMutableUserListeningHistoryUpdateControl)initWithAccessories:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAccessories:(id)a3;
@end

@implementation HMMutableUserListeningHistoryUpdateControl

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMUserListeningHistoryUpdateControl alloc];
  v5 = [(HMMutableUserListeningHistoryUpdateControl *)self accessories];
  v6 = [v5 copy];
  v7 = [(HMUserListeningHistoryUpdateControl *)v4 initWithAccessories:v6];

  return v7;
}

- (void)setAccessories:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v7 = [a3 copy];
  v5 = [v4 setWithArray:v7];
  internalAccessories = self->super._internalAccessories;
  self->super._internalAccessories = v5;
}

- (HMMutableUserListeningHistoryUpdateControl)initWithAccessories:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMMutableUserListeningHistoryUpdateControl;
  return [(HMUserListeningHistoryUpdateControl *)&v4 initWithAccessories:a3];
}

@end