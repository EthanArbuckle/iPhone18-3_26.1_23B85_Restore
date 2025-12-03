@interface _MSMessageCustomAcknowledgement
- (_MSMessageCustomAcknowledgement)initWithCoder:(id)coder;
- (_MSMessageCustomAcknowledgement)initWithSession:(id)session isFromMe:(BOOL)me time:(id)time;
- (id)_payloadDataFromAppName:(id)name adamID:(id)d;
- (id)_pluginPayloadWithSelectedMessage:(id)message appName:(id)name adamID:(id)d;
- (id)_sanitizedCopy;
- (id)_shallowCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setURL:(id)l;
@end

@implementation _MSMessageCustomAcknowledgement

- (_MSMessageCustomAcknowledgement)initWithSession:(id)session isFromMe:(BOOL)me time:(id)time
{
  sessionCopy = session;
  timeCopy = time;
  v14.receiver = self;
  v14.super_class = _MSMessageCustomAcknowledgement;
  v11 = [(_MSMessageCustomAcknowledgement *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_session, session);
    v12->_isFromMe = me;
    objc_storeStrong(&v12->_time, time);
  }

  return v12;
}

- (_MSMessageCustomAcknowledgement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _MSMessageCustomAcknowledgement;
  v5 = [(_MSMessageCustomAcknowledgement *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v10;

    v5->_isFromMe = [coderCopy decodeBoolForKey:@"isFromMe"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderPID"];
    senderParticipantIdentifier = v5->_senderParticipantIdentifier;
    v5->_senderParticipantIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v14;
  }

  return v5;
}

- (void)setURL:(id)l
{
  lCopy = l;
  URL = self->_URL;
  p_URL = &self->_URL;
  v17 = lCopy;
  if (([(NSURL *)URL isEqual:?]& 1) == 0)
  {
    scheme = [v17 scheme];
    if (!scheme)
    {
LABEL_7:
      objc_storeStrong(p_URL, l);
      goto LABEL_8;
    }

    v9 = scheme;
    scheme2 = [v17 scheme];
    lowercaseString = [scheme2 lowercaseString];
    if ([lowercaseString isEqualToString:@"http"])
    {
LABEL_6:

      goto LABEL_7;
    }

    scheme3 = [v17 scheme];
    lowercaseString2 = [scheme3 lowercaseString];
    if ([lowercaseString2 isEqualToString:@"https"])
    {

      goto LABEL_6;
    }

    scheme4 = [v17 scheme];
    lowercaseString3 = [scheme4 lowercaseString];
    v16 = [lowercaseString3 isEqualToString:@"data"];

    if (v16)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_pluginPayloadWithSelectedMessage:(id)message appName:(id)name adamID:(id)d
{
  messageCopy = message;
  nameCopy = name;
  dCopy = d;
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
  v16 = [(_MSMessageCustomAcknowledgement *)self _payloadDataFromAppName:nameCopy adamID:dCopy];
  if (v16)
  {
    [v15 setData:v16];
  }

  [v15 setShouldExpire:0];
  [v15 setCustomAcknowledgement:1];
  guid = [messageCopy guid];
  [v15 setAssociatedMessageGUID:guid];

  [v15 setRequiresValidation:{objc_msgSend(messageCopy, "requiresValidation")}];

  return v15;
}

- (id)_payloadDataFromAppName:(id)name adamID:(id)d
{
  nameCopy = name;
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  session = [(_MSMessageCustomAcknowledgement *)self session];
  identifier = [session identifier];

  if (identifier)
  {
    session2 = [(_MSMessageCustomAcknowledgement *)self session];
    identifier2 = [session2 identifier];
    [dictionary setObject:identifier2 forKey:*MEMORY[0x1E69A6F18]];
  }

  v13 = [(_MSMessageCustomAcknowledgement *)self URL];

  if (v13)
  {
    v14 = [(_MSMessageCustomAcknowledgement *)self URL];
    [dictionary setObject:v14 forKey:*MEMORY[0x1E69A6F10]];
  }

  accessibilityLabel = [(_MSMessageCustomAcknowledgement *)self accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [(_MSMessageCustomAcknowledgement *)self accessibilityLabel];
    [dictionary setObject:accessibilityLabel2 forKey:*MEMORY[0x1E69A6EA8]];
  }

  if (nameCopy)
  {
    [dictionary setObject:nameCopy forKey:*MEMORY[0x1E69A6EC0]];
  }

  if (dCopy)
  {
    [dictionary setObject:dCopy forKey:*MEMORY[0x1E69A6EB0]];
  }

  v17 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:1 error:0];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [_MSMessageCustomAcknowledgement allocWithZone:?];
  session = [(_MSMessageCustomAcknowledgement *)self session];
  v7 = [(_MSMessageCustomAcknowledgement *)v5 initWithSession:session isFromMe:self->_isFromMe time:self->_time];

  v8 = [(NSURL *)self->_URL copyWithZone:zone];
  [(_MSMessageCustomAcknowledgement *)v7 setURL:v8];

  v9 = [(NSUUID *)self->_senderParticipantIdentifier copyWithZone:zone];
  [(_MSMessageCustomAcknowledgement *)v7 setSenderParticipantIdentifier:v9];

  v10 = [(NSString *)self->_senderAddress copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  session = self->_session;
  coderCopy = coder;
  [coderCopy encodeObject:session forKey:@"session"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
  [coderCopy encodeObject:self->_time forKey:@"time"];
  [coderCopy encodeBool:self->_isFromMe forKey:@"isFromMe"];
  [coderCopy encodeObject:self->_senderParticipantIdentifier forKey:@"senderPID"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"senderAddress"];
}

- (id)_sanitizedCopy
{
  _shallowCopy = [(_MSMessageCustomAcknowledgement *)self _shallowCopy];
  [_shallowCopy _sanitize];

  return _shallowCopy;
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