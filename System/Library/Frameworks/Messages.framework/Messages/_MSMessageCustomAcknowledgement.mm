@interface _MSMessageCustomAcknowledgement
- (_MSMessageCustomAcknowledgement)initWithCoder:(id)a3;
- (_MSMessageCustomAcknowledgement)initWithSession:(id)a3 isFromMe:(BOOL)a4 time:(id)a5;
- (id)_payloadDataFromAppName:(id)a3 adamID:(id)a4;
- (id)_pluginPayloadWithSelectedMessage:(id)a3 appName:(id)a4 adamID:(id)a5;
- (id)_sanitizedCopy;
- (id)_shallowCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation _MSMessageCustomAcknowledgement

- (_MSMessageCustomAcknowledgement)initWithSession:(id)a3 isFromMe:(BOOL)a4 time:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _MSMessageCustomAcknowledgement;
  v11 = [(_MSMessageCustomAcknowledgement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_session, a3);
    v12->_isFromMe = a4;
    objc_storeStrong(&v12->_time, a5);
  }

  return v12;
}

- (_MSMessageCustomAcknowledgement)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _MSMessageCustomAcknowledgement;
  v5 = [(_MSMessageCustomAcknowledgement *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v10;

    v5->_isFromMe = [v4 decodeBoolForKey:@"isFromMe"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderPID"];
    senderParticipantIdentifier = v5->_senderParticipantIdentifier;
    v5->_senderParticipantIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v14;
  }

  return v5;
}

- (void)setURL:(id)a3
{
  v5 = a3;
  URL = self->_URL;
  p_URL = &self->_URL;
  v17 = v5;
  if (([(NSURL *)URL isEqual:?]& 1) == 0)
  {
    v8 = [v17 scheme];
    if (!v8)
    {
LABEL_7:
      objc_storeStrong(p_URL, a3);
      goto LABEL_8;
    }

    v9 = v8;
    v10 = [v17 scheme];
    v11 = [v10 lowercaseString];
    if ([v11 isEqualToString:@"http"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v12 = [v17 scheme];
    v13 = [v12 lowercaseString];
    if ([v13 isEqualToString:@"https"])
    {

      goto LABEL_6;
    }

    v14 = [v17 scheme];
    v15 = [v14 lowercaseString];
    v16 = [v15 isEqualToString:@"data"];

    if (v16)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_pluginPayloadWithSelectedMessage:(id)a3 appName:(id)a4 adamID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v11 = getCKBrowserItemPayloadClass_softClass_0;
  v23 = getCKBrowserItemPayloadClass_softClass_0;
  if (!getCKBrowserItemPayloadClass_softClass_0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __getCKBrowserItemPayloadClass_block_invoke_0;
    v19[3] = &unk_1E83A2BA8;
    v19[4] = &v20;
    __getCKBrowserItemPayloadClass_block_invoke_0(v19);
    v11 = v21[3];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);
  v13 = IMLogHandleForCategory();
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_MSMessageCustomAcknowledgement _pluginPayloadWithSelectedMessage:v11 appName:v14 adamID:?];
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [_MSMessageCustomAcknowledgement _pluginPayloadWithSelectedMessage:appName:adamID:];
  }

  v15 = objc_alloc_init(v11);
  v16 = [(_MSMessageCustomAcknowledgement *)self _payloadDataFromAppName:v9 adamID:v10];
  if (v16)
  {
    [v15 setData:v16];
  }

  [v15 setShouldExpire:0];
  [v15 setCustomAcknowledgement:1];
  v17 = [v8 guid];
  [v15 setAssociatedMessageGUID:v17];

  [v15 setRequiresValidation:{objc_msgSend(v8, "requiresValidation")}];

  return v15;
}

- (id)_payloadDataFromAppName:(id)a3 adamID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(_MSMessageCustomAcknowledgement *)self session];
  v10 = [v9 identifier];

  if (v10)
  {
    v11 = [(_MSMessageCustomAcknowledgement *)self session];
    v12 = [v11 identifier];
    [v8 setObject:v12 forKey:*MEMORY[0x1E69A6F18]];
  }

  v13 = [(_MSMessageCustomAcknowledgement *)self URL];

  if (v13)
  {
    v14 = [(_MSMessageCustomAcknowledgement *)self URL];
    [v8 setObject:v14 forKey:*MEMORY[0x1E69A6F10]];
  }

  v15 = [(_MSMessageCustomAcknowledgement *)self accessibilityLabel];

  if (v15)
  {
    v16 = [(_MSMessageCustomAcknowledgement *)self accessibilityLabel];
    [v8 setObject:v16 forKey:*MEMORY[0x1E69A6EA8]];
  }

  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x1E69A6EC0]];
  }

  if (v7)
  {
    [v8 setObject:v7 forKey:*MEMORY[0x1E69A6EB0]];
  }

  v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [_MSMessageCustomAcknowledgement allocWithZone:?];
  v6 = [(_MSMessageCustomAcknowledgement *)self session];
  v7 = [(_MSMessageCustomAcknowledgement *)v5 initWithSession:v6 isFromMe:self->_isFromMe time:self->_time];

  v8 = [(NSURL *)self->_URL copyWithZone:a3];
  [(_MSMessageCustomAcknowledgement *)v7 setURL:v8];

  v9 = [(NSUUID *)self->_senderParticipantIdentifier copyWithZone:a3];
  [(_MSMessageCustomAcknowledgement *)v7 setSenderParticipantIdentifier:v9];

  v10 = [(NSString *)self->_senderAddress copyWithZone:a3];
  [(_MSMessageCustomAcknowledgement *)v7 setSenderAddress:v10];

  return v7;
}

