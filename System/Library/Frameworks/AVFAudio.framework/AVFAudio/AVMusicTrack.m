@interface AVMusicTrack
- (AVBeatRange)loopRange;
- (AVMusicTimeStamp)offsetTime;
- (AVMusicTrack)initWithImpl:(MusicTrackImpl *)a3;
- (BOOL)isLoopingEnabled;
- (BOOL)isMuted;
- (BOOL)isSoloed;
- (MIDIEndpointRef)destinationMIDIEndpoint;
- (NSInteger)numberOfLoops;
- (NSTimeInterval)lengthInSeconds;
- (NSUInteger)timeResolution;
- (unint64_t)index;
- (void)addEvent:(AVMusicEvent *)event atBeat:(AVMusicTimeStamp)beat;
- (void)clearEventsInRange:(AVBeatRange)range;
- (void)copyAndMergeEventsInRange:(AVBeatRange)range fromTrack:(AVMusicTrack *)sourceTrack mergeAtBeat:(AVMusicTimeStamp)mergeStartBeat;
- (void)copyEventsInRange:(AVBeatRange)range fromTrack:(AVMusicTrack *)sourceTrack insertAtBeat:(AVMusicTimeStamp)insertStartBeat;
- (void)cutEventsInRange:(AVBeatRange)range;
- (void)dealloc;
- (void)doAddAUPresetEvent:(id)a3 atBeat:(double)a4;
- (void)doAddExtendedNoteOnEvent:(id)a3 atBeat:(double)a4;
- (void)doAddExtendedTempoEvent:(id)a3 atBeat:(double)a4;
- (void)doAddMIDIChannelEvent:(id)a3 atBeat:(double)a4;
- (void)doAddMIDIMetaEvent:(id)a3 atBeat:(double)a4;
- (void)doAddMIDINoteEvent:(id)a3 atBeat:(double)a4;
- (void)doAddMIDISysexEvent:(id)a3 atBeat:(double)a4;
- (void)doAddParameterEvent:(id)a3 atBeat:(double)a4;
- (void)doAddUserEvent:(id)a3 atBeat:(double)a4;
- (void)enumerateEventsInRange:(AVBeatRange)range usingBlock:(AVMusicEventEnumerationBlock)block;
- (void)moveEventsInRange:(AVBeatRange)range byAmount:(AVMusicTimeStamp)beatAmount;
- (void)setDestinationAudioUnit:(AVAudioUnit *)destinationAudioUnit;
- (void)setDestinationMIDIEndpoint:(MIDIEndpointRef)destinationMIDIEndpoint;
- (void)setLengthInSeconds:(NSTimeInterval)lengthInSeconds;
- (void)setLoopRange:(AVBeatRange)loopRange;
- (void)setLoopingEnabled:(BOOL)loopingEnabled;
- (void)setMuted:(BOOL)muted;
- (void)setNumberOfLoops:(NSInteger)numberOfLoops;
- (void)setOffsetTime:(AVMusicTimeStamp)offsetTime;
- (void)setSoloed:(BOOL)soloed;
@end

@implementation AVMusicTrack

- (NSUInteger)timeResolution
{
  impl = self->_impl;
  outData = 0;
  ioLength = 2;
  Property = MusicTrackGetProperty(*impl, 6u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 579, "GetTimeResolution", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_TimeResolution, &timeRes, &pLen)", Property, 0);
  return outData;
}

- (void)setLengthInSeconds:(NSTimeInterval)lengthInSeconds
{
  impl = self->_impl;
  v7 = 0.0;
  outSequence = 0;
  Sequence = MusicTrackGetSequence(*impl, &outSequence);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 401, "SetLengthInSeconds", "MusicTrackGetSequence(mTrack, &seq)", Sequence, 0);
  BeatsForSeconds = MusicSequenceGetBeatsForSeconds(outSequence, lengthInSeconds, &v7);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 402, "SetLengthInSeconds", "MusicSequenceGetBeatsForSeconds(seq, inLength, &beatLength)", BeatsForSeconds, 0);
  MusicTrackImpl::DoSetLengthInBeats(*impl, v7);
}

