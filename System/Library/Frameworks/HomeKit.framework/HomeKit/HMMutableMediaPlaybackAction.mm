@interface HMMutableMediaPlaybackAction
- (void)setMediaProfiles:(id)profiles;
- (void)setPlaybackArchive:(id)archive;
- (void)setState:(int64_t)state;
- (void)setVolume:(id)volume;
@end

@implementation HMMutableMediaPlaybackAction

- (void)setPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  os_unfair_lock_lock_with_options();
  playbackArchive = self->super._playbackArchive;
  self->super._playbackArchive = archiveCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setVolume:(id)volume
{
  volumeCopy = volume;
  os_unfair_lock_lock_with_options();
  v4 = [volumeCopy copy];
  volume = self->super._volume;
  self->super._volume = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->super._state = state;

  os_unfair_lock_unlock(&self->super._lock);
}

- (void)setMediaProfiles:(id)profiles
{
  profilesCopy = profiles;
  os_unfair_lock_lock_with_options();
  v4 = [profilesCopy copy];
  mediaProfiles = self->super._mediaProfiles;
  self->super._mediaProfiles = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

@end