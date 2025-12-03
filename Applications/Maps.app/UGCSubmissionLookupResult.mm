@interface UGCSubmissionLookupResult
+ (int64_t)_statusFromError:(id)error;
- (BOOL)hasUserUploadedImages;
- (UGCSubmissionLookupResult)initWithError:(id)error;
- (UGCSubmissionLookupResult)initWithRatingsSubmissionIdentifier:(id)identifier photosSubmissionIdentifier:(id)submissionIdentifier previousSubmission:(id)submission;
- (UGCSubmissionLookupResult)initWithSubmissionIdentifier:(id)identifier previousSubmission:(id)submission;
@end

@implementation UGCSubmissionLookupResult

- (BOOL)hasUserUploadedImages
{
  previousSubmission = [(UGCSubmissionLookupResult *)self previousSubmission];
  images = [previousSubmission images];
  v4 = images != 0;

  return v4;
}

- (UGCSubmissionLookupResult)initWithError:(id)error
{
  errorCopy = error;
  v7.receiver = self;
  v7.super_class = UGCSubmissionLookupResult;
  v5 = [(UGCSubmissionLookupResult *)&v7 init];
  if (v5)
  {
    v5->_status = [UGCSubmissionLookupResult _statusFromError:errorCopy];
  }

  return v5;
}

- (UGCSubmissionLookupResult)initWithRatingsSubmissionIdentifier:(id)identifier photosSubmissionIdentifier:(id)submissionIdentifier previousSubmission:(id)submission
{
  identifierCopy = identifier;
  submissionIdentifierCopy = submissionIdentifier;
  submissionCopy = submission;
  v15.receiver = self;
  v15.super_class = UGCSubmissionLookupResult;
  v12 = [(UGCSubmissionLookupResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ratingsSubmissionIdentifier, identifier);
    objc_storeStrong(&v13->_photosSubmissionIdentifier, submissionIdentifier);
    objc_storeStrong(&v13->_previousSubmission, submission);
    v13->_status = 1;
  }

  return v13;
}

- (UGCSubmissionLookupResult)initWithSubmissionIdentifier:(id)identifier previousSubmission:(id)submission
{
  identifierCopy = identifier;
  submissionCopy = submission;
  v12.receiver = self;
  v12.super_class = UGCSubmissionLookupResult;
  v9 = [(UGCSubmissionLookupResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentSubmissionIdentifier, identifier);
    objc_storeStrong(&v10->_previousSubmission, submission);
    v10->_status = 1;
  }

  return v10;
}

+ (int64_t)_statusFromError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = GEOErrorDomain();
    v7 = [domain isEqualToString:v6];

    if (v7 && [v4 code] == -8)
    {
      v8 = 3;
    }

    else if ((MKCurrentNetworkConnectionFailureDiagnosis() - 1) >= 3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end