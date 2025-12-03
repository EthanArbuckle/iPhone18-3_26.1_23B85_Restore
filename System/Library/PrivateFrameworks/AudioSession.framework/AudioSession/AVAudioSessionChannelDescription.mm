@interface AVAudioSessionChannelDescription
+ (id)privateCreate:(id)create portUID:(id)d channelNumber:(unsigned int)number;
+ (id)privateCreateArray:(id)array portUID:(id)d;
- (AVAudioSessionChannelDescription)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannel:(id)channel;
- (id)description;
- (void)dealloc;
@end

@implementation AVAudioSessionChannelDescription

- (AVAudioSessionChannelDescription)init
{
  v3.receiver = self;
  v3.super_class = AVAudioSessionChannelDescription;
  if ([(AVAudioSessionChannelDescription *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {

    MEMORY[0x1B26ED410](impl, 0x1080C40CC6EE3FDLL);
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioSessionChannelDescription;
  [(AVAudioSessionChannelDescription *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionChannelDescription *)self isEqualToChannel:v5];
  }

  return v6;
}

- (BOOL)isEqualToChannel:(id)channel
{
  channelCopy = channel;
  if (self == channelCopy)
  {
    v12 = 1;
  }

  else
  {
    channelName = [(AVAudioSessionChannelDescription *)self channelName];
    channelName2 = [(AVAudioSessionChannelDescription *)channelCopy channelName];
    v7 = [channelName isEqualToString:channelName2];

    if (v7 & 1) != 0 && (-[AVAudioSessionChannelDescription owningPortUID](self, "owningPortUID"), v8 = objc_claimAutoreleasedReturnValue(), -[AVAudioSessionChannelDescription owningPortUID](channelCopy, "owningPortUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, (v10))
    {
      channelNumber = [(AVAudioSessionChannelDescription *)self channelNumber];
      v12 = channelNumber == [(AVAudioSessionChannelDescription *)channelCopy channelNumber];
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
  impl = self->_impl;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p, name = %@ label = %u (0x%x); number = %d; port UID = %@>", v6, self, *impl, *(impl + 5), *(impl + 5), *(impl + 4), impl[1]];;

  return v7;
}

+ (id)privateCreate:(id)create portUID:(id)d channelNumber:(unsigned int)number
{
  v27 = *MEMORY[0x1E69E9840];
  createCopy = create;
  dCopy = d;
  v9 = dCopy;
  if (createCopy)
  {
    v10 = objc_alloc_init(AVAudioSessionChannelDescription);
    privateGetImplementation = [(AVAudioSessionChannelDescription *)v10 privateGetImplementation];
    v12 = *MEMORY[0x1E69B05E8];
    v13 = [createCopy objectForKey:v12];

    v14 = *MEMORY[0x1E69B05E0];
    v15 = [createCopy objectForKey:v14];

    if (v13)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v13];
      v17 = *privateGetImplementation;
      *privateGetImplementation = v16;
    }

    if (v9)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v9];
      v19 = *(privateGetImplementation + 8);
      *(privateGetImplementation + 8) = v18;
    }

    if (v15)
    {
      *(privateGetImplementation + 20) = [v15 unsignedIntValue];
    }

    *(privateGetImplementation + 16) = number;
  }

  else
  {
    v20 = *avas::client::gSessionClientLog(dCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "AVAudioSessionChannelImpl.mm";
      v25 = 1024;
      v26 = 155;
      _os_log_impl(&dword_1AC8A4000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected nil channel description", &v23, 0x12u);
    }

    v10 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)privateCreateArray:(id)array portUID:(id)d
{
  arrayCopy = array;
  dCopy = d;
  if (arrayCopy && (v7 = [arrayCopy count]) != 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    v9 = 0;
    do
    {
      v10 = [arrayCopy objectAtIndex:v9];
      v11 = v9 + 1;
      v12 = [AVAudioSessionChannelDescription privateCreate:v10 portUID:dCopy channelNumber:v9 + 1];
      if (v12)
      {
        [v8 insertObject:v12 atIndex:v9];
      }

      ++v9;
    }

    while (v7 != v11);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end