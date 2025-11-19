@interface MCSJunk
- (MCSJunk)init;
- (id)localizedShortOperationDescription;
@end

@implementation MCSJunk

- (MCSJunk)init
{
  v8 = MFMessageIsJunk;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v7 = MFMessageIsNotJunk;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(_MCSJunk *)self initWithSpecialDestination:1 markAsRead:1 flagsToSet:v3 flagsToClear:v4];

  return v5;
}

- (id)localizedShortOperationDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OPERATION_JUNK_DESC" value:&stru_100662A88 table:@"Main"];

  return v3;
}

@end