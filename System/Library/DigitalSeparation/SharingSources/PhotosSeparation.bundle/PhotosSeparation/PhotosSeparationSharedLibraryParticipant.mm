@interface PhotosSeparationSharedLibraryParticipant
- (PhotosSeparationSharedLibraryParticipant)initWithShareParticipant:(id)participant;
@end

@implementation PhotosSeparationSharedLibraryParticipant

- (PhotosSeparationSharedLibraryParticipant)initWithShareParticipant:(id)participant
{
  participantCopy = participant;
  v6 = 1;
  if ([participantCopy role] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if ([participantCopy permission] == 3)
  {
    v6 = 2;
  }

  emailAddress = [participantCopy emailAddress];
  phoneNumber = [participantCopy phoneNumber];
  v12.receiver = self;
  v12.super_class = PhotosSeparationSharedLibraryParticipant;
  v10 = [(PhotosSeparationParticipant *)&v12 initWithRole:v7 permission:v6 emailAddress:emailAddress phoneNumber:phoneNumber];

  if (v10)
  {
    objc_storeStrong(&v10->_shareParticipant, participant);
  }

  return v10;
}

@end