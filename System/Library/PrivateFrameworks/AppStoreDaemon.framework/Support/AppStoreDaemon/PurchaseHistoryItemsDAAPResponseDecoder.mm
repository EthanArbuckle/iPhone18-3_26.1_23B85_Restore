@interface PurchaseHistoryItemsDAAPResponseDecoder
- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code;
- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container;
- (void)parser:(id)parser didEndContainerCode:(unsigned int)code;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didFinishWithState:(int64_t)state;
- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length;
- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length;
- (void)parserDidCancel:(id)cancel;
- (void)parserDidStart:(id)start;
@end

@implementation PurchaseHistoryItemsDAAPResponseDecoder

- (void)parserDidStart:(id)start
{
  v4 = objc_opt_new();
  currentBatchAdded = self->_currentBatchAdded;
  self->_currentBatchAdded = v4;

  v6 = objc_opt_new();
  currentBatchRemoved = self->_currentBatchRemoved;
  self->_currentBatchRemoved = v6;

  v8 = objc_opt_new();
  currentRequiredCapabilities = self->_currentRequiredCapabilities;
  self->_currentRequiredCapabilities = v8;
}

- (void)parser:(id)parser didFinishWithState:(int64_t)state
{
  self->_doneParsing = 1;
  if (state != 2)
  {
    v5 = objc_opt_new();
    currentBatchAdded = self->_currentBatchAdded;
    self->_currentBatchAdded = v5;

    v7 = objc_opt_new();
    currentBatchRemoved = self->_currentBatchRemoved;
    self->_currentBatchRemoved = v7;

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 138412290;
      *&v11[4] = objc_opt_class();
      v10 = *&v11[4];
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: Error decoding response", v11, 0xCu);
    }
  }

  [(NSConditionLock *)self->_parsingLock unlockWithCondition:2, *v11];
}

- (void)parserDidCancel:(id)cancel
{
  self->_doneParsing = 1;
  v4 = objc_opt_new();
  currentBatchAdded = self->_currentBatchAdded;
  self->_currentBatchAdded = v4;

  v6 = objc_opt_new();
  currentBatchRemoved = self->_currentBatchRemoved;
  self->_currentBatchRemoved = v6;

  parsingLock = self->_parsingLock;

  [(NSConditionLock *)parsingLock unlockWithCondition:2];
}

- (void)parser:(id)parser didFailWithError:(id)error
{
  self->_doneParsing = 1;
  v5 = objc_opt_new();
  currentBatchAdded = self->_currentBatchAdded;
  self->_currentBatchAdded = v5;

  v7 = objc_opt_new();
  currentBatchRemoved = self->_currentBatchRemoved;
  self->_currentBatchRemoved = v7;

  parsingLock = self->_parsingLock;

  [(NSConditionLock *)parsingLock unlockWithCondition:2];
}

- (BOOL)parser:(id)parser shouldParseCode:(unsigned int)code
{
  result = 1;
  if (code > 1634358113)
  {
    if (code > 1634366059)
    {
      if (code <= 1835626092)
      {
        if (code > 1634953069)
        {
          if (code != 1634953070 && code != 1835624553)
          {
            v8 = 1835625572;
            goto LABEL_66;
          }
        }

        else if (code != 1634366060 && code != 1634951538)
        {
          v8 = 1634952304;
          goto LABEL_66;
        }
      }

      else
      {
        if (code > 1836409963)
        {
          if (code > 2002874984)
          {
            if (code == 2002874985)
            {
              return result;
            }

            v6 = 30575;
          }

          else
          {
            if (code == 1836409964)
            {
              return result;
            }

            v6 = 25705;
          }

          v8 = v6 | 0x77610000;
          goto LABEL_66;
        }

        if (code != 1835626093 && code != 1835819884)
        {
          v8 = 1835821428;
          goto LABEL_66;
        }
      }

      return result;
    }

    if (code > 1634363759)
    {
      if (code <= 1634364772)
      {
        if (code == 1634363760)
        {
          return result;
        }

        v7 = 27973;
      }

      else
      {
        if (code == 1634364773 || code == 1634365557)
        {
          return result;
        }

        v7 = 29283;
      }
    }

    else if (code <= 1634363232)
    {
      if (code == 1634358114 || code == 1634362210)
      {
        return result;
      }

      v7 = 25458;
    }

    else
    {
      if (code - 1634363493 <= 0xA && ((1 << (code - 101)) & 0x421) != 0)
      {
        return result;
      }

      v7 = 26465;
    }

    goto LABEL_59;
  }

  if (code > 1634035307)
  {
    if (code <= 1634038894)
    {
      if (code <= 1634036083)
      {
        if (code == 1634035308)
        {
          return result;
        }

        v5 = 26977;
        goto LABEL_65;
      }

      if (code == 1634036084 || code == 1634036841)
      {
        return result;
      }

      v5 = 28723;
LABEL_65:
      v8 = v5 | 0x61650000;
LABEL_66:
      if (code != v8)
      {
        return 0;
      }

      return result;
    }

    if (code > 1634355569)
    {
      if (code == 1634355570 || code == 1634357333)
      {
        return result;
      }

      v7 = 21315;
    }

    else
    {
      if (code == 1634038895 || code == 1634354768)
      {
        return result;
      }

      v7 = 18003;
    }

LABEL_59:
    v8 = v7 | 0x616A0000;
    goto LABEL_66;
  }

  if (code > 1634030418)
  {
    if (code - 1634034497 <= 0x33 && ((1 << (code - 65)) & 0x8010000280001) != 0 || code == 1634030419)
    {
      return result;
    }

    v5 = 24948;
    goto LABEL_65;
  }

  if (code > 1634028621)
  {
    if (code > 1634030191)
    {
      if (code == 1634030192)
      {
        return result;
      }

      v5 = 21321;
    }

    else
    {
      if (code == 1634028622)
      {
        return result;
      }

      v5 = 19819;
    }

    goto LABEL_65;
  }

  if (code != 1633968755 && code != 1634026057)
  {
    v5 = 18249;
    goto LABEL_65;
  }

  return result;
}

