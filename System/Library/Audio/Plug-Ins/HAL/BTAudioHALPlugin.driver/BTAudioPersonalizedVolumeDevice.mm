@interface BTAudioPersonalizedVolumeDevice
- (BTAudioPersonalizedVolumeDevice)init;
- (BTAudioPersonalizedVolumeDevice)initWithBluetoothInfo:(unsigned int)info deviceAddr:(id)addr;
- (id)_getCurrentManualVolumeUpdatesDictionary:(id)dictionary forCoreAnalyticSubmission:(BOOL)submission;
- (id)getVolumeForCurrentAudioCategory:(id)category;
- (unsigned)_getCurrentAudioCategoryFromString:(id)string;
- (unsigned)_getManualVolumeUpdateReasonFromString:(id)string;
- (void)NotifyManualVolumeChanged:(id)changed shouldUpdateBuds:(BOOL)buds;
- (void)dealloc;
- (void)invalidate;
- (void)startManualVolumeUpdateTimer;
@end

@implementation BTAudioPersonalizedVolumeDevice

- (BTAudioPersonalizedVolumeDevice)init
{
  v3.receiver = self;
  v3.super_class = BTAudioPersonalizedVolumeDevice;
  result = [(BTAudioPersonalizedVolumeDevice *)&v3 init];
  result->_sendManualVolumeUpdate = 1;
  result->_manualUpdateDispatchBlock = 0;
  return result;
}

- (BTAudioPersonalizedVolumeDevice)initWithBluetoothInfo:(unsigned int)info deviceAddr:(id)addr
{
  v10.receiver = self;
  v10.super_class = BTAudioPersonalizedVolumeDevice;
  v6 = [(BTAudioPersonalizedVolumeDevice *)&v10 init];
  v6->_deviceID = info;
  v6->_bdAddr = [[NSString alloc] initWithString:addr];
  v6->_sendManualVolumeUpdate = 1;
  v6->_manualUpdateDispatchBlock = 0;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v6->_volumeAudioCategoryMap = v7;
  [(NSMutableDictionary *)v7 setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], @"Audio/Video"];
  [(NSMutableDictionary *)v6->_volumeAudioCategoryMap setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], @"PhoneCall"];
  [(NSMutableDictionary *)v6->_volumeAudioCategoryMap setObject:[NSNumber forKey:"numberWithInt:" numberWithInt:?], @"VoiceCommand"];
  v8 = qword_C22B8;
  if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    addrCopy = addr;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Initializing Personalized Volume Device %@ ", buf, 0xCu);
  }

  return v6;
}

- (void)dealloc
{
  [(BTAudioPersonalizedVolumeDevice *)self invalidate];
  v3.receiver = self;
  v3.super_class = BTAudioPersonalizedVolumeDevice;
  [(BTAudioPersonalizedVolumeDevice *)&v3 dealloc];
}

- (void)invalidate
{
  bdAddr = self->_bdAddr;
  if (bdAddr)
  {

    self->_bdAddr = 0;
  }

  manualUpdateDispatchBlock = self->_manualUpdateDispatchBlock;
  if (manualUpdateDispatchBlock)
  {
    if (!dispatch_block_testcancel(self->_manualUpdateDispatchBlock))
    {
      dispatch_block_cancel(manualUpdateDispatchBlock);
      manualUpdateDispatchBlock = self->_manualUpdateDispatchBlock;
    }

    _Block_release(manualUpdateDispatchBlock);
    self->_manualUpdateDispatchBlock = 0;
  }

  volumeAudioCategoryMap = self->_volumeAudioCategoryMap;
  if (volumeAudioCategoryMap)
  {

    self->_volumeAudioCategoryMap = 0;
  }
}

