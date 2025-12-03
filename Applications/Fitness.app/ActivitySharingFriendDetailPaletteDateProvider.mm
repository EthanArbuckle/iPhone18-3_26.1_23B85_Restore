@interface ActivitySharingFriendDetailPaletteDateProvider
- (void)setCurrentSelectedDate:(id)date;
- (void)setWithCurrentSelectedDate:(id)date caller:(id)caller;
@end

@implementation ActivitySharingFriendDetailPaletteDateProvider

- (void)setCurrentSelectedDate:(id)date
{
  currentSelectedDate = self->currentSelectedDate;
  self->currentSelectedDate = date;
  dateCopy = date;
}

- (void)setWithCurrentSelectedDate:(id)date caller:(id)caller
{
  currentSelectedDate = self->currentSelectedDate;
  self->currentSelectedDate = date;
  dateCopy = date;
}

@end