@interface INVoiceShortcut
- (BOOL)isEqual:(id)equal;
- (INVoiceShortcut)initWithCoder:(id)coder;
- (INVoiceShortcut)initWithIntent:(id)intent;
- (INVoiceShortcut)initWithUserActivity:(id)activity;
- (id)_initWithIdentifier:(id)identifier invocationPhrase:(id)phrase shortcut:(id)shortcut;
- (id)_initWithVCVoiceShortcut:(id)shortcut;
- (id)description;
- (id)intent;
- (id)userActivity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INVoiceShortcut

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(INVoiceShortcut *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  invocationPhrase = [(INVoiceShortcut *)self invocationPhrase];
  [coderCopy encodeObject:invocationPhrase forKey:@"invocationPhrase"];

  shortcut = [(INVoiceShortcut *)self shortcut];
  [coderCopy encodeObject:shortcut forKey:@"shortcut"];
}

- (INVoiceShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"invocationPhrase"];
    invocationPhrase = v5->_invocationPhrase;
    v5->_invocationPhrase = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    shortcut = v5->_shortcut;
    v5->_shortcut = v13;

    v15 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(INVoiceShortcut *)self identifier];
      identifier2 = [(INVoiceShortcut *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        invocationPhrase = [(INVoiceShortcut *)self invocationPhrase];
        invocationPhrase2 = [(INVoiceShortcut *)v5 invocationPhrase];
        if ([invocationPhrase isEqual:invocationPhrase2])
        {
          shortcut = [(INVoiceShortcut *)self shortcut];
          shortcut2 = [(INVoiceShortcut *)v5 shortcut];
          v12 = [shortcut isEqual:shortcut2];
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

- (id)_initWithVCVoiceShortcut:(id)shortcut
{
  v18 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  phrase = [shortcutCopy phrase];
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [shortcutCopy identifier];
  v8 = [v6 initWithUUIDString:identifier];

  shortcut = [shortcutCopy shortcut];
  if (shortcut)
  {
    self = [(INVoiceShortcut *)self _initWithIdentifier:v8 invocationPhrase:phrase shortcut:shortcut];
    selfCopy = self;
  }

  else
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[INVoiceShortcut _initWithVCVoiceShortcut:]";
      v16 = 2112;
      v17 = shortcutCopy;
      _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, "%s Unexpectedly got nil INShortcut for voice shortcut %@", &v14, 0x16u);
    }

    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)_initWithIdentifier:(id)identifier invocationPhrase:(id)phrase shortcut:(id)shortcut
{
  identifierCopy = identifier;
  phraseCopy = phrase;
  shortcutCopy = shortcut;
  v17.receiver = self;
  v17.super_class = INVoiceShortcut;
  v12 = [(INVoiceShortcut *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v14 = [phraseCopy copy];
    invocationPhrase = v13->_invocationPhrase;
    v13->_invocationPhrase = v14;

    objc_storeStrong(&v13->_shortcut, shortcut);
  }

  return v13;
}

- (id)userActivity
{
  shortcut = [(INVoiceShortcut *)self shortcut];
  userActivity = [shortcut userActivity];

  return userActivity;
}

- (id)intent
{
  shortcut = [(INVoiceShortcut *)self shortcut];
  intent = [shortcut intent];

  return intent;
}

- (INVoiceShortcut)initWithUserActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v10 init];
  if (v5)
  {
    v6 = [[INShortcut alloc] initWithUserActivity:activityCopy];
    shortcut = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = v5;
  }

  return v5;
}

- (INVoiceShortcut)initWithIntent:(id)intent
{
  intentCopy = intent;
  v10.receiver = self;
  v10.super_class = INVoiceShortcut;
  v5 = [(INVoiceShortcut *)&v10 init];
  if (v5)
  {
    v6 = [[INShortcut alloc] initWithIntent:intentCopy];
    shortcut = v5->_shortcut;
    v5->_shortcut = v6;

    v8 = v5;
  }

  return v5;
}

@end