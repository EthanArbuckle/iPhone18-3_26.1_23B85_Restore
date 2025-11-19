@interface PhotosSeparationSharedLibraryParticipant
- (PhotosSeparationSharedLibraryParticipant)initWithShareParticipant:(id)a3;
@end

@implementation PhotosSeparationSharedLibraryParticipant

- (PhotosSeparationSharedLibraryParticipant)initWithShareParticipant:(id)a3
{
  v5 = a3;
  v6 = 1;
  if ([v5 role] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if ([v5 permission] == 3)
  {
    v6 = 2;
  }

  v8 = [v5 emailAddress];
  v9 = [v5 phoneNumber];
  v12.receiver = self;
  v12.super_class = PhotosSeparationSharedLibraryParticipant;
  v10 = [(PhotosSeparationParticipant *)&v12 initWithRole:v7 permission:v6 emailAddress:v8 phoneNumber:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_shareParticipant, a3);
  }

  return v10;
}

@end