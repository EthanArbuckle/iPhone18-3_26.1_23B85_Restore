@interface SKSoundBuffer
+ (id)bufferWithFileNamed:(id)a3;
- (SKSoundBuffer)init;
- (id)description;
- (void)dealloc;
@end

@implementation SKSoundBuffer

- (SKSoundBuffer)init
{
  v6.receiver = self;
  v6.super_class = SKSoundBuffer;
  v2 = [(SKSoundBuffer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_bufferId = 0;
    path = v2->_path;
    v2->_path = 0;

    v3->_duration = 0.0;
  }

  return v3;
}

+ (id)bufferWithFileNamed:(id)a3
{
  v3 = a3;
  v4 = +[SKSoundContext currentContext];

  if (!v4)
  {
    goto LABEL_44;
  }

  if (+[SKSoundBuffer bufferWithFileNamed:]::onceToken == -1)
  {
    if (!v3)
    {
      goto LABEL_44;
    }
  }

  else
  {
    +[SKSoundBuffer bufferWithFileNamed:];
    if (!v3)
    {
      goto LABEL_44;
    }
  }

  if ([v3 isAbsolutePath])
  {
    v3 = v3;
    v5 = v3;
    goto LABEL_9;
  }

  v6 = [v3 pathExtension];
  if (![v6 length])
  {
    v7 = [v3 stringByAppendingPathExtension:@"caf"];

    v3 = v7;
  }

  v8 = SKGetResourceBundle();
  v5 = [v8 pathForResource:v3 ofType:0];

  if (v5)
  {
LABEL_9:
    v9 = [_buffers objectForKey:v5];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 nonretainedObjectValue];
      if (v11)
      {
        goto LABEL_11;
      }
    }

    v11 = objc_alloc_init(SKSoundBuffer);
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v14 = v13;
    if (!v13)
    {
LABEL_15:
      v12 = 0;
      goto LABEL_20;
    }

    outAudioFile = 0;
    if (AudioFileOpenURL(v13, kAudioFileReadPermission, 0, &outAudioFile))
    {
LABEL_14:

      goto LABEL_15;
    }

    ioNumBytes = 0;
    ioDataSize = 40;
    if (AudioFileGetProperty(outAudioFile, 0x64666D74u, &ioDataSize, &outPropertyData))
    {
      AudioFileClose(outAudioFile);
      goto LABEL_18;
    }

    v15 = outPropertyData;
    if (v39 == 1819304813)
    {
      if (v41 == 16)
      {
        v16 = v40 == 1;
        v17 = 4355;
        v18 = 4353;
LABEL_30:
        if (v16)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        inPropertyData = 0.0;
        ioDataSize = 8;
        AudioFileGetProperty(outAudioFile, 0x65647572u, &ioDataSize, &inPropertyData);
        *&size.mNumberBuffers = 0;
        ioDataSize = 8;
        if (AudioFileGetProperty(outAudioFile, 0x62636E74u, &ioDataSize, &size))
        {
          AudioFileClose(outAudioFile);
        }

        else
        {
          ioNumBytes = size.mNumberBuffers;
          v20 = malloc_type_malloc(size.mNumberBuffers, 0x7EB0DE02uLL);
          if (!AudioFileReadBytes(outAudioFile, 0, 0, &ioNumBytes, v20))
          {
            AudioFileClose(outAudioFile);
            LODWORD(outExtAudioFile) = 0;
            alGenBuffers(1, &outExtAudioFile);
            alBufferData(outExtAudioFile, v19, v20, ioNumBytes, v15);
            free(v20);
            objc_storeStrong(&v11->_path, v5);
            v11->_bufferId = outExtAudioFile;
            v11->_duration = inPropertyData;
            v21 = _buffers;
            v22 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v11];
            [v21 setObject:v22 forKey:v11->_path];

LABEL_11:
            v11 = v11;
            v12 = v11;
LABEL_20:

            goto LABEL_45;
          }

          AudioFileClose(outAudioFile);
          if (v20)
          {
            free(v20);
          }
        }

        goto LABEL_14;
      }

      if (v41 == 8)
      {
        v16 = v40 == 1;
        v17 = 4354;
        v18 = 4352;
        goto LABEL_30;
      }
    }

    outExtAudioFile = 0;
    if (ExtAudioFileWrapAudioFileID(outAudioFile, 0, &outExtAudioFile))
    {
      AudioFileClose(outAudioFile);
    }

    else
    {
      inPropertyData = v15;
      v34 = xmmword_21C4B9A80;
      v35 = xmmword_21C4B9A90;
      ioDataSize = 40;
      if (ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, &inPropertyData))
      {
        ExtAudioFileDispose(outExtAudioFile);
      }

      else
      {
        v32 = 0;
        ioDataSize = 8;
        if (ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioDataSize, &v32))
        {
          ExtAudioFileDispose(outExtAudioFile);
        }

        else
        {
          v31 = 0.0;
          ioDataSize = 8;
          if (AudioFileGetProperty(outAudioFile, 0x65647572u, &ioDataSize, &v31))
          {
            ExtAudioFileDispose(outExtAudioFile);
          }

          else
          {
            v24 = v35 * v32;
            ioNumberFrames = v32;
            v25 = malloc_type_malloc(v35 * v32, 0x532AE31AuLL);
            size.mNumberBuffers = 1;
            size.mBuffers[0].mNumberChannels = 2;
            size.mBuffers[0].mDataByteSize = v24;
            size.mBuffers[0].mData = v25;
            if (!ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &size))
            {
              ExtAudioFileDispose(outExtAudioFile);
              buffers = 0;
              alGenBuffers(1, &buffers);
              alBufferData(buffers, 4355, v25, v24, v15);
              free(v25);
              objc_storeStrong(&v11->_path, v5);
              v11->_bufferId = buffers;
              v11->_duration = v31;
              v26 = _buffers;
              v27 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v11];
              [v26 setObject:v27 forKey:v11->_path];

              v12 = v11;
              goto LABEL_19;
            }

            ExtAudioFileDispose(outExtAudioFile);
            if (v25)
            {
              free(v25);
            }
          }
        }
      }
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

LABEL_44:
  v12 = 0;
LABEL_45:

  return v12;
}

void __37__SKSoundBuffer_bufferWithFileNamed___block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:?];
  v2 = _buffers;
  _buffers = v1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSString *)self->_path lastPathComponent];
  v5 = [v3 stringWithFormat:@"file:'%@' duration:%.2f bufferId:%d", v4, *&self->_duration, self->_bufferId];

  return v5;
}

- (void)dealloc
{
  p_bufferId = &self->_bufferId;
  if (self->_bufferId)
  {
    [_buffers removeObjectForKey:self->_path];
    alDeleteBuffers(1, p_bufferId);
    *p_bufferId = 0;
  }

  v4.receiver = self;
  v4.super_class = SKSoundBuffer;
  [(SKSoundBuffer *)&v4 dealloc];
}

@end