- (NSTimeInterval)lengthInSeconds
{
  impl = self->_impl;
  v8 = 0.0;
  outSequence = 0;
  Sequence = MusicTrackGetSequence(*impl, &outSequence);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 410, "GetLengthInSeconds", "MusicTrackGetSequence(mTrack, &seq)", Sequence, 0);
  v4 = outSequence;
  LengthInBeats = MusicTrackImpl::DoGetLengthInBeats(*impl);
  SecondsForBeats = MusicSequenceGetSecondsForBeats(v4, LengthInBeats, &v8);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 411, "GetLengthInSeconds", "MusicSequenceGetSecondsForBeats(seq, DoGetLengthInBeats(), &seconds)", SecondsForBeats, 0);
  return v8;
}

- (void)setSoloed:(BOOL)soloed
{
  impl = self->_impl;
  inData = soloed;
  v4 = MusicTrackSetProperty(*impl, 3u, &inData, 1u);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 549, "Solo", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_SoloStatus, &soloStatus, pLen)", v4, 0);
}

- (BOOL)isSoloed
{
  impl = self->_impl;
  outData = 0;
  ioLength = 1;
  Property = MusicTrackGetProperty(*impl, 3u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 556, "IsSoloed", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_SoloStatus, &soloStatus, &pLen)", Property, 0);
  return outData != 0;
}

- (void)setMuted:(BOOL)muted
{
  impl = self->_impl;
  inData = muted;
  v4 = MusicTrackSetProperty(*impl, 2u, &inData, 1u);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 534, "Mute", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_MuteStatus, &muteStatus, pLen)", v4, 0);
}

- (BOOL)isMuted
{
  impl = self->_impl;
  outData = 0;
  ioLength = 1;
  Property = MusicTrackGetProperty(*impl, 2u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 541, "IsMuted", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_MuteStatus, &muteStatus, &pLen)", Property, 0);
  return outData != 0;
}

- (void)setOffsetTime:(AVMusicTimeStamp)offsetTime
{
  impl = self->_impl;
  inData = offsetTime;
  v4 = MusicTrackSetProperty(*impl, 1u, &inData, 8u);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 417, "SetOffset", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_OffsetTime, &inOffset, sizeof(inOffset))", v4, 0);
}

- (AVMusicTimeStamp)offsetTime
{
  impl = self->_impl;
  outData = 0.0;
  ioLength = 8;
  Property = MusicTrackGetProperty(*impl, 1u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 424, "GetOffset", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_OffsetTime, &offset, &pLen)", Property, 0);
  return outData;
}

- (void)setNumberOfLoops:(NSInteger)numberOfLoops
{
  v3 = numberOfLoops;
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencer.mm", 389, "[AVMusicTrack setNumberOfLoops:]", "numberOfLoops != 0", numberOfLoops != 0);
  impl = self->_impl;
  if (v3 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  impl[5] = v6;
  if (*(impl + 16) == 1)
  {
    ioLength = 24;
    Property = MusicTrackGetProperty(*impl, 7u, outData, &ioLength);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 446, "SetLoopCount", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
    v11 = impl[5];
    v8 = MusicTrackSetProperty(*impl, 7u, outData, ioLength);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 448, "SetLoopCount", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, pLen)", v8, 0);
  }
}

- (NSInteger)numberOfLoops
{
  impl = self->_impl;
  if (*(impl + 16) == 1)
  {
    v11 = v2;
    v12 = v3;
    ioLength = 24;
    Property = MusicTrackGetProperty(*impl, 7u, outData, &ioLength);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 458, "GetLoopCount", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
    v6 = v10;
  }

  else
  {
    v6 = *(impl + 5);
  }

  if (!v6)
  {
    return -1;
  }

  return v6;
}

