@interface DAPlayAndRecord
- (BOOL)setDeviceVolume:(float)a3;
- (DAAudioPlayAndRecordDelegate)delegate;
- (DAPlayAndRecord)initWithFileURL:(id)a3 fileName:(id)a4 numberOfInputs:(id)a5 inputID:(int64_t)a6 outputID:(int64_t)a7 volume:(id)a8 channel:(id)a9 sendRawData:(BOOL)a10 delegate:(id)a11 sequentialAudioInput:(BOOL)a12 error:(id *)a13;
- (id)makeSignalsDataObjects;
- (int)calculateFileDurationForFile:(OpaqueAudioFileID *)a3 error:(id *)a4;
- (int)createAUGraphWithError:(id *)a3;
- (int)startAudioTestCase;
- (void)cancel;
- (void)dealloc;
- (void)endAudioTestCase;
- (void)grabPlayBackFrameData:(AudioBufferList *)a3 withNumberOfFrames:(unsigned int)a4;
- (void)grabRecordedFrameData:(AudioBufferList *)a3 withNumberOfFrames:(unsigned int)a4;
- (void)resetToPreviousVolume;
@end

@implementation DAPlayAndRecord

- (DAPlayAndRecord)initWithFileURL:(id)a3 fileName:(id)a4 numberOfInputs:(id)a5 inputID:(int64_t)a6 outputID:(int64_t)a7 volume:(id)a8 channel:(id)a9 sendRawData:(BOOL)a10 delegate:(id)a11 sequentialAudioInput:(BOOL)a12 error:(id *)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  v29.receiver = self;
  v29.super_class = DAPlayAndRecord;
  v25 = [(DAPlayAndRecord *)&v29 init];
  p_isa = &v25->super.isa;
  if (!v25)
  {
    goto LABEL_8;
  }

  [(DAPlayAndRecord *)v25 setError:a13];
  [(AudioFileID *)p_isa setFileName:v20];
  [(AudioFileID *)p_isa setFileURL:v19];
  [(AudioFileID *)p_isa setDelegate:v24];
  [(AudioFileID *)p_isa setNumInputs:v21];
  [(AudioFileID *)p_isa setInputID:a6];
  [(AudioFileID *)p_isa setOutputID:a7];
  [(AudioFileID *)p_isa setSendRawData:a10];
  [(AudioFileID *)p_isa setSequentialAudioInput:a12];
  [(AudioFileID *)p_isa setVolume:v22];
  [(AudioFileID *)p_isa setChannel:v23];
  [(AudioFileID *)p_isa setVolumeNeedsReset:0];
  if (!AudioFileOpenURL(v19, kAudioFileReadPermission, 0x57415645u, p_isa + 8))
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
  v4 = [(DAPlayAndRecord *)self numInputs];
  self->receiveSignals = malloc_type_malloc(8 * [v4 intValue], 0x80040B8603338uLL);

  v5 = [(DAPlayAndRecord *)self numInputs];
  v6 = [v5 intValue];

  if (v6 >= 1)
  {
    for (i = 0; i < v10; ++i)
    {
      [(DAPlayAndRecord *)self fileTimeInFrames];
      self->receiveSignals[i] = malloc_type_malloc(vcvts_n_u32_f32(v8, 2uLL), 0x100004052888210uLL);
      v9 = [(DAPlayAndRecord *)self numInputs];
      v10 = [v9 intValue];
    }
  }

  v11 = [(DAPlayAndRecord *)self numInputs];
  self->recordBufferList = malloc_type_malloc((16 * [v11 intValue]) | 8, 0x10800404ACF7207uLL);

  v12 = [(DAPlayAndRecord *)self numInputs];
  self->recordBufferList->mNumberBuffers = [v12 unsignedIntValue];

  v13 = [(DAPlayAndRecord *)self numInputs];
  v14 = [v13 intValue];

  if (v14 >= 1)
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
      v19 = [(DAPlayAndRecord *)self numInputs];
      ++v16;
      v20 = [v19 intValue];

      v15 += 16;
    }

    while (v16 < v20);
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

    v30 = [(DAPlayAndRecord *)self volume];
    [v30 floatValue];
    v31 = [(DAPlayAndRecord *)self setDeviceVolume:?];

    if (v31)
    {
      v32 = self;
      objc_sync_enter(v32);
      [(DAPlayAndRecord *)v32 setVolumeNeedsReset:1];
      if (![(DAPlayAndRecord *)v32 isCancelled])
      {
        v33 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [(DAPlayAndRecord *)v32 fileURL];
          v35 = [v34 lastPathComponent];
          v36 = [(DAPlayAndRecord *)v32 outputID];
          *buf = 138412546;
          v57 = v35;
          v58 = 2048;
          v59 = v36;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Beginning %@ (outputID = %ld).", buf, 0x16u);
        }

        Property = AUGraphStart(v32->testCaseGraph);
        if (Property)
        {
          [LegacyAudioSystemController setCode:2 forError:[(DAPlayAndRecord *)v32 error]];
          objc_sync_exit(v32);

          return Property;
        }
      }

      objc_sync_exit(v32);
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
    v4 = [(DAPlayAndRecord *)self fileURL];
    v5 = [v4 lastPathComponent];
    v10 = 138412546;
    v11 = v5;
    v12 = 2048;
    v13 = [(DAPlayAndRecord *)self outputID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Ended %@ (outputID = %ld).", &v10, 0x16u);
  }

  [(DAPlayAndRecord *)self resetToPreviousVolume];
  v6 = [(DAPlayAndRecord *)self makeSignalsDataObjects];
  v7 = [NSMutableArray arrayWithArray:v6];
  [(DAPlayAndRecord *)self setResults:v7];

  [(DAPlayAndRecord *)self sendRawData];
  v8 = [(DAPlayAndRecord *)self delegate];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(DAPlayAndRecord *)self delegate];
    [v9 playAndRecordFinished];
  }
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  [(DAPlayAndRecord *)v2 setIsCancelled:1];
  AUGraphStop(v2->testCaseGraph);
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(DAPlayAndRecord *)v2 fileURL];
    v5 = [v4 lastPathComponent];
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = [(DAPlayAndRecord *)v2 outputID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cancelled %@ (outputID = %ld).", &v6, 0x16u);
  }

  objc_sync_exit(v2);
  [(DAPlayAndRecord *)v2 resetToPreviousVolume];
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

