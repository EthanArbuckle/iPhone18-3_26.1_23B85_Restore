@interface ATMutableAccountInfo
- (void)setAltDSID:(id)a3;
- (void)setAppleID:(id)a3;
- (void)setDSID:(id)a3;
@end

@implementation ATMutableAccountInfo

- (void)setAppleID:(id)a3
{
  if (self->super._appleID != a3)
  {
    v5 = [a3 copy];
    appleID = self->super._appleID;
    self->super._appleID = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setAltDSID:(id)a3
{
  if (self->super._altDSID != a3)
  {
    v5 = [a3 copy];
    altDSID = self->super._altDSID;
    self->super._altDSID = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setDSID:(id)a3
{
  if (self->super._DSID != a3)
  {
    v5 = [a3 copy];
    DSID = self->super._DSID;
    self->super._DSID = v5;

    MEMORY[0x2821F96F8]();
  }
}

@end