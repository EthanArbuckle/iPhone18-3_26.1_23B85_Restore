@interface SFSpeechProfileContainer
+ (id)defaultContainer;
- (SFSpeechProfileContainer)initWithCoder:(id)a3;
- (SFSpeechProfileContainer)initWithURL:(id)a3 personaId:(id)a4 userId:(id)a5 loggableUserId:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSpeechProfileContainer

- (SFSpeechProfileContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFSpeechProfileContainer;
  v5 = [(SFSpeechProfileContainer *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaId"];
    personaId = v5->_personaId;
    v5->_personaId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userId"];
    userId = v5->_userId;
    v5->_userId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loggableUserId"];
    loggableUserId = v5->_loggableUserId;
    v5->_loggableUserId = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_personaId forKey:@"personaId"];
  [v5 encodeObject:self->_userId forKey:@"userId"];
  [v5 encodeObject:self->_loggableUserId forKey:@"loggableUserId"];
}

- (SFSpeechProfileContainer)initWithURL:(id)a3 personaId:(id)a4 userId:(id)a5 loggableUserId:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = SFSpeechProfileContainer;
  v15 = [(SFSpeechProfileContainer *)&v26 init];
  v16 = v15;
  if (!v15)
  {
LABEL_5:
    v18 = v16;
    goto LABEL_9;
  }

  if (v11)
  {
    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v16->_personaId, a4);
    objc_storeStrong(&v16->_userId, a5);
    objc_storeStrong(&v16->_loggableUserId, a6);
    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEBUG))
    {
      url = v16->_url;
      personaId = v16->_personaId;
      userId = v16->_userId;
      loggableUserId = v16->_loggableUserId;
      *buf = 136316162;
      v28 = "[SFSpeechProfileContainer initWithURL:personaId:userId:loggableUserId:]";
      v29 = 2112;
      v30 = url;
      v31 = 2112;
      v32 = personaId;
      v33 = 2112;
      v34 = userId;
      v35 = 2112;
      v36 = loggableUserId;
      _os_log_debug_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_DEBUG, "%s MUX: Created container with url: %@, personaId: %@, userId: %@, loggableUserId: %@", buf, 0x34u);
    }

    goto LABEL_5;
  }

  v19 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "[SFSpeechProfileContainer initWithURL:personaId:userId:loggableUserId:]";
    _os_log_error_impl(&dword_1AC5BC000, v19, OS_LOG_TYPE_ERROR, "%s MUX: Failed to resolve container, url cannot be nil.", buf, 0xCu);
  }

  v18 = 0;
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)defaultContainer
{
  v2 = [SFSpeechProfileContainer alloc];
  v3 = SFSpeechProfileRootDirectoryURL();
  v4 = [(SFSpeechProfileContainer *)v2 initWithURL:v3 personaId:0 userId:@"00000000-0000-0000-0000-000000000000" loggableUserId:@"00000000-0000-0000-0000-000000000000"];

  return v4;
}

@end