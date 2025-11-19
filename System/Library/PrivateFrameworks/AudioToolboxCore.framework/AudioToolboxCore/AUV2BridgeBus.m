@interface AUV2BridgeBus
- (AUV2BridgeBus)initWithOwner:(id)a3 au:(OpaqueAudioComponentInstance *)a4 scope:(unsigned int)a5 element:(unsigned int)a6;
- (BOOL)setFormat:(id)a3 error:(id *)a4;
- (id)format;
@end

@implementation AUV2BridgeBus

- (BOOL)setFormat:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(AUV2BridgeBus *)self willChangeValueForKey:@"format"];
  v7 = AudioUnitSetProperty(self->_audioUnit, 8u, self->_scope, self->_element, [v6 streamDescription], 0x28u);
  if (!v7)
  {
    v8 = [v6 channelLayout];
    v9 = v8;
    if (v8)
    {
      audioUnit = self->_audioUnit;
      scope = self->_scope;
      element = self->_element;
      v13 = [v8 layout];
      v14 = v9;
      inData = v13;
      if ([v14 layout])
      {
        v15 = audioUnit;
        if (*[v14 layout])
        {
          v16 = 12;
        }

        else
        {
          v16 = 20 * *([v14 layout] + 8) + 12;
        }
      }

      else
      {
        v15 = audioUnit;
        v16 = 0;
      }

      AudioUnitSetProperty(v15, 0x13u, scope, element, inData, v16);
    }
  }

  [(AUV2BridgeBus *)self didChangeValueForKey:@"format"];
  if (a4)
  {
    if (v7)
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
      *a4 = v17;
    }

    else
    {
      *a4 = 0;
    }
  }

  return v7 == 0;
}

