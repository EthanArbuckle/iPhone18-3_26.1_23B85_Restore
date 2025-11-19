@interface AMSXDMessage
+ (id)_allowedClassNamesForDecoding;
+ (id)_allowedClassesForDecoding;
+ (id)messageFromProtoMessage:(id)a3;
- (AMSXDMessage)initWithCoder:(id)a3;
- (AMSXDMessage)initWithIdentifier:(id)a3 destination:(id)a4 purpose:(int64_t)a5 object:(id)a6;
- (AMSXDMessage)initWithJSONDictionary:(id)a3;
- (BOOL)isExpired;
- (NSDictionary)JSONDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createProtoMessage;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSXDMessage

+ (id)_allowedClassesForDecoding
{
  if (_MergedGlobals_163 != -1)
  {
    dispatch_once(&_MergedGlobals_163, &__block_literal_global_154);
  }

  v3 = qword_1ED6E3298;

  return v3;
}

uint64_t __42__AMSXDMessage__allowedClassesForDecoding__block_invoke()
{
  qword_1ED6E3298 = [MEMORY[0x1E695DFD8] setWithObject:{+[AMSDialogRequest classForKeyedUnarchiver](AMSDialogRequest, "classForKeyedUnarchiver")}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_allowedClassNamesForDecoding
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AMSXDMessage__allowedClassNamesForDecoding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6E32A0 != -1)
  {
    dispatch_once(&qword_1ED6E32A0, block);
  }

  v2 = qword_1ED6E32A8;

  return v2;
}

void __45__AMSXDMessage__allowedClassNamesForDecoding__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _allowedClassesForDecoding];
  v1 = [v3 ams_mapWithTransform:&__block_literal_global_4];
  v2 = qword_1ED6E32A8;
  qword_1ED6E32A8 = v1;
}

- (AMSXDMessage)initWithIdentifier:(id)a3 destination:(id)a4 purpose:(int64_t)a5 object:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = AMSXDMessage;
  v14 = [(AMSXDMessage *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_destination, a4);
    v15->_expirationInterval = 2678400.0;
    objc_storeStrong(&v15->_identifier, a3);
    v15->_isReply = 0;
    v16 = AMSSetLogKeyIfNeeded();
    logKey = v15->_logKey;
    v15->_logKey = v16;

    objc_storeStrong(&v15->_object, a6);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    objectClassName = v15->_objectClassName;
    v15->_objectClassName = v19;

    v15->_purpose = a5;
  }

  return v15;
}