- (void)setLoopingEnabled:(BOOL)loopingEnabled
{
  v27 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (*(impl + 16) != loopingEnabled)
  {
    v4 = loopingEnabled;
    ioLength = 24;
    Property = MusicTrackGetProperty(*impl, 7u, &outData, &ioLength);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 510, "EnableLooping", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
    if (v4)
    {
      v6 = *(impl + 5);
    }

    else
    {
      v6 = -1;
    }

    v16 = v6;
    LengthInBeats = v15;
    if (v15 <= outData)
    {
      LengthInBeats = MusicTrackImpl::DoGetLengthInBeats(*impl);
    }

    v15 = LengthInBeats;
    if (kAVASScope)
    {
      v8 = *kAVASScope;
      if (!v8)
      {
LABEL_16:
        v11 = MusicTrackSetProperty(*impl, 7u, &outData, ioLength);
        _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 517, "EnableLooping", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, pLen)", v11, 0);
        *(impl + 16) = v4;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = "dis";
      v18 = "AVAudioSequencerImpl.mm";
      v19 = 1024;
      *buf = 136316162;
      if (v4)
      {
        v10 = "en";
      }

      v20 = 516;
      v21 = 2080;
      v22 = v10;
      v23 = 2048;
      v24 = outData;
      v25 = 2048;
      v26 = LengthInBeats;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %sabling looping [%.2f - %.2f]", buf, 0x30u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isLoopingEnabled
{
  impl = self->_impl;
  ioLength = 24;
  Property = MusicTrackGetProperty(*impl, 7u, outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 526, "IsLoopingEnabled", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
  return v7 != -1;
}

- (void)setLoopRange:(AVBeatRange)loopRange
{
  start = loopRange.start;
  v29 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v6 = loopRange.start + loopRange.length;
  if (loopRange.length == 1.79769313e308)
  {
    length = loopRange.length;
  }

  else
  {
    length = v6;
  }

  ioLength = 24;
  Property = MusicTrackGetProperty(*impl, 7u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 490, "SetLoopEnd", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
  v20 = length;
  if (kAVASScope)
  {
    v9 = *kAVASScope;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "AVAudioSequencerImpl.mm";
    v23 = 1024;
    v24 = 493;
    v25 = 2048;
    v26 = length;
    v27 = 2048;
    v28 = outData;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d end -> %.2f [start %.2f]", buf, 0x26u);
  }

LABEL_11:
  v11 = MusicTrackSetProperty(*impl, 7u, &outData, ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 494, "SetLoopEnd", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, pLen)", v11, 0);
  v12 = self->_impl;
  ioLength = 24;
  v13 = MusicTrackGetProperty(*v12, 7u, &outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 471, "SetLoopStart", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", v13, 0);
  outData = start;
  if (kAVASScope)
  {
    v14 = *kAVASScope;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "AVAudioSequencerImpl.mm";
    v23 = 1024;
    v24 = 474;
    v25 = 2048;
    v26 = start;
    v27 = 2048;
    v28 = v20;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d start -> %.2f [end %.2f]", buf, 0x26u);
  }

LABEL_18:
  v16 = MusicTrackSetProperty(*v12, 7u, &outData, ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 475, "SetLoopStart", "MusicTrackSetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, pLen)", v16, 0);
  v17 = *MEMORY[0x1E69E9840];
}

- (AVBeatRange)loopRange
{
  LoopStart = MusicTrackImpl::GetLoopStart(*self->_impl);
  impl = self->_impl;
  ioLength = 24;
  Property = MusicTrackGetProperty(*impl, 7u, outData, &ioLength);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 501, "GetLoopEnd", "MusicTrackGetProperty(mTrack, kSequenceTrackProperty_LoopRegion, &region, &pLen)", Property, 0);
  v6 = v11;
  v7 = v6 - MusicTrackImpl::GetLoopStart(*self->_impl);
  v8 = LoopStart;
  result.length = v7;
  result.start = v8;
  return result;
}

- (MIDIEndpointRef)destinationMIDIEndpoint
{
  impl = self->_impl;
  outEndpoint = 0;
  DestMIDIEndpoint = MusicTrackGetDestMIDIEndpoint(*impl, &outEndpoint);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 369, "GetDestinationMIDIEndpoint", "MusicTrackGetDestMIDIEndpoint(mTrack, &endPoint)", DestMIDIEndpoint, 0);
  return outEndpoint;
}

- (void)setDestinationMIDIEndpoint:(MIDIEndpointRef)destinationMIDIEndpoint
{
  v3 = MusicTrackSetDestMIDIEndpoint(*self->_impl, destinationMIDIEndpoint);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 361, "SetDestinationMIDIEndpoint", "MusicTrackSetDestMIDIEndpoint(mTrack, inEndPoint)", v3, 0);
}

- (void)setDestinationAudioUnit:(AVAudioUnit *)destinationAudioUnit
{
  impl = self->_impl;
  v5 = destinationAudioUnit;
  v6 = v5;
  v7 = (impl + 1);
  if (impl[1] != v5)
  {
    if (v5)
    {
      [(AVAudioUnit *)v5 audioComponentDescription];
    }

    v8 = *impl;
    [(AVAudioUnit *)v6 audioUnit];
    v9 = MusicTrackSetDestinationAU();
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 348, "SetDestinationAudioUnit", "MusicTrackSetDestinationAU(mTrack, inUnit.audioUnit, &desc)", v9, 0);
    objc_storeStrong(v7, destinationAudioUnit);
  }
}

- (unint64_t)index
{
  impl = self->_impl;
  outSequence = 0;
  outTrackIndex = 0;
  Sequence = MusicTrackGetSequence(*impl, &outSequence);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 587, "GetIndex", "MusicTrackGetSequence(mTrack, &sequence)", Sequence, 0);
  TrackIndex = MusicSequenceGetTrackIndex(outSequence, *impl, &outTrackIndex);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 588, "GetIndex", "MusicSequenceGetTrackIndex(sequence, mTrack, &index)", TrackIndex, 0);
  return outTrackIndex;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    MusicTrackImpl::~MusicTrackImpl(impl);
    MEMORY[0x1BFAF5800]();
  }

  v4.receiver = self;
  v4.super_class = AVMusicTrack;
  [(AVMusicTrack *)&v4 dealloc];
}

