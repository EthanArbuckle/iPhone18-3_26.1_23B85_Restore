@interface HDCPSSearchOperation
- (HDCPSSearchOperation)initWithRequest:(id)request session:(id)session;
- (HKClinicalProviderSearchResultsPage)page;
- (NSError)error;
- (void)main;
@end

@implementation HDCPSSearchOperation

- (HDCPSSearchOperation)initWithRequest:(id)request session:(id)session
{
  requestCopy = request;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = HDCPSSearchOperation;
  v8 = [(HDCPSSearchOperation *)&v12 init];
  if (v8)
  {
    v9 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v9;

    objc_storeStrong(&v8->_session, session);
  }

  return v8;
}

- (void)main
{
  if (([(HDCPSSearchOperation *)self isCancelled]& 1) == 0)
  {
    v3 = [HDCPSFetchJSONTask alloc];
    session = [(HDCPSSearchOperation *)self session];
    request = [(HDCPSSearchOperation *)self request];
    v6 = [(HDCPSFetchJSONTask *)v3 initWithSession:session request:request];

    [(HDCPSFetchJSONTask *)v6 resume];
    [(HDCPSFetchJSONTask *)v6 waitUntilFinished];
    jSONObject = [(HDCPSFetchJSONTask *)v6 JSONObject];

    if (jSONObject)
    {
      jSONObject2 = [(HDCPSFetchJSONTask *)v6 JSONObject];
      v12 = 0;
      v9 = [HDProviderServiceSpecification searchResultsPageFromFetchedJSONObject:jSONObject2 error:&v12];
      v10 = v12;
      [(HDCPSSearchOperation *)self setPage:v9];

      [(HDCPSSearchOperation *)self setError:v10];
    }

    else
    {
      error = [(HDCPSFetchJSONTask *)v6 error];
      [(HDCPSSearchOperation *)self setError:error];
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