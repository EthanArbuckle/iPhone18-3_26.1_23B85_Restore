@interface CXVoicemailUpdate
- (CXVoicemailUpdate)initWithCoder:(id)coder;
- (CXVoicemailUpdate)initWithVoicemailUUID:(id)d;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioFileURL:(id)l;
- (void)setDateReceived:(id)received;
- (void)setSender:(id)sender;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXVoicemailUpdate

- (CXVoicemailUpdate)initWithVoicemailUUID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CXVoicemailUpdate;
  v5 = [(CXVoicemailUpdate *)&v11 init];
  if (v5)
  {
    if (!dCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXVoicemailUpdate initWithVoicemailUUID:]", @"voicemailUUID"}];
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    v8 = [dCopy copy];
    voicemailUUID = v5->_voicemailUUID;
    v5->_voicemailUUID = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXVoicemailUpdate *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 appendFormat:@" UUID=%@", uUIDString];

  voicemailUUID = [(CXVoicemailUpdate *)self voicemailUUID];
  uUIDString2 = [voicemailUUID UUIDString];
  [v3 appendFormat:@" voicemailUUID=%@", uUIDString2];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    sender = [(CXVoicemailUpdate *)self sender];
    [v3 appendFormat:@" sender=%@", sender];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    dateReceived = [(CXVoicemailUpdate *)self dateReceived];
    [v3 appendFormat:@" dateReceived=%@", dateReceived];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    audioFileURL = [(CXVoicemailUpdate *)self audioFileURL];
    [v3 appendFormat:@" audioFileURL=%@", audioFileURL];
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

- (void)setSender:(id)sender
{
  *&self->_hasSet |= 1u;
  v4 = [sender copy];
  sender = self->_sender;
  self->_sender = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDateReceived:(id)received
{
  *&self->_hasSet |= 2u;
  v4 = [received copy];
  dateReceived = self->_dateReceived;
  self->_dateReceived = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioFileURL:(id)l
{
  *&self->_hasSet |= 4u;
  v4 = [l copy];
  audioFileURL = self->_audioFileURL;
  self->_audioFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  uUID = [(CXVoicemailUpdate *)self UUID];
  v7 = [uUID copyWithZone:zone];
  [copyCopy setUUID:v7];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    copyCopy[12] |= 1u;
    sender = [(CXVoicemailUpdate *)self sender];
    v9 = [sender copyWithZone:zone];
    [copyCopy setSender:v9];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    copyCopy[12] |= 2u;
    dateReceived = [(CXVoicemailUpdate *)self dateReceived];
    v11 = [dateReceived copyWithZone:zone];
    [copyCopy setDateReceived:v11];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    copyCopy[12] |= 4u;
    audioFileURL = [(CXVoicemailUpdate *)self audioFileURL];
    v13 = [audioFileURL copyWithZone:zone];
    [copyCopy setAudioFileURL:v13];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 8) != 0)
  {
    copyCopy[12] |= 8u;
    [copyCopy setPlayed:{-[CXVoicemailUpdate isPlayed](self, "isPlayed")}];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 0x10) != 0)
  {
    copyCopy[12] |= 0x10u;
    [copyCopy setTrashed:{-[CXVoicemailUpdate isTrashed](self, "isTrashed")}];
  }
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  voicemailUUID = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = [voicemailUUID copyWithZone:zone];
  v8 = [v5 initWithVoicemailUUID:v7];

  [(CXVoicemailUpdate *)self updateSanitizedCopy:v8 withZone:zone];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  voicemailUUID = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = [voicemailUUID copyWithZone:zone];
  v8 = [v5 initWithVoicemailUUID:v7];

  [(CXVoicemailUpdate *)self updateCopy:v8 withZone:zone];
  return v8;
}

- (CXVoicemailUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_voicemailUUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = [(CXVoicemailUpdate *)self initWithVoicemailUUID:v7];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_UUID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    UUID = v8->_UUID;
    v8->_UUID = v11;

    v27 = 0;
    v13 = coderCopy;
    v14 = NSStringFromSelector(sel_hasSet);
    v15 = [coderCopy decodeBytesForKey:v14 returnedLength:&v27];

    if (v27 != 4)
    {
      v25 = 0;
      goto LABEL_15;
    }

    v8->_hasSet = *v15;
    if (([(CXVoicemailUpdate *)v8 hasSet]& 1) != 0)
    {
      v16 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"sender"];
      sender = v8->_sender;
      v8->_sender = v17;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 2) != 0)
    {
      v19 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"dateReceived"];
      dateReceived = v8->_dateReceived;
      v8->_dateReceived = v20;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 4) != 0)
    {
      v22 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"audioFileURL"];
      audioFileURL = v8->_audioFileURL;
      v8->_audioFileURL = v23;
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 8) != 0)
    {
      v8->_played = [coderCopy decodeBoolForKey:@"played"];
    }

    if (([(CXVoicemailUpdate *)v8 hasSet]& 0x10) != 0)
    {
      v8->_trashed = [coderCopy decodeBoolForKey:@"trashed"];
    }
  }

  v25 = v8;
LABEL_15:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXVoicemailUpdate *)self UUID];
  v5 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v5];

  voicemailUUID = [(CXVoicemailUpdate *)self voicemailUUID];
  v7 = NSStringFromSelector(sel_voicemailUUID);
  [coderCopy encodeObject:voicemailUUID forKey:v7];

  v8 = NSStringFromSelector(sel_hasSet);
  [coderCopy encodeBytes:&self->_hasSet length:4 forKey:v8];

  if (([(CXVoicemailUpdate *)self hasSet]& 1) != 0)
  {
    sender = [(CXVoicemailUpdate *)self sender];
    [coderCopy encodeObject:sender forKey:@"sender"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 2) != 0)
  {
    dateReceived = [(CXVoicemailUpdate *)self dateReceived];
    [coderCopy encodeObject:dateReceived forKey:@"dateReceived"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 4) != 0)
  {
    audioFileURL = [(CXVoicemailUpdate *)self audioFileURL];
    [coderCopy encodeObject:audioFileURL forKey:@"audioFileURL"];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 8) != 0)
  {
    [coderCopy encodeBool:-[CXVoicemailUpdate isPlayed](self forKey:{"isPlayed"), @"played"}];
  }

  if (([(CXVoicemailUpdate *)self hasSet]& 0x10) != 0)
  {
    [coderCopy encodeBool:-[CXVoicemailUpdate isTrashed](self forKey:{"isTrashed"), @"trashed"}];
  }
}

@end