- (AVMusicTrack)initWithImpl:(MusicTrackImpl *)a3
{
  v7.receiver = self;
  v7.super_class = AVMusicTrack;
  v4 = [(AVMusicTrack *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_impl = a3;
  }

  else if (a3)
  {
    MusicTrackImpl::~MusicTrackImpl(a3);
    MEMORY[0x1BFAF5800]();
  }

  return v5;
}

- (void)enumerateEventsInRange:(AVBeatRange)range usingBlock:(AVMusicEventEnumerationBlock)block
{
  length = range.length;
  start = range.start;
  v8 = block;
  v9 = [(AVMusicTrack *)self createEventIterator];
  v10 = v9;
  if (length != 1.79769313e308)
  {
    length = start + length;
  }

  [v9 seek:start];
  while ([v10 hasCurrentEvent])
  {
    v35 = 0.0;
    v34 = 0;
    *&__n[1] = 0;
    __n[0] = 0;
    [v10 getEventInfo:&v35 outEventType:&v34 eventData:&__n[1] dataSize:__n];
    if (v35 > length)
    {
      break;
    }

    v11 = 0;
    if (v34 > 5)
    {
      if (v34 <= 7)
      {
        if (v34 == 6)
        {
          v18 = [AVMIDINoteEvent alloc];
          v13 = [(AVMIDINoteEvent *)v18 initWithMessage:*&__n[1]];
        }

        else
        {
          v16 = **&__n[1] - 160;
          if (v16 >= 0x50)
          {
            goto LABEL_23;
          }

          v13 = [objc_alloc(*off_1E7EF64F0[v16 >> 4]) initWithMessage:*&__n[1]];
        }
      }

      else
      {
        switch(v34)
        {
          case 8:
            v20 = [AVMIDISysexEvent alloc];
            v13 = [(AVMIDISysexEvent *)v20 initWithMIDIRawData:*&__n[1]];
            break;
          case 9:
            v22 = [AVParameterEvent alloc];
            v13 = [(AVParameterEvent *)v22 initWithParameterEvent:*&__n[1]];
            break;
          case 10:
            v14 = [AVAUPresetEvent alloc];
            v13 = [(AVAUPresetEvent *)v14 initWithAUPresetEvent:*&__n[1]];
            break;
          default:
            goto LABEL_30;
        }
      }
    }

    else if (v34 <= 2)
    {
      if (!v34)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:self file:@"AVAudioSequencer.mm" lineNumber:598 description:@"Should never get a NULL event type"];

LABEL_23:
        v11 = 0;
        goto LABEL_30;
      }

      if (v34 != 1)
      {
        goto LABEL_30;
      }

      v15 = [AVExtendedNoteOnEvent alloc];
      v13 = [(AVExtendedNoteOnEvent *)v15 initWithNoteOnEvent:*&__n[1]];
    }

    else if (v34 == 3)
    {
      v19 = [AVExtendedTempoEvent alloc];
      v13 = [(AVExtendedTempoEvent *)v19 initWithTempo:**&__n[1]];
    }

    else if (v34 == 4)
    {
      v21 = [AVMusicUserEvent alloc];
      v13 = [(AVMusicUserEvent *)v21 initWithUserData:*&__n[1]];
    }

    else
    {
      v12 = [AVMIDIMetaEvent alloc];
      v13 = [(AVMIDIMetaEvent *)v12 initWithMetaEvent:*&__n[1]];
    }

    v11 = v13;
LABEL_30:
    v32 = v35;
    v31 = 0;
    v8[2](v8, v11, &v32, &v31);
    if (v31 == 1)
    {
      [v10 deleteEvent];
      goto LABEL_51;
    }

    v23 = v32;
    if (v32 != v35)
    {
      [v10 setEventTime:v32];
    }

    v30 = 0;
    if (v34 > 6)
    {
      if (v34 == 7)
      {
LABEL_38:
        v24 = [v11 message];
      }

      else
      {
        if (v34 != 9)
        {
          if (v34 == 10)
          {
            [v11 event];
          }

          goto LABEL_50;
        }

LABEL_46:
        v24 = [v11 event];
      }

      v28 = v24;
      v26 = *&__n[1];
      v27 = __n[0];
      v29 = v28;
LABEL_48:
      if (memcmp(v26, v29, v27))
      {
        [v10 setEventInfo:v34 data:v28];
      }

      goto LABEL_50;
    }

    switch(v34)
    {
      case 1:
        goto LABEL_46;
      case 3:
        [v11 tempo];
        v30 = v25;
        v26 = *&__n[1];
        v27 = __n[0];
        v28 = &v30;
        v29 = &v30;
        goto LABEL_48;
      case 6:
        goto LABEL_38;
    }

LABEL_50:
    [v10 nextEvent];
LABEL_51:
  }
}

