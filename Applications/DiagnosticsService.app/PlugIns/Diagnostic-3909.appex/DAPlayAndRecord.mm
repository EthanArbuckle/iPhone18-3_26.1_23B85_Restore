@interface DAPlayAndRecord
- (BOOL)setDeviceVolume:(float)volume;
- (DAAudioPlayAndRecordDelegate)delegate;
- (DAPlayAndRecord)initWithFileURL:(id)l fileName:(id)name numberOfInputs:(id)inputs inputID:(int64_t)d outputID:(int64_t)iD volume:(id)volume channel:(id)channel sendRawData:(BOOL)self0 delegate:(id)self1 sequentialAudioInput:(BOOL)self2 error:(id *)self3;
- (id)makeSignalsDataObjects;
- (int)calculateFileDurationForFile:(OpaqueAudioFileID *)file error:(id *)error;
- (int)createAUGraphWithError:(id *)error;
- (int)startAudioTestCase;
- (void)cancel;
- (void)dealloc;
- (void)endAudioTestCase;
- (void)grabPlayBackFrameData:(AudioBufferList *)data withNumberOfFrames:(unsigned int)frames;
- (void)grabRecordedFrameData:(AudioBufferList *)data withNumberOfFrames:(unsigned int)frames;
- (void)resetToPreviousVolume;
@end

@implementation DAPlayAndRecord

