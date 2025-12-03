@interface MCSNotJunk
- (MCSNotJunk)initWithSpecialDestination:(int64_t)destination;
- (id)localizedShortOperationDescription;
@end

@implementation MCSNotJunk

- (MCSNotJunk)initWithSpecialDestination:(int64_t)destination
{
  v10 = MFMessageIsNotJunk;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v9 = MFMessageIsJunk;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [(_MCSJunk *)self initWithSpecialDestination:destination markAsRead:0 flagsToSet:v5 flagsToClear:v6];

  return v7;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_NOT_JUNK_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end