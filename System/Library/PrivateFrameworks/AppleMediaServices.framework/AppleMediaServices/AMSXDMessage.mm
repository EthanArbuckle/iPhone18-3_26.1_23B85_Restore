@interface AMSXDMessage
+ (id)_allowedClassNamesForDecoding;
+ (id)_allowedClassesForDecoding;
+ (id)messageFromProtoMessage:(id)message;
- (AMSXDMessage)initWithCoder:(id)coder;
- (AMSXDMessage)initWithIdentifier:(id)identifier destination:(id)destination purpose:(int64_t)purpose object:(id)object;
- (AMSXDMessage)initWithJSONDictionary:(id)dictionary;
- (BOOL)isExpired;
- (NSDictionary)JSONDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createProtoMessage;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  block[4] = self;
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

- (AMSXDMessage)initWithIdentifier:(id)identifier destination:(id)destination purpose:(int64_t)purpose object:(id)object
{
  identifierCopy = identifier;
  destinationCopy = destination;
  objectCopy = object;
  v22.receiver = self;
  v22.super_class = AMSXDMessage;
  v14 = [(AMSXDMessage *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_destination, destination);
    v15->_expirationInterval = 2678400.0;
    objc_storeStrong(&v15->_identifier, identifier);
    v15->_isReply = 0;
    v16 = AMSSetLogKeyIfNeeded();
    logKey = v15->_logKey;
    v15->_logKey = v16;

    objc_storeStrong(&v15->_object, object);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    objectClassName = v15->_objectClassName;
    v15->_objectClassName = v19;

    v15->_purpose = purpose;
  }

  return v15;
}

+ (id)messageFromProtoMessage:(id)message
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  messageData = [messageCopy messageData];
  v5 = [messageData length];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    messageData2 = [messageCopy messageData];
    v18 = 0;
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:messageData2 error:&v18];
    v10 = v18;

    if (!v10)
    {
      goto LABEL_14;
    }

    oSLogObject2 = +[AMSLogConfig sharedConfig];
    if (!oSLogObject2)
    {
      oSLogObject2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [oSLogObject2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      logKey = [messageCopy logKey];
      *buf = 138543874;
      v20 = v13;
      v21 = 2114;
      v22 = logKey;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode message with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      logKey2 = [messageCopy logKey];
      *buf = 138543618;
      v20 = v15;
      v21 = 2114;
      v22 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode nil protoMessage data", buf, 0x16u);
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (AMSXDMessage)initWithJSONDictionary:(id)dictionary
{
  v62 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyLogKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
LABEL_12:
    selfCopy = 0;
    goto LABEL_63;
  }

  v8 = v7;

  selfCopy = 0;
  if (v6 && v8)
  {
    v55.receiver = self;
    v55.super_class = AMSXDMessage;
    self = [(AMSXDMessage *)&v55 init];
    if (!self)
    {
      goto LABEL_62;
    }

    destination = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyDestination"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = destination;

      if (!v11)
      {
        v53 = 0;
LABEL_15:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyExpirationInterval"];
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
        v15 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyIsReply"];
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
        v17 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyMessageID"];
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

        v20 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyObject"];
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
        v22 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyObjectClassName"];
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

          _allowedClassNamesForDecoding = [objc_opt_class() _allowedClassNamesForDecoding];
          v32 = [_allowedClassNamesForDecoding containsObject:self->_objectClassName];

          if (v32)
          {
            v33 = MEMORY[0x1E696ACD0];
            _allowedClassesForDecoding = [objc_opt_class() _allowedClassesForDecoding];
            v54 = 0;
            v35 = [v33 unarchivedObjectOfClasses:_allowedClassesForDecoding fromData:v20 error:&v54];
            v36 = v54;
            object = self->_object;
            self->_object = v35;

LABEL_40:
LABEL_41:
            origin = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyOrigin"];
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
            v43 = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyObjectPurpose"];
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
            receiptDate = [dictionaryCopy objectForKeyedSubscript:@"kJSONKeyReceiptDate"];
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

              oSLogObject = [v48 OSLogObject];
              if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
              {
                v50 = objc_opt_class();
                logKey = self->_logKey;
                *buf = 138543874;
                v57 = v50;
                v58 = 2114;
                v59 = logKey;
                v60 = 2114;
                v61 = v36;
                _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to decode JSON with error: %{public}@", buf, 0x20u);
              }

              goto LABEL_12;
            }

LABEL_62:
            self = self;
            selfCopy = self;
            goto LABEL_63;
          }
        }

        v30 = self->_objectClassName;
        if (v30)
        {
          _allowedClassNamesForDecoding2 = [objc_opt_class() _allowedClassNamesForDecoding];
          v39 = [_allowedClassNamesForDecoding2 containsObject:self->_objectClassName];

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

  return selfCopy;
}

- (NSDictionary)JSONDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  object = [(AMSXDMessage *)self object];

  if (!object)
  {
    goto LABEL_4;
  }

  v5 = MEMORY[0x1E696ACC8];
  object2 = [(AMSXDMessage *)self object];
  v31 = 0;
  v7 = [v5 archivedDataWithRootObject:object2 requiringSecureCoding:1 error:&v31];
  v8 = v31;

  if (v7)
  {
    v9 = [v7 base64EncodedStringWithOptions:0];
    [v3 setObject:v9 forKeyedSubscript:@"kJSONKeyObject"];
    objectClassName = [(AMSXDMessage *)self objectClassName];
    [v3 setObject:objectClassName forKeyedSubscript:@"kJSONKeyObjectClassName"];

LABEL_4:
    destination = [(AMSXDMessage *)self destination];
    jSONDictionary = [destination JSONDictionary];
    [v3 setObject:jSONDictionary forKeyedSubscript:@"kJSONKeyDestination"];

    v13 = MEMORY[0x1E696AD98];
    [(AMSXDMessage *)self expirationInterval];
    v14 = [v13 numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"kJSONKeyExpirationInterval"];

    identifier = [(AMSXDMessage *)self identifier];
    [v3 setObject:identifier forKeyedSubscript:@"kJSONKeyIdentifier"];

    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSXDMessage isReply](self, "isReply")}];
    [v3 setObject:v16 forKeyedSubscript:@"kJSONKeyIsReply"];

    logKey = [(AMSXDMessage *)self logKey];
    [v3 setObject:logKey forKeyedSubscript:@"kJSONKeyLogKey"];

    messageID = [(AMSXDMessage *)self messageID];
    [v3 setObject:messageID forKeyedSubscript:@"kJSONKeyMessageID"];

    origin = [(AMSXDMessage *)self origin];
    jSONDictionary2 = [origin JSONDictionary];
    [v3 setObject:jSONDictionary2 forKeyedSubscript:@"kJSONKeyOrigin"];

    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSXDMessage purpose](self, "purpose")}];
    [v3 setObject:v21 forKeyedSubscript:@"kJSONKeyObjectPurpose"];

    v22 = MEMORY[0x1E696AD98];
    receiptDate = [(AMSXDMessage *)self receiptDate];
    [receiptDate timeIntervalSinceReferenceDate];
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

  oSLogObject = [v26 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v28 = objc_opt_class();
    logKey2 = [(AMSXDMessage *)self logKey];
    *buf = 138543874;
    v33 = v28;
    v34 = 2114;
    v35 = logKey2;
    v36 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode message: %{public}@", buf, 0x20u);
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

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      logKey = [(AMSXDMessage *)self logKey];
      *buf = 138544130;
      v14 = v7;
      v15 = 2114;
      v16 = logKey;
      v17 = 2114;
      selfCopy = self;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode proto message: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(AMSXDProtoMessage);
    logKey2 = [(AMSXDMessage *)self logKey];
    [(AMSXDProtoMessage *)v9 setLogKey:logKey2];

    [(AMSXDProtoMessage *)v9 setMessageData:v3];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  purpose = [(AMSXDMessage *)self purpose];
  identifier = [(AMSXDMessage *)self identifier];
  logKey = [(AMSXDMessage *)self logKey];
  isReply = [(AMSXDMessage *)self isReply];
  messageID = [(AMSXDMessage *)self messageID];
  [(AMSXDMessage *)self expirationInterval];
  v10 = v9;
  receiptDate = [(AMSXDMessage *)self receiptDate];
  v12 = [v3 stringWithFormat:@"[AMSXDMessage purpose:%ld id:%@; logKey:%@; reply:%d; msgID:%@; expInt: %lf; received:%@]", purpose, identifier, logKey, isReply, messageID, v10, receiptDate];;

  return v12;
}

