@interface VNWarningRecorder
- (VNWarningRecorder)init;
- (id)valueForWarning:(id)warning;
- (id)warnings;
- (void)recordWarning:(id)warning value:(id)value;
- (void)recordWarnings:(id)warnings;
- (void)setWarnings:(id)warnings;
@end

@implementation VNWarningRecorder

- (void)recordWarnings:(id)warnings
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__VNWarningRecorder_recordWarnings___block_invoke;
  v3[3] = &unk_1E77B64E8;
  v3[4] = self;
  [warnings enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)setWarnings:(id)warnings
{
  warningsCopy = warnings;
  [(NSMutableDictionary *)self->_warnings removeAllObjects];
  if (warningsCopy)
  {
    [(NSMutableDictionary *)self->_warnings addEntriesFromDictionary:warningsCopy];
  }
}

- (id)warnings
{
  v2 = [(NSMutableDictionary *)self->_warnings copy];

  return v2;
}

- (id)valueForWarning:(id)warning
{
  v3 = [(NSMutableDictionary *)self->_warnings objectForKeyedSubscript:warning];

  return v3;
}

- (void)recordWarning:(id)warning value:(id)value
{
  warningCopy = warning;
  valueCopy = value;
  if (([warningCopy isEqualToString:@"VNRequestWarningImageTooSmallForFaceObservations"] & 1) != 0 || objc_msgSend(warningCopy, "isEqualToString:", @"VNRequestWarningBlinkDetectionFailure"))
  {
    v7 = objc_opt_class();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Wrong type for warning value - %@, should be %@", objc_opt_class(), v7];
    [VNError VNAssert:objc_opt_isKindOfClass() & 1 log:v8];
    v9 = [(NSMutableDictionary *)self->_warnings objectForKeyedSubscript:warningCopy];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v9];
      [v10 addObjectsFromArray:valueCopy];
      array = [v10 array];
      v12 = [array copy];
      [(NSMutableDictionary *)self->_warnings setObject:v12 forKeyedSubscript:warningCopy];
    }

    else
    {
      v10 = [valueCopy copy];
      [(NSMutableDictionary *)self->_warnings setObject:v10 forKeyedSubscript:warningCopy];
    }

    if ([warningCopy isEqualToString:@"VNRequestWarningImageTooSmallForFaceObservations"])
    {
      [(NSMutableDictionary *)self->_warnings setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNRequestWarningImageTooSmall"];
    }

LABEL_13:

    goto LABEL_14;
  }

  if (([warningCopy isEqualToString:@"VNRequestWarningImageMinimumLongDimension"] & 1) != 0 || objc_msgSend(warningCopy, "isEqualToString:", @"VNRequestWarningImageMinimumShortDimension"))
  {
    v13 = objc_opt_class();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Wrong type for warning value - %@, should be %@", objc_opt_class(), v13];
    [VNError VNAssert:objc_opt_isKindOfClass() & 1 log:v8];
    v14 = [(NSMutableDictionary *)self->_warnings objectForKeyedSubscript:warningCopy];
    v9 = v14;
    if (!v14 || [v14 compare:valueCopy] == -1)
    {
      [(NSMutableDictionary *)self->_warnings setObject:valueCopy forKeyedSubscript:warningCopy];
      [(NSMutableDictionary *)self->_warnings setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNRequestWarningImageTooSmall"];
    }

    goto LABEL_13;
  }

  [(NSMutableDictionary *)self->_warnings setObject:valueCopy forKeyedSubscript:warningCopy];
LABEL_14:
}

- (VNWarningRecorder)init
{
  v7.receiver = self;
  v7.super_class = VNWarningRecorder;
  v2 = [(VNWarningRecorder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    warnings = v2->_warnings;
    v2->_warnings = v3;

    v5 = v2;
  }

  return v2;
}

@end