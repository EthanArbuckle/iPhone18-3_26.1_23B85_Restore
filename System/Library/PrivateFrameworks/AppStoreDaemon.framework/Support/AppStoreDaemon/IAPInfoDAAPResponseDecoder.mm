@interface IAPInfoDAAPResponseDecoder
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didFinishWithState:(int64_t)state;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
- (void)parserDidCancel:(id)cancel;
- (void)parserDidStart:(id)start;
@end

@implementation IAPInfoDAAPResponseDecoder

- (void)parserDidStart:(id)start
{
  v4 = objc_opt_new();
  items = self->_items;
  self->_items = v4;

  v6 = objc_opt_new();
  deletedItems = self->_deletedItems;
  self->_deletedItems = v6;

  v8 = objc_opt_new();
  currentItemsArray = self->_currentItemsArray;
  self->_currentItemsArray = v8;
}

- (void)parser:(id)parser didFinishWithState:(int64_t)state
{
  if (state != 2)
  {
    self->_success = 0;
    v17 = objc_opt_new();
    items = self->_items;
    self->_items = v17;

    v19 = objc_opt_new();
    deletedItems = self->_deletedItems;
    self->_deletedItems = v19;

    v9 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v21 = 138412290;
    v22 = objc_opt_class();
    v16 = v22;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: Failed to decode response", &v21, 0xCu);
    goto LABEL_4;
  }

  self->_success = 1;
  v5 = [NSArray arrayWithArray:self->_items];
  addedIAPs = self->_addedIAPs;
  self->_addedIAPs = v5;

  v7 = [NSArray arrayWithArray:self->_deletedItems];
  removedIAPs = self->_removedIAPs;
  self->_removedIAPs = v7;

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    status = self->_status;
    update = self->_update;
    serverRevision = self->_serverRevision;
    v14 = self->_addedIAPs;
    v15 = self->_removedIAPs;
    v21 = 138413570;
    v22 = v10;
    v23 = 1024;
    v24 = status;
    v25 = 1024;
    v26 = update;
    v27 = 2112;
    v28 = serverRevision;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%@]: Parsed response\nstatus: %i\nisUpdate: %{BOOL}d\nserverRevision: %@\niaps: %@\ndeletedIaps: %@", &v21, 0x36u);
LABEL_4:
  }

LABEL_6:
}

- (void)parserDidCancel:(id)cancel
{
  self->_success = 0;
  v4 = objc_opt_new();
  items = self->_items;
  self->_items = v4;

  v6 = objc_opt_new();
  deletedItems = self->_deletedItems;
  self->_deletedItems = v6;
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  self->_success = 0;
  v5 = objc_opt_new();
  items = self->_items;
  self->_items = v5;

  v7 = objc_opt_new();
  deletedItems = self->_deletedItems;
  self->_deletedItems = v7;
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1835625315)
  {
    if (code <= 1836213102)
    {
      if (code > 1835819883)
      {
        if (code == 1835819884)
        {
          return result;
        }

        v5 = 1835821428;
      }

      else
      {
        if (code == 1835625316)
        {
          return result;
        }

        v5 = 1835625572;
      }

      goto LABEL_22;
    }

    if (code <= 1836344174)
    {
      if (code == 1836213103)
      {
        return result;
      }

      v5 = 1836282996;
      goto LABEL_22;
    }

    if (code != 1836344175 && code != 1836413810)
    {
      v5 = 1836414073;
      goto LABEL_22;
    }
  }

  else
  {
    if (code > 1634368096)
    {
      if (code - 1634368097 <= 0x13 && ((1 << (code - 97)) & 0xE4011) != 0)
      {
        return result;
      }

      v5 = 1634952301;
LABEL_22:
      if (code != v5)
      {
        return 0;
      }

      return result;
    }

    if (code != 1633968755 && code != 1634025833)
    {
      v5 = 1634038895;
      goto LABEL_22;
    }
  }

  return result;
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code == 1836409964)
  {
    v12 = parserCopy;
    deletedItems = self->_deletedItems;
LABEL_7:
    v11 = deletedItems;
    currentItemsArray = self->_currentItemsArray;
    self->_currentItemsArray = v11;
    goto LABEL_8;
  }

  if (code != 1835821428)
  {
    if (code != 1835819884)
    {
      goto LABEL_9;
    }

    v12 = parserCopy;
    deletedItems = self->_items;
    goto LABEL_7;
  }

  v12 = parserCopy;
  v9 = objc_alloc_init(ASDMutableIAPInfo);
  currentItemsArray = self->_currentItem;
  self->_currentItem = v9;
