@interface CXVoicemail
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVoicemail:(id)a3;
- (CXVoicemail)initWithCoder:(id)a3;
- (CXVoicemail)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXVoicemail

- (CXVoicemail)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CXVoicemail;
  v6 = [(CXVoicemail *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v7;
}

- (CXVoicemail)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXVoicemail *)self initWithUUID:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sender);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    sender = v8->_sender;
    v8->_sender = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_dateReceived);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    dateReceived = v8->_dateReceived;
    v8->_dateReceived = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_audioFileURL);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    audioFileURL = v8->_audioFileURL;
    v8->_audioFileURL = v19;

    v21 = NSStringFromSelector(sel_isPlayed);
    v8->_played = [v4 decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_isTrashed);
    v8->_trashed = [v4 decodeBoolForKey:v22];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemail *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXVoicemail *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXVoicemail *)self dateReceived];
  v10 = NSStringFromSelector(sel_dateReceived);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXVoicemail *)self audioFileURL];
  v12 = NSStringFromSelector(sel_audioFileURL);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXVoicemail *)self isPlayed];
  v14 = NSStringFromSelector(sel_isPlayed);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(CXVoicemail *)self isTrashed];
  v16 = NSStringFromSelector(sel_isTrashed);
  [v4 encodeBool:v15 forKey:v16];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXVoicemail *)self UUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@" UUID=%@", v5];

  v6 = [(CXVoicemail *)self sender];
  [v3 appendFormat:@" sender=%@", v6];

  v7 = [(CXVoicemail *)self dateReceived];
  [v3 appendFormat:@" dateReceived=%@", v7];

  v8 = [(CXVoicemail *)self audioFileURL];
  [v3 appendFormat:@" audioFileURL=%@", v8];

  [v3 appendFormat:@" played=%d", -[CXVoicemail isPlayed](self, "isPlayed")];
  [v3 appendFormat:@" trashed=%d", -[CXVoicemail isTrashed](self, "isTrashed")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXVoicemail *)self isEqualToVoicemail:v4];

  return v5;
}

- (BOOL)isEqualToVoicemail:(id)a3
{
  v4 = a3;
  v5 = [(CXVoicemail *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(CXVoicemail *)self sender];
    v8 = [v4 sender];
    if (v7 | v8 && ![v7 isEqual:v8])
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v9 = [(CXVoicemail *)self dateReceived];
      v10 = [v4 dateReceived];
      if (v9 | v10 && ![v9 isEqual:v10])
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v11 = [(CXVoicemail *)self audioFileURL];
        v12 = [v4 audioFileURL];
        if (v11 | v12 && ![v11 isEqual:v12])
        {
          LOBYTE(v14) = 0;
        }

        else
        {
          v17 = v9;
          v13 = [(CXVoicemail *)self isPlayed];
          if (v13 == [v4 isPlayed])
          {
            v15 = [(CXVoicemail *)self isTrashed];
            v14 = v15 ^ [v4 isTrashed] ^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          v9 = v17;
        }
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(CXVoicemail *)self UUID];
  v4 = [v3 hash];
  v5 = [(CXVoicemail *)self sender];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXVoicemail *)self dateReceived];
  v8 = [v7 hash];
  v9 = [(CXVoicemail *)self audioFileURL];
  v10 = v6 ^ v8 ^ [v9 hash];
  if ([(CXVoicemail *)self isPlayed])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  if ([(CXVoicemail *)self isTrashed])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  v13 = v11 ^ v12;

  return v10 ^ v13;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v9 = a3;
  [(CXVoicemail *)self updateSanitizedCopy:v9 withZone:a4];
  v6 = [(CXVoicemail *)self sender];
  [v9 setSender:v6];

  v7 = [(CXVoicemail *)self dateReceived];
  [v9 setDateReceived:v7];

  v8 = [(CXVoicemail *)self audioFileURL];
  [v9 setAudioFileURL:v8];

  [v9 setPlayed:{-[CXVoicemail isPlayed](self, "isPlayed")}];
  [v9 setTrashed:{-[CXVoicemail isTrashed](self, "isTrashed")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXVoicemail *)self UUID];
  v7 = [v5 initWithUUID:v6];

  [(CXVoicemail *)self updateCopy:v7 withZone:a3];
  return v7;
}

@end