- (id)getVolumeForCurrentAudioCategory:(id)category
{
  v5 = [NSNumber numberWithInt:0];
  if (!category)
  {
    v8 = v5;
    v9 = qword_C22B8;
    if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: returning as audioCategory is nil", v12, 2u);
    }

    return v8;
  }

  if ([category isEqualToString:kMXSessionAudioCategory_PhoneCall])
  {
    if ([(NSMutableDictionary *)self->_volumeAudioCategoryMap objectForKeyedSubscript:@"PhoneCall"])
    {
      volumeAudioCategoryMap = self->_volumeAudioCategoryMap;
      v7 = @"PhoneCall";
LABEL_13:

      return [(NSMutableDictionary *)volumeAudioCategoryMap objectForKeyedSubscript:v7];
    }

    goto LABEL_16;
  }

  if (![category isEqualToString:kMXSessionAudioCategory_AudioVideo])
  {
    if ([category isEqualToString:kMXSessionAudioCategory_VoiceCommand])
    {
      if ([(NSMutableDictionary *)self->_volumeAudioCategoryMap objectForKeyedSubscript:@"VoiceCommand"])
      {
        volumeAudioCategoryMap = self->_volumeAudioCategoryMap;
        v7 = @"VoiceCommand";
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v11 = qword_C22B8;
    if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_ERROR))
    {
      sub_77274(category, v11);
    }

    return [NSNumber numberWithInt:0];
  }

  if ([(NSMutableDictionary *)self->_volumeAudioCategoryMap objectForKeyedSubscript:@"Audio/Video"])
  {
    volumeAudioCategoryMap = self->_volumeAudioCategoryMap;
    v7 = @"Audio/Video";
    goto LABEL_13;
  }

LABEL_16:

  return [NSNumber numberWithInt:0];
}

- (unsigned)_getManualVolumeUpdateReasonFromString:(id)string
{
  if ([string isEqualToString:@"Top-Down"])
  {
    return 0;
  }

  if ([string isEqualToString:@"Bottom-Up"])
  {
    return 1;
  }

  if ([string isEqualToString:@"PersonalizedVolume"])
  {
    return 2;
  }

  if ([string isEqualToString:@"PVRampEndInEarStatusChanged"])
  {
    return 3;
  }

  if ([string isEqualToString:@"PVRampEndRampAchieved"])
  {
    return 4;
  }

  if ([string isEqualToString:@"PVRampEndAudioCategoryConfigChanged"])
  {
    return 5;
  }

  return 0;
}

- (unsigned)_getCurrentAudioCategoryFromString:(id)string
{
  if ([string isEqualToString:kMXSessionAudioCategory_AudioVideo])
  {
    return 0;
  }

  if ([string isEqualToString:kMXSessionAudioCategory_PhoneCall])
  {
    return 1;
  }

  if ([string isEqualToString:kMXSessionAudioCategory_VoiceCommand])
  {
    return 2;
  }

  return 0;
}

- (id)_getCurrentManualVolumeUpdatesDictionary:(id)dictionary forCoreAnalyticSubmission:(BOOL)submission
{
  v7 = [dictionary objectForKeyedSubscript:@"CurrentAudioCategory"];
  if (submission)
  {
    v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[BTAudioPersonalizedVolumeDevice _getCurrentAudioCategoryFromString:](self, "_getCurrentAudioCategoryFromString:", [dictionary objectForKeyedSubscript:@"CurrentAudioCategory"]));
    [dictionary objectForKeyedSubscript:@"ReasonForManualUpdate"];
    v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[BTAudioPersonalizedVolumeDevice _getManualVolumeUpdateReasonFromString:](self, "_getManualVolumeUpdateReasonFromString:", [dictionary objectForKeyedSubscript:@"ReasonForManualUpdate"]));
  }

  else
  {
    v8 = v7;
    v9 = [dictionary objectForKeyedSubscript:@"ReasonForManualUpdate"];
  }

  v10 = v9;
  v12[0] = @"CurrentAudioCategory";
  v12[1] = @"CurrentVolume";
  v13[0] = v8;
  v13[1] = -[BTAudioPersonalizedVolumeDevice getVolumeForCurrentAudioCategory:](self, "getVolumeForCurrentAudioCategory:", [dictionary objectForKeyedSubscript:@"CurrentAudioCategory"]);
  v12[2] = @"IsPersonalizedVolumeUpdate";
  v13[2] = [dictionary objectForKeyedSubscript:?];
  v12[3] = @"ManualVolumeUpdate";
  v13[3] = [dictionary objectForKeyedSubscript:?];
  v12[4] = @"RampInProgress";
  v13[4] = [dictionary objectForKeyedSubscript:?];
  v12[5] = @"PersonalizedVolumeEnabled";
  v13[5] = [dictionary objectForKeyedSubscript:?];
  v12[6] = @"BundleID";
  v12[7] = @"ReasonForManualUpdate";
  v13[6] = [dictionary objectForKeyedSubscript:?];
  v13[7] = v10;
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];
}

