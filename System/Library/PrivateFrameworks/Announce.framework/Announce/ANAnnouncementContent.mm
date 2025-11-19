@interface ANAnnouncementContent
+ (id)contentWithAudioFileURL:(id)a3;
- (ANAnnouncementContent)init;
- (ANAnnouncementContent)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANAnnouncementContent

- (ANAnnouncementContent)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementContent;
  return [(ANAnnouncementContent *)&v3 init];
}

+ (id)contentWithAudioFileURL:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setAudioFileURL:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANAnnouncementContent *)self audioFileURL];
  v5 = [(ANAnnouncementContent *)self transcription];
  v6 = [v5 length];
  v7 = [(ANAnnouncementContent *)self endpointIdentifier];
  v8 = [(ANAnnouncementContent *)self homeKitUserIdentifier];
  v9 = [v3 stringWithFormat:@"Audio File = %@, Transcription Length = %lu, EndpointID = %@, HomeKitUserID = %@", v4, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  audioFileURL = self->_audioFileURL;
  v5 = a3;
  [v5 encodeObject:audioFileURL forKey:@"AudioFileURL"];
  [v5 encodeObject:self->_transcription forKey:@"Transcription"];
  [v5 encodeObject:self->_endpointIdentifier forKey:@"EndpointIdentifier"];
  [v5 encodeObject:self->_homeKitUserIdentifier forKey:@"HomeKitUserIdentifier"];
}

- (ANAnnouncementContent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ANAnnouncementContent;
  v5 = [(ANAnnouncementContent *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileURL"];
    audioFileURL = v5->_audioFileURL;
    v5->_audioFileURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Transcription"];
    transcription = v5->_transcription;
    v5->_transcription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EndpointIdentifier"];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HomeKitUserIdentifier"];
    homeKitUserIdentifier = v5->_homeKitUserIdentifier;
    v5->_homeKitUserIdentifier = v12;
  }

  return v5;
}

@end