- (BOOL)parser:(id)parser shouldParseCodeAsContainer:(unsigned int)container
{
  result = 1;
  if (container > 1835819883)
  {
    if (container != 1835819884 && container != 1835821428)
    {
      v5 = 1836409964;
LABEL_8:
      if (container != v5)
      {
        return 0;
      }
    }
  }

  else if (container != 1633968755 && container != 1634035308)
  {
    v5 = 1634366060;
    goto LABEL_8;
  }

  return result;
}

- (void)parser:(id)parser didStartContainerCode:(unsigned int)code contentLength:(unsigned int)length
{
  if (code == 1835821428)
  {
    v7 = objc_alloc_init(ASDPurchaseHistoryApp);
    currentItem = self->_currentItem;
    self->_currentItem = v7;
  }

  self->_currentContainerCode = code;
}

- (void)parser:(id)parser didParseDataCode:(unsigned int)code bytes:(char *)bytes contentLength:(unsigned int)length
{
  parserCopy = parser;
  if (code > 1634358082)
  {
    if (code > 1634365556)
    {
      if (code > 1835624552)
      {
        if (code > 2002871400)
        {
          switch(code)
          {
            case 0x77616469u:
              [(ASDPurchaseHistoryApp *)self->_currentItem setWatchAppDeliveredIniOSApp:*bytes != 0];
              break;
            case 0x77617269u:
              [(ASDPurchaseHistoryApp *)self->_currentItem setWatchAppRunsIndependently:*bytes != 0];
              break;
            case 0x7761776Fu:
              [(ASDPurchaseHistoryApp *)self->_currentItem setWatchOnly:*bytes != 0];
              break;
          }
        }

        else
        {
          if (code == 1835624553)
          {
            [(ASDPurchaseHistoryApp *)self->_currentItem setHidden:*bytes != 0];
            goto LABEL_118;
          }

          if (code != 1835625572)
          {
            if (code != 1835626093)
            {
              goto LABEL_118;
            }

            v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ASDPurchaseHistoryApp *)self->_currentItem setTitle:v10];
            goto LABEL_117;
          }

          v14 = (*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8);
          v15 = bytes[7];
          if (self->_currentContainerCode == 1836409964)
          {
            currentBatchRemoved = self->_currentBatchRemoved;
            v17 = [NSNumber numberWithUnsignedLongLong:v14 + v15];
            [(NSMutableArray *)currentBatchRemoved addObject:v17];

            sub_100369550(self);
          }

          else
          {
            [(ASDPurchaseHistoryApp *)self->_currentItem setLockerItemID:v14 + v15];
          }
        }

        goto LABEL_118;
      }

      if (code > 1634951537)
      {
        switch(code)
        {
          case 0x61736172u:
            v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ASDPurchaseHistoryApp *)self->_currentItem setDeveloperName:v10];
            break;
          case 0x61736470u:
            v10 = [NSDate dateWithTimeIntervalSince1970:bswap32(*bytes)];
            [(ASDPurchaseHistoryApp *)self->_currentItem setDatePurchased:v10];
            break;
          case 0x6173676Eu:
            v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
            [(ASDPurchaseHistoryApp *)self->_currentItem setGenreName:v10];
            break;
          default:
            goto LABEL_118;
        }

        goto LABEL_117;
      }

      if (code != 1634365557)
      {
        if (code != 1634366051)
        {
          goto LABEL_118;
        }

        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        if (self->_currentContainerCode == 1634366060)
        {
          [(NSMutableArray *)self->_currentRequiredCapabilities addObject:v10];
        }

        goto LABEL_117;
      }

      v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      currentItem = self->_currentItem;
      v12 = [NSURL URLWithString:v10];
      [(ASDPurchaseHistoryApp *)currentItem setPreflightPackageURL:v12];
    }

    else
    {
      if (code > 1634363492)
      {
        if (code <= 1634363759)
        {
          if (code == 1634363493)
          {
            [(ASDPurchaseHistoryApp *)self->_currentItem setHasMessagesExtension:*bytes != 0];
            goto LABEL_118;
          }

          if (code == 1634363498)
          {
            [(ASDPurchaseHistoryApp *)self->_currentItem setHiddenFromSpringboard:*bytes != 0];
            goto LABEL_118;
          }

          if (code != 1634363503)
          {
            goto LABEL_118;
          }

          v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
          [(ASDPurchaseHistoryApp *)self->_currentItem setOvalIconURLString:v10];
          goto LABEL_117;
        }

        switch(code)
        {
          case 0x616A6970u:
            [(ASDPurchaseHistoryApp *)self->_currentItem setIsPreorder:*bytes != 0];
            break;
          case 0x616A6D45u:
            [(ASDPurchaseHistoryApp *)self->_currentItem setCurrentlyOptedInForMacOSEligibility:*bytes != 0];
            break;
          case 0x616A6D65u:
            [(ASDPurchaseHistoryApp *)self->_currentItem setOptedInForMacOSEligibility:*bytes != 0];
            break;
        }

        goto LABEL_118;
      }

      if (code <= 1634362209)
      {
        if (code == 1634358083)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setContentRatingFlags:__rev16(*bytes)];
        }

        else if (code == 1634358114)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setIs32BitOnly:*bytes != 0];
        }

        goto LABEL_118;
      }

      if (code != 1634362210)
      {
        if (code == 1634362226)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setCurrentlyOptedInForXROSEligibility:*bytes != 0];
        }

        else if (code == 1634363233)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setIsEligibleForGamesApp:*bytes != 0];
        }

        goto LABEL_118;
      }

      [(ASDPurchaseHistoryApp *)self->_currentItem setCustomBrowserEngineApp:*bytes != 0];
      appCapabilities = [(ASDPurchaseHistoryApp *)self->_currentItem appCapabilities];
      v10 = [appCapabilities mutableCopy];

      if (!v10)
      {
        v10 = objc_alloc_init(NSMutableArray);
      }

      [v10 addObject:@"is-custom-browser-engine-app"];
      v12 = [v10 copy];
      [(ASDPurchaseHistoryApp *)self->_currentItem setAppCapabilities:v12];
    }

    goto LABEL_114;
  }

  if (code > 1634034536)
  {
    if (code <= 1634037810)
    {
      if (code <= 1634036064)
      {
        if (code == 1634034537)
        {
          v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
          [(ASDPurchaseHistoryApp *)self->_currentItem setCircularAppIconArtworkURLString:v10];
        }

        else
        {
          if (code != 1634034548)
          {
            goto LABEL_118;
          }

          v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
          [(ASDPurchaseHistoryApp *)self->_currentItem setCircularAppIconArtworkToken:v10];
        }

        goto LABEL_117;
      }

      if (code == 1634036065)
      {
        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ASDPurchaseHistoryApp *)self->_currentItem setAppIconArtworkURLString:v10];
      }

      else
      {
        if (code != 1634036084)
        {
          if (code == 1634036841)
          {
            [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsLayeredImage:*bytes != 0];
          }

          goto LABEL_118;
        }

        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ASDPurchaseHistoryApp *)self->_currentItem setAppIconArtworkToken:v10];
      }

      goto LABEL_117;
    }

    if (code <= 1634354770)
    {
      switch(code)
      {
        case 0x61657033u:
          [(ASDPurchaseHistoryApp *)self->_currentItem setHasP3:*bytes != 0];
          break;
        case 0x6165746Fu:
          [(ASDPurchaseHistoryApp *)self->_currentItem setPurchaseToken:bswap32(*bytes)];
          break;
        case 0x616A4650u:
          [(ASDPurchaseHistoryApp *)self->_currentItem setFirstParty:*bytes != 0];
          break;
      }

      goto LABEL_118;
    }

    if (code == 1634354771)
    {
      [(ASDPurchaseHistoryApp *)self->_currentItem setFamilyShared:*bytes != 0];
      goto LABEL_118;
    }

    if (code == 1634355570)
    {
      [(ASDPurchaseHistoryApp *)self->_currentItem setOptedInForXROSEligibility:*bytes != 0];
      goto LABEL_118;
    }

    if (code != 1634357333)
    {
      goto LABEL_118;
    }

    v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    v11 = self->_currentItem;
    v12 = [NSURL URLWithString:v10];
    [(ASDPurchaseHistoryApp *)v11 setProductURL:v12];
