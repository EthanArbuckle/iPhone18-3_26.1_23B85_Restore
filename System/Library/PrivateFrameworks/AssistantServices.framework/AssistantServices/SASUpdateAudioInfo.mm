@interface SASUpdateAudioInfo
- (BOOL)ad_isDifferentFromStartSpeech:(id)speech;
- (id)ad_deferredMetricsContext;
- (void)ad_updateWithRecordingInfo:(id)info speechRequestOptions:(id)options clientConfiguration:(id)configuration;
@end

@implementation SASUpdateAudioInfo

- (id)ad_deferredMetricsContext
{
  v12.receiver = self;
  v12.super_class = SASUpdateAudioInfo;
  ad_deferredMetricsContext = [(SASUpdateAudioInfo *)&v12 ad_deferredMetricsContext];
  audioSource = [(SASUpdateAudioInfo *)self audioSource];
  if (audioSource)
  {
    [ad_deferredMetricsContext setObject:audioSource forKey:SASUpdateAudioInfoAudioSourcePListKey];
  }

  origin = [(SASUpdateAudioInfo *)self origin];
  if (origin)
  {
    [ad_deferredMetricsContext setObject:origin forKey:SASUpdateAudioInfoOriginPListKey];
  }

  headsetAddress = [(SASUpdateAudioInfo *)self headsetAddress];
  if (headsetAddress)
  {
    [ad_deferredMetricsContext setObject:headsetAddress forKey:SASUpdateAudioInfoHeadsetAddressPListKey];
  }

  headsetId = [(SASUpdateAudioInfo *)self headsetId];
  if (headsetId)
  {
    [ad_deferredMetricsContext setObject:headsetId forKey:SASUpdateAudioInfoHeadsetIdPListKey];
  }

  headsetName = [(SASUpdateAudioInfo *)self headsetName];
  if (headsetName)
  {
    [ad_deferredMetricsContext setObject:headsetName forKey:SASUpdateAudioInfoHeadsetNamePListKey];
  }

  vendorId = [(SASUpdateAudioInfo *)self vendorId];
  if (vendorId)
  {
    [ad_deferredMetricsContext setObject:vendorId forKey:SASUpdateAudioInfoVendorIdPListKey];
  }

  productId = [(SASUpdateAudioInfo *)self productId];
  if (productId)
  {
    [ad_deferredMetricsContext setObject:productId forKey:SASUpdateAudioInfoProductIdPListKey];
  }

  return ad_deferredMetricsContext;
}

- (void)ad_updateWithRecordingInfo:(id)info speechRequestOptions:(id)options clientConfiguration:(id)configuration
{
  infoCopy = info;
  optionsCopy = options;
  configurationCopy = configuration;
  source = [infoCopy source];
  v12 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = source;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s audioSource = %@", buf, 0x16u);
  }

  [(SASUpdateAudioInfo *)self setAudioSource:source];
  destination = [infoCopy destination];
  v14 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = destination;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s audioDestination = %@", buf, 0x16u);
  }

  [(SASUpdateAudioInfo *)self setAudioDestination:destination];
  codec = [infoCopy codec];
  [(SASUpdateAudioInfo *)self setCodec:SASCodecForString()];

  deviceIdentifier = [infoCopy deviceIdentifier];
  [(SASUpdateAudioInfo *)self setDeviceIdentifier:deviceIdentifier];

  modelName = [infoCopy modelName];
  [(SASUpdateAudioInfo *)self setDeviceModel:modelName];

  dspStatus = [infoCopy dspStatus];
  [(SASUpdateAudioInfo *)self setDspStatus:dspStatus];

  headsetAddress = [infoCopy headsetAddress];
  [(SASUpdateAudioInfo *)self setHeadsetAddress:headsetAddress];

  headsetName = [infoCopy headsetName];
  [(SASUpdateAudioInfo *)self setHeadsetName:headsetName];

  productId = [infoCopy productId];
  [(SASUpdateAudioInfo *)self setProductId:productId];

  vendorId = [infoCopy vendorId];
  [(SASUpdateAudioInfo *)self setVendorId:vendorId];

  -[SASUpdateAudioInfo setTriggeredTwoShotBorealis:](self, "setTriggeredTwoShotBorealis:", [infoCopy triggeredTwoShotBorealis]);
  recordingInfo = [(SASUpdateAudioInfo *)self recordingInfo];
  v24 = [recordingInfo copy];

  if (!v24)
  {
    v24 = objc_alloc_init(SASRecordingInfo);
  }

  v25 = optionsCopy;
  v61 = source;
  v63 = configurationCopy;
  if (!AFHasRingerSwitch())
  {
    goto LABEL_14;
  }

  deviceRingerSwitchState = [configurationCopy deviceRingerSwitchState];
  v27 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v28 = v27;
    v29 = AFDeviceRingerSwitchStateGetName();
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s deviceRingerSwitchState = %@", buf, 0x16u);

    optionsCopy = v25;
  }

  if (deviceRingerSwitchState)
  {
    v30 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 1024;
      LODWORD(v68) = deviceRingerSwitchState != 1;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.ringerSwitchOff = %d", buf, 0x12u);
    }

    [v24 setRingerSwitchOff:deviceRingerSwitchState != 1];
    v31 = 1;
  }

  else
  {
LABEL_14:
    v31 = 0;
  }

  audioAlertStyle = [infoCopy audioAlertStyle];
  if (!audioAlertStyle)
  {
    goto LABEL_33;
  }

  v33 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = audioAlertStyle;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s audioAlertStyle = %ld", buf, 0x16u);
  }

  if (audioAlertStyle == 1)
  {
    v34 = &SASRecordingInfoAlertTypeNoneValue;
  }

  else if (audioAlertStyle == 3)
  {
    v35 = AFHasHapticEngine();
    v34 = &SASRecordingInfoAlertTypeVibrationValue;
    if (v35)
    {
      v34 = &SASRecordingInfoAlertTypeHapticValue;
    }
  }

  else
  {
    if (audioAlertStyle != 2)
    {
      v36 = 0;
      goto LABEL_28;
    }

    v34 = &SASRecordingInfoAlertTypeBeepValue;
  }

  v36 = *v34;
