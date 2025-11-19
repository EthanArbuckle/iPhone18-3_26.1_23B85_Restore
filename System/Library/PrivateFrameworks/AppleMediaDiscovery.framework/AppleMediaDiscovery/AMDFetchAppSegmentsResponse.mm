@interface AMDFetchAppSegmentsResponse
- (AMDFetchAppSegmentsResponse)initWithSegmentInfo:(id)a3 ofType:(id)a4 andMetaData:(id)a5;
@end

@implementation AMDFetchAppSegmentsResponse

- (AMDFetchAppSegmentsResponse)initWithSegmentInfo:(id)a3 ofType:(id)a4 andMetaData:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v5 = v14;
  v14 = 0;
  v10.receiver = v5;
  v10.super_class = AMDFetchAppSegmentsResponse;
  v14 = [(AMDFetchAppSegmentsResponse *)&v10 init];
  objc_storeStrong(&v14, v14);
  [(AMDFetchAppSegmentsResponse *)v14 setSegmentInfo:location[0]];
  [(AMDFetchAppSegmentsResponse *)v14 setSegmentInfoType:v12];
  [(AMDFetchAppSegmentsResponse *)v14 setMetadata:v11];
  v9 = MEMORY[0x277D82BE0](v14);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v14, 0);
  return v9;
}

@end