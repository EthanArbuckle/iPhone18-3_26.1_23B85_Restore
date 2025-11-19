@interface PHASEExternalOutputStreamDefinition
- (PHASEExternalOutputStreamDefinition)init;
- (PHASEExternalOutputStreamDefinition)initWithStreamCollection:(id)a3 index:(unint64_t)a4 format:(id)a5 maximumFramesToRender:(unsigned int)a6 audioSessionToken:(unsigned int)a7 properties:(id)a8;
- (PHASEExternalOutputStreamDefinition)initWithStreamType:(int64_t)a3 format:(id)a4 maximumFramesToRender:(unsigned int)a5 audioSessionToken:(unsigned int)a6 properties:(id)a7;
- (id)description;
@end

@implementation PHASEExternalOutputStreamDefinition

- (PHASEExternalOutputStreamDefinition)init
{
  [(PHASEExternalOutputStreamDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamDefinition)initWithStreamType:(int64_t)a3 format:(id)a4 maximumFramesToRender:(unsigned int)a5 audioSessionToken:(unsigned int)a6 properties:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = PHASEExternalOutputStreamDefinition;
  v15 = [(PHASEExternalOutputStreamDefinition *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_streamType = a3;
    objc_storeStrong(&v15->_format, a4);
    v16->_maximumFramesToRender = a5;
    v16->_audioSessionToken = a6;
    objc_storeStrong(&v16->_properties, a7);
    if (!v16->_audioSessionToken)
    {
      v16->_audioSessionToken = sDefaultAudioSessionToken();
    }
  }

  return v16;
}

- (PHASEExternalOutputStreamDefinition)initWithStreamCollection:(id)a3 index:(unint64_t)a4 format:(id)a5 maximumFramesToRender:(unsigned int)a6 audioSessionToken:(unsigned int)a7 properties:(id)a8
{
  v9 = *&a7;
  v10 = *&a6;
  v32 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = [v15 streamCount];
  if (v18 <= a4)
  {
    v22 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "PHASEExternalStream.mm";
      v26 = 1024;
      v27 = 333;
      v28 = 2048;
      v29 = a4;
      v30 = 2048;
      v31 = [v15 streamCount];
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid stream index %lu for stream count %lu", &v24, 0x26u);
    }

    v21 = 0;
  }

  else
  {
    v19 = -[PHASEExternalOutputStreamDefinition initWithStreamType:format:maximumFramesToRender:audioSessionToken:properties:](self, "initWithStreamType:format:maximumFramesToRender:audioSessionToken:properties:", [v15 streamType], v16, v10, v9, v17);
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_streamCollection, a3);
      v20->_streamIndex = a4;
    }

    self = v20;
    v21 = self;
  }

  return v21;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  streamType_low = LODWORD(self->_streamType);
  streamCollection = self->_streamCollection;
  if (streamCollection)
  {
    v2 = [(PHASEExternalStreamCollection *)self->_streamCollection uuid];
    v7 = [v2 UUIDString];
  }

  else
  {
    v7 = @"-";
  }

  streamIndex = self->_streamIndex;
  audioSessionToken = self->_audioSessionToken;
  v10 = [(AVAudioFormat *)self->_format description];
  v11 = [v4 stringWithFormat:@"<ExternalOutputStreamDefinition@%p, type %d, collection [%@, %lu], audioSession 0x%x, format %s, max frames %d>", self, streamType_low, v7, streamIndex, audioSessionToken, objc_msgSend(v10, "UTF8String"), self->_maximumFramesToRender];

  if (streamCollection)
  {
  }

  return v11;
}

@end