- (void)copyAndMergeEventsInRange:(AVBeatRange)range fromTrack:(AVMusicTrack *)sourceTrack mergeAtBeat:(AVMusicTimeStamp)mergeStartBeat
{
  length = range.length;
  start = range.start;
  v9 = sourceTrack;
  impl = self->_impl;
  v14 = v9;
  v11 = [(AVMusicTrack *)v9 track];
  if (length == 1.79769313e308)
  {
    v12 = length;
  }

  else
  {
    v12 = start + length;
  }

  v13 = MusicTrackMerge(v11, start, v12, *impl, mergeStartBeat);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 630, "CopyMergeEvents", "MusicTrackMerge(inSourceTrack, inSourceStartBeat, inSourceEndBeat, mTrack, inInsertBeat)", v13, 0);
}

- (void)copyEventsInRange:(AVBeatRange)range fromTrack:(AVMusicTrack *)sourceTrack insertAtBeat:(AVMusicTimeStamp)insertStartBeat
{
  length = range.length;
  start = range.start;
  v9 = sourceTrack;
  impl = self->_impl;
  v14 = v9;
  v11 = [(AVMusicTrack *)v9 track];
  if (length == 1.79769313e308)
  {
    v12 = length;
  }

  else
  {
    v12 = start + length;
  }

  v13 = MusicTrackCopyInsert(v11, start, v12, *impl, insertStartBeat);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 618, "CopyInsertEvents", "MusicTrackCopyInsert(inSourceTrack, inSourceStartBeat, inSourceEndBeat, mTrack, inInsertBeat)", v13, 0);
}

