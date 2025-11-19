@interface HMCameraClip
+ (id)requiredHTTPHeadersForStreamingAssetVersion:(id)a3;
+ (id)shortDescription;
- (BOOL)canAskForUserFeedback;
- (BOOL)isEqual:(id)a3;
- (HMCameraClip)initWithCoder:(id)a3;
- (HMCameraClip)initWithUniqueIdentifier:(id)a3 startDate:(id)a4 duration:(double)a5 size:(unint64_t)a6 targetFragmentDuration:(double)a7 isComplete:(BOOL)a8 isDonated:(BOOL)a9 quality:(int64_t)a10 streamingAssetVersion:(id)a11 encryptionContext:(id)a12 significantEvents:(id)a13;
- (NSArray)attributeDescriptions;
- (NSData)encryptionKey;
- (NSDictionary)videoAssetRequiredHTTPHeaders;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClip

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCameraClip *)self uniqueIdentifier];
  v6 = [v4 initWithName:@"ID" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCameraClip *)self startDate];
  v9 = [v7 initWithName:@"Start Date" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = MEMORY[0x1E696AD98];
  [(HMCameraClip *)self duration];
  v12 = [v11 numberWithDouble:?];
  v13 = [v10 initWithName:@"Duration" value:v12];
  [v3 addObject:v13];

  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMCameraClip size](self, "size")}];
  v16 = [v14 initWithName:@"Size" value:v15];
  [v3 addObject:v16];

  v17 = objc_alloc(MEMORY[0x1E69A29C8]);
  v18 = MEMORY[0x1E696AD98];
  [(HMCameraClip *)self targetFragmentDuration];
  v19 = [v18 numberWithDouble:?];
  v20 = [v17 initWithName:@"Target Fragment Duration" value:v19];
  [v3 addObject:v20];

  v21 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCameraClip *)self isComplete];
  v22 = HMFBooleanToString();
  v23 = [v21 initWithName:@"Complete" value:v22];
  [v3 addObject:v23];

  v24 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = HMStringFromCameraClipQuality([(HMCameraClip *)self quality]);
  v26 = [v24 initWithName:@"Quality" value:v25];
  [v3 addObject:v26];

  v27 = [(HMCameraClip *)self significantEvents];
  v28 = [v27 na_map:&__block_literal_global_9780];

  v29 = objc_alloc(MEMORY[0x1E69A29C8]);
  v30 = [v28 allObjects];
  v31 = [v30 componentsJoinedByString:{@", "}];
  v32 = [v29 initWithName:@"Significant Events" value:v31];
  [v3 addObject:v32];

  v33 = [v3 copy];

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

- (HMCameraClip)initWithCoder:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.uuid"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.st"];
  [v3 decodeDoubleForKey:@"HMCC.ck.d"];
  v7 = v6;
  v26 = [v3 decodeIntegerForKey:@"HMCC.ck.s"];
  [v3 decodeDoubleForKey:@"HMCC.ck.tfd"];
  v9 = v8;
  v10 = [v3 decodeBoolForKey:@"HMCC.ck.ic"];
  v11 = [v3 decodeBoolForKey:@"HMCC.ck.id"];
  v12 = [v3 decodeIntegerForKey:@"HMCC.ck.q"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.sav"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HMCC.ck.ec"];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"HMCC.ck.se"];

  if (v4 && v5 && v13 && v14 && v18)
  {
    v19 = [(HMCameraClip *)self initWithUniqueIdentifier:v4 startDate:v5 duration:v26 size:v10 targetFragmentDuration:v11 isComplete:v12 isDonated:v7 quality:v9 streamingAssetVersion:v13 encryptionContext:v14 significantEvents:v18];
    v20 = v19;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCameraClip *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"HMCC.ck.uuid"];

  v6 = [(HMCameraClip *)self startDate];
  [v4 encodeObject:v6 forKey:@"HMCC.ck.st"];

  [(HMCameraClip *)self duration];
  [v4 encodeDouble:@"HMCC.ck.d" forKey:?];
  [v4 encodeInteger:-[HMCameraClip size](self forKey:{"size"), @"HMCC.ck.s"}];
  [(HMCameraClip *)self targetFragmentDuration];
  [v4 encodeDouble:@"HMCC.ck.tfd" forKey:?];
  [v4 encodeBool:-[HMCameraClip isComplete](self forKey:{"isComplete"), @"HMCC.ck.ic"}];
  [v4 encodeBool:-[HMCameraClip isDonated](self forKey:{"isDonated"), @"HMCC.ck.id"}];
  [v4 encodeInteger:-[HMCameraClip quality](self forKey:{"quality"), @"HMCC.ck.q"}];
  v7 = [(HMCameraClip *)self streamingAssetVersion];
  [v4 encodeObject:v7 forKey:@"HMCC.ck.sav"];

  v8 = [(HMCameraClip *)self encryptionContext];
  [v4 encodeObject:v8 forKey:@"HMCC.ck.ec"];

  v9 = [(HMCameraClip *)self significantEvents];
  [v4 encodeObject:v9 forKey:@"HMCC.ck.se"];
}

