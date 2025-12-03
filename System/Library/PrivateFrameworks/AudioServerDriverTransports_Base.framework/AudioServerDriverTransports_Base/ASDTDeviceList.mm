@interface ASDTDeviceList
- (ASDTDeviceList)init;
- (BOOL)addAudioDeviceWithCheck:(id)check;
- (NSArray)audioDevices;
- (id)getAudioDeviceWithUID:(id)d;
- (void)addAudioDevices:(id)devices;
- (void)init;
- (void)removeAudioDevice:(id)device;
- (void)removeAudioDeviceWithUID:(id)d;
- (void)removeAudioDevices:(id)devices;
@end

@implementation ASDTDeviceList

- (NSArray)audioDevices
{
  lock = [(ASDTDeviceList *)self lock];
  [lock lock];

  audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
  allValues = [audioDeviceDict allValues];

  lock2 = [(ASDTDeviceList *)self lock];
  [lock2 unlock];

  return allValues;
}

- (ASDTDeviceList)init
{
  v15.receiver = self;
  v15.super_class = ASDTDeviceList;
  v2 = [(ASDTDeviceList *)&v15 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setAudioDeviceDict:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setInterestsDict:dictionary2];

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  [(ASDTDeviceList *)v2 setLock:v5];

  lock = [(ASDTDeviceList *)v2 lock];
  [lock setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceList"];

  lock2 = [(ASDTDeviceList *)v2 lock];
  if (lock2)
  {
    v8 = lock2;
    audioDeviceDict = [(ASDTDeviceList *)v2 audioDeviceDict];
    if (audioDeviceDict)
    {
      v10 = audioDeviceDict;
      interestsDict = [(ASDTDeviceList *)v2 interestsDict];

      if (interestsDict)
      {
LABEL_5:
        v12 = v2;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = ASDTBaseLogType();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(ASDTDeviceList *)v13 init];
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)getAudioDeviceWithUID:(id)d
{
  if (d)
  {
    dCopy = d;
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    v7 = [audioDeviceDict objectForKey:dCopy];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addAudioDeviceWithCheck:(id)check
{
  checkCopy = check;
  deviceUID = [checkCopy deviceUID];

  if (deviceUID)
  {
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    deviceUID2 = [checkCopy deviceUID];
    [audioDeviceDict setObject:checkCopy forKey:deviceUID2];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];

    [(ASDTDeviceList *)self notifyOfInterest:1 forDevice:checkCopy];
  }

  else
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceList *)checkCopy addAudioDeviceWithCheck:v10];
    }
  }

  return deviceUID != 0;
}

- (void)addAudioDevices:(id)devices
{
  v15 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        [(ASDTDeviceList *)self addAudioDevice:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDeviceWithUID:(id)d
{
  dCopy = d;
  v4 = [(ASDTDeviceList *)self getAudioDeviceWithUID:?];
  if (v4)
  {
    [(ASDTDeviceList *)self notifyOfInterest:4 forDevice:v4];
    lock = [(ASDTDeviceList *)self lock];
    [lock lock];

    audioDeviceDict = [(ASDTDeviceList *)self audioDeviceDict];
    [audioDeviceDict removeObjectForKey:dCopy];

    lock2 = [(ASDTDeviceList *)self lock];
    [lock2 unlock];
  }
}

- (void)removeAudioDevice:(id)device
{
  deviceUID = [device deviceUID];
  [(ASDTDeviceList *)self removeAudioDeviceWithUID:deviceUID];
}

- (void)removeAudioDevices:(id)devices
{
  v16 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devicesCopy);
        }

        deviceUID = [*(*(&v11 + 1) + 8 * v8) deviceUID];
        [(ASDTDeviceList *)self removeAudioDeviceWithUID:deviceUID];

        ++v8;
      }

      while (v6 != v8);
      v6 = [devicesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "ASDTDeviceList";
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%s: Memory allocation error.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addAudioDeviceWithCheck:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 deviceUID];
  v5 = 136315394;
  v6 = "ASDTDeviceList";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "%s: Failed adding audio device with UID: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end