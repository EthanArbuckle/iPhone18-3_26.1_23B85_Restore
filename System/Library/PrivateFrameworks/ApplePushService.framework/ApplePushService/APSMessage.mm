@interface APSMessage
- (APSMessage)initWithCoder:(id)coder;
- (APSMessage)initWithDictionary:(id)dictionary xpcMessage:(id)message;
- (APSMessage)initWithTopic:(id)topic userInfo:(id)info;
- (id)dictionaryRepresentation;
- (id)instanceObjectForKey:(id)key;
- (id)objectForKey:(id)key;
- (unint64_t)identifier;
- (unint64_t)sendRTT;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(unint64_t)identifier;
- (void)setInstanceObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setSendRTT:(unint64_t)t;
@end

@implementation APSMessage

- (unint64_t)identifier
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageIdentifier"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)dictionaryRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_plist copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (APSMessage)initWithDictionary:(id)dictionary xpcMessage:(id)message
{
  dictionaryCopy = dictionary;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = APSMessage;
  v8 = [(APSMessage *)&v12 init];
  if (v8)
  {
    if (dictionaryCopy)
    {
      v9 = [dictionaryCopy mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    plist = v8->_plist;
    v8->_plist = v9;

    if (messageCopy)
    {
      v8->_xpcMessage = messageCopy;
    }

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (APSMessage)initWithTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  v8 = infoCopy;
  if (topicCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"null topic"];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"null userInfo"];
LABEL_3:
  v13.receiver = self;
  v13.super_class = APSMessage;
  v9 = [(APSMessage *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    plist = v9->_plist;
    v9->_plist = v10;

    v9->_lock._os_unfair_lock_opaque = 0;
    [(APSMessage *)v9 setTopic:topicCopy];
    [(APSMessage *)v9 setUserInfo:v8];
  }

  return v9;
}

- (APSMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = APSMessage;
  v5 = [(APSMessage *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"plist"];
    plist = v5->_plist;
    v5->_plist = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_plist copy];
  os_unfair_lock_unlock(&self->_lock);
  [coderCopy encodeObject:v5 forKey:@"plist"];
}

- (void)setIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageIdentifier"];
}

- (unint64_t)sendRTT
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageRTT"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setSendRTT:(unint64_t)t
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:t];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageRTT"];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_plist objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  if (objectCopy)
  {
    [(NSMutableDictionary *)self->_plist setObject:objectCopy forKey:keyCopy];
  }

  else if (keyCopy)
  {
    [(NSMutableDictionary *)self->_plist removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)instanceObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setInstanceObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  if (objectCopy)
  {
    properties = self->_properties;
    if (!properties)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_properties;
      self->_properties = v8;

      properties = self->_properties;
    }

    [(NSMutableDictionary *)properties setObject:objectCopy forKey:keyCopy];
  }

  else if (keyCopy)
  {
    [(NSMutableDictionary *)self->_properties removeObjectForKey:keyCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end