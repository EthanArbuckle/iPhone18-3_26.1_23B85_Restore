@interface MsdosDirEntryData
- (MsdosDirEntryData)init;
- (MsdosDirEntryData)initWithData:(id)data;
- (char)getName;
- (id)setBsdFlags:(unsigned int)flags;
- (int64_t)type;
- (unint64_t)calcFirstEntryOffsetInVolume:(id)volume;
- (unint64_t)getSize;
- (unsigned)bsdFlags;
- (unsigned)getAttrFlags;
- (unsigned)getFirstCluster:(id)cluster;
- (void)getAccessTime:(timespec *)time;
- (void)getBirthTime:(timespec *)time;
- (void)getChangeTime:(timespec *)time;
- (void)getModifyTime:(timespec *)time;
- (void)setAccessTime:(timespec *)time;
- (void)setArchiveBit;
- (void)setAttrFlags:(unsigned __int8)flags;
- (void)setBirthTime:(timespec *)time;
- (void)setChangeTime:(timespec *)time;
- (void)setFirstCluster:(unsigned int)cluster fileSystemInfo:(id)info;
- (void)setLowerCaseFlags:(unsigned __int8)flags;
- (void)setModifyTime:(timespec *)time;
- (void)setName:(char *)name;
- (void)setSize:(unint64_t)size;
@end

@implementation MsdosDirEntryData

- (MsdosDirEntryData)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = MsdosDirEntryData;
  v5 = [(MsdosDirEntryData *)&v8 init];
  if (v5)
  {
    v6 = [NSMutableData dataWithData:dataCopy];
    [(DirEntryData *)v5 setData:v6];
  }

  return v5;
}

- (MsdosDirEntryData)init
{
  v5.receiver = self;
  v5.super_class = MsdosDirEntryData;
  v2 = [(MsdosDirEntryData *)&v5 init];
  if (v2)
  {
    v3 = [NSMutableData dataWithLength:32];
    [(DirEntryData *)v2 setData:v3];
  }

  return v2;
}

- (unint64_t)calcFirstEntryOffsetInVolume:(id)volume
{
  volumeCopy = volume;
  dosDirEntryDirBlockNum = [(MsdosDirEntryData *)self dosDirEntryDirBlockNum];
  dirBlockSize = [volumeCopy dirBlockSize];

  return [(MsdosDirEntryData *)self dosDirEntryOffsetInDirBlock]+ dirBlockSize * dosDirEntryDirBlockNum;
}

- (int64_t)type
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  if ((bytes[11] & 0x10) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unsigned)bsdFlags
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v4 = bytes[11];
  if ((v4 & 0x11111111) == 1)
  {
    v5 = (((v4 & 0x30) == 0) << 16) | 2;
  }

  else
  {
    v5 = ((v4 & 0x30) == 0) << 16;
  }

  return v5 & 0xFFFF7FFF | (((v4 >> 1) & 1) << 15);
}

- (id)setBsdFlags:(unsigned int)flags
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  type = [(MsdosDirEntryData *)self type];
  if ((flags & 0xFFFC7FFD) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032A88();
    }

    v8 = fs_errorForPOSIXError();
  }

  else
  {
    v9 = bytes[11] & 0xFD | (2 * ((flags >> 15) & 1));
    bytes[11] = bytes[11] & 0xFD | (2 * ((flags & 0x8000) != 0));
    if (type == 2)
    {
      v8 = 0;
    }

    else
    {
      v10 = v9 & 0xFE;
      if ((flags & 0x20002) != 0)
      {
        ++v10;
      }

      v8 = 0;
      if ((flags & 0x10000) != 0)
      {
        v11 = v10 & 0xDF;
      }

      else
      {
        v11 = v10 | 0x20;
      }

      bytes[11] = v11;
    }
  }

  return v8;
}

- (void)getAccessTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v6 = bytes[9];

  msdosfs_dos2unixtime(v6, 0, 0, time);
}

- (void)setAccessTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  msdosfs_unix2dostime(&time->tv_sec, mutableBytes + 9, 0, 0);
}

- (void)getModifyTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v6 = bytes[12];
  v7 = bytes[11];

  msdosfs_dos2unixtime(v6, v7, 0, time);
}

- (void)setModifyTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  msdosfs_unix2dostime(&time->tv_sec, mutableBytes + 12, mutableBytes + 11, 0);
}

- (void)getChangeTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v6 = bytes[12];
  v7 = bytes[11];

  msdosfs_dos2unixtime(v6, v7, 0, time);
}

- (void)setChangeTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  msdosfs_unix2dostime(&time->tv_sec, mutableBytes + 12, mutableBytes + 11, 0);
}

- (void)getBirthTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v6 = bytes[8];
  v7 = bytes[7];

  msdosfs_dos2unixtime(v6, v7, 0, time);
}

- (void)setBirthTime:(timespec *)time
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  msdosfs_unix2dostime(&time->tv_sec, mutableBytes + 8, mutableBytes + 7, mutableBytes + 13);
}

- (unsigned)getFirstCluster:(id)cluster
{
  clusterCopy = cluster;
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  v7 = bytes[13];
  type = [clusterCopy type];

  if (type == 2)
  {
    v7 |= bytes[10] << 16;
  }

  return v7;
}

- (void)setFirstCluster:(unsigned int)cluster fileSystemInfo:(id)info
{
  infoCopy = info;
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  mutableBytes[13] = cluster;
  LODWORD(data) = [infoCopy type];

  if (data == 2)
  {
    mutableBytes[10] = HIWORD(cluster);
  }
}

- (char)getName
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  return mutableBytes;
}

- (void)setName:(char *)name
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  v6 = *name;
  *(mutableBytes + 7) = *(name + 7);
  *mutableBytes = v6;
}

- (unint64_t)getSize
{
  data = [(DirEntryData *)self data];
  bytes = [data bytes];

  return bytes[7];
}

- (void)setSize:(unint64_t)size
{
  sizeCopy = size;
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  mutableBytes[7] = sizeCopy;
}

- (void)setLowerCaseFlags:(unsigned __int8)flags
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  mutableBytes[12] = flags;
}

- (void)setAttrFlags:(unsigned __int8)flags
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  mutableBytes[11] = flags;
}

- (unsigned)getAttrFlags
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  return mutableBytes[11];
}

- (void)setArchiveBit
{
  data = [(DirEntryData *)self data];
  mutableBytes = [data mutableBytes];

  if ([(MsdosDirEntryData *)self type]!= 2)
  {
    mutableBytes[11] |= 0x20u;
  }
}

@end