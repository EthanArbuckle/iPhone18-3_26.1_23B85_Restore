@interface PurchaseHistoryItemsDAAPResponseMetadataParser
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parserDidCancel:(id)cancel;
- (void)parserDidStart:(id)start;
@end

@implementation PurchaseHistoryItemsDAAPResponseMetadataParser

- (void)parserDidStart:(id)start
{
  isUpdate = self->_isUpdate;
  self->_isUpdate = 0;

  paginationToken = self->_paginationToken;
  self->_paginationToken = 0;

  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
}

- (void)parserDidCancel:(id)cancel
{
  isUpdate = self->_isUpdate;
  self->_isUpdate = 0;

  paginationToken = self->_paginationToken;
  self->_paginationToken = 0;

  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v9 = v11;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Parser canceled", &v10, 0xCu);
  }
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  errorCopy = error;
  isUpdate = self->_isUpdate;
  self->_isUpdate = 0;

  paginationToken = self->_paginationToken;
  self->_paginationToken = 0;

  revision = self->_revision;
  self->_revision = 0;

  status = self->_status;
  self->_status = 0;

  self->_hasParsedData = 0;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = errorCopy;
    v11 = v13;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Parser failed with error: %{public}@", &v12, 0x16u);
  }
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code <= 1836282995)
  {
    if (code == 1633968755)
    {
      return result;
    }

    v5 = 1836081511;
    goto LABEL_7;
  }

  if (code != 1836282996 && code != 1836413810)
  {
    v5 = 1836414073;
LABEL_7:
    if (code != v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code > 1836413809)
  {
    if (code == 1836413810)
    {
      v17 = parserCopy;
      v16 = [NSNumber numberWithUnsignedInt:bswap32(*bytes)];
      revision = self->_revision;
      self->_revision = v16;
    }

    else
    {
      if (code != 1836414073)
      {
        goto LABEL_14;
      }

      v17 = parserCopy;
      if (*bytes)
      {
        v13 = &__kCFBooleanTrue;
      }

      else
      {
        v13 = &__kCFBooleanFalse;
      }

      v14 = v13;
      revision = self->_isUpdate;
      self->_isUpdate = v14;
    }
  }

  else if (code == 1836081511)
  {
    v17 = parserCopy;
    v15 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    revision = self->_paginationToken;
    self->_paginationToken = v15;
  }

  else
  {
    if (code != 1836282996)
    {
      goto LABEL_14;
    }

    v17 = parserCopy;
    v11 = [NSNumber numberWithUnsignedInt:bswap32(*bytes)];
    revision = self->_status;
    self->_status = v11;
  }

  parserCopy = v17;
LABEL_14:
}

@end