- (BOOL)isExpired
{
  receiptDate = [(AMSXDMessage *)self receiptDate];
  if (!receiptDate)
  {
    return 0;
  }

  v4 = receiptDate;
  [(AMSXDMessage *)self expirationInterval];
  v6 = v5;

  if (v6 == -1.0)
  {
    return 0;
  }

  receiptDate2 = [(AMSXDMessage *)self receiptDate];
  [(AMSXDMessage *)self expirationInterval];
  v9 = [receiptDate2 dateByAddingTimeInterval:?];

  [v9 timeIntervalSinceNow];
  v7 = v10 <= 0.0;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  jSONDictionary = [(AMSXDMessage *)self JSONDictionary];
  if (jSONDictionary)
  {
    v5 = [[AMSXDMessage allocWithZone:?], "initWithJSONDictionary:", jSONDictionary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  jSONDictionary = [(AMSXDMessage *)self JSONDictionary];
  if (jSONDictionary && [MEMORY[0x1E696ACB0] isValidJSONObject:jSONDictionary])
  {
    v17 = 0;
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jSONDictionary options:0 error:&v17];
    v12 = v17;
    [coderCopy encodeObject:v11 forKey:@"kCodingKeyData"];

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

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    logKey = [(AMSXDMessage *)self logKey];
    *buf = 138543874;
    v19 = v15;
    v20 = 2114;
    v21 = logKey;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode message. Error: %{public}@", buf, 0x20u);
  }

LABEL_11:
}

- (AMSXDMessage)initWithCoder:(id)coder
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
      self = [(AMSXDMessage *)self initWithJSONDictionary:v6];
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