- (void)NotifyManualVolumeChanged:(id)changed shouldUpdateBuds:(BOOL)buds
{
  budsCopy = buds;
  v7 = qword_C22B8;
  if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_DEFAULT))
  {
    sendManualVolumeUpdate = self->_sendManualVolumeUpdate;
    *buf = 67109634;
    *v21 = sendManualVolumeUpdate;
    *&v21[4] = 2112;
    *&v21[6] = changed;
    v22 = 1024;
    LODWORD(v23) = budsCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BTAudioPersonalizedVolumeDevice::NotifyManualVolumeChanged _sendManualVolumeUpdate %d manualVolumeUpdate %@ shouldUpdateBuds %d", buf, 0x18u);
  }

  if (self->_sendManualVolumeUpdate)
  {
    [(BTAudioPersonalizedVolumeDevice *)self startManualVolumeUpdateTimer];
    v9 = [(BTAudioPersonalizedVolumeDevice *)self _getCurrentManualVolumeUpdatesDictionary:changed forCoreAnalyticSubmission:1];
    v10 = [(BTAudioPersonalizedVolumeDevice *)self _getCurrentManualVolumeUpdatesDictionary:changed forCoreAnalyticSubmission:0];
    v19[6] = _NSConcreteStackBlock;
    v19[7] = 3221225472;
    v19[8] = sub_10578;
    v19[9] = &unk_ADD00;
    v19[10] = v9;
    v11 = AnalyticsSendEventLazy();
    v12 = qword_C22B8;
    if (os_log_type_enabled(qword_C22B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v21 = @"com.apple.Bluetooth.PersonalizedVolumeManualUpdateV2";
      *&v21[8] = 1024;
      *&v21[10] = v11;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "BT Stats for metric '%@' sent to CoreAnalytics with result %u manualVolumeUpdate: %@", buf, 0x1Cu);
    }

    if (budsCopy)
    {
      deviceID = self->_deviceID;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10580;
      v19[3] = &unk_ADD28;
      v19[4] = self;
      v19[5] = v10;
      sub_507D8(qword_D8DF0, deviceID, v19);
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = v14;
    if (self->_bdAddr)
    {
      bdAddr = self->_bdAddr;
    }

    else
    {
      bdAddr = @"NA";
    }

    [v14 setObject:bdAddr forKeyedSubscript:@"address"];
    v17 = [v9 objectForKeyedSubscript:@"CurrentAudioCategory"];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = &off_B36F8;
    }

    [v15 setObject:v18 forKeyedSubscript:@"audioCategory"];
    [+[NSDistributedNotificationCenter defaultCenter](NSDistributedNotificationCenter postNotification:"postNotification:", [NSNotification notificationWithName:@"com.apple.audioaccessoryd.usageSummary.volumeChange" object:0 userInfo:v15]];
  }

  -[BTAudioPersonalizedVolumeDevice updateVolumeActiveAudioCategoryMap:audioCategory:](self, "updateVolumeActiveAudioCategoryMap:audioCategory:", [objc_msgSend(changed objectForKeyedSubscript:{@"ManualVolumeUpdate", "intValue"}], objc_msgSend(changed, "objectForKeyedSubscript:", @"CurrentAudioCategory"));
}

- (void)startManualVolumeUpdateTimer
{
  manualUpdateDispatchBlock = self->_manualUpdateDispatchBlock;
  if (manualUpdateDispatchBlock)
  {
    if (!dispatch_block_testcancel(self->_manualUpdateDispatchBlock))
    {
      dispatch_block_cancel(manualUpdateDispatchBlock);
      manualUpdateDispatchBlock = self->_manualUpdateDispatchBlock;
    }

    _Block_release(manualUpdateDispatchBlock);
    self->_manualUpdateDispatchBlock = 0;
  }

  self->_sendManualVolumeUpdate = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_106F8;
  block[3] = &unk_ADD50;
  block[4] = self;
  self->_manualUpdateDispatchBlock = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  avNotificationMonitorQueue = self->_avNotificationMonitorQueue;
  v5 = dispatch_time(0, 1000000000);
  dispatch_after(v5, avNotificationMonitorQueue, self->_manualUpdateDispatchBlock);
}

@end