- (DAPlayAndRecord)initWithFileURL:(id)l fileName:(id)name numberOfInputs:(id)inputs inputID:(int64_t)d outputID:(int64_t)iD volume:(id)volume channel:(id)channel sendRawData:(BOOL)self0 delegate:(id)self1 sequentialAudioInput:(BOOL)self2 error:(id *)self3
{
  lCopy = l;
  nameCopy = name;
  inputsCopy = inputs;
  volumeCopy = volume;
  channelCopy = channel;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = DAPlayAndRecord;
  v25 = [(DAPlayAndRecord *)&v29 init];
  p_isa = &v25->super.isa;
  if (!v25)
  {
    goto LABEL_8;
  }

  [(DAPlayAndRecord *)v25 setError:error];
  [(AudioFileID *)p_isa setFileName:nameCopy];
  [(AudioFileID *)p_isa setFileURL:lCopy];
  [(AudioFileID *)p_isa setDelegate:delegateCopy];
  [(AudioFileID *)p_isa setNumInputs:inputsCopy];
  [(AudioFileID *)p_isa setInputID:d];
  [(AudioFileID *)p_isa setOutputID:iD];
  [(AudioFileID *)p_isa setSendRawData:data];
  [(AudioFileID *)p_isa setSequentialAudioInput:input];
  [(AudioFileID *)p_isa setVolume:volumeCopy];
  [(AudioFileID *)p_isa setChannel:channelCopy];
  [(AudioFileID *)p_isa setVolumeNeedsReset:0];
  if (!AudioFileOpenURL(lCopy, kAudioFileReadPermission, 0x57415645u, p_isa + 8))
  {
    if ([(AudioFileID *)p_isa calculateFileDurationForFile:p_isa[8] error:[(AudioFileID *)p_isa error]])
    {
      goto LABEL_5;
    }

    if ([(AudioFileID *)p_isa createAUGraphWithError:[(AudioFileID *)p_isa error]])
    {
      v27 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v27 = p_isa;
    goto LABEL_9;
  }

  [LegacyAudioSystemController setCode:-9 forError:[(AudioFileID *)p_isa error]];
LABEL_5:
  v27 = 0;
LABEL_9:

  return v27;
}

- (int)startAudioTestCase
{
  [(DAPlayAndRecord *)self fileTimeInFrames];
  self->sourceSignal = malloc_type_malloc(vcvts_n_u32_f32(v3, 2uLL), 0x100004052888210uLL);
  numInputs = [(DAPlayAndRecord *)self numInputs];
  self->receiveSignals = malloc_type_malloc(8 * [numInputs intValue], 0x80040B8603338uLL);

  numInputs2 = [(DAPlayAndRecord *)self numInputs];
  intValue = [numInputs2 intValue];

  if (intValue >= 1)
  {
    for (i = 0; i < intValue2; ++i)
    {
      [(DAPlayAndRecord *)self fileTimeInFrames];
      self->receiveSignals[i] = malloc_type_malloc(vcvts_n_u32_f32(v8, 2uLL), 0x100004052888210uLL);
      numInputs3 = [(DAPlayAndRecord *)self numInputs];
      intValue2 = [numInputs3 intValue];
    }
  }

  numInputs4 = [(DAPlayAndRecord *)self numInputs];
  self->recordBufferList = malloc_type_malloc((16 * [numInputs4 intValue]) | 8, 0x10800404ACF7207uLL);

  numInputs5 = [(DAPlayAndRecord *)self numInputs];
  self->recordBufferList->mNumberBuffers = [numInputs5 unsignedIntValue];

  numInputs6 = [(DAPlayAndRecord *)self numInputs];
  intValue3 = [numInputs6 intValue];

  if (intValue3 >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x1000uLL, 0xD54318B5uLL);
      v18 = self->recordBufferList + v15;
      *(v18 + 2) = 1;
      *(v18 + 3) = 4096;
      *(v18 + 2) = v17;
      numInputs7 = [(DAPlayAndRecord *)self numInputs];
      ++v16;
      intValue4 = [numInputs7 intValue];

      v15 += 16;
    }

    while (v16 < intValue4);
  }

  v21 = AudioUnitReset(self->generatorUnit, 0, 0);
  if (!v21)
  {
    outPropertyData = 0;
    ioDataSize = 8;
    Property = AudioFileGetProperty(self->testSignalFile, 0x70636E74u, &ioDataSize, &outPropertyData);
    if (Property)
    {
      [LegacyAudioSystemController setCode:-43 forError:[(DAPlayAndRecord *)self error]];
      return Property;
    }

    v48 = 1;
    v50 = 0u;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    inData = 0;
    v49 = 0;
    *&v50 = 0;
    *(&v50 + 1) = self->testSignalFile;
    v23 = outPropertyData;
    +[DAAudioUnitHelper getBasicStreamDescription];
    LODWORD(v53) = v43[6] * v23;
    Property = AudioUnitSetProperty(self->generatorUnit, 0xCEFu, 0, 0, &inData, 0x70u);
    if (Property)
    {
      [LegacyAudioSystemController setCode:-44 forError:[(DAPlayAndRecord *)self error]];
      return Property;
    }

    v43[0] = 0;
    Property = AudioUnitSetProperty(self->generatorUnit, 0xCF0u, 0, 0, v43, 4u);
    if (Property)
    {
      [LegacyAudioSystemController setCode:-45 forError:[(DAPlayAndRecord *)self error]];
      return Property;
    }

    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v42 = 1;
    v38 = 0xBFF0000000000000;
    Property = AudioUnitSetProperty(self->generatorUnit, 0xCE5u, 0, 0, &v38, 0x40u);
    if (Property)
    {
      [LegacyAudioSystemController setCode:-46 forError:[(DAPlayAndRecord *)self error]];
      return Property;
    }

    [(DAPlayAndRecord *)self setPlayFrameCount:0];
    [(DAPlayAndRecord *)self setRecordFrameCount:0];
    if ([(DAPlayAndRecord *)self outputID])
    {
      if ([(DAPlayAndRecord *)self outputID]== 1)
      {
        v24 = +[AVAudioSession sharedInstance];
        v25 = [v24 overrideOutputAudioPort:1936747378 error:{-[DAPlayAndRecord error](self, "error")}];

        if ((v25 & 1) == 0)
        {
          [LegacyAudioSystemController setCode:-48 forError:[(DAPlayAndRecord *)self error]];
          return 0;
        }
      }
    }

    else
    {
      v26 = +[AVAudioSession sharedInstance];
      v27 = [v26 overrideOutputAudioPort:0 error:{-[DAPlayAndRecord error](self, "error")}];

      if ((v27 & 1) == 0)
      {
        [LegacyAudioSystemController setCode:-47 forError:[(DAPlayAndRecord *)self error]];
        return 0;
      }
    }

    v28 = +[AVSystemController sharedAVSystemController];
    if ([(DAPlayAndRecord *)self outputID])
    {
      v29 = @"Audio/Video";
    }

    else
    {
      v29 = @"PlayAndRecord";
    }

    [v28 getVolume:&self->previousDeviceVolume forCategory:v29];

    volume = [(DAPlayAndRecord *)self volume];
    [volume floatValue];
    v31 = [(DAPlayAndRecord *)self setDeviceVolume:?];

    if (v31)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(DAPlayAndRecord *)selfCopy setVolumeNeedsReset:1];
      if (![(DAPlayAndRecord *)selfCopy isCancelled])
      {
        v33 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          fileURL = [(DAPlayAndRecord *)selfCopy fileURL];
          lastPathComponent = [fileURL lastPathComponent];
          outputID = [(DAPlayAndRecord *)selfCopy outputID];
          *buf = 138412546;
          v57 = lastPathComponent;
          v58 = 2048;
          v59 = outputID;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Beginning %@ (outputID = %ld).", buf, 0x16u);
        }

        Property = AUGraphStart(selfCopy->testCaseGraph);
        if (Property)
        {
          [LegacyAudioSystemController setCode:2 forError:[(DAPlayAndRecord *)selfCopy error]];
          objc_sync_exit(selfCopy);

          return Property;
        }
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      [LegacyAudioSystemController setCode:-51 forError:[(DAPlayAndRecord *)self error]];
    }

    return 0;
  }

  Property = v21;
  [LegacyAudioSystemController setCode:-43 forError:[(DAPlayAndRecord *)self error]];
  return Property;
}

