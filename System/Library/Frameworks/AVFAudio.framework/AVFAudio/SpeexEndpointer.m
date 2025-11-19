@interface SpeexEndpointer
- (BOOL)configureWithASBD:(AudioStreamBasicDescription *)a3 andFrameRate:(unsigned int)a4;
- (BOOL)configureWithSampleRate:(double)a3 andFrameRate:(unsigned int)a4;
- (SpeexEndpointer)init;
- (int)getStatus:(float *)a3 count:(unsigned int)a4;
- (void)dealloc;
- (void)reset;
- (void)setEndWaitTime:(double)a3;
- (void)setEndpointMode:(int)a3;
- (void)setInterspeechWaitTime:(double)a3;
- (void)setStartWaitTime:(double)a3;
@end

@implementation SpeexEndpointer

- (void)setEndWaitTime:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = fmax(a3, 0.25);
  if (a3 == -1.0)
  {
    v6 = 10000000.0;
  }

  else
  {
    v6 = v5;
  }

  self->mEndWaitTime = v6;
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!*kAVVCScope)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "SpeexEndpointer.mm";
    v13 = 1024;
    v14 = 260;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer setEndWaitTime: %f", &v11, 0x1Cu);
  }

LABEL_10:
  if (impl->var0)
  {
    LODWORD(v5) = self->mFrameRate;
    v8 = (self->mEndWaitTime * *&v5);
    *(impl->var0 + 10) = v8;
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "QualityDetector.cpp";
      v13 = 1024;
      v14 = 190;
      v15 = 1024;
      LODWORD(v16) = v8;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d QualityDetector: End Timeout: %u frames", &v11, 0x18u);
    }
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setInterspeechWaitTime:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = fmax(a3, 0.25);
  if (a3 == -1.0)
  {
    v6 = 10000000.0;
  }

  else
  {
    v6 = v5;
  }

  self->mInterspeechWaitTime = v6;
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!*kAVVCScope)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "SpeexEndpointer.mm";
    v13 = 1024;
    v14 = 246;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer setInterspeechWaitTime: %f", &v11, 0x1Cu);
  }

LABEL_10:
  if (impl->var0)
  {
    LODWORD(v5) = self->mFrameRate;
    v8 = (self->mInterspeechWaitTime * *&v5);
    *(impl->var0 + 8) = v8;
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "QualityDetector.cpp";
      v13 = 1024;
      v14 = 184;
      v15 = 1024;
      LODWORD(v16) = v8;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d QualityDetector: Interspeech Timeout: %u frames", &v11, 0x18u);
    }
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setStartWaitTime:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v5 = fmax(a3, 0.25);
  if (a3 == -1.0)
  {
    v6 = 10000000.0;
  }

  else
  {
    v6 = v5;
  }

  self->mStartWaitTime = v6;
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!*kAVVCScope)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "SpeexEndpointer.mm";
    v13 = 1024;
    v14 = 232;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer setStartWaitTime: %f", &v11, 0x1Cu);
  }

LABEL_10:
  if (impl->var0)
  {
    LODWORD(v5) = self->mFrameRate;
    v8 = (self->mStartWaitTime * *&v5);
    *(impl->var0 + 9) = v8;
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "QualityDetector.cpp";
      v13 = 1024;
      v14 = 178;
      v15 = 1024;
      LODWORD(v16) = v8;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d QualityDetector: Start Timeout: %u frames", &v11, 0x18u);
    }
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setEndpointMode:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  self->mEndpointMode = a3;
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!*kAVVCScope)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "SpeexEndpointer.mm";
    v11 = 1024;
    v12 = 218;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer setEndpointMode: %d", &v9, 0x18u);
  }

LABEL_7:
  if (impl->var0)
  {
    if (self->mEndpointMode == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(impl->var0 + 5) = v7;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  impl = self->_impl;
  var0 = impl->var0;
  if (impl->var0)
  {
    if (var0[2])
    {
      v4 = 0;
      v5 = *var0;
      do
      {
        *(v5 + 4 * v4++) = 0;
      }

      while (v4 < var0[2]);
    }

    *(var0 + 6) = 0;
    var0[11] = 0;
  }

  var1 = impl->var1;
  bzero(*(var1 + 1), 4 * *var1);
  *(var1 + 6) = 0;
}

- (BOOL)configureWithASBD:(AudioStreamBasicDescription *)a3 andFrameRate:(unsigned int)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x10) != 0)
    {
      v6 = *kAVVCScope;
      if (*kAVVCScope)
      {
        if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315394;
          v14 = "SpeexEndpointer.mm";
          v15 = 1024;
          v16 = 169;
          _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer configureWithASBD:andFrameRate", &v13, 0x12u);
        }
      }
    }
  }

  var0 = self->_impl->var0;
  if (var0)
  {
    QualityDetectorDestroy(var0);
  }

  if (!a4)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "SpeexEndpointer.mm";
      v15 = 1024;
      v16 = 175;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SpeexEndpointer configureWithSampleRate:andFrameRate: illegal frame rate!", &v13, 0x12u);
    }
  }