- (void)cutEventsInRange:(AVBeatRange)range
{
  if (range.length != 1.79769313e308)
  {
    range.length = range.start + range.length;
  }

  v3 = MusicTrackCut(*self->_impl, range.start, range.length);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 606, "CutEvents", "MusicTrackCut(mTrack, inStartBeat, inEndBeat)", v3, 0);
}

- (void)clearEventsInRange:(AVBeatRange)range
{
  if (range.length != 1.79769313e308)
  {
    range.length = range.start + range.length;
  }

  v3 = MusicTrackClear(*self->_impl, range.start, range.length);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 601, "ClearEvents", "MusicTrackClear(mTrack, inStartBeat, inEndBeat)", v3, 0);
}

- (void)moveEventsInRange:(AVBeatRange)range byAmount:(AVMusicTimeStamp)beatAmount
{
  if (range.length != 1.79769313e308)
  {
    range.length = range.start + range.length;
  }

  v4 = MusicTrackMoveEvents(*self->_impl, range.start, range.length, beatAmount);

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 596, "MoveEvents", "MusicTrackMoveEvents(mTrack, inStartBeat, inEndBeat, inToBeat)", v4, 0);
}

- (void)addEvent:(AVMusicEvent *)event atBeat:(AVMusicTimeStamp)beat
{
  v6 = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVMusicTrack *)self doAddMIDINoteEvent:v6 atBeat:beat];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AVMusicTrack *)self doAddMIDIChannelEvent:v6 atBeat:beat];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AVMusicTrack *)self doAddMIDISysexEvent:v6 atBeat:beat];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AVMusicTrack *)self doAddMIDIMetaEvent:v6 atBeat:beat];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AVMusicTrack *)self doAddUserEvent:v6 atBeat:beat];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(AVMusicTrack *)self doAddExtendedNoteOnEvent:v6 atBeat:beat];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(AVMusicTrack *)self doAddParameterEvent:v6 atBeat:beat];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(AVMusicTrack *)self doAddAUPresetEvent:v6 atBeat:beat];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(AVMusicTrack *)self doAddExtendedTempoEvent:v6 atBeat:beat];
                  }

                  else
                  {
                    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:@"AVMusicEvent was not of any known class"];
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)doAddAUPresetEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewAUPresetEvent(*self->_impl, a4, [v7 event]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 672, "AddEvent", "MusicTrackNewAUPresetEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddUserEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewUserEvent(*self->_impl, a4, [v7 userData]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 667, "AddEvent", "MusicTrackNewUserEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddMIDIMetaEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewMetaEvent(*self->_impl, a4, [v7 metaEvent]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 662, "AddEvent", "MusicTrackNewMetaEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddExtendedTempoEvent:(id)a3 atBeat:(double)a4
{
  v6 = a3;
  impl = self->_impl;
  v10 = v6;
  [v6 tempo];
  v9 = MusicTrackNewExtendedTempoEvent(*impl, a4, v8);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 677, "AddExtendedTempoEvent", "MusicTrackNewExtendedTempoEvent(mTrack, inTimeStamp, inTempo)", v9, 0);
}

- (void)doAddParameterEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewParameterEvent(*self->_impl, a4, [v7 event]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 657, "AddEvent", "MusicTrackNewParameterEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddExtendedNoteOnEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewExtendedNoteEvent(*self->_impl, a4, [v7 event]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 652, "AddEvent", "MusicTrackNewExtendedNoteEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddMIDISysexEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewMIDIRawDataEvent(*self->_impl, a4, [v7 rawData]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 647, "AddEvent", "MusicTrackNewMIDIRawDataEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddMIDIChannelEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewMIDIChannelEvent(*self->_impl, a4, [v7 message]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 642, "AddEvent", "MusicTrackNewMIDIChannelEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

- (void)doAddMIDINoteEvent:(id)a3 atBeat:(double)a4
{
  v7 = a3;
  v6 = MusicTrackNewMIDINoteEvent(*self->_impl, a4, [v7 message]);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioSequencerImpl.mm", 637, "AddEvent", "MusicTrackNewMIDINoteEvent(mTrack, inTimeStamp, &inEvent)", v6, 0);
}

@end