@interface PHASESpatialPipeline
+ (BOOL)addToDictionary:(id)dictionary add:(BOOL)add key:(id)key;
- (PHASESpatialPipeline)init;
- (PHASESpatialPipeline)initWithFlags:(PHASESpatialPipelineFlags)flags;
@end

@implementation PHASESpatialPipeline

- (PHASESpatialPipeline)init
{
  [(PHASESpatialPipeline *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (BOOL)addToDictionary:(id)dictionary add:(BOOL)add key:(id)key
{
  addCopy = add;
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  keyCopy = key;
  v9 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v9)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "PHASESpatialPipeline.mm";
      v17 = 1024;
      v18 = 79;
      v19 = 2080;
      uTF8String = [keyCopy UTF8String];
      _os_log_impl(&dword_23A302000, &v11->super, OS_LOG_TYPE_DEBUG, "%25s:%-5d Dictionary already has entry for key %s.", &v15, 0x1Cu);
    }
  }

  else
  {
    if (!addCopy)
    {
      v12 = 1;
      goto LABEL_6;
    }

    v11 = objc_alloc_init(PHASESpatialPipelineEntry);
    if (v11)
    {
      [dictionaryCopy setValue:v11 forKey:keyCopy];
      v12 = 1;
      goto LABEL_5;
    }

    v14 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "PHASESpatialPipeline.mm";
      v17 = 1024;
      v18 = 91;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d PHASESpatialPipelineEntry:init failed.", &v15, 0x12u);
    }

    v11 = 0;
  }

  v12 = 0;
LABEL_5:

LABEL_6:
  return v12;
}

- (PHASESpatialPipeline)initWithFlags:(PHASESpatialPipelineFlags)flags
{
  selfCopy = self;
  v17 = *MEMORY[0x277D85DE8];
  if (!flags)
  {
    v10 = **(Phase::Logger::GetInstance(self) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "PHASESpatialPipeline.mm";
      v15 = 1024;
      v16 = 104;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalid PHASESpatialPipelineFlags == 0.", buf, 0x12u);
    }

    goto LABEL_11;
  }

  v12.receiver = self;
  v12.super_class = PHASESpatialPipeline;
  v5 = [(PHASESpatialPipeline *)&v12 init];
  selfCopy = v5;
  if (v5)
  {
    v5->_flags = flags;
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([PHASESpatialPipeline addToDictionary:v6 add:flags & 1 key:@"PHASEDirectPathTransmission"]&& [PHASESpatialPipeline addToDictionary:v6 add:(flags >> 1) & 1 key:@"PHASEEarlyReflections"]&& [PHASESpatialPipeline addToDictionary:v6 add:(flags >> 2) & 1 key:@"PHASELateReverb"])
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v6];
      entries = selfCopy->_entries;
      selfCopy->_entries = v7;

      goto LABEL_7;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

LABEL_7:
  selfCopy = selfCopy;
  v9 = selfCopy;
LABEL_12:

  return v9;
}

@end