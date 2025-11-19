@interface CXVoicemailUpdate
- (CXVoicemailUpdate)initWithCoder:(id)a3;
- (CXVoicemailUpdate)initWithVoicemailUUID:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioFileURL:(id)a3;
- (void)setDateReceived:(id)a3;
- (void)setSender:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXVoicemailUpdate

- (CXVoicemailUpdate)initWithVoicemailUUID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CXVoicemailUpdate;
  v5 = [(CXVoicemailUpdate *)&v11 init];
  if (v5)
  {
    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXVoicemailUpdate initWithVoicemailUUID:]", @"voicemailUUID"}];
    }

    v6 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [v4 copy];
    voicemailUUID = v5->_voicemailUUID;
    v5->_voicemailUUID = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXVoicemailUpdate *)self UUID];
  v5 = [v4 UUIDString];
  [v3 appendFormat:@" UUID=%@", v5];

  v6 = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = [v6 UUIDString];
  [v3 appendFormat:@" voicemailUUID=%@", v7];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    v8 = [(CXVoicemailUpdate *)self sender];
    [v3 appendFormat:@" sender=%@", v8];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    v9 = [(CXVoicemailUpdate *)self dateReceived];
    [v3 appendFormat:@" dateReceived=%@", v9];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    v10 = [(CXVoicemailUpdate *)self audioFileURL];
    [v3 appendFormat:@" audioFileURL=%@", v10];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 8) != 0)
  {
    [v3 appendFormat:@" played=%d", -[CXVoicemailUpdate isPlayed](self, "isPlayed")];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 0x10) != 0)
  {
    [v3 appendFormat:@" trashed=%d", -[CXVoicemailUpdate isTrashed](self, "isTrashed")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setSender:(id)a3
{
  *&self->_hasSet |= 1u;
  v4 = [a3 copy];
  sender = self->_sender;
  self->_sender = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDateReceived:(id)a3
{
  *&self->_hasSet |= 2u;
  v4 = [a3 copy];
  dateReceived = self->_dateReceived;
  self->_dateReceived = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioFileURL:(id)a3
{
  *&self->_hasSet |= 4u;
  v4 = [a3 copy];
  audioFileURL = self->_audioFileURL;
  self->_audioFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v14 = a3;
  v6 = [(CXVoicemailUpdate *)self UUID];
  v7 = [v6 copyWithZone:a4];
  [v14 setUUID:v7];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    v14[12] |= 1u;
    v8 = [(CXVoicemailUpdate *)self sender];
    v9 = [v8 copyWithZone:a4];
    [v14 setSender:v9];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    v14[12] |= 2u;
    v10 = [(CXVoicemailUpdate *)self dateReceived];
    v11 = [v10 copyWithZone:a4];
    [v14 setDateReceived:v11];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    v14[12] |= 4u;
    v12 = [(CXVoicemailUpdate *)self audioFileURL];
    v13 = [v12 copyWithZone:a4];
    [v14 setAudioFileURL:v13];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 8) != 0)
  {
    v14[12] |= 8u;
    [v14 setPlayed:{-[CXVoicemailUpdate isPlayed](self, "isPlayed")}];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 0x10) != 0)
  {
    v14[12] |= 0x10u;
    [v14 setTrashed:{-[CXVoicemailUpdate isTrashed](self, "isTrashed")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithVoicemailUUID:v7];

  [(CXVoicemailUpdate *)self updateSanitizedCopy:v8 withZone:a3];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = [v6 copyWithZone:a3];
  v8 = [v5 initWithVoicemailUUID:v7];

  [(CXVoicemailUpdate *)self updateCopy:v8 withZone:a3];
  return v8;
}

- (CXVoicemailUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_voicemailUUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = [(CXVoicemailUpdate *)self initWithVoicemailUUID:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_UUID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    UUID = v8->_UUID;
    v8->_UUID = v11;

    v27 = 0;
    v13 = v4;
    v14 = NSStringFromSelector(sel_hasSet);
    v15 = [v4 decodeBytesForKey:v14 returnedLength:&v27];

    if (v27 != 4)
    {
      v25 = 0;
      goto LABEL_15;
    }

    v8->_hasSet = *v15;
    if (([(CXVoicemailUpdate *)v8 hasSet]& 1) != 0)
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"sender"];
      sender = v8->_sender;
      v8->_sender = v17;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 2) != 0)
    {
      v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"dateReceived"];
      dateReceived = v8->_dateReceived;
      v8->_dateReceived = v20;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 4) != 0)
    {
      v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v23 = [v4 decodeObjectOfClasses:v22 forKey:@"audioFileURL"];
      audioFileURL = v8->_audioFileURL;
      v8->_audioFileURL = v23;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 8) != 0)
    {
      v8->_played = [v4 decodeBoolForKey:@"played"];
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 0x10) != 0)
    {
      v8->_trashed = [v4 decodeBoolForKey:@"trashed"];
    }
  }

  v25 = v8;
LABEL_15:

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(CXVoicemailUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [v12 encodeObject:v4 forKey:v5];

  v6 = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = NSStringFromSelector(sel_voicemailUUID);
  [v12 encodeObject:v6 forKey:v7];

  v8 = NSStringFromSelector(sel_hasSet);
  [v12 encodeBytes:&self->_hasSet length:4 forKey:v8];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    v9 = [(CXVoicemailUpdate *)self sender];
    [v12 encodeObject:v9 forKey:@"sender"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    v10 = [(CXVoicemailUpdate *)self dateReceived];
    [v12 encodeObject:v10 forKey:@"dateReceived"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    v11 = [(CXVoicemailUpdate *)self audioFileURL];
    [v12 encodeObject:v11 forKey:@"audioFileURL"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 8) != 0)
  {
    [v12 encodeBool:-[CXVoicemailUpdate isPlayed](self forKey:{"isPlayed"), @"played"}];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 0x10) != 0)
  {
    [v12 encodeBool:-[CXVoicemailUpdate isTrashed](self forKey:{"isTrashed"), @"trashed"}];
  }
}

@end