- (BOOL)setDeviceVolume:(float)a3
{
  v15 = 0.0;
  v5 = [(DAPlayAndRecord *)self outputID];
  v6 = @"Audio/Video";
  if (!v5)
  {
    v6 = @"PlayAndRecord";
  }

  v7 = v6;
  v8 = +[AVSystemController sharedAVSystemController];
  [v8 getVolume:&v15 forCategory:v7];

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(DAPlayAndRecord *)self outputID];
    *buf = 138413058;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v15;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Changing %@ Volume (outputID = %ld): %f -> %f", buf, 0x2Au);
  }

  v11 = +[AVSystemController sharedAVSystemController];
  *&v12 = a3;
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

- (void)grabPlayBackFrameData:(AudioBufferList *)a3 withNumberOfFrames:(unsigned int)a4
{
  v7 = [(DAPlayAndRecord *)self playFrameCount];
  [(DAPlayAndRecord *)self fileTimeInFrames];
  if (v8 >= v7)
  {
    v9 = [(DAPlayAndRecord *)self channel];
    v10 = [v9 intValue];
    mNumberBuffers = a3->mNumberBuffers;

    if (v10 < mNumberBuffers)
    {
      sourceSignal = self->sourceSignal;
      v13 = &sourceSignal[[(DAPlayAndRecord *)self playFrameCount]];
      v14 = [(DAPlayAndRecord *)self channel];
      memcpy(v13, a3->mBuffers[[v14 intValue]].mData, 4 * a4);

      v15 = [(DAPlayAndRecord *)self playFrameCount]+ a4;

      [(DAPlayAndRecord *)self setPlayFrameCount:v15];
    }
  }
}

