@interface HKHealthStore
- (void)ch_calculateBMRForDate:(id)date useEndOfDay:(BOOL)day completion:(id)completion;
- (void)ch_fetchBodyMassBeforeDate:(id)date completion:(id)completion;
- (void)ch_mostRecentQuantityOfType:(id)type beforeDate:(id)date completion:(id)completion;
@end

@implementation HKHealthStore

- (void)ch_calculateBMRForDate:(id)date useEndOfDay:(BOOL)day completion:(id)completion
{
  dayCopy = day;
  dateCopy = date;
  completionCopy = completion;
  if (dayCopy)
  {
    v10 = +[NSCalendar currentCalendar];
    v11 = [v10 dateByAddingUnit:16 value:1 toDate:dateCopy options:0];

    v12 = +[NSCalendar currentCalendar];
    v13 = [v12 startOfDayForDate:v11];

    dateCopy = v13;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000B56EC;
  v15[3] = &unk_10083AA20;
  v16 = completionCopy;
  v14 = completionCopy;
  [(HKHealthStore *)self ch_fetchBodyMassBeforeDate:dateCopy completion:v15];
}

- (void)ch_fetchBodyMassBeforeDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  dateCopy = date;
  v8 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierBodyMass];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5954;
  v10[3] = &unk_10083AA48;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HKHealthStore *)self ch_mostRecentQuantityOfType:v8 beforeDate:dateCopy completion:v10];
}

- (void)ch_mostRecentQuantityOfType:(id)type beforeDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  date = [NSPredicate predicateWithFormat:@"%K <= %@", HKPredicateKeyPathStartDate, date];
  v11 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierEndDate ascending:0];
  v12 = [HKSampleQuery alloc];
  v18 = v11;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B5B84;
  v16[3] = &unk_10083AA70;
  v17 = completionCopy;
  v14 = completionCopy;
  v15 = [v12 initWithSampleType:typeCopy predicate:date limit:1 sortDescriptors:v13 resultsHandler:v16];

  [(HKHealthStore *)self executeQuery:v15];
}

@end