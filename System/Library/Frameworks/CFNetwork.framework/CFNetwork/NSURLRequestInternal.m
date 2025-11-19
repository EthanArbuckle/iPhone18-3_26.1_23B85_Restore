@interface NSURLRequestInternal
- (NSURLRequestInternal)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NSURLRequestInternal

- (id).cxx_construct
{
  self->_request._vptr$CoreLoggable = &unk_1F0C3A4B0;
  *&self->_request.fUnsafeAllowedInEarlyData = 0;
  self->_request.fATSOverrides = 0;
  self->_request.fHSTSPolicy.__ptr_ = 0;
  self->_request.fCachePolicy = 0;
  self->_request.fTimeout = 0.0;
  *&self->_request.fRequestPriority = xmmword_197EE1830;
  *&self->_request.fFlags = 0;
  self->_request.fBoundInterfaceIdentifier = 0;
  self->_request.fProtocolProperties = 0;
  self->_request._explicitStorageSession = 0;
  *&self->_request.fAllowsExpensiveNetworkAccess = 0;
  self->_request.fAllowsUltraConstrainedNetworkAccess = 0;
  self->_request.fTimeWindowDuration = 0.0;
  self->_request.fStartTimeoutTime = 0.0;
  self->_request.fTimeWindowDelay = 0.0;
  *&self->_request.fRequiresShortConnectionTimeout = 0;
  self->_request.fPayloadTransmissionTimeout = 0.0;
  if (__CFNGetHTTP3Override::onceToken != -1)
  {
    dispatch_once(&__CFNGetHTTP3Override::onceToken, &__block_literal_global_62_5594);
  }

  self->_request.fAssumesHTTP3Capable = __CFNGetHTTP3Override::value == 2;
  self->_request.fAttribution = 0;
  self->_request.fTrackerContext = 0;
  self->_request.fCookiePartitionIdentifier = 0;
  *&self->_request.fKnownTracker = 0;
  *&self->_request.fBlockTrackers = 0;
  return self;
}

- (NSURLRequestInternal)init
{
  v3.receiver = self;
  v3.super_class = NSURLRequestInternal;
  return [(NSURLRequestInternal *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSURLRequestInternal;
  [(NSURLRequestInternal *)&v2 dealloc];
}

@end