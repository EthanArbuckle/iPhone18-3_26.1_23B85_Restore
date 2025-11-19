@interface ActivitySharingFriendDetailPaletteDateProvider
- (void)setCurrentSelectedDate:(id)a3;
- (void)setWithCurrentSelectedDate:(id)a3 caller:(id)a4;
@end

@implementation ActivitySharingFriendDetailPaletteDateProvider

- (void)setCurrentSelectedDate:(id)a3
{
  currentSelectedDate = self->currentSelectedDate;
  self->currentSelectedDate = a3;
  v3 = a3;
}

- (void)setWithCurrentSelectedDate:(id)a3 caller:(id)a4
{
  currentSelectedDate = self->currentSelectedDate;
  self->currentSelectedDate = a3;
  v4 = a3;
}

@end