@interface HMEventTopicHelper
+ (id)decodeTopic:(id)topic;
@end

@implementation HMEventTopicHelper

+ (id)decodeTopic:(id)topic
{
  topicCopy = topic;
  v4 = objc_autoreleasePoolPush();
  v5 = [[HMParsedEventTopic alloc] initWithTopic:topicCopy];
  v6 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:topicCopy];
  scanLocation = [v6 scanLocation];
  v52 = 0;
  v8 = [v6 scanUpToString:@"." intoString:&v52];
  v9 = v52;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    if ([v9 isEqualToString:@"index"])
    {
      [(HMParsedEventTopic *)v5 setIsIndexTopic:1];
      if ([v6 isAtEnd])
      {
        goto LABEL_43;
      }

      [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

      v51 = 0;
      [v6 scanUpToString:@"." intoString:&v51];
      v10 = v51;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    if ([v10 isEqualToString:@"home"])
    {
      if ([v6 isAtEnd])
      {
        goto LABEL_42;
      }

      [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

      v50 = 0;
      [v6 scanUpToString:@"." intoString:&v50];
      v10 = v50;
      if (!v10)
      {
        goto LABEL_42;
      }

      v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];

      v12 = v13;
    }

    if (!v12)
    {
      goto LABEL_41;
    }

    v14 = [v12 copy];
    [(HMParsedEventTopic *)v5 setHomeUUID:v14];

    if ([v6 isAtEnd])
    {
      goto LABEL_42;
    }

    [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];
    scanLocation = [v6 scanLocation];

    v49 = 0;
    v15 = [v6 scanUpToString:@"." intoString:&v49];
    v16 = v49;
    v10 = v16;
    if (!v15 || !v16)
    {
      goto LABEL_41;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    if (([v10 isEqualToString:@"accessory"] & 1) == 0 && !v12)
    {
      if (([v10 isEqualToString:@"user"] & 1) == 0)
      {
        if (![v10 isEqualToString:@"mediagroup"])
        {
          v12 = 0;
LABEL_41:
          [v6 setScanLocation:scanLocation];
          goto LABEL_42;
        }

        [v6 scanLocation];
        [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

        v45 = 0;
        v17 = [v6 scanUpToString:@"." intoString:&v45];
        v18 = v45;
        v10 = v18;
        v12 = 0;
        if (!v17 || !v18)
        {
          goto LABEL_42;
        }

        if (([v18 isEqualToString:@"stereo"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"psg"))
        {
          v19 = [v10 isEqualToString:@"psg"];
          if (([v6 isAtEnd] & 1) == 0)
          {
            [v6 scanLocation];
            [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

            v44 = 0;
            v20 = [v6 scanUpToString:@"." intoString:&v44];
            v21 = v44;
            v10 = v21;
            v12 = 0;
            if (!v20 || !v21)
            {
              goto LABEL_42;
            }

            if (([v6 isAtEnd] & 1) == 0)
            {
              v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
              v12 = v22;
              if (v22)
              {
                v23 = [v22 copy];
                v40 = v19;
                if (v19)
                {
                  [(HMParsedEventTopic *)v5 setMediaGroupUUID:v23];
                }

                else
                {
                  [(HMParsedEventTopic *)v5 setMediaSystemUUID:v23];
                }

                scanLocation = [v6 scanLocation];
                [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

                v43 = 0;
                v36 = [v6 scanUpToString:@"." intoString:&v43];
                v37 = v43;
                v10 = v37;
                if (!v36 || ![v37 isEqualToString:@"settings"])
                {
                  goto LABEL_41;
                }

                if ([v6 isAtEnd])
                {
                  goto LABEL_42;
                }

                [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

                v42 = 0;
                v38 = [v6 scanUpToString:&stru_1F0E92498 intoString:&v42];
                v39 = v42;
                v10 = v39;
                if (!v38 || ![v39 hasSuffix:@".updated"])
                {
                  goto LABEL_41;
                }

                stringByTrimmingDots = [(NSString *)v10 stringByTrimmingDots];
                stringByDeletingPathExtension = [stringByTrimmingDots stringByDeletingPathExtension];
                if (v40)
                {
                  [(HMParsedEventTopic *)v5 setMediaGroupSettingKeyPath:stringByDeletingPathExtension];
                }

                else
                {
                  [(HMParsedEventTopic *)v5 setMediaSystemSettingKeyPath:stringByDeletingPathExtension];
                }

                goto LABEL_57;
              }

              goto LABEL_42;
            }
          }
        }
      }

LABEL_39:
      v12 = 0;
      goto LABEL_42;
    }

    if (!v12)
    {
      if ([v6 isAtEnd])
      {
        goto LABEL_39;
      }

      [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

      v48 = 0;
      [v6 scanUpToString:@"." intoString:&v48];
      v10 = v48;
      if (!v10)
      {
        goto LABEL_39;
      }

      v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      if (!v12)
      {
        goto LABEL_42;
      }
    }

    v24 = [v12 copy];
    [(HMParsedEventTopic *)v5 setAccessoryUUID:v24];

    if (([v6 isAtEnd] & 1) == 0)
    {
      scanLocation = [v6 scanLocation];
      [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

      if (![(HMParsedEventTopic *)v5 isIndexTopic])
      {
        v47 = 0;
        v30 = [v6 scanUpToString:@"." intoString:&v47];
        v31 = v47;
        v10 = v31;
        if (!v30 || !v31)
        {
          goto LABEL_42;
        }

        if (![v31 isEqualToString:@"settings"])
        {
          goto LABEL_41;
        }

        if ([v6 isAtEnd])
        {
          goto LABEL_42;
        }

        [v6 setScanLocation:{objc_msgSend(v6, "scanLocation") + 1}];

        v46 = 0;
        v32 = [v6 scanUpToString:&stru_1F0E92498 intoString:&v46];
        v33 = v46;
        v10 = v33;
        if (!v32 || ![v33 hasSuffix:@".updated"])
        {
          goto LABEL_41;
        }

        stringByTrimmingDots = [(NSString *)v10 stringByTrimmingDots];
        stringByDeletingPathExtension = [stringByTrimmingDots stringByDeletingPathExtension];
        [(HMParsedEventTopic *)v5 setAccessorySettingKeyPath:stringByDeletingPathExtension];
LABEL_57:

        goto LABEL_41;
      }

      v10 = 0;
    }

LABEL_42:
  }

LABEL_43:
  if ([v6 isAtEnd])
  {
    v25 = 0;
  }

  else
  {
    v41 = 0;
    v26 = [v6 scanUpToString:&stru_1F0E92498 intoString:&v41];
    v27 = v41;
    v25 = v27;
    if (v26)
    {
      stringByTrimmingDots2 = [(NSString *)v27 stringByTrimmingDots];
      [(HMParsedEventTopic *)v5 setTopicSuffix:stringByTrimmingDots2];
    }
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

@end