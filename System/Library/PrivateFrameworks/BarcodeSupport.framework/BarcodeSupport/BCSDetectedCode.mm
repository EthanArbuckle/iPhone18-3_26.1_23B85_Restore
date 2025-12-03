@interface BCSDetectedCode
+ (id)detectedCodeWithBarcodeObservation:(id)observation;
+ (id)detectedCodeWithMachineReadableObject:(id)object;
- (BOOL)isLikelyEqualToCode:(id)code;
- (void)parseCodeWithCompletion:(id)completion;
@end

@implementation BCSDetectedCode

+ (id)detectedCodeWithMachineReadableObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(BCSDetectedCode);
  mrcObject = v4->_mrcObject;
  v4->_mrcObject = objectCopy;

  return v4;
}

+ (id)detectedCodeWithBarcodeObservation:(id)observation
{
  observationCopy = observation;
  v4 = objc_alloc_init(BCSDetectedCode);
  observation = v4->_observation;
  v4->_observation = observationCopy;

  return v4;
}

- (void)parseCodeWithCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_241993000, "parseCodeWithCompletion:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  objc_initWeak(&location, self);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __43__BCSDetectedCode_parseCodeWithCompletion___block_invoke;
  v25 = &unk_278CFE5F8;
  objc_copyWeak(&v27, &location);
  v6 = completionCopy;
  v26 = v6;
  v7 = MEMORY[0x245CF4600](&v22);
  if (self->_mrcObject)
  {
    payloadDataValue = +[BCSQRCodeParser sharedParser];
    [payloadDataValue parseCodeFromMetadataMachineReadableCodeObject:self->_mrcObject completionHandler:v7];
  }

  else if (self->_observation)
  {
    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      symbology = [(VNBarcodeObservation *)self->_observation symbology];
      *buf = 138412547;
      *&buf[4] = self;
      *&buf[12] = 2113;
      *&buf[14] = symbology;
      _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSDetectedCode: (%@) did receive VNObservation with symbology %{private}@", buf, 0x16u);
    }

    symbology2 = [(VNBarcodeObservation *)self->_observation symbology];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v13 = getVNBarcodeSymbologyAppClipCodeSymbolLoc_ptr;
    v33 = getVNBarcodeSymbologyAppClipCodeSymbolLoc_ptr;
    if (!getVNBarcodeSymbologyAppClipCodeSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getVNBarcodeSymbologyAppClipCodeSymbolLoc_block_invoke;
      v35 = &unk_278CFE620;
      v36 = &v30;
      __getVNBarcodeSymbologyAppClipCodeSymbolLoc_block_invoke(buf);
      v13 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v13)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"VNBarcodeSymbology getVNBarcodeSymbologyAppClipCode(void)"];
      [currentHandler handleFailureInFunction:v21 file:@"BCSDetectedCode.m" lineNumber:23 description:{@"%s", dlerror(), v22, v23, v24, v25}];

      __break(1u);
    }

    v14 = *v13;
    v15 = [symbology2 isEqualToString:v14];

    if (v15)
    {
      payloadDataValue = [(VNBarcodeObservation *)self->_observation payloadDataValue];
      appClipCodeMetadataValue = [(VNBarcodeObservation *)self->_observation appClipCodeMetadataValue];
      payloadStringValue = appClipCodeMetadataValue;
      if (payloadDataValue && appClipCodeMetadataValue)
      {
        v18 = +[BCSAppClipCodeURLDecoder sharedDecoder];
        [v18 parseEncodedURLData:payloadDataValue version:objc_msgSend(payloadStringValue completion:{"unsignedIntValue"), v7}];
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSDetectedCodeErrorDomain" code:1 userInfo:0];
        (*(v6 + 2))(v6, 0, v18);
      }
    }

    else
    {
      payloadDataValue = +[BCSQRCodeParser sharedParser];
      payloadStringValue = [(VNBarcodeObservation *)self->_observation payloadStringValue];
      [payloadDataValue parseCodeFromString:payloadStringValue completionHandler:v7];
    }
  }

  else
  {
    payloadDataValue = [MEMORY[0x277CCA9B8] errorWithDomain:@"BCSDetectedCodeErrorDomain" code:1 userInfo:0];
    (*(v6 + 2))(v6, 0, payloadDataValue);
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);

  v19 = *MEMORY[0x277D85DE8];
}

void __43__BCSDetectedCode_parseCodeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!v8 || v5)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7 = v8;
      [v7 setDetectedCode:WeakRetained];
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (BOOL)isLikelyEqualToCode:(id)code
{
  codeCopy = code;
  mrcObject = [codeCopy mrcObject];

  if (mrcObject)
  {
    mrcObject2 = [codeCopy mrcObject];
    mrcObject3 = [(BCSDetectedCode *)self mrcObject];
    basicDescriptor = [mrcObject3 basicDescriptor];
    v9 = [mrcObject2 _bcs_probablyContainsSameCodeInBasicDescriptor:basicDescriptor];
  }

  else
  {
    observation = [codeCopy observation];

    if (!observation)
    {
      v9 = 0;
      goto LABEL_6;
    }

    mrcObject2 = [codeCopy observation];
    mrcObject3 = [mrcObject2 payloadStringValue];
    basicDescriptor = [(BCSDetectedCode *)self observation];
    payloadStringValue = [basicDescriptor payloadStringValue];
    v9 = [mrcObject3 isEqualToString:payloadStringValue];
  }

LABEL_6:
  return v9;
}

@end