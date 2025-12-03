@interface HMFetchAnisetteDataRequest
+ (id)objWithDict:(id)dict;
+ (id)objWithMessage:(id)message;
- (HMFetchAnisetteDataRequest)initWithCoder:(id)coder;
- (NSDictionary)messagePayload;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFetchAnisetteDataRequest

- (HMFetchAnisetteDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HMFetchAnisetteDataRequest;
  v5 = [(HMRemoteLoginMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldProvision = [coderCopy decodeBoolForKey:@"TRAnisetteDataMessages_sP"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HMFetchAnisetteDataRequest;
  coderCopy = coder;
  [(HMRemoteLoginMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[HMFetchAnisetteDataRequest shouldProvision](self forKey:{"shouldProvision", v5.receiver, v5.super_class), @"TRAnisetteDataMessages_sP"}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMFetchAnisetteDataRequest;
  v4 = [(HMRemoteLoginMessage *)&v8 description];
  [(HMFetchAnisetteDataRequest *)self shouldProvision];
  v5 = HMFBooleanToString();
  v6 = [v3 stringWithFormat:@"[HMFetchAnisetteDataRequest: %@, should-provision %@]", v4, v5];

  return v6;
}

- (NSDictionary)messagePayload
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = encodeRootObject(self);
  messageName = [(HMFetchAnisetteDataRequest *)self messageName];
  v8 = messageName;
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)objWithMessage:(id)message
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_dataForKey:@"kHMFetchAnisetteDataRequest"];

  v15 = 0;
  v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with message from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)objWithDict:(id)dict
{
  v19 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  v5 = [dictCopy hmf_dataForKey:@"kHMFetchAnisetteDataRequest"];
  v14 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v14];
  v7 = v14;
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive object with dictionary from archive data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

@end