LABEL_8:

  parserCopy = v12;
LABEL_9:
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code <= 1634368114)
  {
    v17 = parserCopy;
    if (code > 1634368100)
    {
      if (code != 1634368101)
      {
        if (code == 1634368111)
        {
          v14 = bytes[3];
          [(ASDMutableIAPInfo *)self->_currentItem setHasUsedFreeOffer:v14 & 1];
          [(ASDMutableIAPInfo *)self->_currentItem setHasUsedIntroPricingOffer:(v14 & 2) != 0];
        }

        else
        {
          if (code != 1634368114)
          {
            goto LABEL_27;
          }

          [(ASDMutableIAPInfo *)self->_currentItem setAutoRenewStatus:*bytes != 0];
        }

        goto LABEL_26;
      }

      v12 = [NSDate dateWithTimeIntervalSince1970:bswap32(*bytes)];
      [(ASDMutableIAPInfo *)self->_currentItem setExpirationDate:v12];
    }

    else
    {
      switch(code)
      {
        case 0x61654169u:
          currentItem = self->_currentItem;
          v12 = [NSNumber numberWithUnsignedLongLong:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
          [(ASDMutableIAPInfo *)currentItem setAdamId:v12];
          break;
        case 0x6165746Fu:
          v12 = [NSDate dateWithTimeIntervalSince1970:bswap32(*bytes)];
          [(ASDMutableIAPInfo *)self->_currentItem setPurchaseDate:v12];
          break;
        case 0x616A7A61u:
          v11 = self->_currentItem;
          v12 = [NSNumber numberWithUnsignedLongLong:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
          [(ASDMutableIAPInfo *)v11 setAppAdamId:v12];
          break;
        default:
          goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  if (code > 1836282995)
  {
    switch(code)
    {
      case 0x6D757479u:
        self->_update = *bytes != 0;
        break;
      case 0x6D757372u:
        v17 = parserCopy;
        v15 = [NSNumber numberWithUnsignedInt:bswap32(*bytes)];
        serverRevision = self->_serverRevision;
        self->_serverRevision = v15;

        goto LABEL_26;
      case 0x6D737474u:
        self->_status = bswap32(*bytes);
        break;
    }
  }

  else
  {
    if (code == 1634368115)
    {
      v17 = parserCopy;
      v12 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      [(ASDMutableIAPInfo *)self->_currentItem setSubscriptionFamilyId:v12];
LABEL_25:

LABEL_26:
      parserCopy = v17;
      goto LABEL_27;
    }

    if (code != 1634368116)
    {
      if (code != 1634952301)
      {
        goto LABEL_27;
      }

      v17 = parserCopy;
      v12 = [NSDate dateWithTimeIntervalSince1970:bswap32(*bytes)];
      [(ASDMutableIAPInfo *)self->_currentItem setLastModifiedDate:v12];
      goto LABEL_25;
    }

    if (*bytes < 5u)
    {
      v17 = parserCopy;
      [(ASDMutableIAPInfo *)self->_currentItem setType:?];
      goto LABEL_26;
    }

    self->_errorParsingItem = 1;
  }

LABEL_27:
}

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1835821428)
  {
    if (self->_errorParsingItem)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        currentItem = self->_currentItem;
        v11 = 138412290;
        v12 = currentItem;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[IAPInfoItemsResponseParserDelegate]: Error parsing item: %@", &v11, 0xCu);
      }

      self->_errorParsingItem = 0;
    }

    else
    {
      currentItemsArray = self->_currentItemsArray;
      v9 = [(ASDMutableIAPInfo *)self->_currentItem copy];
      [(NSMutableArray *)currentItemsArray addObject:v9];
    }
  }
}

@end