- (id)_shallowCopy
{
  v3 = [[_MSMessageCustomAcknowledgement alloc] initWithSession:self->_session isFromMe:self->_isFromMe time:self->_time];
  [(_MSMessageCustomAcknowledgement *)v3 setURL:self->_URL];
  [(_MSMessageCustomAcknowledgement *)v3 setSenderParticipantIdentifier:self->_senderParticipantIdentifier];
  [(_MSMessageCustomAcknowledgement *)v3 setSenderAddress:self->_senderAddress];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  session = self->_session;
  v5 = a3;
  [v5 encodeObject:session forKey:@"session"];
  [v5 encodeObject:self->_URL forKey:@"URL"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeBool:self->_isFromMe forKey:@"isFromMe"];
  [v5 encodeObject:self->_senderParticipantIdentifier forKey:@"senderPID"];
  [v5 encodeObject:self->_senderAddress forKey:@"senderAddress"];
}

- (id)_sanitizedCopy
{
  v2 = [(_MSMessageCustomAcknowledgement *)self _shallowCopy];
  [v2 _sanitize];

  return v2;
}

- (void)_pluginPayloadWithSelectedMessage:(objc_class *)a1 appName:(NSObject *)a2 adamID:.cold.1(objc_class *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(a1);
  v4 = 138413058;
  v5 = v3;
  v6 = 2080;
  OUTLINED_FUNCTION_0_2();
  v7 = "/Library/Caches/com.apple.xbs/Sources/Messages/ChatKit/Messages/Messages/Source/Extension/_MSMessageCustomAcknowledgement.m";
  _os_log_debug_impl(&dword_1CADE6000, a2, OS_LOG_TYPE_DEBUG, "Loaded weak linked class: '%@': %s:%i (%s)", &v4, 0x26u);
}

- (void)_pluginPayloadWithSelectedMessage:appName:adamID:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 138413058;
  v2 = @"CKBrowserItemPayload";
  v3 = 2080;
  OUTLINED_FUNCTION_0_2();
  v4 = "/Library/Caches/com.apple.xbs/Sources/Messages/ChatKit/Messages/Messages/Source/Extension/_MSMessageCustomAcknowledgement.m";
  _os_log_error_impl(&dword_1CADE6000, v0, OS_LOG_TYPE_ERROR, "Failed to load weak link class: '%@': %s:%i (%s)", &v1, 0x26u);
}

@end