LABEL_28:
  v37 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.alertType = %@", buf, 0x16u);
  }

  if (v36)
  {
    [v24 setAlertType:v36];
    v31 = 1;
  }

  optionsCopy = v25;
LABEL_33:
  [infoCopy firstBufferTimestamp];
  if (v38 <= 0.0)
  {
    goto LABEL_59;
  }

  v39 = v38;
  v40 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = *&v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s firstBufferTimestamp (baseline) = %f", buf, 0x16u);
  }

  if ([optionsCopy activationEvent] == 1)
  {
    [optionsCopy homeButtonDownEventTime];
    v42 = v41;
    v43 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 2048;
      v68 = *&v42;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s homeButtonDownTimestamp = %f", buf, 0x16u);
    }

    if (v42 > 0.0)
    {
      v44 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
        v67 = 2048;
        v68 = ((v42 - v39) * 1000.0);
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.buttonDowntime = %llu", buf, 0x16u);
      }

      v45 = [NSNumber numberWithLongLong:((v42 - v39) * 1000.0)];
      [v24 setButtonDowntime:v45];

      v31 = 1;
      optionsCopy = v25;
    }
  }

  [infoCopy startRecordingTimestamp];
  v47 = v46;
  v48 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = *&v47;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s startRecordingTimestamp = %f", buf, 0x16u);
  }

  if (v47 > 0.0)
  {
    v49 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 2048;
      v68 = ((v47 - v39) * 1000.0);
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.activationTime = %llu", buf, 0x16u);
    }

    v50 = [NSNumber numberWithLongLong:((v47 - v39) * 1000.0)];
    [v24 setActivationTime:v50];

    v51 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 1024;
      LODWORD(v68) = v39 < v47;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.zeroLatencyLaunch = %d", buf, 0x12u);
    }

    [v24 setZeroLatencyLaunch:v39 < v47];
    v31 = 1;
    optionsCopy = v25;
  }

  [infoCopy activationAlertStartTimestamp];
  v53 = v52;
  v54 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = *&v53;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s activationAlertStartTimestamp = %f", buf, 0x16u);
  }

  if (v53 <= 0.0)
  {
    goto LABEL_59;
  }

  v55 = ((v53 - v39) * 1000.0);
  if (audioAlertStyle == 3)
  {
    v60 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 2048;
      v68 = ((v53 - v39) * 1000.0);
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.activationHapticAlertStartTime = %llu", buf, 0x16u);
    }

    v57 = [NSNumber numberWithLongLong:v55];
    [v24 setActivationHapticAlertStartTime:v57];
    goto LABEL_64;
  }

  if (audioAlertStyle != 2)
  {
LABEL_59:
    v59 = v62;
    v58 = v64;
    if ((v31 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v56 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = ((v53 - v39) * 1000.0);
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.activationAudioAlertStartTime = %llu", buf, 0x16u);
  }

  v57 = [NSNumber numberWithLongLong:v55];
  [v24 setActivationAudioAlertStartTime:v57];
LABEL_64:

  v59 = v62;
  v58 = v64;
LABEL_65:
  [(SASUpdateAudioInfo *)self setRecordingInfo:v24];
LABEL_66:
}

- (BOOL)ad_isDifferentFromStartSpeech:(id)speech
{
  speechCopy = speech;
  codec = [(SASUpdateAudioInfo *)self codec];
  if (codec != [speechCopy codec] || (-[SASUpdateAudioInfo vendorId](self, "vendorId"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || (-[SASUpdateAudioInfo productId](self, "productId"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = 1;
  }

  else
  {
    v10 = 0;
    v16 = "audioSource";
    v17 = "deviceIdentifier";
    v18 = "deviceModel";
    v19 = "dspStatus";
    v20 = "headsetAddress";
    v21 = "headsetId";
    v8 = 1;
    v22 = "headsetName";
    do
    {
      v11 = (&v16)[v10];
      v12 = [(SASUpdateAudioInfo *)self performSelector:v11, v16, v17, v18, v19, v20, v21, v22];
      v13 = [speechCopy performSelector:v11];
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        v15 = [v12 isEqualToString:v13];

        if (!v15)
        {
          break;
        }
      }

      v8 = v10++ < 6;
    }

    while (v10 != 7);
  }

  return v8;
}

@end