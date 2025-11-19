@interface PurchaseHistoryUpdateDAAPResponseDecoder
- (void)parser:(id)a3 didFailWithError:(id)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parserDidCancel:(id)a3;
- (void)parserDidStart:(id)a3;
@end

@implementation PurchaseHistoryUpdateDAAPResponseDecoder

- (void)parserDidStart:(id)a3
{
  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
}

- (void)parserDidCancel:(id)a3
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

- (void)parser:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
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
    v13 = v5;
    v9 = v11;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Parser failed with error: %{public}@", &v10, 0x16u);
  }
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v9 = a3;
  if (a4 == 1836282996)
  {
    v13 = v9;
    v10 = 32;
  }

  else
  {
    if (a4 != 1836413810)
    {
      goto LABEL_6;
    }

    v13 = v9;
    v10 = 24;
  }

  v11 = [NSNumber numberWithUnsignedInt:bswap32(*a5)];
  v12 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = v11;

  v9 = v13;
LABEL_6:
}

@end