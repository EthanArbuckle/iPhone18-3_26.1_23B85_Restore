@interface _MSAvatarImage
- (_MSAvatarImage)initWithParticipantHandle:(id)a3 avatarImage:(id)a4;
- (_MSAvatarImage)initWithParticipantIdentifier:(id)a3 avatarImage:(id)a4;
@end

@implementation _MSAvatarImage

- (_MSAvatarImage)initWithParticipantIdentifier:(id)a3 avatarImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MSAvatarImage;
  v9 = [(_MSAvatarImage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participantIdentifier, a3);
    participantHandle = v10->_participantHandle;
    v10->_participantHandle = 0;

    objc_storeStrong(&v10->_avatarImage, a4);
  }

  return v10;
}

- (_MSAvatarImage)initWithParticipantHandle:(id)a3 avatarImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _MSAvatarImage;
  v9 = [(_MSAvatarImage *)&v13 init];
  v10 = v9;
  if (v9)
  {
    participantIdentifier = v9->_participantIdentifier;
    v9->_participantIdentifier = 0;

    objc_storeStrong(&v10->_participantHandle, a3);
    objc_storeStrong(&v10->_avatarImage, a4);
  }

  return v10;
}

@end