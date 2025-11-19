@interface MapsDropCalendarEventReader
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
@end

@implementation MapsDropCalendarEventReader

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (([v10 isEqualToString:@"com.apple.reminders.ics"] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", @"com.apple.calendar.ics"))
  {
    if (a5)
    {
      [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
      *a5 = v14 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = 0;
  v11 = [[ICSDocument alloc] initWithData:v9 options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v11)
  {
    if (a5)
    {
      v17 = v12;
      *a5 = v13;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v14 = objc_alloc_init(objc_opt_class());
  if (a1)
  {
    v15 = [v11 calendar];
    v16 = *(v14 + 2);
    *(v14 + 2) = v15;

    objc_storeStrong(v14 + 1, a3);
    objc_storeStrong(v14 + 3, a4);
  }

LABEL_13:

  return v14;
}

@end