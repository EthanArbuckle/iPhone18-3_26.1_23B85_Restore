@interface AVMobileHapticsTrackItem
+ (BOOL)hasOnTrack:(id)track;
- (AVMobileHapticsTrackItem)initWithIsOn:(BOOL)on trackName:(id)name;
@end

@implementation AVMobileHapticsTrackItem

- (AVMobileHapticsTrackItem)initWithIsOn:(BOOL)on trackName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = AVMobileHapticsTrackItem;
  v8 = [(AVMobileHapticsTrackItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_isOn = on;
    objc_storeStrong(&v8->_trackName, name);
  }

  return v9;
}

+ (BOOL)hasOnTrack:(id)track
{
  v16 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [trackCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [trackCopy objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        isOn = [v8 isOn];

        if (isOn)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
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