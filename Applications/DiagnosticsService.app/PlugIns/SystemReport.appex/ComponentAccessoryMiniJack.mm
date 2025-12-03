@interface ComponentAccessoryMiniJack
- (BOOL)isPresent;
@end

@implementation ComponentAccessoryMiniJack

- (BOOL)isPresent
{
  v2 = +[AVAudioSession sharedInstance];
  currentRoute = [v2 currentRoute];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  outputs = [currentRoute outputs];
  v5 = [outputs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(outputs);
        }

        portType = [*(*(&v12 + 1) + 8 * i) portType];
        v7 |= [portType isEqualToString:AVAudioSessionPortHeadphones];
      }

      v6 = [outputs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

@end