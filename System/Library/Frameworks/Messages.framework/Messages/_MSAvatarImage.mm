@interface _MSAvatarImage
- (_MSAvatarImage)initWithParticipantHandle:(id)handle avatarImage:(id)image;
- (_MSAvatarImage)initWithParticipantIdentifier:(id)identifier avatarImage:(id)image;
@end

@implementation _MSAvatarImage

- (_MSAvatarImage)initWithParticipantIdentifier:(id)identifier avatarImage:(id)image
{
  identifierCopy = identifier;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = _MSAvatarImage;
  v9 = [(_MSAvatarImage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participantIdentifier, identifier);
    participantHandle = v10->_participantHandle;
    v10->_participantHandle = 0;

    objc_storeStrong(&v10->_avatarImage, image);
  }

  return v10;
}

- (_MSAvatarImage)initWithParticipantHandle:(id)handle avatarImage:(id)image
{
  handleCopy = handle;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = _MSAvatarImage;
  v9 = [(_MSAvatarImage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    participantIdentifier = v9->_participantIdentifier;
    v9->_participantIdentifier = 0;

    objc_storeStrong(&v10->_participantHandle, handle);
    objc_storeStrong(&v10->_avatarImage, image);
  }

  return v10;
}

@end