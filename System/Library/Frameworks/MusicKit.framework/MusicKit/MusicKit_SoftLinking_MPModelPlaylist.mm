@interface MusicKit_SoftLinking_MPModelPlaylist
+ (int64_t)_underlyingMediaSharingModeForSharingMode:(int64_t)a3;
+ (int64_t)_underlyingModelSharingModeForSharingMode:(int64_t)a3;
+ (int64_t)playlistTypeForRawValue:(int64_t)a3;
+ (int64_t)rawValueForCollaboratorStatus:(unint64_t)a3;
+ (int64_t)rawValueForPlaylistType:(int64_t)a3;
+ (int64_t)rawValueForSharingMode:(int64_t)a3;
+ (int64_t)sharingModeForRawValue:(int64_t)a3;
+ (unint64_t)collaboratorStatusForRawValue:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylist

+ (int64_t)playlistTypeForRawValue:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_217756648[a3 - 1];
  }
}

+ (int64_t)rawValueForPlaylistType:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_217756690[a3 - 1];
  }
}

+ (int64_t)sharingModeForRawValue:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)rawValueForSharingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)_underlyingMediaSharingModeForSharingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)_underlyingModelSharingModeForSharingMode:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (unint64_t)collaboratorStatusForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForCollaboratorStatus:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end