@interface ASDTDeviceList
- (ASDTDeviceList)init;
- (BOOL)addAudioDeviceWithCheck:(id)a3;
- (NSArray)audioDevices;
- (id)getAudioDeviceWithUID:(id)a3;
- (void)addAudioDevices:(id)a3;
- (void)init;
- (void)removeAudioDevice:(id)a3;
- (void)removeAudioDeviceWithUID:(id)a3;
- (void)removeAudioDevices:(id)a3;
@end

@implementation ASDTDeviceList

- (NSArray)audioDevices
{
  v3 = [(ASDTDeviceList *)self lock];
  [v3 lock];

  v4 = [(ASDTDeviceList *)self audioDeviceDict];
  v5 = [v4 allValues];

  v6 = [(ASDTDeviceList *)self lock];
  [v6 unlock];

  return v5;
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

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setAudioDeviceDict:v3];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTDeviceList *)v2 setInterestsDict:v4];

  v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  [(ASDTDeviceList *)v2 setLock:v5];

  v6 = [(ASDTDeviceList *)v2 lock];
  [v6 setName:@"com.apple.AudioServerDriverTransports.ASDTDeviceList"];

  v7 = [(ASDTDeviceList *)v2 lock];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASDTDeviceList *)v2 audioDeviceDict];
    if (v9)
    {
      v10 = v9;
      v11 = [(ASDTDeviceList *)v2 interestsDict];

      if (v11)
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

- (id)getAudioDeviceWithUID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ASDTDeviceList *)self lock];
    [v5 lock];

    v6 = [(ASDTDeviceList *)self audioDeviceDict];
    v7 = [v6 objectForKey:v4];

    v8 = [(ASDTDeviceList *)self lock];
    [v8 unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addAudioDeviceWithCheck:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceUID];

  if (v5)
  {
    v6 = [(ASDTDeviceList *)self lock];
    [v6 lock];

    v7 = [(ASDTDeviceList *)self audioDeviceDict];
    v8 = [v4 deviceUID];
    [v7 setObject:v4 forKey:v8];

    v9 = [(ASDTDeviceList *)self lock];
    [v9 unlock];

    [(ASDTDeviceList *)self notifyOfInterest:1 forDevice:v4];
  }

  else
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTDeviceList *)v4 addAudioDeviceWithCheck:v10];
    }
  }

  return v5 != 0;
}

- (void)addAudioDevices:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(ASDTDeviceList *)self addAudioDevice:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAudioDeviceWithUID:(id)a3
{
  v8 = a3;
  v4 = [(ASDTDeviceList *)self getAudioDeviceWithUID:?];
  if (v4)
  {
    [(ASDTDeviceList *)self notifyOfInterest:4 forDevice:v4];
    v5 = [(ASDTDeviceList *)self lock];
    [v5 lock];

    v6 = [(ASDTDeviceList *)self audioDeviceDict];
    [v6 removeObjectForKey:v8];

    v7 = [(ASDTDeviceList *)self lock];
    [v7 unlock];
  }
}

- (void)removeAudioDevice:(id)a3
{
  v4 = [a3 deviceUID];
  [(ASDTDeviceList *)self removeAudioDeviceWithUID:v4];
}

- (void)removeAudioDevices:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) deviceUID];
        [(ASDTDeviceList *)self removeAudioDeviceWithUID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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