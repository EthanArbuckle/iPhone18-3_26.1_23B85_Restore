@interface AVMusicTrackEventIterator
- (AVMusicTrackEventIterator)initWithImpl:(MusicTrackEventIteratorImpl *)a3;
- (BOOL)hasNextEvent;
- (BOOL)hasPreviousEvent;
- (BOOL)setEventInfo:(unsigned int)a3 data:(const void *)a4;
- (BOOL)setEventTime:(double)a3;
- (int)nextEvent;
- (int)previousEvent;
- (void)deleteEvent;
- (void)seek:(double)a3;
@end

@implementation AVMusicTrackEventIterator

- (BOOL)hasNextEvent
{
  impl = self->_impl;
  outHasNextEvent = 0;
  HasNextEvent = MusicEventIteratorHasNextEvent(impl->var0, &outHasNextEvent);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 761, "HasNextEvent", "MusicEventIteratorHasNextEvent(mIter, &has)", HasNextEvent, 0);
  return outHasNextEvent != 0;
}

- (BOOL)hasPreviousEvent
{
  impl = self->_impl;
  outHasPrevEvent = 0;
  HasPreviousEvent = MusicEventIteratorHasPreviousEvent(impl->var0, &outHasPrevEvent);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 754, "HasPreviousEvent", "MusicEventIteratorHasPreviousEvent(mIter, &has)", HasPreviousEvent, 0);
  return outHasPrevEvent != 0;
}

- (void)deleteEvent
{
  impl = self->_impl;
  if (MusicTrackEventIteratorImpl::HasCurrentEvent(impl->var0))
  {
    v3 = MusicEventIteratorDeleteEvent(impl->var0);

    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 745, "DeleteEvent", "MusicEventIteratorDeleteEvent(mIter)", v3, 0);
  }
}

- (BOOL)setEventTime:(double)a3
{
  impl = self->_impl;
  HasCurrentEvent = MusicTrackEventIteratorImpl::HasCurrentEvent(*impl);
  if (HasCurrentEvent)
  {
    v6 = MusicEventIteratorSetEventTime(*impl, a3);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 736, "SetEventTime", "MusicEventIteratorSetEventTime(mIter, inTimeStamp)", v6, 0);
  }

  return !HasCurrentEvent;
}

- (BOOL)setEventInfo:(unsigned int)a3 data:(const void *)a4
{
  impl = self->_impl;
  HasCurrentEvent = MusicTrackEventIteratorImpl::HasCurrentEvent(*impl);
  if (HasCurrentEvent)
  {
    v8 = MusicEventIteratorSetEventInfo(*impl, a3, a4);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 727, "SetEventInfo", "MusicEventIteratorSetEventInfo(mIter, inEventType, inEventData)", v8, 0);
  }

  return !HasCurrentEvent;
}

- (int)previousEvent
{
  v2 = MusicEventIteratorPreviousEvent(self->_impl->var0);
  v3 = v2 == 0;
  v4 = v2 == -10856 || v2 == 0;
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 711, "PreviousEvent", "result == noErr || result == kAudioToolboxErr_StartOfTrack", v4);
  return v3;
}

- (int)nextEvent
{
  Event = MusicEventIteratorNextEvent(self->_impl->var0);
  v3 = Event == 0;
  v4 = Event == -10857 || Event == 0;
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 704, "NextEvent", "result == noErr || result == kAudioToolboxErr_EndOfTrack", v4);
  return v3;
}

- (void)seek:(double)a3
{
  v3 = MusicEventIteratorSeek(self->_impl->var0, a3);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 698, "Seek", "MusicEventIteratorSeek(mIter, inTimeStamp)", v3, 0);
}

- (AVMusicTrackEventIterator)initWithImpl:(MusicTrackEventIteratorImpl *)a3
{
  v7.receiver = self;
  v7.super_class = AVMusicTrackEventIterator;
  v4 = [(AVMusicTrackEventIterator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = a3;
  }

  else if (a3)
  {
    DisposeMusicEventIterator(a3->var0);
    MEMORY[0x1BFAF5800](a3, 0x20C4093837F09);
  }

  return v5;
}

@end