- (void)endAudioTestCase
{
  AUGraphStop(self->testCaseGraph);
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    fileURL = [(DAPlayAndRecord *)self fileURL];
    lastPathComponent = [fileURL lastPathComponent];
    v10 = 138412546;
    v11 = lastPathComponent;
    v12 = 2048;
    outputID = [(DAPlayAndRecord *)self outputID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ended %@ (outputID = %ld).", &v10, 0x16u);
  }

  [(DAPlayAndRecord *)self resetToPreviousVolume];
  makeSignalsDataObjects = [(DAPlayAndRecord *)self makeSignalsDataObjects];
  v7 = [NSMutableArray arrayWithArray:makeSignalsDataObjects];
  [(DAPlayAndRecord *)self setResults:v7];

  [(DAPlayAndRecord *)self sendRawData];
  delegate = [(DAPlayAndRecord *)self delegate];
  LOBYTE(makeSignalsDataObjects) = objc_opt_respondsToSelector();

  if (makeSignalsDataObjects)
  {
    delegate2 = [(DAPlayAndRecord *)self delegate];
    [delegate2 playAndRecordFinished];
  }
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DAPlayAndRecord *)selfCopy setIsCancelled:1];
  AUGraphStop(selfCopy->testCaseGraph);
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    fileURL = [(DAPlayAndRecord *)selfCopy fileURL];
    lastPathComponent = [fileURL lastPathComponent];
    v6 = 138412546;
    v7 = lastPathComponent;
    v8 = 2048;
    outputID = [(DAPlayAndRecord *)selfCopy outputID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelled %@ (outputID = %ld).", &v6, 0x16u);
  }

  objc_sync_exit(selfCopy);
  [(DAPlayAndRecord *)selfCopy resetToPreviousVolume];
}

- (void)resetToPreviousVolume
{
  obj = self;
  objc_sync_enter(obj);
  if ([(DAPlayAndRecord *)obj volumeNeedsReset])
  {
    *&v2 = obj->previousDeviceVolume;
    [(DAPlayAndRecord *)obj setDeviceVolume:v2];
    [(DAPlayAndRecord *)obj setVolumeNeedsReset:0];
  }

  objc_sync_exit(obj);
}

- (BOOL)setDeviceVolume:(float)volume
{
  v15 = 0.0;
  outputID = [(DAPlayAndRecord *)self outputID];
  v6 = @"Audio/Video";
  if (!outputID)
  {
    v6 = @"PlayAndRecord";
  }

  v7 = v6;
  v8 = +[AVSystemController sharedAVSystemController];
  [v8 getVolume:&v15 forCategory:v7];

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    outputID2 = [(DAPlayAndRecord *)self outputID];
    *buf = 138413058;
    v17 = v7;
    v18 = 2048;
    v19 = outputID2;
    v20 = 2048;
    v21 = v15;
    v22 = 2048;
    volumeCopy = volume;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Changing %@ Volume (outputID = %ld): %f -> %f", buf, 0x2Au);
  }

  v11 = +[AVSystemController sharedAVSystemController];
  *&v12 = volume;
  v13 = [v11 setVolumeTo:v7 forCategory:v12];

  return v13;
}

- (void)dealloc
{
  free(self->recordBufferList);
  v3.receiver = self;
  v3.super_class = DAPlayAndRecord;
  [(DAPlayAndRecord *)&v3 dealloc];
}

