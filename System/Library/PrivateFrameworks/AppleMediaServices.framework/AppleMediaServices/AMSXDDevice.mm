@interface AMSXDDevice
+ (id)activePairedDevices;
+ (id)allPairedDevices;
+ (id)deviceFromIdentifier:(id)identifier;
- (AMSXDDevice)initWithCoder:(id)coder;
- (AMSXDDevice)initWithDeviceID:(id)d type:(int64_t)type;
- (AMSXDDevice)initWithJSONDictionary:(id)dictionary;
- (NSDictionary)JSONDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSXDDevice

- (AMSXDDevice)initWithDeviceID:(id)d type:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = AMSXDDevice;
  v8 = [(AMSXDDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, d);
    v9->_type = type;
  }

  return v9;
}

+ (id)activePairedDevices
{
  v2 = [[AMSXDDevice alloc] initWithDeviceID:0 type:1];

  return v2;
}

+ (id)allPairedDevices
{
  v2 = [[AMSXDDevice alloc] initWithDeviceID:0 type:2];

  return v2;
}

+ (id)deviceFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[AMSXDDevice alloc] initWithDeviceID:identifierCopy type:3];

  return v4;
}

- (AMSXDDevice)initWithJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v13.receiver = self;
    v13.super_class = AMSXDDevice;
    v5 = [(AMSXDDevice *)&v13 init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyIdentifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      identifier = v5->_identifier;
      v5->_identifier = v7;

      v10 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyType"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v5->_type = [v11 integerValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)JSONDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(AMSXDDevice *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"kJSONKeyIdentifier"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSXDDevice type](self, "type")}];
  [v3 setObject:v5 forKeyedSubscript:@"kJSONKeyType"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  jSONDictionary = [(AMSXDDevice *)self JSONDictionary];
  if (jSONDictionary && [MEMORY[0x1E696ACB0] isValidJSONObject:jSONDictionary])
  {
    v16 = 0;
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jSONDictionary options:0 error:&v16];
    v12 = v16;
    [coderCopy encodeObject:v11 forKey:@"kCodingKeyData"];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = AMSErrorWithFormat(3, @"AMSXDDevice Error", @"Invalid JSON for device", v5, v6, v7, v8, v9, self);
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    *buf = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to encode message. Error: %{public}@", buf, 0x16u);
  }

LABEL_11:
}

- (AMSXDDevice)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyData"];

  if (v5)
  {
    v12 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v12];
    v7 = v12;
    if (v6)
    {
      self = [(AMSXDDevice *)self initWithJSONDictionary:v6];
      selfCopy = self;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode JSON. Error: %{public}@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

@end