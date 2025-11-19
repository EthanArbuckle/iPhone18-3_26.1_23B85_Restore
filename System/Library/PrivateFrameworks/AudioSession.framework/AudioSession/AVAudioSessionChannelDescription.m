@interface AVAudioSessionChannelDescription
+ (id)privateCreate:(id)a3 portUID:(id)a4 channelNumber:(unsigned int)a5;
+ (id)privateCreateArray:(id)a3 portUID:(id)a4;
- (AVAudioSessionChannelDescription)init;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChannel:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionChannelDescription *)self isEqualToChannel:v5];
  }

  return v6;
}

- (BOOL)isEqualToChannel:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(AVAudioSessionChannelDescription *)self channelName];
    v6 = [(AVAudioSessionChannelDescription *)v4 channelName];
    v7 = [v5 isEqualToString:v6];

    if (v7 & 1) != 0 && (-[AVAudioSessionChannelDescription owningPortUID](self, "owningPortUID"), v8 = objc_claimAutoreleasedReturnValue(), -[AVAudioSessionChannelDescription owningPortUID](v4, "owningPortUID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, (v10))
    {
      v11 = [(AVAudioSessionChannelDescription *)self channelNumber];
      v12 = v11 == [(AVAudioSessionChannelDescription *)v4 channelNumber];
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

+ (id)privateCreate:(id)a3 portUID:(id)a4 channelNumber:(unsigned int)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = objc_alloc_init(AVAudioSessionChannelDescription);
    v11 = [(AVAudioSessionChannelDescription *)v10 privateGetImplementation];
    v12 = *MEMORY[0x1E69B05E8];
    v13 = [v7 objectForKey:v12];

    v14 = *MEMORY[0x1E69B05E0];
    v15 = [v7 objectForKey:v14];

    if (v13)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v13];
      v17 = *v11;
      *v11 = v16;
    }

    if (v9)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v9];
      v19 = *(v11 + 8);
      *(v11 + 8) = v18;
    }

    if (v15)
    {
      *(v11 + 20) = [v15 unsignedIntValue];
    }

    *(v11 + 16) = a5;
  }

  else
  {
    v20 = *avas::client::gSessionClientLog(v8);
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

+ (id)privateCreateArray:(id)a3 portUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (v7 = [v5 count]) != 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndex:v9];
      v11 = v9 + 1;
      v12 = [AVAudioSessionChannelDescription privateCreate:v10 portUID:v6 channelNumber:v9 + 1];
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