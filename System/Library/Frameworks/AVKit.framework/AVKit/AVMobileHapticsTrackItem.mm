@interface AVMobileHapticsTrackItem
+ (BOOL)hasOnTrack:(id)a3;
- (AVMobileHapticsTrackItem)initWithIsOn:(BOOL)a3 trackName:(id)a4;
@end

@implementation AVMobileHapticsTrackItem

- (AVMobileHapticsTrackItem)initWithIsOn:(BOOL)a3 trackName:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVMobileHapticsTrackItem;
  v8 = [(AVMobileHapticsTrackItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isOn = a3;
    objc_storeStrong(&v8->_trackName, a4);
  }

  return v9;
}

+ (BOOL)hasOnTrack:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        v9 = [v8 isOn];

        if (v9)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end