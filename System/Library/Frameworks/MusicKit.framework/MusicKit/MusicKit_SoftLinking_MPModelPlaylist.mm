@interface MusicKit_SoftLinking_MPModelPlaylist
+ (int64_t)_underlyingMediaSharingModeForSharingMode:(int64_t)mode;
+ (int64_t)_underlyingModelSharingModeForSharingMode:(int64_t)mode;
+ (int64_t)playlistTypeForRawValue:(int64_t)value;
+ (int64_t)rawValueForCollaboratorStatus:(unint64_t)status;
+ (int64_t)rawValueForPlaylistType:(int64_t)type;
+ (int64_t)rawValueForSharingMode:(int64_t)mode;
+ (int64_t)sharingModeForRawValue:(int64_t)value;
+ (unint64_t)collaboratorStatusForRawValue:(int64_t)value;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylist

+ (int64_t)playlistTypeForRawValue:(int64_t)value
{
  if ((value - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_217756648[value - 1];
  }
}

+ (int64_t)rawValueForPlaylistType:(int64_t)type
{
  if ((type - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_217756690[type - 1];
  }
}

+ (int64_t)sharingModeForRawValue:(int64_t)value
{
  if (value == 2)
  {
    return 2;
  }

  else
  {
    return value == 1;
  }
}

+ (int64_t)rawValueForSharingMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)_underlyingMediaSharingModeForSharingMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (int64_t)_underlyingModelSharingModeForSharingMode:(int64_t)mode
{
  if (mode == 2)
  {
    return 2;
  }

  else
  {
    return mode == 1;
  }
}

+ (unint64_t)collaboratorStatusForRawValue:(int64_t)value
{
  if ((value - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForCollaboratorStatus:(unint64_t)status
{
  if (status - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

@end