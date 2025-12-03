@interface SHHapticTrack
- (NSFileManager)fileManager;
- (NSURL)fileURL;
- (SHHapticTrack)initWithCoder:(id)coder;
- (SHHapticTrack)initWithFileIdentifier:(id)identifier hapticData:(id)data algorithm:(id)algorithm;
- (id)destinationURLForHapticFile;
- (id)hapticFileURL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHHapticTrack

- (SHHapticTrack)initWithFileIdentifier:(id)identifier hapticData:(id)data algorithm:(id)algorithm
{
  identifierCopy = identifier;
  dataCopy = data;
  algorithmCopy = algorithm;
  v15.receiver = self;
  v15.super_class = SHHapticTrack;
  v12 = [(SHHapticTrack *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileIdentifier, identifier);
    objc_storeStrong(&v13->_hapticData, data);
    objc_storeStrong(&v13->_algorithm, algorithm);
  }

  return v13;
}

- (NSURL)fileURL
{
  fileURL = self->_fileURL;
  if (!fileURL)
  {
    hapticFileURL = [(SHHapticTrack *)self hapticFileURL];
    v5 = self->_fileURL;
    self->_fileURL = hapticFileURL;

    fileURL = self->_fileURL;
  }

  return fileURL;
}

- (NSFileManager)fileManager
{
  fileManager = self->_fileManager;
  if (!fileManager)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v5 = self->_fileManager;
    self->_fileManager = defaultManager;

    fileManager = self->_fileManager;
  }

  return fileManager;
}

- (SHHapticTrack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemFileIdentifierKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemHapticDataKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemAlgorithmKey"];

  v8 = [(SHHapticTrack *)self initWithFileIdentifier:v5 hapticData:v6 algorithm:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileIdentifier = [(SHHapticTrack *)self fileIdentifier];
  [coderCopy encodeObject:fileIdentifier forKey:@"SHHapticItemFileIdentifierKey"];

  hapticData = [(SHHapticTrack *)self hapticData];
  [coderCopy encodeObject:hapticData forKey:@"SHHapticItemHapticDataKey"];

  algorithm = [(SHHapticTrack *)self algorithm];
  [coderCopy encodeObject:algorithm forKey:@"SHHapticItemAlgorithmKey"];
}

- (id)hapticFileURL
{
  v21 = *MEMORY[0x277D85DE8];
  destinationURLForHapticFile = [(SHHapticTrack *)self destinationURLForHapticFile];
  if (destinationURLForHapticFile)
  {
    fileManager = [(SHHapticTrack *)self fileManager];
    path = [destinationURLForHapticFile path];
    if ([fileManager fileExistsAtPath:path])
    {
      fileManager2 = [(SHHapticTrack *)self fileManager];
      v7 = [fileManager2 removeItemAtURL:destinationURLForHapticFile error:0];

      if ((v7 & 1) == 0)
      {
        v8 = sh_log_object();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = destinationURLForHapticFile;
          _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_INFO, "Returning existing ahap url %@", &v19, 0xCu);
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    fileManager3 = [(SHHapticTrack *)self fileManager];
    path2 = [destinationURLForHapticFile path];
    hapticData = [(SHHapticTrack *)self hapticData];
    v14 = [fileManager3 createFileAtPath:path2 contents:hapticData attributes:0];

    if (v14)
    {
LABEL_12:
      v15 = destinationURLForHapticFile;
      goto LABEL_17;
    }

    v16 = sh_log_object();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_230F52000, v16, OS_LOG_TYPE_ERROR, "Failed to copy haptic file from source bundle to destination.", &v19, 2u);
    }
  }

  else
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      fileIdentifier = [(SHHapticTrack *)self fileIdentifier];
      v19 = 138412290;
      v20 = fileIdentifier;
      _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_DEBUG, "Could not create file path to save haptic file with identifier %@", &v19, 0xCu);
    }
  }

  v15 = 0;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)destinationURLForHapticFile
{
  v25 = *MEMORY[0x277D85DE8];
  fileManager = [(SHHapticTrack *)self fileManager];
  temporaryDirectory = [fileManager temporaryDirectory];
  v5 = [temporaryDirectory URLByAppendingPathComponent:@"MusicHaptics"];

  fileManager2 = [(SHHapticTrack *)self fileManager];
  path = [v5 path];
  v8 = [fileManager2 fileExistsAtPath:path];

  if ((v8 & 1) == 0)
  {
    fileManager3 = [(SHHapticTrack *)self fileManager];
    v22 = 0;
    v10 = [fileManager3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v22];
    v11 = v22;

    if ((v10 & 1) == 0)
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_230F52000, v12, OS_LOG_TYPE_ERROR, "Could not create folder for haptic files, using temporary directory %@", buf, 0xCu);
      }

      fileManager4 = [(SHHapticTrack *)self fileManager];
      temporaryDirectory2 = [fileManager4 temporaryDirectory];

      v5 = temporaryDirectory2;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  fileIdentifier = [(SHHapticTrack *)self fileIdentifier];
  algorithm = [(SHHapticTrack *)self algorithm];
  v18 = [v15 stringWithFormat:@"%@_%@", fileIdentifier, algorithm];

  v19 = [v5 URLByAppendingPathComponent:v18 conformingToType:*MEMORY[0x277CE1CD8]];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end