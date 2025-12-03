@interface BCSAWDLogger
- (id)barcodeDetectedEventForAction:(id)action;
- (int)_awdBarcodeClientType;
- (int)_awdBarcodeDataTypeFromAction:(id)action;
- (int)_awdBarcodeSourceTypeForAction:(id)action;
- (int)_awdBarcodeURLTypeFromURLAction:(id)action;
- (int)_awdInvalidBarcodeDataTypeFromInvalidData:(id)data;
- (void)logBarcodeActivatedEventForAction:(id)action;
- (void)logBarcodeDetectedEvent:(id)event startTime:(unint64_t)time;
- (void)logBarcodeDetectedEventForAction:(id)action startTime:(unint64_t)time;
- (void)logBarcodePreviewedEventForContentType:(int64_t)type;
@end

@implementation BCSAWDLogger

- (id)barcodeDetectedEventForAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(AWDBarcodeSupportCodeDetectedEvent);
  [(AWDBarcodeSupportCodeDetectedEvent *)v5 setClientType:[(BCSAWDLogger *)self _awdBarcodeClientType]];
  [(AWDBarcodeSupportCodeDetectedEvent *)v5 setBarcodeSourceType:[(BCSAWDLogger *)self _awdBarcodeSourceTypeForAction:actionCopy]];
  [(AWDBarcodeSupportCodeDetectedEvent *)v5 setBarcodeDataType:[(BCSAWDLogger *)self _awdBarcodeDataTypeFromAction:actionCopy]];
  data = [actionCopy data];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    data2 = [actionCopy data];
    [(AWDBarcodeSupportCodeDetectedEvent *)v5 setInvalidBarcodeDataType:[(BCSAWDLogger *)self _awdInvalidBarcodeDataTypeFromInvalidData:data2]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = actionCopy;
    [(AWDBarcodeSupportCodeDetectedEvent *)v5 setBarcodeURLType:[(BCSAWDLogger *)self _awdBarcodeURLTypeFromURLAction:v9]];
    v10 = [(BCSAWDLogger *)self _awdBarcodePreferredAppLinkOpenStrategyFromURLAction:v9];

    [(AWDBarcodeSupportCodeDetectedEvent *)v5 setAppLinkPreferredOpenStrategy:v10];
  }

  return v5;
}

- (void)logBarcodeDetectedEvent:(id)event startTime:(unint64_t)time
{
  eventCopy = event;
  [eventCopy setDetectionTimeMs:(clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - time) / 0xF4240];
  AWDPostMetric();
  LODWORD(time) = [eventCopy barcodeDataType];
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (time)
  {
    if (v6)
    {
      [BCSAWDLogger logBarcodeDetectedEvent:eventCopy startTime:?];
    }
  }

  else if (v6)
  {
    [BCSAWDLogger logBarcodeDetectedEvent:eventCopy startTime:?];
  }
}

- (void)logBarcodeDetectedEventForAction:(id)action startTime:(unint64_t)time
{
  v6 = [(BCSAWDLogger *)self barcodeDetectedEventForAction:action];
  [(BCSAWDLogger *)self logBarcodeDetectedEvent:v6 startTime:time];
}

- (void)logBarcodeActivatedEventForAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(AWDBarcodeSupportCodeActivatedEvent);
    [(AWDBarcodeSupportCodeActivatedEvent *)v5 setClientType:[(BCSAWDLogger *)self _awdBarcodeClientType]];
    [(AWDBarcodeSupportCodeActivatedEvent *)v5 setBarcodeSourceType:[(BCSAWDLogger *)self _awdBarcodeSourceTypeForAction:actionCopy]];
    [(AWDBarcodeSupportCodeActivatedEvent *)v5 setBarcodeDataType:[(BCSAWDLogger *)self _awdBarcodeDataTypeFromAction:actionCopy]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = actionCopy;
      [(AWDBarcodeSupportCodeActivatedEvent *)v5 setBarcodeURLType:[(BCSAWDLogger *)self _awdBarcodeURLTypeFromURLAction:v6]];
      v7 = [(BCSAWDLogger *)self _awdBarcodePreferredAppLinkOpenStrategyFromURLAction:v6];

      [(AWDBarcodeSupportCodeActivatedEvent *)v5 setAppLinkActivationOpenStrategy:v7];
    }

    AWDPostMetric();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [BCSAWDLogger logBarcodeActivatedEventForAction:v5];
    }
  }
}

