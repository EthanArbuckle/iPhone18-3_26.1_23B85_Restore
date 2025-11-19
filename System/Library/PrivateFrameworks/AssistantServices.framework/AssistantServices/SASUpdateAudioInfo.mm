@interface SASUpdateAudioInfo
- (BOOL)ad_isDifferentFromStartSpeech:(id)a3;
- (id)ad_deferredMetricsContext;
- (void)ad_updateWithRecordingInfo:(id)a3 speechRequestOptions:(id)a4 clientConfiguration:(id)a5;
@end

@implementation SASUpdateAudioInfo

- (id)ad_deferredMetricsContext
{
  v12.receiver = self;
  v12.super_class = SASUpdateAudioInfo;
  v3 = [(SASUpdateAudioInfo *)&v12 ad_deferredMetricsContext];
  v4 = [(SASUpdateAudioInfo *)self audioSource];
  if (v4)
  {
    [v3 setObject:v4 forKey:SASUpdateAudioInfoAudioSourcePListKey];
  }

  v5 = [(SASUpdateAudioInfo *)self origin];
  if (v5)
  {
    [v3 setObject:v5 forKey:SASUpdateAudioInfoOriginPListKey];
  }

  v6 = [(SASUpdateAudioInfo *)self headsetAddress];
  if (v6)
  {
    [v3 setObject:v6 forKey:SASUpdateAudioInfoHeadsetAddressPListKey];
  }

  v7 = [(SASUpdateAudioInfo *)self headsetId];
  if (v7)
  {
    [v3 setObject:v7 forKey:SASUpdateAudioInfoHeadsetIdPListKey];
  }

  v8 = [(SASUpdateAudioInfo *)self headsetName];
  if (v8)
  {
    [v3 setObject:v8 forKey:SASUpdateAudioInfoHeadsetNamePListKey];
  }

  v9 = [(SASUpdateAudioInfo *)self vendorId];
  if (v9)
  {
    [v3 setObject:v9 forKey:SASUpdateAudioInfoVendorIdPListKey];
  }

  v10 = [(SASUpdateAudioInfo *)self productId];
  if (v10)
  {
    [v3 setObject:v10 forKey:SASUpdateAudioInfoProductIdPListKey];
  }

  return v3;
}

- (void)ad_updateWithRecordingInfo:(id)a3 speechRequestOptions:(id)a4 clientConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 source];
  v12 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s audioSource = %@", buf, 0x16u);
  }

  [(SASUpdateAudioInfo *)self setAudioSource:v11];
  v13 = [v8 destination];
  v14 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2112;
    v68 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s audioDestination = %@", buf, 0x16u);
  }

  [(SASUpdateAudioInfo *)self setAudioDestination:v13];
  v15 = [v8 codec];
  [(SASUpdateAudioInfo *)self setCodec:SASCodecForString()];

  v16 = [v8 deviceIdentifier];
  [(SASUpdateAudioInfo *)self setDeviceIdentifier:v16];

  v17 = [v8 modelName];
  [(SASUpdateAudioInfo *)self setDeviceModel:v17];

  v18 = [v8 dspStatus];
  [(SASUpdateAudioInfo *)self setDspStatus:v18];

  v19 = [v8 headsetAddress];
  [(SASUpdateAudioInfo *)self setHeadsetAddress:v19];

  v20 = [v8 headsetName];
  [(SASUpdateAudioInfo *)self setHeadsetName:v20];

  v21 = [v8 productId];
  [(SASUpdateAudioInfo *)self setProductId:v21];

  v22 = [v8 vendorId];
  [(SASUpdateAudioInfo *)self setVendorId:v22];

  -[SASUpdateAudioInfo setTriggeredTwoShotBorealis:](self, "setTriggeredTwoShotBorealis:", [v8 triggeredTwoShotBorealis]);
  v23 = [(SASUpdateAudioInfo *)self recordingInfo];
  v24 = [v23 copy];

  if (!v24)
  {
    v24 = objc_alloc_init(SASRecordingInfo);
  }

  v25 = v9;
  v61 = v11;
  v63 = v10;
  if (!AFHasRingerSwitch())
  {
    goto LABEL_14;
  }

  v26 = [v10 deviceRingerSwitchState];
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

    v9 = v25;
  }

  if (v26)
  {
    v30 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
      v67 = 1024;
      LODWORD(v68) = v26 != 1;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s SASRecordingInfo.ringerSwitchOff = %d", buf, 0x12u);
    }

    [v24 setRingerSwitchOff:v26 != 1];
    v31 = 1;
  }

  else
  {
LABEL_14:
    v31 = 0;
  }

  v32 = [v8 audioAlertStyle];
  if (!v32)
  {
    goto LABEL_33;
  }

  v33 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v66 = "[SASUpdateAudioInfo(ADSAExtensions) ad_updateWithRecordingInfo:speechRequestOptions:clientConfiguration:]";
    v67 = 2048;
    v68 = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s audioAlertStyle = %ld", buf, 0x16u);
  }

  if (v32 == 1)
  {
    v34 = &SASRecordingInfoAlertTypeNoneValue;
  }

  else if (v32 == 3)
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
    if (v32 != 2)
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

  v9 = v25;
LABEL_33:
  [v8 firstBufferTimestamp];
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

  if ([v9 activationEvent] == 1)
  {
    [v9 homeButtonDownEventTime];
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
      v9 = v25;
    }
  }

  [v8 startRecordingTimestamp];
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
    v9 = v25;
  }

  [v8 activationAlertStartTimestamp];
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
  if (v32 == 3)
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

  if (v32 != 2)
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

- (BOOL)ad_isDifferentFromStartSpeech:(id)a3
{
  v4 = a3;
  v5 = [(SASUpdateAudioInfo *)self codec];
  if (v5 != [v4 codec] || (-[SASUpdateAudioInfo vendorId](self, "vendorId"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || (-[SASUpdateAudioInfo productId](self, "productId"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
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
      v13 = [v4 performSelector:v11];
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