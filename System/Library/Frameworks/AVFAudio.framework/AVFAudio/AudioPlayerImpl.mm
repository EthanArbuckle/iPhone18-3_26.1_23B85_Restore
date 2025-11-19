@interface AudioPlayerImpl
- (AudioPlayerImpl)init;
- (void)dealloc;
@end

@implementation AudioPlayerImpl

- (AudioPlayerImpl)init
{
  v7.receiver = self;
  v7.super_class = AudioPlayerImpl;
  v2 = [(AudioPlayerImpl *)&v7 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    v3->_channelAssignments = 0;
    *&v3->_data = 0u;
    *&v3->_actualSettings = 0u;
    v4 = [MEMORY[0x1E698D708] sharedInstance];
    v3->_audioSession = v4;
    v5 = v4;
    v3->_localPlayer = 0;
    v3->_playRetain = 0;
  }

  return v3;
}

- (void)dealloc
{
  localPlayer = self->_localPlayer;
  self->_localPlayer = 0;
  __dmb(0xBu);
  if (localPlayer)
  {
    *(localPlayer + 313) = 1;
    pthread_mutex_lock(&avap_mutex);
    AVAudioPlayerCpp::disposeQueue(localPlayer, 1);
    v4 = *(localPlayer + 20);
    if (v4)
    {
      AudioFileClose(v4);
    }

    AVAudioPlayerCpp::freeChannelAssignments(localPlayer);
    free(*(localPlayer + 48));
    free(*(localPlayer + 16));
    free(*(localPlayer + 18));

    *(localPlayer + 64) = 0;
    if (*localPlayer)
    {
      CFRelease(*localPlayer);
    }

    v5 = *(localPlayer + 1);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(localPlayer + 2);
    if (v6)
    {
      CFRelease(v6);
    }

    pthread_mutex_unlock(&avap_mutex);
    v7 = *(localPlayer + 67);
    if (v7)
    {
      CFRelease(v7);
    }

    MEMORY[0x1BFAF5800](localPlayer, 0x10F0C4015DEEB49);
  }

  objc_storeWeak(&self->_delegate, 0);

  self->_data = 0;
  self->_url = 0;

  self->_actualSettings = 0;
  self->_format = 0;

  self->_channelAssignments = 0;
  self->_audioSession = 0;
  gcd = self->_gcd;
  if (gcd)
  {
    dispatch_release(gcd);
    self->_gcd = 0;
  }

  v9.receiver = self;
  v9.super_class = AudioPlayerImpl;
  [(AudioPlayerImpl *)&v9 dealloc];
}

@end