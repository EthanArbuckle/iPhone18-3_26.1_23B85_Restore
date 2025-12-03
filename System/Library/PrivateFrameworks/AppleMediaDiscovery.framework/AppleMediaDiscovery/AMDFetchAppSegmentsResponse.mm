@interface AMDFetchAppSegmentsResponse
- (AMDFetchAppSegmentsResponse)initWithSegmentInfo:(id)info ofType:(id)type andMetaData:(id)data;
@end

@implementation AMDFetchAppSegmentsResponse

- (AMDFetchAppSegmentsResponse)initWithSegmentInfo:(id)info ofType:(id)type andMetaData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v12 = 0;
  objc_storeStrong(&v12, type);
  v11 = 0;
  objc_storeStrong(&v11, data);
  v5 = selfCopy;
  selfCopy = 0;
  v10.receiver = v5;
  v10.super_class = AMDFetchAppSegmentsResponse;
  selfCopy = [(AMDFetchAppSegmentsResponse *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDFetchAppSegmentsResponse *)selfCopy setSegmentInfo:location[0]];
  [(AMDFetchAppSegmentsResponse *)selfCopy setSegmentInfoType:v12];
  [(AMDFetchAppSegmentsResponse *)selfCopy setMetadata:v11];
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end