- (void)grabPlayBackFrameData:(AudioBufferList *)data withNumberOfFrames:(unsigned int)frames
{
  playFrameCount = [(DAPlayAndRecord *)self playFrameCount];
  [(DAPlayAndRecord *)self fileTimeInFrames];
  if (v8 >= playFrameCount)
  {
    channel = [(DAPlayAndRecord *)self channel];
    intValue = [channel intValue];
    mNumberBuffers = data->mNumberBuffers;

    if (intValue < mNumberBuffers)
    {
      sourceSignal = self->sourceSignal;
      v13 = &sourceSignal[[(DAPlayAndRecord *)self playFrameCount]];
      channel2 = [(DAPlayAndRecord *)self channel];
      memcpy(v13, data->mBuffers[[channel2 intValue]].mData, 4 * frames);

      v15 = [(DAPlayAndRecord *)self playFrameCount]+ frames;

      [(DAPlayAndRecord *)self setPlayFrameCount:v15];
    }
  }
}

- (void)grabRecordedFrameData:(AudioBufferList *)data withNumberOfFrames:(unsigned int)frames
{
  v7 = ([(DAPlayAndRecord *)self recordFrameCount]+ frames);
  [(DAPlayAndRecord *)self fileTimeInFrames];
  if (v8 >= v7 && (-[DAPlayAndRecord numInputs](self, "numInputs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 intValue], mNumberBuffers = data->mNumberBuffers, v9, v10 <= mNumberBuffers))
  {
    numInputs = [(DAPlayAndRecord *)self numInputs];
    intValue = [numInputs intValue];

    if (intValue >= 1)
    {
      v16 = 0;
      p_mData = &data->mBuffers[0].mData;
      do
      {
        v18 = self->receiveSignals[v16];
        recordFrameCount = [(DAPlayAndRecord *)self recordFrameCount];
        v20 = *p_mData;
        p_mData += 2;
        memcpy(&v18[recordFrameCount], v20, 4 * frames);
        ++v16;
        numInputs2 = [(DAPlayAndRecord *)self numInputs];
        intValue2 = [numInputs2 intValue];
      }

      while (v16 < intValue2);
    }
  }

  else
  {
    recordFrameCount2 = [(DAPlayAndRecord *)self recordFrameCount];
    [(DAPlayAndRecord *)self fileTimeInFrames];
    if ((v13 + 16384.0) <= recordFrameCount2)
    {
      [(DAPlayAndRecord *)self endAudioTestCase];
    }
  }

  v23 = [(DAPlayAndRecord *)self recordFrameCount]+ frames;

  [(DAPlayAndRecord *)self setRecordFrameCount:v23];
}

- (int)createAUGraphWithError:(id *)error
{
  v5 = NewAUGraph(&self->testCaseGraph);
  if (v5 || (v5 = AUGraphOpen(self->testCaseGraph)) != 0)
  {
    v6 = v5;
    v7 = -11;
  }

  else
  {
    v50 = 0;
    outAudioUnit = 0;
    v49 = 0;
    *v47 = 0;
    *outNode = 0;
    v46 = 0;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    +[DAAudioUnitHelper getBasicStreamDescription];
    numInputs = [(DAPlayAndRecord *)self numInputs];
    HIDWORD(v44) = [numInputs unsignedIntValue];

    memset(&outDescription, 0, sizeof(outDescription));
    +[DAAudioUnitHelper getGeneratorDescription];
    memset(&inDescription, 0, sizeof(inDescription));
    +[DAAudioUnitHelper getRemoteIODescription];
    memset(&v40, 0, sizeof(v40));
    +[DAAudioUnitHelper getBandPassDescription];
    memset(&v39, 0, sizeof(v39));
    +[DAAudioUnitHelper getMixerDescription];
    v10 = AUGraphAddNode(self->testCaseGraph, &inDescription, &outNode[1]);
    if (v10)
    {
      v6 = v10;
      v7 = -13;
    }

    else
    {
      v11 = AUGraphAddNode(self->testCaseGraph, &outDescription, outNode);
      if (v11)
      {
        v6 = v11;
        v7 = -14;
      }

      else
      {
        v12 = AUGraphAddNode(self->testCaseGraph, &v40, &v47[1]);
        if (v12)
        {
          v6 = v12;
          v7 = -15;
        }

        else
        {
          v13 = AUGraphAddNode(self->testCaseGraph, &v40, v47);
          if (v13)
          {
            v6 = v13;
            v7 = -16;
          }

          else
          {
            v14 = AUGraphAddNode(self->testCaseGraph, &v39, &v46);
            if (v14)
            {
              v6 = v14;
              v7 = -17;
            }

            else
            {
              v15 = AUGraphNodeInfo(self->testCaseGraph, outNode[1], &inDescription, &self->remoteIOUnit);
              if (v15)
              {
                v6 = v15;
                v7 = -18;
              }

              else
              {
                v16 = AUGraphNodeInfo(self->testCaseGraph, outNode[0], &outDescription, &self->generatorUnit);
                if (v16)
                {
                  v6 = v16;
                  v7 = -19;
                }

                else
                {
                  v17 = AUGraphNodeInfo(self->testCaseGraph, v47[1], &v40, &outAudioUnit);
                  if (v17)
                  {
                    v6 = v17;
                    v7 = -20;
                  }

                  else
                  {
                    v18 = AUGraphNodeInfo(self->testCaseGraph, v47[0], &v40, &v50);
                    if (v18)
                    {
                      v6 = v18;
                      v7 = -21;
                    }

                    else
                    {
                      v19 = AUGraphNodeInfo(self->testCaseGraph, v46, &v39, &v49);
                      if (v19)
                      {
                        v6 = v19;
                        v7 = -22;
                      }

                      else
                      {
                        inData = 1;
                        v20 = AudioUnitSetProperty(self->remoteIOUnit, 0x7D3u, 1u, 1u, &inData, 4u);
                        if (v20)
                        {
                          v6 = v20;
                          v7 = -23;
                        }

                        else
                        {
                          v21 = AudioUnitSetProperty(self->remoteIOUnit, 8u, 1u, 0, &v43, 0x28u);
                          if (v21)
                          {
                            v6 = v21;
                            v7 = -24;
                          }

                          else
                          {
                            v22 = AudioUnitSetProperty(self->remoteIOUnit, 8u, 2u, 1u, &v43, 0x28u);
                            if (v22)
                            {
                              v6 = v22;
                              v7 = -25;
                            }

                            else
                            {
                              v23 = AudioUnitSetProperty(self->generatorUnit, 0xCEEu, 0, 0, &self->testSignalFile, 8u);
                              if (v23)
                              {
                                v6 = v23;
                                v7 = -26;
                              }

                              else
                              {
                                v24 = AudioUnitSetParameter(outAudioUnit, 0, 0, 0, 2000.0, 0);
                                if (v24)
                                {
                                  v6 = v24;
                                  v7 = -27;
                                }

                                else
                                {
                                  v25 = AudioUnitSetParameter(outAudioUnit, 1u, 0, 0, 4800.0, 0);
                                  if (v25)
                                  {
                                    v6 = v25;
                                    v7 = -28;
                                  }

                                  else
                                  {
                                    v26 = AudioUnitSetParameter(v50, 0, 0, 0, 2000.0, 0);
                                    if (v26)
                                    {
                                      v6 = v26;
                                      v7 = -29;
                                    }

                                    else
                                    {
                                      v27 = AudioUnitSetParameter(v50, 1u, 0, 0, 4800.0, 0);
                                      if (v27)
                                      {
                                        v6 = v27;
                                        v7 = -30;
                                      }

                                      else
                                      {
                                        v28 = AudioUnitSetProperty(v50, 8u, 1u, 0, &v43, 0x28u);
                                        if (v28)
                                        {
                                          v6 = v28;
                                          v7 = -31;
                                        }

                                        else
                                        {
                                          v29 = AudioUnitSetProperty(v50, 8u, 2u, 0, &v43, 0x28u);
                                          if (v29)
                                          {
                                            v6 = v29;
                                            v7 = -32;
                                          }

                                          else
                                          {
                                            v30 = AudioUnitSetParameter(v49, 1u, 1u, 2u, 0.0, 0);
                                            if (v30)
                                            {
                                              v6 = v30;
                                              v7 = -33;
                                            }

                                            else
                                            {
                                              v31 = AUGraphConnectNodeInput(self->testCaseGraph, outNode[0], 0, v46, 1u);
                                              if (v31)
                                              {
                                                v6 = v31;
                                                v7 = -34;
                                              }

                                              else
                                              {
                                                v32 = AUGraphConnectNodeInput(self->testCaseGraph, outNode[1], 1u, v47[0], 0);
                                                if (v32)
                                                {
                                                  v6 = v32;
                                                  v7 = -35;
                                                }

                                                else
                                                {
                                                  v33 = AUGraphConnectNodeInput(self->testCaseGraph, v47[0], 0, v46, 2u);
                                                  if (v33)
                                                  {
                                                    v6 = v33;
                                                    v7 = -36;
                                                  }

                                                  else
                                                  {
                                                    v34 = AUGraphConnectNodeInput(self->testCaseGraph, v46, 0, outNode[1], 0);
                                                    if (v34)
                                                    {
                                                      v6 = v34;
                                                      v7 = -37;
                                                    }

                                                    else
                                                    {
                                                      self->recordCallBack.inputProc = sub_10000611C;
                                                      self->recordCallBack.inputProcRefCon = self;
                                                      v35 = AudioUnitSetProperty(self->remoteIOUnit, 0x7D5u, 0, 1u, &self->recordCallBack, 0x10u);
                                                      if (v35)
                                                      {
                                                        v6 = v35;
                                                        v7 = -38;
                                                      }

                                                      else
                                                      {
                                                        self->recordBPCallBack.inputProc = sub_100006130;
                                                        self->recordBPCallBack.inputProcRefCon = self;
                                                        v36 = AudioUnitAddRenderNotify(v50, sub_100006130, self);
                                                        if (v36)
                                                        {
                                                          v6 = v36;
                                                          v7 = -39;
                                                        }

                                                        else
                                                        {
                                                          self->playCallBack.inputProc = sub_100006168;
                                                          self->playCallBack.inputProcRefCon = self;
                                                          v37 = AudioUnitAddRenderNotify(self->generatorUnit, sub_100006168, self);
                                                          if (v37)
                                                          {
                                                            v6 = v37;
                                                            v7 = -40;
                                                          }

                                                          else
                                                          {
                                                            v6 = AUGraphInitialize(self->testCaseGraph);
                                                            if (!v6)
                                                            {
                                                              return v6;
                                                            }

                                                            v7 = -41;
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  [LegacyAudioSystemController setCode:v7 forError:error];
  return v6;
}

- (id)makeSignalsDataObjects
{
  v3 = +[NSMutableArray array];
  if ([(DAPlayAndRecord *)self sequentialAudioInput])
  {
    v4 = [DASignalData alloc];
    sourceSignal = self->sourceSignal;
    v6 = *self->receiveSignals;
    [(DAPlayAndRecord *)self fileTimeInFrames];
    v8 = v7;
    outputID = [(DAPlayAndRecord *)self outputID];
    inputID = [(DAPlayAndRecord *)self inputID];
    fileName = [(DAPlayAndRecord *)self fileName];
    LODWORD(v12) = v8;
    v13 = [(DASignalData *)v4 initWithSourceSignal:sourceSignal receivedSignal:v6 minimumDelay:1900 maximumDelay:3000 fileTimeInFrames:outputID outputID:inputID inputID:v12 fileName:fileName];

    [v3 addObject:v13];
  }

  else
  {
    numInputs = [(DAPlayAndRecord *)self numInputs];
    intValue = [numInputs intValue];

    if (intValue >= 1)
    {
      v16 = 0;
      do
      {
        v17 = [DASignalData alloc];
        v18 = self->sourceSignal;
        v19 = self->receiveSignals[v16];
        [(DAPlayAndRecord *)self fileTimeInFrames];
        v21 = v20;
        outputID2 = [(DAPlayAndRecord *)self outputID];
        fileName2 = [(DAPlayAndRecord *)self fileName];
        LODWORD(v24) = v21;
        v25 = [(DASignalData *)v17 initWithSourceSignal:v18 receivedSignal:v19 minimumDelay:1900 maximumDelay:3000 fileTimeInFrames:outputID2 outputID:v16 inputID:v24 fileName:fileName2];

        [v3 addObject:v25];
        ++v16;
        numInputs2 = [(DAPlayAndRecord *)self numInputs];
        LODWORD(v18) = [numInputs2 intValue];
      }

      while (v16 < v18);
    }
  }

  free(self->receiveSignals);

  return v3;
}

- (int)calculateFileDurationForFile:(OpaqueAudioFileID *)file error:(id *)error
{
  outPropertyData = 0;
  ioDataSize = 8;
  Property = AudioFileGetProperty(self->testSignalFile, 0x70636E74u, &ioDataSize, &outPropertyData);
  if (Property)
  {
    [LegacyAudioSystemController setCode:-10 forError:error];
  }

  else
  {
    v7 = outPropertyData;
    +[DAAudioUnitHelper getBasicStreamDescription];
    *&v8 = (v7 * v10);
    [(DAPlayAndRecord *)self setFileTimeInFrames:v8];
  }

  return Property;
}

- (DAAudioPlayAndRecordDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end