+ (id)messageFromProtoMessage:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 messageData];
  v5 = [v4 length];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    v8 = [v3 messageData];
    v18 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:v8 error:&v18];
    v10 = v18;

    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = +[AMSLogConfig sharedConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = [v3 logKey];
      *buf = 138543874;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode message with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = [v3 logKey];
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode nil protoMessage data", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (AMSXDMessage)initWithJSONDictionary:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kJSONKeyIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKeyedSubscript:@"kJSONKeyLogKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
LABEL_12:
    v9 = 0;
    goto LABEL_63;
  }

  v8 = v7;

  v9 = 0;
  if (v6 && v8)
  {
    v55.receiver = self;
    v55.super_class = AMSXDMessage;
    self = [(AMSXDMessage *)&v55 init];
    if (!self)
    {
      goto LABEL_62;
    }

    destination = [v4 objectForKeyedSubscript:@"kJSONKeyDestination"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = destination;

      if (!v11)
      {
        v53 = 0;
LABEL_15:
        v13 = [v4 objectForKeyedSubscript:@"kJSONKeyExpirationInterval"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        self->_expirationInterval = [v14 integerValue];
        objc_storeStrong(&self->_identifier, v6);
        v15 = [v4 objectForKeyedSubscript:@"kJSONKeyIsReply"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        self->_isReply = [v16 BOOLValue];
        objc_storeStrong(&self->_logKey, v7);
        v17 = [v4 objectForKeyedSubscript:@"kJSONKeyMessageID"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        messageID = self->_messageID;
        self->_messageID = v18;

        v20 = [v4 objectForKeyedSubscript:@"kJSONKeyObject"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          v36 = 0;
          goto LABEL_40;
        }

        v21 = v20;

        if (!v21)
        {
          v36 = 0;
          goto LABEL_41;
        }

        v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v21 options:0];
        v22 = [v4 objectForKeyedSubscript:@"kJSONKeyObjectClassName"];
        objc_opt_class();
        v23 = 0;
        if (objc_opt_isKindOfClass())
        {
          v23 = v22;
        }

        objectClassName = self->_objectClassName;
        self->_objectClassName = v23;

        if (v20)
        {
          v30 = self->_objectClassName;
          if (!v30)
          {
            goto LABEL_37;
          }

          v31 = [objc_opt_class() _allowedClassNamesForDecoding];
          v32 = [v31 containsObject:self->_objectClassName];

          if (v32)
          {
            v33 = MEMORY[0x1E696ACD0];
            v34 = [objc_opt_class() _allowedClassesForDecoding];
            v54 = 0;
            v35 = [v33 unarchivedObjectOfClasses:v34 fromData:v20 error:&v54];
            v36 = v54;
            object = self->_object;
            self->_object = v35;

LABEL_40:
LABEL_41:
            origin = [v4 objectForKeyedSubscript:@"kJSONKeyOrigin"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = origin;

              if (!v41)
              {
                goto LABEL_46;
              }

              v42 = [[AMSXDDevice alloc] initWithJSONDictionary:v41];
              origin = self->_origin;
              self->_origin = v42;
            }

            else
            {
              v41 = 0;
            }

LABEL_46:
            v43 = [v4 objectForKeyedSubscript:@"kJSONKeyObjectPurpose"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = v43;
            }

            else
            {
              v44 = 0;
            }

            self->_purpose = [v44 integerValue];
            receiptDate = [v4 objectForKeyedSubscript:@"kJSONKeyReceiptDate"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = receiptDate;

              if (!v46 || ![v46 longLongValue])
              {
                goto LABEL_55;
              }

              v47 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v46, "longLongValue")}];
              receiptDate = self->_receiptDate;
              self->_receiptDate = v47;
            }

            else
            {
              v46 = 0;
            }

LABEL_55:
            if (v36)
            {
              v48 = +[AMSLogConfig sharedConfig];
              if (!v48)
              {
                v48 = +[AMSLogConfig sharedConfig];
              }

              v49 = [v48 OSLogObject];
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v50 = objc_opt_class();
                logKey = self->_logKey;
                *buf = 138543874;
                v57 = v50;
                v58 = 2114;
                v59 = logKey;
                v60 = 2114;
                v61 = v36;
                _os_log_impl(&dword_192869000, v49, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode JSON with error: %{public}@", buf, 0x20u);
              }

              goto LABEL_12;
            }

LABEL_62:
            self = self;
            v9 = self;
            goto LABEL_63;
          }
        }

        v30 = self->_objectClassName;
        if (v30)
        {
          v38 = [objc_opt_class() _allowedClassNamesForDecoding];
          v39 = [v38 containsObject:self->_objectClassName];

          v30 = self->_objectClassName;
          if ((v39 & 1) == 0)
          {
            AMSErrorWithFormat(4, @"AMSXDMessage Error", @"Failed to decode JSON dictionary: Unexpected class name: %@", v25, v26, v27, v28, v29, self->_objectClassName);
            goto LABEL_39;
          }
        }

LABEL_37:
        AMSErrorWithFormat(4, @"AMSXDMessage Error", @"Failed to decode JSON dictionary: Either object or objectClassName is nil. Class name: %@", v25, v26, v27, v28, v29, v30);
        v36 = LABEL_39:;
        goto LABEL_40;
      }

      v53 = v11;
      v12 = [[AMSXDDevice alloc] initWithJSONDictionary:v11];
      destination = self->_destination;
      self->_destination = v12;
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_15;
  }

LABEL_63:

  return v9;
}

