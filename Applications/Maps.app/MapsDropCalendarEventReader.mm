@interface MapsDropCalendarEventReader
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
@end

@implementation MapsDropCalendarEventReader

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"com.apple.reminders.ics"] & 1) == 0 && !objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.calendar.ics"))
  {
    if (error)
    {
      [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
      *error = v14 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = 0;
  v11 = [[ICSDocument alloc] initWithData:dataCopy options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v11)
  {
    if (error)
    {
      v17 = v12;
      *error = v13;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = objc_alloc_init(objc_opt_class());
  if (self)
  {
    calendar = [v11 calendar];
    v16 = *(v14 + 2);
    *(v14 + 2) = calendar;

    objc_storeStrong(v14 + 1, data);
    objc_storeStrong(v14 + 3, identifier);
  }

LABEL_13:

  return v14;
}

@end