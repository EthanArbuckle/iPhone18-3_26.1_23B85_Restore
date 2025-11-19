@interface BLSHPendingUpdateToSpecifier
- (BLSHPendingUpdateToSpecifier)initWithSpecifier:(id)a3;
- (NSString)description;
@end

@implementation BLSHPendingUpdateToSpecifier

- (BLSHPendingUpdateToSpecifier)initWithSpecifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLSHPendingUpdateToSpecifier;
  v6 = [(BLSHPendingUpdateToSpecifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[BLSHPendingUpdateToSpecifier isStarted](self withName:{"isStarted"), @"started"}];
  v5 = [v3 appendBool:-[BLSHPendingUpdateToSpecifier isCompleted](self withName:{"isCompleted"), @"completed"}];
  v6 = [v3 appendObject:self->_specifier withName:@"specifier"];
  v7 = [v3 build];

  return v7;
}

@end