LABEL_9:
  self->mFrameRate = a4;
  mInterspeechWaitTime = self->mInterspeechWaitTime;
  v9 = (self->mStartWaitTime * a4);
  v10 = (self->mEndWaitTime * a4);
  self->mEndpointMode;
  QualityDetectorCreate();
}

- (BOOL)configureWithSampleRate:(double)a3 andFrameRate:(unsigned int)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x10) != 0)
    {
      v6 = *kAVVCScope;
      if (*kAVVCScope)
      {
        if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
        {
          v13 = 136315394;
          v14 = "SpeexEndpointer.mm";
          v15 = 1024;
          v16 = 140;
          _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer configureWithSampleRate:", &v13, 0x12u);
        }
      }
    }
  }

  var0 = self->_impl->var0;
  if (var0)
  {
    QualityDetectorDestroy(var0);
  }

  if (!a4)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!*kAVVCScope)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "SpeexEndpointer.mm";
      v15 = 1024;
      v16 = 146;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SpeexEndpointer configureWithSampleRate:andFrameRate: illegal frame rate!", &v13, 0x12u);
    }
  }

LABEL_9:
  self->mFrameRate = a4;
  mInterspeechWaitTime = self->mInterspeechWaitTime;
  v9 = (self->mStartWaitTime * a4);
  v10 = (self->mEndWaitTime * a4);
  self->mEndpointMode;
  QualityDetectorCreate();
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x10) != 0)
    {
      v3 = *kAVVCScope;
      if (*kAVVCScope)
      {
        if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v11 = "SpeexEndpointer.mm";
          v12 = 1024;
          v13 = 128;
          _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer dealloc:", buf, 0x12u);
        }
      }
    }
  }

  impl = self->_impl;
  if (impl->var0)
  {
    QualityDetectorDestroy(impl->var0);
  }

  var1 = impl->var1;
  if (var1)
  {
    v6 = *(var1 + 1);
    if (v6)
    {
      MEMORY[0x1BFAF57D0](v6, 0x1000C8052888210);
    }

    v7 = *(var1 + 2);
    if (v7)
    {
      MEMORY[0x1BFAF57D0](v7, 0x1000C8052888210);
    }

    MEMORY[0x1BFAF5800](var1, 0x1080C40ABE71A98);
  }

  MEMORY[0x1BFAF5800](impl, 0xA0C40BD48D6D6);
  self->_impl = 0;
  v9.receiver = self;
  v9.super_class = SpeexEndpointer;
  [(SpeexEndpointer *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (SpeexEndpointer)init
{
  v10 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = SpeexEndpointer;
  if ([(SpeexEndpointer *)&v5 init])
  {
    operator new();
  }

  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x10) != 0)
    {
      v2 = *kAVVCScope;
      if (*kAVVCScope)
      {
        if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v7 = "SpeexEndpointer.mm";
          v8 = 1024;
          v9 = 122;
          _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer init:", buf, 0x12u);
        }
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int)getStatus:(float *)a3 count:(unsigned int)a4
{
  v78 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (!impl->var0)
  {
    CAVerboseAbort();
  }

  if (a4)
  {
    v6 = 0;
    v7 = 0;
    v8 = a4;
    while (1)
    {
      v9 = 0;
      var1 = impl->var1;
      v11 = 0.0;
      v12 = fmaxf(a3[v6], 0.0);
      v13 = *var1;
      v14 = (*(var1 + 6) + 1) % v13;
      *(var1 + 6) = v14;
      v15 = *(var1 + 1);
      *(v15 + 4 * v14) = v12;
      v16 = *(var1 + 2);
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      v18 = 4 * v17;
      do
      {
        v19 = *(v15 + 4 * v14);
        *&v16[v9] = v19;
        v11 = v11 + v19;
        if (!v14)
        {
          v14 = v13;
        }

        --v14;
        v9 += 4;
      }

      while (v18 != v9);
      v20 = v11 / v13;
      v21 = *(*(var1 + 2) + ((2 * *var1) & 0x1FFFFFFFCLL));
      v23 = v21 > 7.0 && v20 >= 7.0;
      if (kAVVCScope)
      {
        if ((*(kAVVCScope + 12) & 0x10) != 0)
        {
          v24 = *kAVVCScope;
          if (*kAVVCScope)
          {
            if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
            {
              v25 = a3[v6];
              *buf = 136316930;
              v63 = "SpeexEndpointer.mm";
              v64 = 1024;
              v65 = 281;
              v66 = 1024;
              v67 = v6;
              v68 = 1024;
              v69 = a4;
              v70 = 2048;
              v71 = v25;
              v72 = 2048;
              v73 = v20;
              v74 = 2048;
              v75 = v21;
              v76 = 1024;
              v77 = v23;
              _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d SpeexEndpointer getStatus: Raw Speex qlty frame %d/%d: %.2f rnng avrg: %.2f, med: %.2f, cls: %d", buf, 0x42u);
            }
          }
        }
      }

      var0 = impl->var0;
      v27 = (*(impl->var0 + 11) + 1) % *(impl->var0 + 2);
      *(var0 + 44) = v27;
      *(*var0 + 4 * v27) = v23;
      v28 = *(var0 + 48);
      switch(v28)
      {
        case 2:
          if (kAVVCScope)
          {
            if ((*(kAVVCScope + 12) & 0x10) != 0)
            {
              v38 = *kAVVCScope;
              if (*kAVVCScope)
              {
                if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
                {
                  v39 = *(var0 + 52);
                  v40 = *(var0 + 32);
                  *buf = 136315906;
                  v63 = "QualityDetector.cpp";
                  v64 = 1024;
                  v65 = 139;
                  v66 = 1024;
                  v67 = v39;
                  v68 = 1024;
                  v69 = v40;
                  _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: Speech Ending; End Counter %u / %u", buf, 0x1Eu);
                }
              }
            }
          }

          v41 = *(var0 + 52) + 1;
          *(var0 + 52) = v41;
          if (SummedFrameQuality > *(var0 + 24))
          {
            *(var0 + 52) = 0;
            if (kAVVCScope)
            {
              v42 = *kAVVCScope;
              if (!*kAVVCScope)
              {
LABEL_72:
                *(var0 + 48) = 1;
                break;
              }
            }

            else
            {
              v42 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "QualityDetector.cpp";
              v64 = 1024;
              v65 = 143;
              _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: ENDING => ACTIVE", buf, 0x12u);
            }

            goto LABEL_72;
          }

          if (v41 >= *(var0 + 32))
          {
            v46 = kAVVCScope;
            if (kAVVCScope)
            {
              v48 = *kAVVCScope;
              if (!*kAVVCScope)
              {
LABEL_68:
                *(var0 + 48) = 3;
                goto LABEL_98;
              }
            }

            else
            {
              v48 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "QualityDetector.cpp";
              v64 = 1024;
              v65 = 147;
              v53 = v48;
              v54 = "%25s:%-5d QualityDetector: ENDING => ENDED";
              goto LABEL_96;
            }

LABEL_97:
            v46 = kAVVCScope;
            *(var0 + 48) = 3;
            if (v46)
            {
LABEL_98:
              v56 = *v46;
              if (!*v46)
              {
LABEL_103:
                v7 = 3;
                break;
              }
            }

            else
            {
              v56 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "SpeexEndpointer.mm";
              v64 = 1024;
              v65 = 294;
              _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### SpeexEndpointer: Detected hard end point ####\n", buf, 0x12u);
            }

            goto LABEL_103;
          }

          break;
        case 1:
          v34 = *(var0 + 52);
          v35 = *(var0 + 40);
          if (v34 < v35)
          {
            if (kAVVCScope)
            {
              if ((*(kAVVCScope + 12) & 0x10) != 0)
              {
                v36 = *kAVVCScope;
                if (*kAVVCScope)
                {
                  if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315906;
                    v63 = "QualityDetector.cpp";
                    v64 = 1024;
                    v65 = 111;
                    v66 = 1024;
                    v67 = v34;
                    v68 = 1024;
                    v69 = v35;
                    _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: Active; End Counter %u / %u", buf, 0x1Eu);
                    v34 = *(var0 + 52);
                  }
                }
              }
            }

            *(var0 + 52) = v34 + 1;
            break;
          }

          v43 = v33;
          if (kAVVCScope)
          {
            if ((*(kAVVCScope + 12) & 0x10) != 0)
            {
              v44 = *kAVVCScope;
              if (*kAVVCScope)
              {
                if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  v63 = "QualityDetector.cpp";
                  v64 = 1024;
                  v65 = 115;
                  v66 = 1024;
                  v67 = v43;
                  _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: Active; Watching for end point (current frame quality: %u)", buf, 0x18u);
                }
              }
            }
          }

          if (v43 >= *(var0 + 28))
          {
            break;
          }

          v45 = *(var0 + 20);
          if (v45 == 2)
          {
            *(var0 + 52) = 0;
            if (kAVVCScope)
            {
              v55 = *kAVVCScope;
              if (!*kAVVCScope)
              {
                goto LABEL_109;
              }
            }

            else
            {
              v55 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "QualityDetector.cpp";
              v64 = 1024;
              v65 = 126;
              _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: ACTIVE => ENDING", buf, 0x12u);
            }

LABEL_109:
            *(var0 + 48) = 2;
            if (self->mEndpointMode == 2)
            {
              if (!kAVVCScope)
              {
                v57 = MEMORY[0x1E69E9C10];
LABEL_114:
                v7 = 2;
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v63 = "SpeexEndpointer.mm";
                  v64 = 1024;
                  v65 = 289;
                  _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### SpeexEndpointer: Detected soft end point ####\n", buf, 0x12u);
                }

                break;
              }

              v57 = *kAVVCScope;
              if (*kAVVCScope)
              {
                goto LABEL_114;
              }

              v7 = 2;
            }

            break;
          }

          if (v45 == 1)
          {
            v46 = kAVVCScope;
            if (kAVVCScope)
            {
              v47 = *kAVVCScope;
              if (!*kAVVCScope)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v47 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_97;
            }

            *buf = 136315394;
            v63 = "QualityDetector.cpp";
            v64 = 1024;
            v65 = 120;
            v53 = v47;
            v54 = "%25s:%-5d QualityDetector: ACTIVE => ENDED";
LABEL_96:
            _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_DEBUG, v54, buf, 0x12u);
            goto LABEL_97;
          }

          *(var0 + 48) = 4;
          break;
        case 0:
          v30 = *(var0 + 52) + 1;
          *(var0 + 52) = v30;
          if (v29 <= *(var0 + 24))
          {
            if (kAVVCScope)
            {
              if ((*(kAVVCScope + 12) & 0x10) != 0)
              {
                v49 = *kAVVCScope;
                if (*kAVVCScope)
                {
                  if (os_log_type_enabled(*kAVVCScope, OS_LOG_TYPE_DEBUG))
                  {
                    v50 = *(var0 + 36);
                    *buf = 136315906;
                    v63 = "QualityDetector.cpp";
                    v64 = 1024;
                    v65 = 100;
                    v66 = 1024;
                    v67 = v30;
                    v68 = 1024;
                    v69 = v50;
                    _os_log_impl(&dword_1BA5AC000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: NoSpeech; End Counter %u / %u", buf, 0x1Eu);
                    v30 = *(var0 + 52);
                  }
                }
              }
            }

            if (v30 <= *(var0 + 36))
            {
              break;
            }

            v46 = kAVVCScope;
            if (kAVVCScope)
            {
              v51 = *kAVVCScope;
              if (!*kAVVCScope)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v51 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_97;
            }

            *buf = 136315394;
            v63 = "QualityDetector.cpp";
            v64 = 1024;
            v65 = 102;
            v53 = v51;
            v54 = "%25s:%-5d QualityDetector: NONE => ENDED (TIMEOUT AT START)";
            goto LABEL_96;
          }

          *(var0 + 52) = 0;
          v31 = kAVVCScope;
          if (!kAVVCScope)
          {
            v32 = MEMORY[0x1E69E9C10];
LABEL_74:
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "QualityDetector.cpp";
              v64 = 1024;
              v65 = 94;
              _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d QualityDetector: NONE => ACTIVE", buf, 0x12u);
              v31 = kAVVCScope;
            }

            *(var0 + 48) = 1;
            if (v31)
            {
              v52 = *v31;
              if (!*v31)
              {
LABEL_82:
                v7 = 1;
                break;
              }
            }

            else
            {
              v52 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v63 = "SpeexEndpointer.mm";
              v64 = 1024;
              v65 = 284;
              _os_log_impl(&dword_1BA5AC000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### SpeexEndpointer: Detected start point ####\n", buf, 0x12u);
            }

            goto LABEL_82;
          }

          v32 = *kAVVCScope;
          if (*kAVVCScope)
          {
            goto LABEL_74;
          }

          v7 = 1;
          *(var0 + 48) = 1;
          break;
      }

      if (++v6 == v8)
      {
        goto LABEL_117;
      }
    }
  }

  v7 = 0;
LABEL_117:
  self->mLastStatus = v7;
  v58 = *MEMORY[0x1E69E9840];
  return v7;
}

@end