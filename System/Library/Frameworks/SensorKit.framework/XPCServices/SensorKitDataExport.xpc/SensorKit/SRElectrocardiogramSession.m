@interface SRElectrocardiogramSession
- (id)sr_dictionaryRepresentation;
@end

@implementation SRElectrocardiogramSession

- (id)sr_dictionaryRepresentation
{
  v4[0] = @"state";
  v5[0] = [NSNumber numberWithInteger:[(SRElectrocardiogramSession *)self state]];
  v4[1] = @"sessionGuidance";
  v5[1] = [NSNumber numberWithInteger:[(SRElectrocardiogramSession *)self sessionGuidance]];
  v4[2] = @"identifier";
  v5[2] = [(SRElectrocardiogramSession *)self identifier];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end