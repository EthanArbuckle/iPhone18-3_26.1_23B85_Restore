@interface APSMessage
- (APSMessage)initWithCoder:(id)a3;
- (APSMessage)initWithDictionary:(id)a3 xpcMessage:(id)a4;
- (APSMessage)initWithTopic:(id)a3 userInfo:(id)a4;
- (id)dictionaryRepresentation;
- (id)instanceObjectForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (unint64_t)identifier;
- (unint64_t)sendRTT;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(unint64_t)a3;
- (void)setInstanceObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setSendRTT:(unint64_t)a3;
@end

@implementation APSMessage

- (unint64_t)identifier
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageIdentifier"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)dictionaryRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_plist copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (APSMessage)initWithDictionary:(id)a3 xpcMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = APSMessage;
  v8 = [(APSMessage *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 mutableCopy];
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    plist = v8->_plist;
    v8->_plist = v9;

    if (v7)
    {
      v8->_xpcMessage = v7;
    }

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (APSMessage)initWithTopic:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
    [(APSMessage *)v9 setTopic:v6];
    [(APSMessage *)v9 setUserInfo:v8];
  }

  return v9;
}

- (APSMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APSMessage;
  v5 = [(APSMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"plist"];
    plist = v5->_plist;
    v5->_plist = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_plist copy];
  os_unfair_lock_unlock(&self->_lock);
  [v4 encodeObject:v5 forKey:@"plist"];
}

- (void)setIdentifier:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageIdentifier"];
}

- (unint64_t)sendRTT
{
  v2 = [(APSMessage *)self objectForKey:@"APSMessageRTT"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setSendRTT:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(APSMessage *)self setObject:v4 forKey:@"APSMessageRTT"];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_plist objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v7)
  {
    [(NSMutableDictionary *)self->_plist setObject:v7 forKey:v6];
  }

  else if (v6)
  {
    [(NSMutableDictionary *)self->_plist removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)instanceObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setInstanceObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (v10)
  {
    properties = self->_properties;
    if (!properties)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_properties;
      self->_properties = v8;

      properties = self->_properties;
    }

    [(NSMutableDictionary *)properties setObject:v10 forKey:v6];
  }

  else if (v6)
  {
    [(NSMutableDictionary *)self->_properties removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end