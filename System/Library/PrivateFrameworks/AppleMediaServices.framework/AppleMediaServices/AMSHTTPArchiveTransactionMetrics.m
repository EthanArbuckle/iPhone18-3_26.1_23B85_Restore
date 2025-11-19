@interface AMSHTTPArchiveTransactionMetrics
- (AMSHTTPArchiveTransactionMetrics)initWithCoder:(id)a3;
- (AMSHTTPArchiveTransactionMetrics)initWithRequest:(id)a3 response:(id)a4 resourceFetchType:(int64_t)a5 apsRelayAttempted:(BOOL)a6 apsRelaySucceeded:(BOOL)a7 requestStartDate:(id)a8 responseEndDate:(id)a9 fetchStartDate:(id)a10;
- (AMSHTTPArchiveTransactionMetrics)initWithURLSessionTaskTransactionMetrics:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSHTTPArchiveTransactionMetrics

- (AMSHTTPArchiveTransactionMetrics)initWithRequest:(id)a3 response:(id)a4 resourceFetchType:(int64_t)a5 apsRelayAttempted:(BOOL)a6 apsRelaySucceeded:(BOOL)a7 requestStartDate:(id)a8 responseEndDate:(id)a9 fetchStartDate:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v33.receiver = self;
  v33.super_class = AMSHTTPArchiveTransactionMetrics;
  v21 = [(AMSHTTPArchiveTransactionMetrics *)&v33 init];
  if (v21)
  {
    v22 = [v16 copy];
    request = v21->_request;
    v21->_request = v22;

    v24 = [v17 copy];
    response = v21->_response;
    v21->_response = v24;

    v21->_resourceFetchType = a5;
    v21->_apsRelayAttempted = a6;
    v21->_apsRelaySucceeded = a7;
    v26 = [v18 copy];
    requestStartDate = v21->_requestStartDate;
    v21->_requestStartDate = v26;

    v28 = [v19 copy];
    responseEndDate = v21->_responseEndDate;
    v21->_responseEndDate = v28;

    v30 = [v20 copy];
    fetchStartDate = v21->_fetchStartDate;
    v21->_fetchStartDate = v30;
  }

  return v21;
}

- (AMSHTTPArchiveTransactionMetrics)initWithURLSessionTaskTransactionMetrics:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v4 response];
  v7 = [v4 resourceFetchType];
  v8 = [v4 _apsRelayAttempted];
  v9 = [v4 _apsRelaySucceeded];
  v10 = [v4 requestStartDate];
  v11 = [v4 responseEndDate];
  v12 = [v4 fetchStartDate];

  v13 = [(AMSHTTPArchiveTransactionMetrics *)self initWithRequest:v5 response:v6 resourceFetchType:v7 apsRelayAttempted:v8 apsRelaySucceeded:v9 requestStartDate:v10 responseEndDate:v11 fetchStartDate:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSHTTPArchiveTransactionMetrics *)self request];
  [v4 encodeObject:v5 forKey:@"kCodingKeyRequest"];

  v6 = [(AMSHTTPArchiveTransactionMetrics *)self response];
  [v4 encodeObject:v6 forKey:@"kCodingKeyResponse"];

  [v4 encodeInteger:-[AMSHTTPArchiveTransactionMetrics resourceFetchType](self forKey:{"resourceFetchType"), @"kCodingKeyResourceFetchType"}];
  [v4 encodeBool:-[AMSHTTPArchiveTransactionMetrics apsRelayAttempted](self forKey:{"apsRelayAttempted"), @"kCodingKeyApsRelayAttempted"}];
  [v4 encodeBool:-[AMSHTTPArchiveTransactionMetrics apsRelaySucceeded](self forKey:{"apsRelaySucceeded"), @"kCodingKeyApsRelaySucceeded"}];
  v7 = [(AMSHTTPArchiveTransactionMetrics *)self requestStartDate];
  [v4 encodeObject:v7 forKey:@"kCodingKeyRequestStartDate"];

  v8 = [(AMSHTTPArchiveTransactionMetrics *)self responseEndDate];
  [v4 encodeObject:v8 forKey:@"kCodingKeyResponseEndDate"];

  v9 = [(AMSHTTPArchiveTransactionMetrics *)self fetchStartDate];
  [v4 encodeObject:v9 forKey:@"kCodingKeyFetchStartDate"];
}

- (AMSHTTPArchiveTransactionMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponse"];
  v7 = [v4 decodeIntegerForKey:@"kCodingKeyResourceFetchType"];
  v8 = [v4 decodeBoolForKey:@"kCodingKeyApsRelayAttempted"];
  v9 = [v4 decodeBoolForKey:@"kCodingKeyApsRelaySucceeded"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequestStartDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponseEndDate"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyFetchStartDate"];

  v13 = [(AMSHTTPArchiveTransactionMetrics *)self initWithRequest:v5 response:v6 resourceFetchType:v7 apsRelayAttempted:v8 apsRelaySucceeded:v9 requestStartDate:v10 responseEndDate:v11 fetchStartDate:v12];
  return v13;
}

@end