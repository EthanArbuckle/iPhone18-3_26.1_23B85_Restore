@interface ANAnnouncementContent
+ (id)contentWithAudioFileURL:(id)l;
- (ANAnnouncementContent)init;
- (ANAnnouncementContent)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANAnnouncementContent

- (ANAnnouncementContent)init
{
  v3.receiver = self;
  v3.super_class = ANAnnouncementContent;
  return [(ANAnnouncementContent *)&v3 init];
}

+ (id)contentWithAudioFileURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setAudioFileURL:lCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  audioFileURL = [(ANAnnouncementContent *)self audioFileURL];
  transcription = [(ANAnnouncementContent *)self transcription];
  v6 = [transcription length];
  endpointIdentifier = [(ANAnnouncementContent *)self endpointIdentifier];
  homeKitUserIdentifier = [(ANAnnouncementContent *)self homeKitUserIdentifier];
  v9 = [v3 stringWithFormat:@"Audio File = %@, Transcription Length = %lu, EndpointID = %@, HomeKitUserID = %@", audioFileURL, v6, endpointIdentifier, homeKitUserIdentifier];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  audioFileURL = self->_audioFileURL;
  coderCopy = coder;
  [coderCopy encodeObject:audioFileURL forKey:@"AudioFileURL"];
  [coderCopy encodeObject:self->_transcription forKey:@"Transcription"];
  [coderCopy encodeObject:self->_endpointIdentifier forKey:@"EndpointIdentifier"];
  [coderCopy encodeObject:self->_homeKitUserIdentifier forKey:@"HomeKitUserIdentifier"];
}

- (ANAnnouncementContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ANAnnouncementContent;
  v5 = [(ANAnnouncementContent *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AudioFileURL"];
    audioFileURL = v5->_audioFileURL;
    v5->_audioFileURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Transcription"];
    transcription = v5->_transcription;
    v5->_transcription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndpointIdentifier"];
    endpointIdentifier = v5->_endpointIdentifier;
    v5->_endpointIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HomeKitUserIdentifier"];
    homeKitUserIdentifier = v5->_homeKitUserIdentifier;
    v5->_homeKitUserIdentifier = v12;
  }

  return v5;
}

@end