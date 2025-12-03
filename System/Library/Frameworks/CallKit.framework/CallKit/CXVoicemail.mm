@interface CXVoicemail
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVoicemail:(id)voicemail;
- (CXVoicemail)initWithCoder:(id)coder;
- (CXVoicemail)initWithUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXVoicemail

- (CXVoicemail)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CXVoicemail;
  v6 = [(CXVoicemail *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

- (CXVoicemail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = [(CXVoicemail *)self initWithUUID:v7];

  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_sender);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    sender = v8->_sender;
    v8->_sender = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_dateReceived);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    dateReceived = v8->_dateReceived;
    v8->_dateReceived = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_audioFileURL);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    audioFileURL = v8->_audioFileURL;
    v8->_audioFileURL = v19;

    v21 = NSStringFromSelector(sel_isPlayed);
    v8->_played = [coderCopy decodeBoolForKey:v21];

    v22 = NSStringFromSelector(sel_isTrashed);
    v8->_trashed = [coderCopy decodeBoolForKey:v22];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXVoicemail *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  sender = [(CXVoicemail *)self sender];
  v8 = NSStringFromSelector(sel_sender);
  [coderCopy encodeObject:sender forKey:v8];

  dateReceived = [(CXVoicemail *)self dateReceived];
  v10 = NSStringFromSelector(sel_dateReceived);
  [coderCopy encodeObject:dateReceived forKey:v10];

  audioFileURL = [(CXVoicemail *)self audioFileURL];
  v12 = NSStringFromSelector(sel_audioFileURL);
  [coderCopy encodeObject:audioFileURL forKey:v12];

  isPlayed = [(CXVoicemail *)self isPlayed];
  v14 = NSStringFromSelector(sel_isPlayed);
  [coderCopy encodeBool:isPlayed forKey:v14];

  isTrashed = [(CXVoicemail *)self isTrashed];
  v16 = NSStringFromSelector(sel_isTrashed);
  [coderCopy encodeBool:isTrashed forKey:v16];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXVoicemail *)self UUID];
  uUIDString = [uUID UUIDString];
  [v3 appendFormat:@" UUID=%@", uUIDString];

  sender = [(CXVoicemail *)self sender];
  [v3 appendFormat:@" sender=%@", sender];

  dateReceived = [(CXVoicemail *)self dateReceived];
  [v3 appendFormat:@" dateReceived=%@", dateReceived];

  audioFileURL = [(CXVoicemail *)self audioFileURL];
  [v3 appendFormat:@" audioFileURL=%@", audioFileURL];

  [v3 appendFormat:@" played=%d", -[CXVoicemail isPlayed](self, "isPlayed")];
  [v3 appendFormat:@" trashed=%d", -[CXVoicemail isTrashed](self, "isTrashed")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXVoicemail *)self isEqualToVoicemail:equalCopy];

  return v5;
}

- (BOOL)isEqualToVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  uUID = [(CXVoicemail *)self UUID];
  uUID2 = [voicemailCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    sender = [(CXVoicemail *)self sender];
    sender2 = [voicemailCopy sender];
    if (sender | sender2 && ![sender isEqual:sender2])
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      dateReceived = [(CXVoicemail *)self dateReceived];
      dateReceived2 = [voicemailCopy dateReceived];
      if (dateReceived | dateReceived2 && ![dateReceived isEqual:dateReceived2])
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        audioFileURL = [(CXVoicemail *)self audioFileURL];
        audioFileURL2 = [voicemailCopy audioFileURL];
        if (audioFileURL | audioFileURL2 && ![audioFileURL isEqual:audioFileURL2])
        {
          LOBYTE(v14) = 0;
        }

        else
        {
          v17 = dateReceived;
          isPlayed = [(CXVoicemail *)self isPlayed];
          if (isPlayed == [voicemailCopy isPlayed])
          {
            isTrashed = [(CXVoicemail *)self isTrashed];
            v14 = isTrashed ^ [voicemailCopy isTrashed] ^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          dateReceived = v17;
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
  uUID = [(CXVoicemail *)self UUID];
  v4 = [uUID hash];
  sender = [(CXVoicemail *)self sender];
  v6 = [sender hash] ^ v4;
  dateReceived = [(CXVoicemail *)self dateReceived];
  v8 = [dateReceived hash];
  audioFileURL = [(CXVoicemail *)self audioFileURL];
  v10 = v6 ^ v8 ^ [audioFileURL hash];
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

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXVoicemail *)self updateSanitizedCopy:copyCopy withZone:zone];
  sender = [(CXVoicemail *)self sender];
  [copyCopy setSender:sender];

  dateReceived = [(CXVoicemail *)self dateReceived];
  [copyCopy setDateReceived:dateReceived];

  audioFileURL = [(CXVoicemail *)self audioFileURL];
  [copyCopy setAudioFileURL:audioFileURL];

  [copyCopy setPlayed:{-[CXVoicemail isPlayed](self, "isPlayed")}];
  [copyCopy setTrashed:{-[CXVoicemail isTrashed](self, "isTrashed")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  uUID = [(CXVoicemail *)self UUID];
  v7 = [v5 initWithUUID:uUID];

  [(CXVoicemail *)self updateCopy:v7 withZone:zone];
  return v7;
}

@end