- (id)format
{
  v3 = 0;
  v64 = *MEMORY[0x1E69E9840];
  ioDataSize = 0;
  v4 = 50;
  v5 = 4;
  v6 = AudioComponentRegistrarClient;
  v7 = &OBJC_IVAR___AUHostingServiceInstanceMap__instances;
  while (1)
  {

    if (v5 != 4)
    {
      usleep(1000 * v4);
      v4 *= 2;
    }

    ioDataSize = 40;
    if (AudioUnitGetProperty(self->_audioUnit, 8u, self->_scope, self->_element, outData, &ioDataSize))
    {
      v3 = 0;
      v23 = 0;
      goto LABEL_56;
    }

    ioDataSize = 0;
    if (AudioUnitGetPropertyInfo(self->_audioUnit, 0x13u, self->_scope, self->_element, &ioDataSize, 0))
    {
      break;
    }

    std::vector<unsigned char>::vector[abi:ne200100](&__p, ioDataSize);
    if (AudioUnitGetProperty(self->_audioUnit, 0x13u, self->_scope, self->_element, __p, &ioDataSize))
    {
      v3 = 0;
    }

    else
    {
      v3 = [getAVAudioChannelLayoutClass() layoutWithLayout:__p];
      v8 = [v3 channelCount];
      if (v8 != v51)
      {
        vtable = v6[12].vtable;
        if (vtable)
        {
          v12 = *vtable;
          if (!v12)
          {
LABEL_29:
            v9 = 0;
            goto LABEL_10;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
          v12 = v13;
        }

        v15 = v12;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          audioUnit = self->_audioUnit;
          WeakRetained = objc_loadWeakRetained((&self->super.super.isa + v7[15]));
          v44 = v4;
          v45 = WeakRetained;
          log = v15;
          v43 = audioUnit;
          if (WeakRetained)
          {
            [WeakRetained componentDescription];
          }

          else
          {
            memset(&v47, 0, sizeof(v47));
          }

          CAFormatter::CAFormatter(&v48, &v47);
          v18 = v48;
          element = self->_element;
          scope = self->_scope;
          v21 = v51;
          v22 = [v3 channelCount];
          *buf = 136316930;
          *&buf[4] = "AUAudioUnitV2Bridge.mm";
          *&buf[12] = 1024;
          *&buf[14] = 384;
          *&buf[18] = 2048;
          *&buf[20] = v43;
          *&buf[28] = 2080;
          *&buf[30] = v18;
          *&buf[38] = 1024;
          v57 = element;
          v58 = 1024;
          v59 = scope;
          v60 = 1024;
          v61 = v21;
          v62 = 1024;
          v63 = v22;
          v15 = log;
          _os_log_impl(&dword_18F5DF000, log, OS_LOG_TYPE_DEBUG, "%25s:%-5d au@%p {%s} (bus %d, scope %d): inconsistent #channels in asbd %d, layout %d.. retrying", buf, 0x3Eu);
          if (v48)
          {
            free(v48);
          }

          v7 = &OBJC_IVAR___AUHostingServiceInstanceMap__instances;
          v6 = AudioComponentRegistrarClient;
          v4 = v44;
        }

        goto LABEL_29;
      }
    }

    v9 = 1;
LABEL_10:
    if (__p)
    {
      p_p = __p;
      operator delete(__p);
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    --v5;
    if (v10)
    {
      goto LABEL_32;
    }
  }

  v3 = 0;
LABEL_32:
  if (!v3 && v51 >= 3)
  {
    v3 = [getAVAudioChannelLayoutClass() layoutWithLayoutTag:v51 | 0x930000];
  }

  if (v3)
  {
    v24 = [v3 channelCount];
    v25 = v51;
    if (v24 != v51)
    {
      v26 = v6[12].vtable;
      if (v26)
      {
        v27 = *v26;
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v27 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      v29 = v27;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_audioUnit;
        v31 = objc_loadWeakRetained((&self->super.super.isa + v7[15]));
        v32 = v31;
        if (v31)
        {
          [v31 componentDescription];
        }

        else
        {
          __p = 0;
          p_p = 0;
          LODWORD(v54) = 0;
        }

        CAFormatter::CAFormatter(&v47, &__p);
        v33 = *&v47.componentType;
        v34 = self->_element;
        v35 = self->_scope;
        v36 = v51;
        v37 = [v3 channelCount];
        *buf = 136316930;
        *&buf[4] = "AUAudioUnitV2Bridge.mm";
        *&buf[12] = 1024;
        *&buf[14] = 402;
        *&buf[18] = 2048;
        *&buf[20] = v30;
        *&buf[28] = 2080;
        *&buf[30] = v33;
        *&buf[38] = 1024;
        v57 = v34;
        v58 = 1024;
        v59 = v35;
        v60 = 1024;
        v61 = v36;
        v62 = 1024;
        v63 = v37;
        _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d au@%p {%s} (bus %d, scope %d): inconsistent #channels in asbd %d, layout %d, faking a format", buf, 0x3Eu);
        if (*&v47.componentType)
        {
          free(*&v47.componentType);
        }
      }

      v25 = v51;
LABEL_49:
      if (v25 < 3)
      {
        v38 = 0;
      }

      else
      {
        v38 = [getAVAudioChannelLayoutClass() layoutWithLayoutTag:v51 | 0x930000];
      }

      v3 = v38;
    }
  }

  __p = 0;
  p_p = &__p;
  v54 = 0x2050000000;
  v39 = getAVAudioFormatClass(void)::softClass;
  v55 = getAVAudioFormatClass(void)::softClass;
  if (!getAVAudioFormatClass(void)::softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL21getAVAudioFormatClassv_block_invoke_9360;
    *&buf[24] = &unk_1E72C2B68;
    *&buf[32] = &__p;
    ___ZL21getAVAudioFormatClassv_block_invoke_9360(buf);
    v39 = p_p[3];
  }

  v40 = v39;
  _Block_object_dispose(&__p, 8);
  v23 = [[v39 alloc] initWithStreamDescription:outData channelLayout:v3];
LABEL_56:

  v41 = *MEMORY[0x1E69E9840];

  return v23;
}

- (AUV2BridgeBus)initWithOwner:(id)a3 au:(OpaqueAudioComponentInstance *)a4 scope:(unsigned int)a5 element:(unsigned int)a6
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = AUV2BridgeBus;
  v11 = [(AUV2BridgeBus *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_owner, v10);
    v12->_audioUnit = a4;
    v12->_scope = a5;
    v12->_element = a6;
  }

  return v12;
}

@end