@interface SHHapticTrack
- (NSFileManager)fileManager;
- (NSURL)fileURL;
- (SHHapticTrack)initWithCoder:(id)a3;
- (SHHapticTrack)initWithFileIdentifier:(id)a3 hapticData:(id)a4 algorithm:(id)a5;
- (id)destinationURLForHapticFile;
- (id)hapticFileURL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHHapticTrack

- (SHHapticTrack)initWithFileIdentifier:(id)a3 hapticData:(id)a4 algorithm:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHHapticTrack;
  v12 = [(SHHapticTrack *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileIdentifier, a3);
    objc_storeStrong(&v13->_hapticData, a4);
    objc_storeStrong(&v13->_algorithm, a5);
  }

  return v13;
}

- (NSURL)fileURL
{
  fileURL = self->_fileURL;
  if (!fileURL)
  {
    v4 = [(SHHapticTrack *)self hapticFileURL];
    v5 = self->_fileURL;
    self->_fileURL = v4;

    fileURL = self->_fileURL;
  }

  return fileURL;
}

- (NSFileManager)fileManager
{
  fileManager = self->_fileManager;
  if (!fileManager)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = self->_fileManager;
    self->_fileManager = v4;

    fileManager = self->_fileManager;
  }

  return fileManager;
}

- (SHHapticTrack)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemFileIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemHapticDataKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHHapticItemAlgorithmKey"];

  v8 = [(SHHapticTrack *)self initWithFileIdentifier:v5 hapticData:v6 algorithm:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHHapticTrack *)self fileIdentifier];
  [v4 encodeObject:v5 forKey:@"SHHapticItemFileIdentifierKey"];

  v6 = [(SHHapticTrack *)self hapticData];
  [v4 encodeObject:v6 forKey:@"SHHapticItemHapticDataKey"];

  v7 = [(SHHapticTrack *)self algorithm];
  [v4 encodeObject:v7 forKey:@"SHHapticItemAlgorithmKey"];
}

- (id)hapticFileURL
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SHHapticTrack *)self destinationURLForHapticFile];
  if (v3)
  {
    v4 = [(SHHapticTrack *)self fileManager];
    v5 = [v3 path];
    if ([v4 fileExistsAtPath:v5])
    {
      v6 = [(SHHapticTrack *)self fileManager];
      v7 = [v6 removeItemAtURL:v3 error:0];

      if ((v7 & 1) == 0)
      {
        v8 = sh_log_object();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v3;
          _os_log_impl(&dword_230F52000, v8, OS_LOG_TYPE_INFO, "Returning existing ahap url %@", &v19, 0xCu);
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v11 = [(SHHapticTrack *)self fileManager];
    v12 = [v3 path];
    v13 = [(SHHapticTrack *)self hapticData];
    v14 = [v11 createFileAtPath:v12 contents:v13 attributes:0];

    if (v14)
    {
LABEL_12:
      v15 = v3;
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
      v10 = [(SHHapticTrack *)self fileIdentifier];
      v19 = 138412290;
      v20 = v10;
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
  v3 = [(SHHapticTrack *)self fileManager];
  v4 = [v3 temporaryDirectory];
  v5 = [v4 URLByAppendingPathComponent:@"MusicHaptics"];

  v6 = [(SHHapticTrack *)self fileManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(SHHapticTrack *)self fileManager];
    v22 = 0;
    v10 = [v9 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v22];
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

      v13 = [(SHHapticTrack *)self fileManager];
      v14 = [v13 temporaryDirectory];

      v5 = v14;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [(SHHapticTrack *)self fileIdentifier];
  v17 = [(SHHapticTrack *)self algorithm];
  v18 = [v15 stringWithFormat:@"%@_%@", v16, v17];

  v19 = [v5 URLByAppendingPathComponent:v18 conformingToType:*MEMORY[0x277CE1CD8]];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end