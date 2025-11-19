@interface INVoiceShortcut
- (BOOL)isEqual:(id)a3;
- (INVoiceShortcut)initWithCoder:(id)a3;
- (INVoiceShortcut)initWithIntent:(id)a3;
- (INVoiceShortcut)initWithUserActivity:(id)a3;
- (id)_initWithIdentifier:(id)a3 invocationPhrase:(id)a4 shortcut:(id)a5;
- (id)_initWithVCVoiceShortcut:(id)a3;
- (id)description;
- (id)intent;
- (id)userActivity;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INVoiceShortcut

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INVoiceShortcut *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(INVoiceShortcut *)self invocationPhrase];
  [v4 encodeObject:v6 forKey:@"invocationPhrase"];

  v7 = [(INVoiceShortcut *)self shortcut];
  [v4 encodeObject:v7 forKey:@"shortcut"];
}

- (INVoiceShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"invocationPhrase"];
    invocationPhrase = v5->_invocationPhrase;
    v5->_invocationPhrase = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    shortcut = v5->_shortcut;
    v5->_shortcut = v13;

    v15 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(INVoiceShortcut *)self identifier];
      v7 = [(INVoiceShortcut *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(INVoiceShortcut *)self invocationPhrase];
        v9 = [(INVoiceShortcut *)v5 invocationPhrase];
        if ([v8 isEqual:v9])
        {
          v10 = [(INVoiceShortcut *)self shortcut];
          v11 = [(INVoiceShortcut *)v5 shortcut];
          v12 = [v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p id: %@, phrase: %@, shortcut: %@>", v5, self, self->_identifier, self->_invocationPhrase, self->_shortcut];

  return v6;
}

- (id)_initWithVCVoiceShortcut:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 phrase];
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v7 = [v4 identifier];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [v4 shortcut];
  if (v9)
  {
    self = [(INVoiceShortcut *)self _initWithIdentifier:v8 invocationPhrase:v5 shortcut:v9];
    v10 = self;
  }

  else
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[INVoiceShortcut _initWithVCVoiceShortcut:]";
      v16 = 2112;
      v17 = v4;
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s Unexpectedly got nil INShortcut for voice shortcut %@", &v14, 0x16u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_initWithIdentifier:(id)a3 invocationPhrase:(id)a4 shortcut:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = INVoiceShortcut;
  v12 = [(INVoiceShortcut *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v14 = [v10 copy];
    invocationPhrase = v13->_invocationPhrase;
    v13->_invocationPhrase = v14;

    objc_storeStrong(&v13->_shortcut, a5);
  }

  return v13;
}

- (id)userActivity
{
  v2 = [(INVoiceShortcut *)self shortcut];
  v3 = [v2 userActivity];

  return v3;
}

- (id)intent
{
  v2 = [(INVoiceShortcut *)self shortcut];
  v3 = [v2 intent];

  return v3;
}

- (INVoiceShortcut)initWithUserActivity:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v10 init];
  if (v5)
  {
    v6 = [[INShortcut alloc] initWithUserActivity:v4];
    shortcut = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = v5;
  }

  return v5;
}

- (INVoiceShortcut)initWithIntent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v10 init];
  if (v5)
  {
    v6 = [[INShortcut alloc] initWithIntent:v4];
    shortcut = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = v5;
  }

  return v5;
}

@end