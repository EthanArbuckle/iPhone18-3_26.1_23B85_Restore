@interface _AFAudioPlaybackRequestMutation
- (_AFAudioPlaybackRequestMutation)initWithBase:(id)a3;
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
    v2 = self->_UUID;
  }

  else
  {
    v2 = [(AFAudioPlaybackRequest *)self->_base UUID];
  }

  return v2;
}

- (id)getHapticLibraryKey
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_hapticLibraryKey;
  }

  else
  {
    v2 = [(AFAudioPlaybackRequest *)self->_base hapticLibraryKey];
  }

  return v2;
}

- (id)getUserInfo
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_userInfo;
  }

  else
  {
    v2 = [(AFAudioPlaybackRequest *)self->_base userInfo];
  }

  return v2;
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
    v2 = self->_itemData;
  }

  else
  {
    v2 = [(AFAudioPlaybackRequest *)self->_base itemData];
  }

  return v2;
}

- (id)getItemURL
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_itemURL;
  }

  else
  {
    v2 = [(AFAudioPlaybackRequest *)self->_base itemURL];
  }

  return v2;
}

- (_AFAudioPlaybackRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFAudioPlaybackRequestMutation;
  v6 = [(_AFAudioPlaybackRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end