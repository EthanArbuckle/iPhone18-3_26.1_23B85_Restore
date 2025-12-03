@interface IPCShieldInfoMessage
+ (id)ipcMessageForShieldInfo:(id)info;
- (IPCShieldInfoMessage)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryValue;
- (id)shieldInfo;
@end

@implementation IPCShieldInfoMessage

+ (id)ipcMessageForShieldInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(IPCShieldInfoMessage);
  -[IPCShieldInfoMessage setShieldID:](v4, "setShieldID:", [infoCopy shieldID]);
  shieldStringID = [infoCopy shieldStringID];
  [(IPCShieldInfoMessage *)v4 setShieldStringID:shieldStringID];

  shieldText = [infoCopy shieldText];

  [(IPCShieldInfoMessage *)v4 setShieldText:shieldText];

  return v4;
}

- (id)shieldInfo
{
  shieldID = [(IPCShieldInfoMessage *)self shieldID];
  shieldStringID = [(IPCShieldInfoMessage *)self shieldStringID];
  shieldText = [(IPCShieldInfoMessage *)self shieldText];
  v6 = [NavSignShieldInfo shieldWithID:shieldID stringID:shieldStringID text:shieldText];

  return v6;
}

- (IPCShieldInfoMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IPCShieldInfoMessage;
  v5 = [(IPCMessageObject *)&v10 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"kIPCShieldInfoMessageShieldIDKey"];
    -[IPCShieldInfoMessage setShieldID:](v5, "setShieldID:", [v6 integerValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"kIPCShieldInfoMessageShieldStringIDKey"];
    [(IPCShieldInfoMessage *)v5 setShieldStringID:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"kIPCShieldInfoMessageShieldTextKey"];
    [(IPCShieldInfoMessage *)v5 setShieldText:v8];
  }

  return v5;
}

- (id)dictionaryValue
{
  v12.receiver = self;
  v12.super_class = IPCShieldInfoMessage;
  dictionaryValue = [(IPCMessageObject *)&v12 dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  v5 = [NSNumber numberWithInt:[(IPCShieldInfoMessage *)self shieldID]];
  [v4 setObject:v5 forKeyedSubscript:@"kIPCShieldInfoMessageShieldIDKey"];

  shieldStringID = [(IPCShieldInfoMessage *)self shieldStringID];
  v7 = [shieldStringID copy];
  [v4 setObject:v7 forKeyedSubscript:@"kIPCShieldInfoMessageShieldStringIDKey"];

  shieldText = [(IPCShieldInfoMessage *)self shieldText];
  v9 = [shieldText copy];
  [v4 setObject:v9 forKeyedSubscript:@"kIPCShieldInfoMessageShieldTextKey"];

  v10 = [v4 copy];

  return v10;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = IPCShieldInfoMessage;
  v3 = [(IPCShieldInfoMessage *)&v9 description];
  v4 = [NSNumber numberWithInt:[(IPCShieldInfoMessage *)self shieldID]];
  shieldStringID = [(IPCShieldInfoMessage *)self shieldStringID];
  shieldText = [(IPCShieldInfoMessage *)self shieldText];
  v7 = [NSString stringWithFormat:@"%@             shieldID : {%@}             shieldStringID : {%@}             shieldText : {%@}", v3, v4, shieldStringID, shieldText];

  return v7;
}

@end