- (void)logBarcodePreviewedEventForContentType:(int64_t)type
{
  v4 = objc_alloc_init(AWDBarcodeSupportCodePreviewedEvent);
  [(AWDBarcodeSupportCodePreviewedEvent *)v4 setPreviewContentType:type];
  AWDPostMetric();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [BCSAWDLogger logBarcodePreviewedEventForContentType:];
  }
}

- (int)_awdBarcodeDataTypeFromAction:(id)action
{
  data = [action data];
  type = [data type];

  if (type > 0x11)
  {
    return 11;
  }

  else
  {
    return dword_2419D20F8[type];
  }
}

- (int)_awdBarcodeClientType
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.BarcodeSupport.BarcodeNotificationService"])
  {
    v4 = 1;
  }

  else if (_bcs_isCurrentProcessSafari())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)_awdBarcodeSourceTypeForAction:(id)action
{
  if (([action codeType] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)_awdInvalidBarcodeDataTypeFromInvalidData:(id)data
{
  dataCopy = data;
  invalidDataType = [dataCopy invalidDataType];
  v5 = 1;
  if (invalidDataType > 6)
  {
    if (invalidDataType > 9)
    {
      if ((invalidDataType - 10) >= 3 && invalidDataType != 15)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    v6 = 7;
    if (invalidDataType == 9)
    {
      v9 = 9;
    }

    else
    {
      v9 = 1;
    }

    if (invalidDataType == 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = v9;
    }

    v8 = invalidDataType == 7;
LABEL_29:
    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_32;
  }

  if (invalidDataType > 3)
  {
    v6 = 4;
    if (invalidDataType == 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = 1;
    }

    if (invalidDataType == 5)
    {
      v7 = 5;
    }

    else
    {
      v7 = v10;
    }

    v8 = invalidDataType == 4;
    goto LABEL_29;
  }

  if (invalidDataType)
  {
    v6 = 2;
    if (invalidDataType == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = invalidDataType == 2;
    goto LABEL_29;
  }

LABEL_12:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSAWDLogger _awdInvalidBarcodeDataTypeFromInvalidData:dataCopy];
  }

  v5 = 0;
LABEL_32:

  return v5;
}

- (int)_awdBarcodeURLTypeFromURLAction:(id)action
{
  appLinkCount = [action appLinkCount];
  if (appLinkCount == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (appLinkCount != 0);
  }
}

- (void)logBarcodeDetectedEvent:(void *)a1 startTime:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 barcodeDataType];
  [a1 clientType];
  [a1 barcodeSourceType];
  [a1 detectionTimeMs];
  [a1 barcodeURLType];
  [a1 appLinkPreferredOpenStrategy];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logBarcodeDetectedEvent:(void *)a1 startTime:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 barcodeDataType];
  [a1 clientType];
  [a1 barcodeSourceType];
  [a1 detectionTimeMs];
  [a1 barcodeURLType];
  [a1 appLinkPreferredOpenStrategy];
  [a1 invalidBarcodeDataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logBarcodeActivatedEventForAction:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 barcodeDataType];
  [a1 clientType];
  [a1 barcodeSourceType];
  [a1 barcodeURLType];
  [a1 appLinkActivationOpenStrategy];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)logBarcodePreviewedEventForContentType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_awdInvalidBarcodeDataTypeFromInvalidData:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = [a1 invalidDataType];
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSAWDLogger: Encountered invalid invalidDataType: %ld", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end