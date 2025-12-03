@interface VCRateControlBandwidthEstimator
- (VCRateControlBandwidthEstimator)init;
- (void)dealloc;
- (void)setServerBag:(id)bag;
@end

@implementation VCRateControlBandwidthEstimator

- (VCRateControlBandwidthEstimator)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCRateControlBandwidthEstimator;
  v2 = [(VCRateControlBandwidthEstimator *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(SuddenChangeParameters);
    v2->_suddenChangeParameters = v3;
    [(SuddenChangeParameters *)v3 setPercentage:0.5];
    [(SuddenChangeParameters *)v2->_suddenChangeParameters setMinSamplesCountFastBandwidthEstimation:10];
    v2->_minProbingSequenceSize = 250;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCRateControlBandwidthEstimator;
  [(VCRateControlBandwidthEstimator *)&v3 dealloc];
}

- (void)setServerBag:(id)bag
{
  v41 = *MEMORY[0x1E69E9840];
  serverBag = self->_serverBag;
  if (serverBag == bag || -[NSDictionary isEqualToDictionary:](-[VCRateControlServerBag serverBagDictionary](serverBag, "serverBagDictionary"), "isEqualToDictionary:", [bag serverBagDictionary]))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136316162;
        v22 = v6;
        v23 = 2080;
        v24 = "[VCRateControlBandwidthEstimator setServerBag:]";
        v25 = 1024;
        v26 = 177;
        v27 = 2048;
        selfCopy2 = bag;
        v29 = 2048;
        selfCopy = self;
        v8 = "VCRC [%s] %s:%d Same serverbag=%p is set to the bandwidthEstimator=%p";
        v9 = v7;
        v10 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v21, v10);
      }
    }
  }

  else
  {

    bagCopy2 = bag;
    self->_serverBag = bagCopy2;
    v12 = [(VCRateControlServerBag *)bagCopy2 containsAllSecondaryKeysWithPrimaryKey:@"bwEstimation"];
    if (v12)
    {
      self->_fastSuddenBandwidthDetectionEnabled = [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"bwEstimation" secondaryKey:@"aggModeEnabled" type:{0), "BOOLValue"}];
      self->_minProbingSequenceSize = [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"bwEstimation" secondaryKey:@"minProbingSequenceSize" type:{0), "integerValue"}];
      [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"bwEstimation" secondaryKey:@"suddenBWDPercentage" type:{2), "doubleValue"}];
      [(SuddenChangeParameters *)self->_suddenChangeParameters setPercentage:?];
      -[SuddenChangeParameters setMinSamplesCountFastBandwidthEstimation:](self->_suddenChangeParameters, "setMinSamplesCountFastBandwidthEstimation:", [-[VCRateControlServerBag valueForSecondaryKeyWithPrimaryKey:secondaryKey:type:](self->_serverBag valueForSecondaryKeyWithPrimaryKey:@"bwEstimation" secondaryKey:@"minFastBWDSampleCount" type:{0), "integerValue"}]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [@"bwEstimation" UTF8String];
        fastSuddenBandwidthDetectionEnabled = self->_fastSuddenBandwidthDetectionEnabled;
        minProbingSequenceSize = self->_minProbingSequenceSize;
        [(SuddenChangeParameters *)self->_suddenChangeParameters percentage];
        v19 = v18;
        minSamplesCountFastBandwidthEstimation = [(SuddenChangeParameters *)self->_suddenChangeParameters minSamplesCountFastBandwidthEstimation];
        v21 = 136317442;
        v22 = v13;
        v23 = 2080;
        v24 = "[VCRateControlBandwidthEstimator setServerBag:]";
        v25 = 1024;
        v26 = 190;
        v27 = 2048;
        selfCopy2 = self;
        v29 = 2080;
        selfCopy = uTF8String;
        v31 = 1024;
        v32 = v12;
        v33 = 1024;
        v34 = fastSuddenBandwidthDetectionEnabled;
        v35 = 1024;
        v36 = minProbingSequenceSize;
        v37 = 2048;
        v38 = v19;
        v39 = 1024;
        v40 = minSamplesCountFastBandwidthEstimation;
        v8 = "VCRC [%s] %s:%d [%p] config for key=%s serverBagContainsGroup=%d fastSuddenBandwidthDetectionEnabled=%d minProbingSequenceSize=%d suddenBWDPercentage=%f minFastBWDSampleCount=%d";
        v9 = v14;
        v10 = 82;
        goto LABEL_11;
      }
    }
  }
}

@end