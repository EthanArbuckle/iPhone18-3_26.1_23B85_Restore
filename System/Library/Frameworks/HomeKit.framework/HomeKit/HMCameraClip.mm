@interface HMCameraClip
+ (id)requiredHTTPHeadersForStreamingAssetVersion:(id)version;
+ (id)shortDescription;
- (BOOL)canAskForUserFeedback;
- (BOOL)isEqual:(id)equal;
- (HMCameraClip)initWithCoder:(id)coder;
- (HMCameraClip)initWithUniqueIdentifier:(id)identifier startDate:(id)date duration:(double)duration size:(unint64_t)size targetFragmentDuration:(double)fragmentDuration isComplete:(BOOL)complete isDonated:(BOOL)donated quality:(int64_t)self0 streamingAssetVersion:(id)self1 encryptionContext:(id)self2 significantEvents:(id)self3;
- (NSArray)attributeDescriptions;
- (NSData)encryptionKey;
- (NSDictionary)videoAssetRequiredHTTPHeaders;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClip

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMCameraClip *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"ID" value:uniqueIdentifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  startDate = [(HMCameraClip *)self startDate];
  v9 = [v7 initWithName:@"Start Date" value:startDate];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = MEMORY[0x1E696AD98];
  [(HMCameraClip *)self duration];
  v12 = [v11 numberWithDouble:?];
  v13 = [v10 initWithName:@"Duration" value:v12];
  [array addObject:v13];

  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMCameraClip size](self, "size")}];
  v16 = [v14 initWithName:@"Size" value:v15];
  [array addObject:v16];

  v17 = objc_alloc(MEMORY[0x1E69A29C8]);
  v18 = MEMORY[0x1E696AD98];
  [(HMCameraClip *)self targetFragmentDuration];
  v19 = [v18 numberWithDouble:?];
  v20 = [v17 initWithName:@"Target Fragment Duration" value:v19];
  [array addObject:v20];

  v21 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCameraClip *)self isComplete];
  v22 = HMFBooleanToString();
  v23 = [v21 initWithName:@"Complete" value:v22];
  [array addObject:v23];

  v24 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = HMStringFromCameraClipQuality([(HMCameraClip *)self quality]);
  v26 = [v24 initWithName:@"Quality" value:v25];
  [array addObject:v26];

  significantEvents = [(HMCameraClip *)self significantEvents];
  v28 = [significantEvents na_map:&__block_literal_global_9780];

  v29 = objc_alloc(MEMORY[0x1E69A29C8]);
  allObjects = [v28 allObjects];
  v31 = [allObjects componentsJoinedByString:{@", "}];
  v32 = [v29 initWithName:@"Significant Events" value:v31];
  [array addObject:v32];

  v33 = [array copy];

  return v33;
}

__CFString *__37__HMCameraClip_attributeDescriptions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 reason];

  return HMStringFromCameraSignificantEventReason(v2);
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCameraClip)initWithCoder:(id)coder
{
  v40 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.uuid"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.st"];
  [coderCopy decodeDoubleForKey:@"HMCC.ck.d"];
  v7 = v6;
  v26 = [coderCopy decodeIntegerForKey:@"HMCC.ck.s"];
  [coderCopy decodeDoubleForKey:@"HMCC.ck.tfd"];
  v9 = v8;
  v10 = [coderCopy decodeBoolForKey:@"HMCC.ck.ic"];
  v11 = [coderCopy decodeBoolForKey:@"HMCC.ck.id"];
  v12 = [coderCopy decodeIntegerForKey:@"HMCC.ck.q"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.sav"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.ec"];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"HMCC.ck.se"];

  if (v4 && v5 && v13 && v14 && v18)
  {
    selfCopy = [(HMCameraClip *)self initWithUniqueIdentifier:v4 startDate:v5 duration:v26 size:v10 targetFragmentDuration:v11 isComplete:v12 isDonated:v7 quality:v9 streamingAssetVersion:v13 encryptionContext:v14 significantEvents:v18];
    v20 = selfCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544642;
      v29 = v23;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v5;
      v34 = 2112;
      v35 = v13;
      v36 = 2112;
      v37 = v14;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded uuid: %@ startDate: %@ streamingAssetVersion: %@ encryptionContext: %@ significantEvents: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HMCameraClip *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"HMCC.ck.uuid"];

  startDate = [(HMCameraClip *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"HMCC.ck.st"];

  [(HMCameraClip *)self duration];
  [coderCopy encodeDouble:@"HMCC.ck.d" forKey:?];
  [coderCopy encodeInteger:-[HMCameraClip size](self forKey:{"size"), @"HMCC.ck.s"}];
  [(HMCameraClip *)self targetFragmentDuration];
  [coderCopy encodeDouble:@"HMCC.ck.tfd" forKey:?];
  [coderCopy encodeBool:-[HMCameraClip isComplete](self forKey:{"isComplete"), @"HMCC.ck.ic"}];
  [coderCopy encodeBool:-[HMCameraClip isDonated](self forKey:{"isDonated"), @"HMCC.ck.id"}];
  [coderCopy encodeInteger:-[HMCameraClip quality](self forKey:{"quality"), @"HMCC.ck.q"}];
  streamingAssetVersion = [(HMCameraClip *)self streamingAssetVersion];
  [coderCopy encodeObject:streamingAssetVersion forKey:@"HMCC.ck.sav"];

  encryptionContext = [(HMCameraClip *)self encryptionContext];
  [coderCopy encodeObject:encryptionContext forKey:@"HMCC.ck.ec"];

  significantEvents = [(HMCameraClip *)self significantEvents];
  [coderCopy encodeObject:significantEvents forKey:@"HMCC.ck.se"];
}

