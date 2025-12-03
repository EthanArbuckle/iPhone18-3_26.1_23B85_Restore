@interface ATMutableAccountInfo
- (void)setAltDSID:(id)d;
- (void)setAppleID:(id)d;
- (void)setDSID:(id)d;
@end

@implementation ATMutableAccountInfo

- (void)setAppleID:(id)d
{
  if (self->super._appleID != d)
  {
    v5 = [d copy];
    appleID = self->super._appleID;
    self->super._appleID = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setAltDSID:(id)d
{
  if (self->super._altDSID != d)
  {
    v5 = [d copy];
    altDSID = self->super._altDSID;
    self->super._altDSID = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDSID:(id)d
{
  if (self->super._DSID != d)
  {
    v5 = [d copy];
    DSID = self->super._DSID;
    self->super._DSID = v5;

    MEMORY[0x2821F96F8]();
  }
}

@end