LABEL_114:

    goto LABEL_117;
  }

  if (code <= 1634030408)
  {
    if (code <= 1634028621)
    {
      if (code != 1634026057)
      {
        if (code == 1634027337)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setGenreID:bswap32(*bytes)];
        }

        goto LABEL_118;
      }

      v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      [(ASDPurchaseHistoryApp *)self->_currentItem setBundleID:v10];
    }

    else
    {
      if (code != 1634028622)
      {
        if (code != 1634028907)
        {
          if (code != 1634030192)
          {
            goto LABEL_118;
          }

          v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
          [(ASDPurchaseHistoryApp *)self->_currentItem setRedownloadParams:v10];
          goto LABEL_117;
        }

        v19 = bswap32(*bytes);
        [(ASDPurchaseHistoryApp *)self->_currentItem setMediaKind:v19];
        if (v19 == 0x4000000)
        {
          [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsMac:1];
        }

        goto LABEL_118;
      }

      v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
      [(ASDPurchaseHistoryApp *)self->_currentItem setLongTitle:v10];
    }

LABEL_117:

    goto LABEL_118;
  }

  if (code > 1634034496)
  {
    switch(code)
    {
      case 0x61656341u:
        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ASDPurchaseHistoryApp *)self->_currentItem setIconURLString:v10];
        break;
      case 0x61656354u:
        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ASDPurchaseHistoryApp *)self->_currentItem setCircularAppIconCompatibleArtworkURLString:v10];
        break;
      case 0x61656356u:
        v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
        [(ASDPurchaseHistoryApp *)self->_currentItem setCircularIconURLString:v10];
        break;
      default:
        goto LABEL_118;
    }

    goto LABEL_117;
  }

  if (code == 1634030409)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setStoreItemID:((*bytes << 56) | (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8)) + bytes[7]];
    goto LABEL_118;
  }

  if (code != 1634030419)
  {
    if (code != 1634034036)
    {
      goto LABEL_118;
    }

    v10 = [[NSString alloc] initWithBytes:bytes length:length encoding:4];
    [(ASDPurchaseHistoryApp *)self->_currentItem setAppIconCompatibleArtworkURLString:v10];
    goto LABEL_117;
  }

  v13 = bytes[1];
  if ((v13 & 2) != 0)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsIPad:1];
  }

  if ((v13 & 5) != 0)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsIPhone:1];
  }

  if ((v13 & 8) != 0)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsMac:1];
  }

  if ((v13 & 0x10) != 0)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setSupportsRealityDevice:1];
  }

LABEL_118:
}

- (void)parser:(id)parser didEndContainerCode:(unsigned int)code
{
  parserCopy = parser;
  if (code == 1634366060)
  {
    [(ASDPurchaseHistoryApp *)self->_currentItem setRequiredCapabilities:self->_currentRequiredCapabilities];
    v8 = objc_opt_new();
    currentRequiredCapabilities = self->_currentRequiredCapabilities;
    self->_currentRequiredCapabilities = v8;
  }

  else if (code == 1835821428)
  {
    if (self->_errorParsingItem)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        currentItem = self->_currentItem;
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = currentItem;
        v14 = v12;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@]: Error parsing item: %@", &v15, 0x16u);
      }

      self->_errorParsingItem = 0;
    }

    else
    {
      [(NSMutableArray *)self->_currentBatchAdded addObject:self->_currentItem];
      batchSize = self->_batchSize;
      v11 = self->_currentBatchCount + 1;
      self->_currentBatchCount = v11;
      if (v11 >= batchSize)
      {
        [(NSConditionLock *)self->_parsingLock unlockWithCondition:2];
        [(NSConditionLock *)self->_parsingLock lockWhenCondition:1];
      }
    }
  }
}

@end