@interface _AFAudioPlaybackRequestMutation
- (_AFAudioPlaybackRequestMutation)initWithBase:(id)base;
- (double)getFadeInDuration;
- (double)getFadeOutDuration;
- (float)getVolume;
- (id)getHapticLibraryKey;
- (id)getItemData;
- (id)getItemURL;
- (id)getUUID;
- (id)getUserInfo;
- (int64_t)getNumberOfLoops;
@end

@implementation _AFAudioPlaybackRequestMutation

- (id)getUUID
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    uUID = self->_UUID;
  }

  else
  {
    uUID = [(AFAudioPlaybackRequest *)self->_base UUID];
  }

  return uUID;
}

- (id)getHapticLibraryKey
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    hapticLibraryKey = self->_hapticLibraryKey;
  }

  else
  {
    hapticLibraryKey = [(AFAudioPlaybackRequest *)self->_base hapticLibraryKey];
  }

  return hapticLibraryKey;
}

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    userInfo = self->_userInfo;
  }

  else
  {
    userInfo = [(AFAudioPlaybackRequest *)self->_base userInfo];
  }

  return userInfo;
}

- (double)getFadeOutDuration
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_fadeOutDuration;
  }

  [(AFAudioPlaybackRequest *)self->_base fadeOutDuration];
  return result;
}

- (double)getFadeInDuration
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_fadeInDuration;
  }

  [(AFAudioPlaybackRequest *)self->_base fadeInDuration];
  return result;
}

- (float)getVolume
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_volume;
  }

  [(AFAudioPlaybackRequest *)self->_base volume];
  return result;
}

- (int64_t)getNumberOfLoops
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_numberOfLoops;
  }

  else
  {
    return [(AFAudioPlaybackRequest *)self->_base numberOfLoops];
  }
}

- (id)getItemData
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    itemData = self->_itemData;
  }

  else
  {
    itemData = [(AFAudioPlaybackRequest *)self->_base itemData];
  }

  return itemData;
}

- (id)getItemURL
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    itemURL = self->_itemURL;
  }

  else
  {
    itemURL = [(AFAudioPlaybackRequest *)self->_base itemURL];
  }

  return itemURL;
}

- (_AFAudioPlaybackRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAudioPlaybackRequestMutation;
  v6 = [(_AFAudioPlaybackRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end