- (unint64_t)hash
{
  v2 = [(HMCameraClip *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMCameraClip *)self uniqueIdentifier];
    v8 = [v6 uniqueIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMCameraClip *)self startDate];
      v10 = [v6 startDate];
      if (![v9 isEqualToDate:v10])
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
        v21 = [(HMCameraClip *)self streamingAssetVersion];
        v22 = [v6 streamingAssetVersion];
        if ([v21 isEqualToString:v22])
        {
          v23 = [(HMCameraClip *)self encryptionContext];
          v24 = [v6 encryptionContext];
          v31 = v23;
          v25 = v23;
          v26 = v24;
          if ([v25 isEqual:v24])
          {
            v30 = [(HMCameraClip *)self significantEvents];
            v29 = [v6 significantEvents];
            v27 = [v30 isEqualToSet:v29];
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
  v3 = [(HMCameraClip *)self significantEvents];
  v4 = [v3 count];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(HMCameraClip *)self significantEvents];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          if (![*(*(&v13 + 1) + 8 * i) canAskForUserFeedback])
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(HMCameraClip *)self encryptionContext];
  v3 = [v2 key];

  return v3;
}

- (NSDictionary)videoAssetRequiredHTTPHeaders
{
  v3 = objc_opt_class();
  v4 = [(HMCameraClip *)self streamingAssetVersion];
  v5 = [v3 requiredHTTPHeadersForStreamingAssetVersion:v4];

  return v5;
}

- (HMCameraClip)initWithUniqueIdentifier:(id)a3 startDate:(id)a4 duration:(double)a5 size:(unint64_t)a6 targetFragmentDuration:(double)a7 isComplete:(BOOL)a8 isDonated:(BOOL)a9 quality:(int64_t)a10 streamingAssetVersion:(id)a11 encryptionContext:(id)a12 significantEvents:(id)a13
{
  v21 = a3;
  v35 = a4;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v36.receiver = self;
  v36.super_class = HMCameraClip;
  v25 = [(HMCameraClip *)&v36 init];
  if (v25)
  {
    v26 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v21];
    uniqueIdentifier = v25->_uniqueIdentifier;
    v25->_uniqueIdentifier = v26;

    objc_storeStrong(&v25->_startDate, a4);
    v25->_duration = a5;
    v25->_targetFragmentDuration = a7;
    v25->_complete = a8;
    v25->_donated = a9;
    v25->_size = a6;
    v25->_quality = a10;
    v28 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v22];
    streamingAssetVersion = v25->_streamingAssetVersion;
    v25->_streamingAssetVersion = v28;

    v30 = [v23 copy];
    encryptionContext = v25->_encryptionContext;
    v25->_encryptionContext = v30;

    v32 = [v24 copy];
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

+ (id)requiredHTTPHeadersForStreamingAssetVersion:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"x-apple-sa-version";
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end