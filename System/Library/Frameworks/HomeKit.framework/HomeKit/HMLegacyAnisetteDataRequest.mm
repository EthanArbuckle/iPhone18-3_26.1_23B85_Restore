@interface HMLegacyAnisetteDataRequest
+ (id)objWithDict:(id)dict;
+ (id)objWithMessage:(id)message;
- (HMLegacyAnisetteDataRequest)initWithCoder:(id)coder;
- (NSDictionary)messagePayload;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMLegacyAnisetteDataRequest

- (HMLegacyAnisetteDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMLegacyAnisetteDataRequest;
  v5 = [(HMRemoteLoginMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TRAnisetteDataMessages_d"];
    dsid = v5->_dsid;
    v5->_dsid = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMLegacyAnisetteDataRequest;
  coderCopy = coder;
  [(HMRemoteLoginMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMLegacyAnisetteDataRequest *)self dsid:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"TRAnisetteDataMessages_d"];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMLegacyAnisetteDataRequest;
  v4 = [(HMRemoteLoginMessage *)&v8 description];
  dsid = [(HMLegacyAnisetteDataRequest *)self dsid];
  v6 = [v3 stringWithFormat:@"[HMFetchAnisetteDataResponse: %@, dsid %@]", v4, dsid];

  return v6;
}

- (NSDictionary)messagePayload
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = encodeRootObject(self);
  messageName = [(HMLegacyAnisetteDataRequest *)self messageName];
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
  v6 = [messagePayload hmf_dataForKey:@"kHMLegacyAnisetteDataRequest"];

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
  v5 = [dictCopy hmf_dataForKey:@"kHMLegacyAnisetteDataRequest"];
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