@interface HDCPSSearchOperation
- (HDCPSSearchOperation)initWithRequest:(id)a3 session:(id)a4;
- (HKClinicalProviderSearchResultsPage)page;
- (NSError)error;
- (void)main;
@end

@implementation HDCPSSearchOperation

- (HDCPSSearchOperation)initWithRequest:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HDCPSSearchOperation;
  v8 = [(HDCPSSearchOperation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    request = v8->_request;
    v8->_request = v9;

    objc_storeStrong(&v8->_session, a4);
  }

  return v8;
}

- (void)main
{
  if (([(HDCPSSearchOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [HDCPSFetchJSONTask alloc];
    v4 = [(HDCPSSearchOperation *)self session];
    v5 = [(HDCPSSearchOperation *)self request];
    v6 = [(HDCPSFetchJSONTask *)v3 initWithSession:v4 request:v5];

    [(HDCPSFetchJSONTask *)v6 resume];
    [(HDCPSFetchJSONTask *)v6 waitUntilFinished];
    v7 = [(HDCPSFetchJSONTask *)v6 JSONObject];

    if (v7)
    {
      v8 = [(HDCPSFetchJSONTask *)v6 JSONObject];
      v12 = 0;
      v9 = [HDProviderServiceSpecification searchResultsPageFromFetchedJSONObject:v8 error:&v12];
      v10 = v12;
      [(HDCPSSearchOperation *)self setPage:v9];

      [(HDCPSSearchOperation *)self setError:v10];
    }

    else
    {
      v11 = [(HDCPSFetchJSONTask *)v6 error];
      [(HDCPSSearchOperation *)self setError:v11];
    }
  }
}

- (HKClinicalProviderSearchResultsPage)page
{
  if (([(HDCPSSearchOperation *)self isFinished]& 1) == 0)
  {
    sub_9ECD8(a2, self);
  }

  page = self->_page;

  return page;
}

- (NSError)error
{
  if (([(HDCPSSearchOperation *)self isFinished]& 1) == 0)
  {
    sub_9ED4C(a2, self);
  }

  error = self->_error;

  return error;
}

@end