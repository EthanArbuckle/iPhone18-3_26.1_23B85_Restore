@interface PHASEExternalOutputStreamDefinition
- (PHASEExternalOutputStreamDefinition)init;
- (PHASEExternalOutputStreamDefinition)initWithStreamCollection:(id)collection index:(unint64_t)index format:(id)format maximumFramesToRender:(unsigned int)render audioSessionToken:(unsigned int)token properties:(id)properties;
- (PHASEExternalOutputStreamDefinition)initWithStreamType:(int64_t)type format:(id)format maximumFramesToRender:(unsigned int)render audioSessionToken:(unsigned int)token properties:(id)properties;
- (id)description;
@end

@implementation PHASEExternalOutputStreamDefinition

- (PHASEExternalOutputStreamDefinition)init
{
  [(PHASEExternalOutputStreamDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamDefinition)initWithStreamType:(int64_t)type format:(id)format maximumFramesToRender:(unsigned int)render audioSessionToken:(unsigned int)token properties:(id)properties
{
  formatCopy = format;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = PHASEExternalOutputStreamDefinition;
  v15 = [(PHASEExternalOutputStreamDefinition *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_streamType = type;
    objc_storeStrong(&v15->_format, format);
    v16->_maximumFramesToRender = render;
    v16->_audioSessionToken = token;
    objc_storeStrong(&v16->_properties, properties);
    if (!v16->_audioSessionToken)
    {
      v16->_audioSessionToken = sDefaultAudioSessionToken();
    }
  }

  return v16;
}

- (PHASEExternalOutputStreamDefinition)initWithStreamCollection:(id)collection index:(unint64_t)index format:(id)format maximumFramesToRender:(unsigned int)render audioSessionToken:(unsigned int)token properties:(id)properties
{
  v9 = *&token;
  v10 = *&render;
  v32 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  formatCopy = format;
  propertiesCopy = properties;
  streamCount = [collectionCopy streamCount];
  if (streamCount <= index)
  {
    v22 = **(Phase::Logger::GetInstance(streamCount) + 448);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "PHASEExternalStream.mm";
      v26 = 1024;
      v27 = 333;
      v28 = 2048;
      indexCopy = index;
      v30 = 2048;
      streamCount2 = [collectionCopy streamCount];
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid stream index %lu for stream count %lu", &v24, 0x26u);
    }

    selfCopy = 0;
  }

  else
  {
    v19 = -[PHASEExternalOutputStreamDefinition initWithStreamType:format:maximumFramesToRender:audioSessionToken:properties:](self, "initWithStreamType:format:maximumFramesToRender:audioSessionToken:properties:", [collectionCopy streamType], formatCopy, v10, v9, propertiesCopy);
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_streamCollection, collection);
      v20->_streamIndex = index;
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  streamType_low = LODWORD(self->_streamType);
  streamCollection = self->_streamCollection;
  if (streamCollection)
  {
    uuid = [(PHASEExternalStreamCollection *)self->_streamCollection uuid];
    uUIDString = [uuid UUIDString];
  }

  else
  {
    uUIDString = @"-";
  }

  streamIndex = self->_streamIndex;
  audioSessionToken = self->_audioSessionToken;
  v10 = [(AVAudioFormat *)self->_format description];
  v11 = [v4 stringWithFormat:@"<ExternalOutputStreamDefinition@%p, type %d, collection [%@, %lu], audioSession 0x%x, format %s, max frames %d>", self, streamType_low, uUIDString, streamIndex, audioSessionToken, objc_msgSend(v10, "UTF8String"), self->_maximumFramesToRender];

  if (streamCollection)
  {
  }

  return v11;
}

@end