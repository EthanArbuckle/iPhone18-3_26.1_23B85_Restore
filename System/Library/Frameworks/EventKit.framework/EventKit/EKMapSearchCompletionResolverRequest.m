@interface EKMapSearchCompletionResolverRequest
- (EKMapSearchCompletionResolverRequest)initWithMapSearchCompletion:(id)a3 completionHandler:(id)a4;
- (void)beginResolution;
- (void)cancel;
@end

@implementation EKMapSearchCompletionResolverRequest

- (EKMapSearchCompletionResolverRequest)initWithMapSearchCompletion:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EKMapSearchCompletionResolverRequest;
  v9 = [(EKMapSearchCompletionResolverRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapSearchCompletion, a3);
    v11 = [v8 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

- (void)cancel
{
  [(MKLocalSearch *)self->_localSearch cancel];
  localSearch = self->_localSearch;
  self->_localSearch = 0;
}

- (void)beginResolution
{
  v3 = EKWeakLinkClass();
  v4 = EKWeakLinkClass();
  v5 = [(EKMapSearchCompletionResolverRequest *)self mapSearchCompletion];
  v6 = [v5 mapSearchCompletion];

  v7 = [v3 searchRequestWithCompletion:v6];
  v8 = [[v4 alloc] initWithRequest:v7];
  localSearch = self->_localSearch;
  self->_localSearch = v8;

  v10 = self->_localSearch;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__EKMapSearchCompletionResolverRequest_beginResolution__block_invoke;
  v12[3] = &unk_1E77FF798;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [(MKLocalSearch *)v10 startWithCompletionHandler:v12];
}

void __55__EKMapSearchCompletionResolverRequest_beginResolution__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = [v27 mapItems];
  v7 = [v6 count];

  if (v7)
  {
    v8 = EKWeakLinkClass();
    v9 = [v27 mapItems];
    v10 = [v9 firstObject];

    v11 = [v10 placemark];
    [v11 coordinate];
    v13 = v12;
    v15 = v14;

    v16 = [[v8 alloc] initWithLatitude:v13 longitude:v15];
    v17 = objc_alloc_init(EKMapSearchCompletionResolution);
    v18 = [v10 name];
    [(EKMapSearchCompletionResolution *)v17 setTitle:v18];

    [(EKMapSearchCompletionResolution *)v17 setGeoLocation:v16];
    v19 = [*(a1 + 40) displayLines];
    v20 = [v19 lastObject];
    [(EKMapSearchCompletionResolution *)v17 setAddress:v20];

    v21 = [v10 placemark];
    v22 = [v21 region];
    [v22 radius];
    [(EKMapSearchCompletionResolution *)v17 setRadius:?];

    v23 = [v10 _handle];
    [(EKMapSearchCompletionResolution *)v17 setMapKitHandle:v23];
  }

  else
  {
    v17 = 0;
  }

  v24 = [*(a1 + 32) completionHandler];
  (v24)[2](v24, v17, v5);

  v25 = *(a1 + 32);
  v26 = *(v25 + 8);
  *(v25 + 8) = 0;
}

@end