- (unint64_t)hash
{
  uniqueIdentifier = [(HMCameraClip *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uniqueIdentifier = [(HMCameraClip *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqual:uniqueIdentifier2])
    {
      startDate = [(HMCameraClip *)self startDate];
      startDate2 = [v6 startDate];
      if (![startDate isEqualToDate:startDate2])
      {
        goto LABEL_18;
      }

      [(HMCameraClip *)self duration];
      v12 = v11;
      [v6 duration];
      if (v12 != v13)
      {
        goto LABEL_18;
      }

      v14 = [(HMCameraClip *)self size];
      if (v14 == [v6 size] && (-[HMCameraClip targetFragmentDuration](self, "targetFragmentDuration"), v16 = v15, objc_msgSend(v6, "targetFragmentDuration"), v16 == v17) && (v18 = -[HMCameraClip isComplete](self, "isComplete"), v18 == objc_msgSend(v6, "isComplete")) && (v19 = -[HMCameraClip isDonated](self, "isDonated"), v19 == objc_msgSend(v6, "isDonated")) && (v20 = -[HMCameraClip quality](self, "quality"), v20 == objc_msgSend(v6, "quality")))
      {
        streamingAssetVersion = [(HMCameraClip *)self streamingAssetVersion];
        streamingAssetVersion2 = [v6 streamingAssetVersion];
        if ([streamingAssetVersion isEqualToString:streamingAssetVersion2])
        {
          encryptionContext = [(HMCameraClip *)self encryptionContext];
          encryptionContext2 = [v6 encryptionContext];
          v31 = encryptionContext;
          v25 = encryptionContext;
          v26 = encryptionContext2;
          if ([v25 isEqual:encryptionContext2])
          {
            significantEvents = [(HMCameraClip *)self significantEvents];
            significantEvents2 = [v6 significantEvents];
            v27 = [significantEvents isEqualToSet:significantEvents2];
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
LABEL_18:
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)canAskForUserFeedback
{
  v18 = *MEMORY[0x1E69E9840];
  significantEvents = [(HMCameraClip *)self significantEvents];
  v4 = [significantEvents count];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    significantEvents2 = [(HMCameraClip *)self significantEvents];
    v6 = [significantEvents2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(significantEvents2);
          }

          if (![*(*(&v13 + 1) + 8 * i) canAskForUserFeedback])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [significantEvents2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSData)encryptionKey
{
  encryptionContext = [(HMCameraClip *)self encryptionContext];
  v3 = [encryptionContext key];

  return v3;
}

- (NSDictionary)videoAssetRequiredHTTPHeaders
{
  v3 = objc_opt_class();
  streamingAssetVersion = [(HMCameraClip *)self streamingAssetVersion];
  v5 = [v3 requiredHTTPHeadersForStreamingAssetVersion:streamingAssetVersion];

  return v5;
}

- (HMCameraClip)initWithUniqueIdentifier:(id)identifier startDate:(id)date duration:(double)duration size:(unint64_t)size targetFragmentDuration:(double)fragmentDuration isComplete:(BOOL)complete isDonated:(BOOL)donated quality:(int64_t)self0 streamingAssetVersion:(id)self1 encryptionContext:(id)self2 significantEvents:(id)self3
{
  identifierCopy = identifier;
  dateCopy = date;
  versionCopy = version;
  contextCopy = context;
  eventsCopy = events;
  v36.receiver = self;
  v36.super_class = HMCameraClip;
  v25 = [(HMCameraClip *)&v36 init];
  if (v25)
  {
    v26 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
    uniqueIdentifier = v25->_uniqueIdentifier;
    v25->_uniqueIdentifier = v26;

    objc_storeStrong(&v25->_startDate, date);
    v25->_duration = duration;
    v25->_targetFragmentDuration = fragmentDuration;
    v25->_complete = complete;
    v25->_donated = donated;
    v25->_size = size;
    v25->_quality = quality;
    v28 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:versionCopy];
    streamingAssetVersion = v25->_streamingAssetVersion;
    v25->_streamingAssetVersion = v28;

    v30 = [contextCopy copy];
    encryptionContext = v25->_encryptionContext;
    v25->_encryptionContext = v30;

    v32 = [eventsCopy copy];
    significantEvents = v25->_significantEvents;
    v25->_significantEvents = v32;
  }

  return v25;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)requiredHTTPHeadersForStreamingAssetVersion:(id)version
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"x-apple-sa-version";
  v9[0] = version;
  v3 = MEMORY[0x1E695DF20];
  versionCopy = version;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end