- (NSDictionary)JSONDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSXDMessage *)self object];

  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = MEMORY[0x1E696ACC8];
  v6 = [(AMSXDMessage *)self object];
  v31 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v31];
  v8 = v31;

  if (v7)
  {
    v9 = [v7 base64EncodedStringWithOptions:0];
    [v3 setObject:v9 forKeyedSubscript:@"kJSONKeyObject"];
    v10 = [(AMSXDMessage *)self objectClassName];
    [v3 setObject:v10 forKeyedSubscript:@"kJSONKeyObjectClassName"];

LABEL_4:
    v11 = [(AMSXDMessage *)self destination];
    v12 = [v11 JSONDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"kJSONKeyDestination"];

    v13 = MEMORY[0x1E696AD98];
    [(AMSXDMessage *)self expirationInterval];
    v14 = [v13 numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"kJSONKeyExpirationInterval"];

    v15 = [(AMSXDMessage *)self identifier];
    [v3 setObject:v15 forKeyedSubscript:@"kJSONKeyIdentifier"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSXDMessage isReply](self, "isReply")}];
    [v3 setObject:v16 forKeyedSubscript:@"kJSONKeyIsReply"];

    v17 = [(AMSXDMessage *)self logKey];
    [v3 setObject:v17 forKeyedSubscript:@"kJSONKeyLogKey"];

    v18 = [(AMSXDMessage *)self messageID];
    [v3 setObject:v18 forKeyedSubscript:@"kJSONKeyMessageID"];

    v19 = [(AMSXDMessage *)self origin];
    v20 = [v19 JSONDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"kJSONKeyOrigin"];

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSXDMessage purpose](self, "purpose")}];
    [v3 setObject:v21 forKeyedSubscript:@"kJSONKeyObjectPurpose"];

    v22 = MEMORY[0x1E696AD98];
    v23 = [(AMSXDMessage *)self receiptDate];
    [v23 timeIntervalSinceReferenceDate];
    v24 = [v22 numberWithDouble:?];
    [v3 setObject:v24 forKeyedSubscript:@"kJSONKeyReceiptDate"];

    v25 = [v3 copy];
    goto LABEL_10;
  }

  v26 = +[AMSLogConfig sharedConfig];
  if (!v26)
  {
    v26 = +[AMSLogConfig sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    v29 = [(AMSXDMessage *)self logKey];
    *buf = 138543874;
    v33 = v28;
    v34 = 2114;
    v35 = v29;
    v36 = 2114;
    v37 = self;
    _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode message: %{public}@", buf, 0x20u);
  }

  v25 = 0;
LABEL_10:

  return v25;
}

- (id)createProtoMessage
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v4 = v12;
  if (v4 || ![v3 length])
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = [(AMSXDMessage *)self logKey];
      *buf = 138544130;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      v17 = 2114;
      v18 = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode proto message: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(AMSXDProtoMessage);
    v10 = [(AMSXDMessage *)self logKey];
    [(AMSXDProtoMessage *)v9 setLogKey:v10];

    [(AMSXDProtoMessage *)v9 setMessageData:v3];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSXDMessage *)self purpose];
  v5 = [(AMSXDMessage *)self identifier];
  v6 = [(AMSXDMessage *)self logKey];
  v7 = [(AMSXDMessage *)self isReply];
  v8 = [(AMSXDMessage *)self messageID];
  [(AMSXDMessage *)self expirationInterval];
  v10 = v9;
  v11 = [(AMSXDMessage *)self receiptDate];
  v12 = [v3 stringWithFormat:@"[AMSXDMessage purpose:%ld id:%@; logKey:%@; reply:%d; msgID:%@; expInt: %lf; received:%@]", v4, v5, v6, v7, v8, v10, v11];;

  return v12;
}

- (BOOL)isExpired
{
  v3 = [(AMSXDMessage *)self receiptDate];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(AMSXDMessage *)self expirationInterval];
  v6 = v5;

  if (v6 == -1.0)
  {
    return 0;
  }

  v8 = [(AMSXDMessage *)self receiptDate];
  [(AMSXDMessage *)self expirationInterval];
  v9 = [v8 dateByAddingTimeInterval:?];

  [v9 timeIntervalSinceNow];
  v7 = v10 <= 0.0;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(AMSXDMessage *)self JSONDictionary];
  if (v4)
  {
    v5 = [[AMSXDMessage allocWithZone:?], "initWithJSONDictionary:", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = [(AMSXDMessage *)self JSONDictionary];
  if (v10 && [MEMORY[0x1E696ACB0] isValidJSONObject:v10])
  {
    v17 = 0;
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:&v17];
    v12 = v17;
    [v4 encodeObject:v11 forKey:@"kCodingKeyData"];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = AMSErrorWithFormat(3, @"AMSXDMessage Error", @"Invalid JSON for message: %@", v5, v6, v7, v8, v9, self);
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

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = [(AMSXDMessage *)self logKey];
    *buf = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode message. Error: %{public}@", buf, 0x20u);
  }

LABEL_11:
}

- (AMSXDMessage)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyData"];

  if (v5)
  {
    v12 = 0;
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v12];
    v7 = v12;
    if (v6)
    {
      self = [(AMSXDMessage *)self initWithJSONDictionary:v6];
      v8 = self;
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

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode JSON. Error: %{public}@", buf, 0x16u);
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end