@interface TVUNRentalUtilities
+ (id)fetchRentals;
+ (id)validRentalWithIdentifier:(unint64_t)identifier inRentals:(id)rentals;
@end

@implementation TVUNRentalUtilities

+ (id)fetchRentals
{
  v2 = sub_100002C80();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TVUNRentalUtilities - Begin fetchRentals", &v17, 2u);
  }

  v3 = +[NSDate date];
  if (qword_100128390 != -1)
  {
    sub_1000D124C();
  }

  v4 = +[MPMediaQuery movieRentalsQuery];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = [NSNumber numberWithDouble:?];
  v6 = MPMediaItemPropertyRentalExpirationDate;
  v7 = [MPMediaPropertyPredicate predicateWithValue:v5 forProperty:MPMediaItemPropertyRentalExpirationDate comparisonType:101];

  v8 = [MPMediaPropertyPredicate predicateWithValue:&off_10011E058 forProperty:v6 comparisonType:0];
  v21[0] = v7;
  v21[1] = v8;
  v9 = [NSArray arrayWithObjects:v21 count:2];
  v10 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v9];

  [v4 addFilterPredicate:v10];
  items = [v4 items];
  v12 = sub_100002C80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [items count]);
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:v3];
    v17 = 138412546;
    v18 = v13;
    v19 = 2048;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TVUNRentalUtilities- End fetchRentals [%@] elapsed:%.5f", &v17, 0x16u);
  }

  return items;
}

+ (id)validRentalWithIdentifier:(unint64_t)identifier inRentals:(id)rentals
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  rentalsCopy = rentals;
  v6 = [rentalsCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = MPMediaItemPropertyStoreID;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(rentalsCopy);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 valueForProperty:{v9, v18}];
      longLongValue = [v12 longLongValue];

      if (longLongValue == identifier)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [rentalsCopy countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }

    v14 = sub_100002C80();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy2 = identifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "TVUNRentalUtilities- Found rental: %llu", buf, 0xCu);
    }

    if (([v11 tvun_isExpired] & 1) == 0)
    {
      v16 = v11;
      goto LABEL_18;
    }

    v15 = sub_100002C80();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      identifierCopy2 = identifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "TVUNRentalUtilities -Skipping expired rental: %llu", buf, 0xCu);
    }
  }

LABEL_16:
  v16 = 0;
LABEL_18:

  return v16;
}

@end