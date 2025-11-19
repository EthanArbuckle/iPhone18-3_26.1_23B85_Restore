@interface UGCSubmissionLookupResult
+ (int64_t)_statusFromError:(id)a3;
- (BOOL)hasUserUploadedImages;
- (UGCSubmissionLookupResult)initWithError:(id)a3;
- (UGCSubmissionLookupResult)initWithRatingsSubmissionIdentifier:(id)a3 photosSubmissionIdentifier:(id)a4 previousSubmission:(id)a5;
- (UGCSubmissionLookupResult)initWithSubmissionIdentifier:(id)a3 previousSubmission:(id)a4;
@end

@implementation UGCSubmissionLookupResult

- (BOOL)hasUserUploadedImages
{
  v2 = [(UGCSubmissionLookupResult *)self previousSubmission];
  v3 = [v2 images];
  v4 = v3 != 0;

  return v4;
}

- (UGCSubmissionLookupResult)initWithError:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UGCSubmissionLookupResult;
  v5 = [(UGCSubmissionLookupResult *)&v7 init];
  if (v5)
  {
    v5->_status = [UGCSubmissionLookupResult _statusFromError:v4];
  }

  return v5;
}

- (UGCSubmissionLookupResult)initWithRatingsSubmissionIdentifier:(id)a3 photosSubmissionIdentifier:(id)a4 previousSubmission:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UGCSubmissionLookupResult;
  v12 = [(UGCSubmissionLookupResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ratingsSubmissionIdentifier, a3);
    objc_storeStrong(&v13->_photosSubmissionIdentifier, a4);
    objc_storeStrong(&v13->_previousSubmission, a5);
    v13->_status = 1;
  }

  return v13;
}

- (UGCSubmissionLookupResult)initWithSubmissionIdentifier:(id)a3 previousSubmission:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UGCSubmissionLookupResult;
  v9 = [(UGCSubmissionLookupResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentSubmissionIdentifier, a3);
    objc_storeStrong(&v10->_previousSubmission, a4);
    v10->_status = 1;
  }

  return v10;
}

+ (int64_t)_statusFromError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = GEOErrorDomain();
    v7 = [v5 isEqualToString:v6];

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