- (void)grabRecordedFrameData:(AudioBufferList *)a3 withNumberOfFrames:(unsigned int)a4
{
  v7 = ([(DAPlayAndRecord *)self recordFrameCount]+ a4);
  [(DAPlayAndRecord *)self fileTimeInFrames];
  if (v8 >= v7 && (-[DAPlayAndRecord numInputs](self, "numInputs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 intValue], mNumberBuffers = a3->mNumberBuffers, v9, v10 <= mNumberBuffers))
  {
    v14 = [(DAPlayAndRecord *)self numInputs];
    v15 = [v14 intValue];

    if (v15 >= 1)
    {
      v16 = 0;
      p_mData = &a3->mBuffers[0].mData;
      do
      {
        v18 = self->receiveSignals[v16];
        v19 = [(DAPlayAndRecord *)self recordFrameCount];
        v20 = *p_mData;
        p_mData += 2;
        memcpy(&v18[v19], v20, 4 * a4);
        ++v16;
        v21 = [(DAPlayAndRecord *)self numInputs];
        v22 = [v21 intValue];
      }

      while (v16 < v22);
    }
  }

  else
  {
    v12 = [(DAPlayAndRecord *)self recordFrameCount];
    [(DAPlayAndRecord *)self fileTimeInFrames];
    if ((v13 + 16384.0) <= v12)
    {
      [(DAPlayAndRecord *)self endAudioTestCase];
    }
  }

  v23 = [(DAPlayAndRecord *)self recordFrameCount]+ a4;

  [(DAPlayAndRecord *)self setRecordFrameCount:v23];
}

- (int)createAUGraphWithError:(id *)a3
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
    v9 = [(DAPlayAndRecord *)self numInputs];
    HIDWORD(v44) = [v9 unsignedIntValue];

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

  [LegacyAudioSystemController setCode:v7 forError:a3];
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
    v9 = [(DAPlayAndRecord *)self outputID];
    v10 = [(DAPlayAndRecord *)self inputID];
    v11 = [(DAPlayAndRecord *)self fileName];
    LODWORD(v12) = v8;
    v13 = [(DASignalData *)v4 initWithSourceSignal:sourceSignal receivedSignal:v6 minimumDelay:1900 maximumDelay:3000 fileTimeInFrames:v9 outputID:v10 inputID:v12 fileName:v11];

    [v3 addObject:v13];
  }

  else
  {
    v14 = [(DAPlayAndRecord *)self numInputs];
    v15 = [v14 intValue];

    if (v15 >= 1)
    {
      v16 = 0;
      do
      {
        v17 = [DASignalData alloc];
        v18 = self->sourceSignal;
        v19 = self->receiveSignals[v16];
        [(DAPlayAndRecord *)self fileTimeInFrames];
        v21 = v20;
        v22 = [(DAPlayAndRecord *)self outputID];
        v23 = [(DAPlayAndRecord *)self fileName];
        LODWORD(v24) = v21;
        v25 = [(DASignalData *)v17 initWithSourceSignal:v18 receivedSignal:v19 minimumDelay:1900 maximumDelay:3000 fileTimeInFrames:v22 outputID:v16 inputID:v24 fileName:v23];

        [v3 addObject:v25];
        ++v16;
        v26 = [(DAPlayAndRecord *)self numInputs];
        LODWORD(v18) = [v26 intValue];
      }

      while (v16 < v18);
    }
  }

  free(self->receiveSignals);

  return v3;
}

- (int)calculateFileDurationForFile:(OpaqueAudioFileID *)a3 error:(id *)a4
{
  outPropertyData = 0;
  ioDataSize = 8;
  Property = AudioFileGetProperty(self->testSignalFile, 0x70636E74u, &ioDataSize, &outPropertyData);
  if (Property)
  {
    [LegacyAudioSystemController setCode:-10 forError:a4];
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