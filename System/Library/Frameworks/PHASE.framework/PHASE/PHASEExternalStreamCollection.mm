@interface PHASEExternalStreamCollection
- (NSUUID)uuid;
- (PHASEExternalStreamCollection)init;
- (PHASEExternalStreamCollection)initWithStreamType:(int64_t)type count:(unint64_t)count;
@end

@implementation PHASEExternalStreamCollection

- (PHASEExternalStreamCollection)init
{
  [(PHASEExternalStreamCollection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalStreamCollection)initWithStreamType:(int64_t)type count:(unint64_t)count
{
  selfCopy = self;
  v20 = *MEMORY[0x277D85DE8];
  if (count)
  {
    v13.receiver = self;
    v13.super_class = PHASEExternalStreamCollection;
    v7 = [(PHASEExternalStreamCollection *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_streamType = type;
      v7->_streamCount = count;
      uuid = v7->_uuid;
      v7->_uuid = 0;
    }

    selfCopy = v8;
    v10 = selfCopy;
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "PHASEExternalStream.mm";
      v16 = 1024;
      v17 = 66;
      v18 = 2048;
      v19 = 0;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: invalid stream count in collection, %lu", buf, 0x1Cu);
    }

    v10 = 0;
  }

  return v10;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_opt_new();
    v5 = self->_uuid;
    self->_uuid = v4;

    uuid = self->_uuid;
  }

  return uuid;
}

@end