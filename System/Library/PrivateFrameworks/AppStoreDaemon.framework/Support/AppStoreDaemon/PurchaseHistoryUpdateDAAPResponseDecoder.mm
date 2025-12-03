@interface PurchaseHistoryUpdateDAAPResponseDecoder
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parserDidCancel:(id)cancel;
- (void)parserDidStart:(id)start;
@end

@implementation PurchaseHistoryUpdateDAAPResponseDecoder

- (void)parserDidStart:(id)start
{
  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
}

- (void)parserDidCancel:(id)cancel
{
  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: Parser canceled", &v8, 0xCu);
  }
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  errorCopy = error;
  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = errorCopy;
    v9 = v11;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Parser failed with error: %{public}@", &v10, 0x16u);
  }
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code == 1836282996)
  {
    v13 = parserCopy;
    v10 = 32;
  }

  else
  {
    if (code != 1836413810)
    {
      goto LABEL_6;
    }

    v13 = parserCopy;
    v10 = 24;
  }

  v11 = [NSNumber numberWithUnsignedInt:bswap32(*bytes)];
  v12 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = v11;

  parserCopy = v13;
LABEL_6:
}

@end