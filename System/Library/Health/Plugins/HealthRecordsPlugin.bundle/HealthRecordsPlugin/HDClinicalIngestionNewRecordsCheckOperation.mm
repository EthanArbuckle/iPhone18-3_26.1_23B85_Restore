@interface HDClinicalIngestionNewRecordsCheckOperation
- (BOOL)_countOfNewLabsFromStartTimePredicate:(id)predicate transaction:(id)transaction count:(unint64_t *)count error:(id *)error;
- (BOOL)_countOfPinnedLabsFromStartTimePredicate:(id)predicate transaction:(id)transaction count:(unint64_t *)count error:(id *)error;
- (HDClinicalIngestionNewRecordsCheckOperation)initWithTask:(id)task startTime:(id)time;
- (void)main;
@end

@implementation HDClinicalIngestionNewRecordsCheckOperation

- (HDClinicalIngestionNewRecordsCheckOperation)initWithTask:(id)task startTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = HDClinicalIngestionNewRecordsCheckOperation;
  v7 = [(HDClinicalIngestionOperation *)&v11 initWithTask:task nextOperation:0];
  if (v7)
  {
    v8 = [timeCopy copy];
    startTime = v7->_startTime;
    v7->_startTime = v8;
  }

  return v7;
}

- (void)main
{
  profile = [(HDClinicalIngestionOperation *)self profile];
  database = [profile database];
  v7[4] = self;
  v8 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_28DD8;
  v7[3] = &unk_106A98;
  v5 = [HDMedicalRecordEntity performReadTransactionWithHealthDatabase:database error:&v8 block:v7];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    [(HDClinicalIngestionOperation *)self setOperationError:v6];
  }
}

- (BOOL)_countOfNewLabsFromStartTimePredicate:(id)predicate transaction:(id)transaction count:(unint64_t *)count error:(id *)error
{
  predicateCopy = predicate;
  transactionCopy = transaction;
  v11 = +[HKDiagnosticTestReportType diagnosticTestReportType];
  v12 = HDSampleEntityPredicateForDataType();
  v31[0] = v12;
  v31[1] = predicateCopy;
  v13 = [NSArray arrayWithObjects:v31 count:2];
  v14 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = HDSQLEntityPropertyStar;
  v16 = [transactionCopy databaseForEntityClass:objc_opt_class()];
  v17 = [HDMedicalRecordEntity countValueForProperty:v15 predicate:v14 database:v16 error:error];

  if (v17)
  {
    countCopy = count;
    v18 = +[HKDiagnosticTestResultType diagnosticTestResultType];
    HDSampleEntityPredicateForDataType();
    v30[0] = v29 = error;
    v19 = v30[0];
    v20 = [HDSQLiteComparisonPredicate predicateWithProperty:HDDiagnosticTestResultEntityPropertyCategory equalToValue:HKDiagnosticTestResultCategoryLaboratory];
    v30[1] = v20;
    v30[2] = predicateCopy;
    v21 = [NSArray arrayWithObjects:v30 count:3];
    v22 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v21];

    v23 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v24 = [HDDiagnosticTestResultEntity countValueForProperty:v15 predicate:v22 database:v23 error:v29];

    v25 = v24 != 0;
    if (v24)
    {
      unsignedIntegerValue = [v17 unsignedIntegerValue];
      *countCopy = unsignedIntegerValue + [v24 unsignedIntegerValue];
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_countOfPinnedLabsFromStartTimePredicate:(id)predicate transaction:(id)transaction count:(unint64_t *)count error:(id *)error
{
  predicateCopy = predicate;
  transactionCopy = transaction;
  v12 = [HDSQLiteComparisonPredicate predicateWithProperty:HDDiagnosticTestResultEntityPropertyCategory equalToValue:HKDiagnosticTestResultCategoryLaboratory];
  v41[0] = v12;
  v41[1] = predicateCopy;
  v13 = [NSArray arrayWithObjects:v41 count:2];
  v14 = [HDSQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

  v15 = +[HKDiagnosticTestResultType diagnosticTestResultType];
  profile = [(HDClinicalIngestionOperation *)self profile];
  v39 = HDMedicalRecordEntityEncodingOptionSkipApplyingConceptIndex;
  v40 = &__kCFBooleanTrue;
  v17 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v18 = [HDMedicalRecordEntity samplesWithType:v15 profile:profile encodingOptions:v17 predicate:v14 limit:0 anchor:0 error:error];

  if (v18)
  {
    if ([v18 count])
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_29734;
      v37 = sub_29744;
      v38 = 0;
      profile2 = [(HDClinicalIngestionOperation *)self profile];
      userDomainConceptManager = [profile2 userDomainConceptManager];
      v21 = [HDUserDomainConceptManager predicateForListUserDomainConceptWithType:1];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_2974C;
      v32[3] = &unk_106AC0;
      v32[4] = &v33;
      v22 = [userDomainConceptManager enumerateUserDomainConceptsWithPredicate:v21 limit:1 orderingTerms:0 error:error enumerationHandler:v32];

      if (v22)
      {
        v23 = [v18 hk_map:&stru_106B00];
        linkCollection = [v34[5] linkCollection];
        links = [linkCollection links];
        v26 = [links hk_map:&stru_106B40];

        v27 = [HDUserDomainConceptManager predicateForAllPinnedConceptsMappingToRecordsWithUUIDs:v23 pinnedConceptUUIDs:v26];
        v28 = [HDUserDomainConceptManager countOfUserDomainConceptsMatchingPredicate:v27 options:0 transaction:transactionCopy error:error];
        v29 = v28;
        v30 = count != 0;
        if (count)
        {
          *count = [v28 integerValue];
        }
      }

      else
      {
        v30 = 0;
      }

      _Block_object_dispose(&v33, 8);
    }

    else
    {
      if (count)
      {
        *count = 0;
      }

      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

@end