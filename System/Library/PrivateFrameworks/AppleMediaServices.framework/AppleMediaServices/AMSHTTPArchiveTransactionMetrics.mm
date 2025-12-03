@interface AMSHTTPArchiveTransactionMetrics
- (AMSHTTPArchiveTransactionMetrics)initWithCoder:(id)coder;
- (AMSHTTPArchiveTransactionMetrics)initWithRequest:(id)request response:(id)response resourceFetchType:(int64_t)type apsRelayAttempted:(BOOL)attempted apsRelaySucceeded:(BOOL)succeeded requestStartDate:(id)date responseEndDate:(id)endDate fetchStartDate:(id)self0;
- (AMSHTTPArchiveTransactionMetrics)initWithURLSessionTaskTransactionMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSHTTPArchiveTransactionMetrics

- (AMSHTTPArchiveTransactionMetrics)initWithRequest:(id)request response:(id)response resourceFetchType:(int64_t)type apsRelayAttempted:(BOOL)attempted apsRelaySucceeded:(BOOL)succeeded requestStartDate:(id)date responseEndDate:(id)endDate fetchStartDate:(id)self0
{
  requestCopy = request;
  responseCopy = response;
  dateCopy = date;
  endDateCopy = endDate;
  startDateCopy = startDate;
  v33.receiver = self;
  v33.super_class = AMSHTTPArchiveTransactionMetrics;
  v21 = [(AMSHTTPArchiveTransactionMetrics *)&v33 init];
  if (v21)
  {
    v22 = [requestCopy copy];
    request = v21->_request;
    v21->_request = v22;

    v24 = [responseCopy copy];
    response = v21->_response;
    v21->_response = v24;

    v21->_resourceFetchType = type;
    v21->_apsRelayAttempted = attempted;
    v21->_apsRelaySucceeded = succeeded;
    v26 = [dateCopy copy];
    requestStartDate = v21->_requestStartDate;
    v21->_requestStartDate = v26;

    v28 = [endDateCopy copy];
    responseEndDate = v21->_responseEndDate;
    v21->_responseEndDate = v28;

    v30 = [startDateCopy copy];
    fetchStartDate = v21->_fetchStartDate;
    v21->_fetchStartDate = v30;
  }

  return v21;
}

- (AMSHTTPArchiveTransactionMetrics)initWithURLSessionTaskTransactionMetrics:(id)metrics
{
  metricsCopy = metrics;
  request = [metricsCopy request];
  response = [metricsCopy response];
  resourceFetchType = [metricsCopy resourceFetchType];
  _apsRelayAttempted = [metricsCopy _apsRelayAttempted];
  _apsRelaySucceeded = [metricsCopy _apsRelaySucceeded];
  requestStartDate = [metricsCopy requestStartDate];
  responseEndDate = [metricsCopy responseEndDate];
  fetchStartDate = [metricsCopy fetchStartDate];

  v13 = [(AMSHTTPArchiveTransactionMetrics *)self initWithRequest:request response:response resourceFetchType:resourceFetchType apsRelayAttempted:_apsRelayAttempted apsRelaySucceeded:_apsRelaySucceeded requestStartDate:requestStartDate responseEndDate:responseEndDate fetchStartDate:fetchStartDate];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  request = [(AMSHTTPArchiveTransactionMetrics *)self request];
  [coderCopy encodeObject:request forKey:@"kCodingKeyRequest"];

  response = [(AMSHTTPArchiveTransactionMetrics *)self response];
  [coderCopy encodeObject:response forKey:@"kCodingKeyResponse"];

  [coderCopy encodeInteger:-[AMSHTTPArchiveTransactionMetrics resourceFetchType](self forKey:{"resourceFetchType"), @"kCodingKeyResourceFetchType"}];
  [coderCopy encodeBool:-[AMSHTTPArchiveTransactionMetrics apsRelayAttempted](self forKey:{"apsRelayAttempted"), @"kCodingKeyApsRelayAttempted"}];
  [coderCopy encodeBool:-[AMSHTTPArchiveTransactionMetrics apsRelaySucceeded](self forKey:{"apsRelaySucceeded"), @"kCodingKeyApsRelaySucceeded"}];
  requestStartDate = [(AMSHTTPArchiveTransactionMetrics *)self requestStartDate];
  [coderCopy encodeObject:requestStartDate forKey:@"kCodingKeyRequestStartDate"];

  responseEndDate = [(AMSHTTPArchiveTransactionMetrics *)self responseEndDate];
  [coderCopy encodeObject:responseEndDate forKey:@"kCodingKeyResponseEndDate"];

  fetchStartDate = [(AMSHTTPArchiveTransactionMetrics *)self fetchStartDate];
  [coderCopy encodeObject:fetchStartDate forKey:@"kCodingKeyFetchStartDate"];
}

- (AMSHTTPArchiveTransactionMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequest"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponse"];
  v7 = [coderCopy decodeIntegerForKey:@"kCodingKeyResourceFetchType"];
  v8 = [coderCopy decodeBoolForKey:@"kCodingKeyApsRelayAttempted"];
  v9 = [coderCopy decodeBoolForKey:@"kCodingKeyApsRelaySucceeded"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyRequestStartDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyResponseEndDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyFetchStartDate"];

  v13 = [(AMSHTTPArchiveTransactionMetrics *)self initWithRequest:v5 response:v6 resourceFetchType:v7 apsRelayAttempted:v8 apsRelaySucceeded:v9 requestStartDate:v10 responseEndDate:v11 fetchStartDate:v12];
  return v13;
}

@end