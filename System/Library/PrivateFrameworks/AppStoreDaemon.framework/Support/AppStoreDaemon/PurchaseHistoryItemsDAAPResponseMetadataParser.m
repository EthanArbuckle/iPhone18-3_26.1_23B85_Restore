@interface PurchaseHistoryItemsDAAPResponseMetadataParser
- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4;
- (void)parser:(id)a3 didFailWithError:(id)a4;
- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6;
- (void)parserDidCancel:(id)a3;
- (void)parserDidStart:(id)a3;
@end

@implementation PurchaseHistoryItemsDAAPResponseMetadataParser

- (void)parserDidStart:(id)a3
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

- (void)parserDidCancel:(id)a3
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

- (void)parser:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
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
    v15 = v5;
    v11 = v13;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Parser failed with error: %{public}@", &v12, 0x16u);
  }
}

- (BOOL)parser:(id)a3 shouldParseCode:(unsigned int)a4
{
  result = 1;
  if (a4 <= 1836282995)
  {
    if (a4 == 1633968755)
    {
      return result;
    }

    v5 = 1836081511;
    goto LABEL_7;
  }

  if (a4 != 1836282996 && a4 != 1836413810)
  {
    v5 = 1836414073;
LABEL_7:
    if (a4 != v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)parser:(id)a3 didParseDataCode:(unsigned int)a4 bytes:(char *)a5 contentLength:(unsigned int)a6
{
  v10 = a3;
  if (a4 > 1836413809)
  {
    if (a4 == 1836413810)
    {
      v17 = v10;
      v16 = [NSNumber numberWithUnsignedInt:bswap32(*a5)];
      revision = self->_revision;
      self->_revision = v16;
    }

    else
    {
      if (a4 != 1836414073)
      {
        goto LABEL_14;
      }

      v17 = v10;
      if (*a5)
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

  else if (a4 == 1836081511)
  {
    v17 = v10;
    v15 = [[NSString alloc] initWithBytes:a5 length:a6 encoding:4];
    revision = self->_paginationToken;
    self->_paginationToken = v15;
  }

  else
  {
    if (a4 != 1836282996)
    {
      goto LABEL_14;
    }

    v17 = v10;
    v11 = [NSNumber numberWithUnsignedInt:bswap32(*a5)];
    revision = self->_status;
    self->_status = v11;
  }

  v10 = v17;
LABEL_14:
}

@end