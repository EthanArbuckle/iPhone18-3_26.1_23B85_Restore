@interface MsdosDirEntryData
- (MsdosDirEntryData)init;
- (MsdosDirEntryData)initWithData:(id)a3;
- (char)getName;
- (id)setBsdFlags:(unsigned int)a3;
- (int64_t)type;
- (unint64_t)calcFirstEntryOffsetInVolume:(id)a3;
- (unint64_t)getSize;
- (unsigned)bsdFlags;
- (unsigned)getAttrFlags;
- (unsigned)getFirstCluster:(id)a3;
- (void)getAccessTime:(timespec *)a3;
- (void)getBirthTime:(timespec *)a3;
- (void)getChangeTime:(timespec *)a3;
- (void)getModifyTime:(timespec *)a3;
- (void)setAccessTime:(timespec *)a3;
- (void)setArchiveBit;
- (void)setAttrFlags:(unsigned __int8)a3;
- (void)setBirthTime:(timespec *)a3;
- (void)setChangeTime:(timespec *)a3;
- (void)setFirstCluster:(unsigned int)a3 fileSystemInfo:(id)a4;
- (void)setLowerCaseFlags:(unsigned __int8)a3;
- (void)setModifyTime:(timespec *)a3;
- (void)setName:(char *)a3;
- (void)setSize:(unint64_t)a3;
@end

@implementation MsdosDirEntryData

- (MsdosDirEntryData)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MsdosDirEntryData;
  v5 = [(MsdosDirEntryData *)&v8 init];
  if (v5)
  {
    v6 = [NSMutableData dataWithData:v4];
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

- (unint64_t)calcFirstEntryOffsetInVolume:(id)a3
{
  v4 = a3;
  v5 = [(MsdosDirEntryData *)self dosDirEntryDirBlockNum];
  v6 = [v4 dirBlockSize];

  return [(MsdosDirEntryData *)self dosDirEntryOffsetInDirBlock]+ v6 * v5;
}

- (int64_t)type
{
  v2 = [(DirEntryData *)self data];
  v3 = [v2 bytes];

  if ((v3[11] & 0x10) != 0)
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
  v2 = [(DirEntryData *)self data];
  v3 = [v2 bytes];

  v4 = v3[11];
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

- (id)setBsdFlags:(unsigned int)a3
{
  v5 = [(DirEntryData *)self data];
  v6 = [v5 bytes];

  v7 = [(MsdosDirEntryData *)self type];
  if ((a3 & 0xFFFC7FFD) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032A88();
    }

    v8 = fs_errorForPOSIXError();
  }

  else
  {
    v9 = v6[11] & 0xFD | (2 * ((a3 >> 15) & 1));
    v6[11] = v6[11] & 0xFD | (2 * ((a3 & 0x8000) != 0));
    if (v7 == 2)
    {
      v8 = 0;
    }

    else
    {
      v10 = v9 & 0xFE;
      if ((a3 & 0x20002) != 0)
      {
        ++v10;
      }

      v8 = 0;
      if ((a3 & 0x10000) != 0)
      {
        v11 = v10 & 0xDF;
      }

      else
      {
        v11 = v10 | 0x20;
      }

      v6[11] = v11;
    }
  }

  return v8;
}

- (void)getAccessTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 bytes];

  v6 = v5[9];

  msdosfs_dos2unixtime(v6, 0, 0, a3);
}

- (void)setAccessTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  msdosfs_unix2dostime(&a3->tv_sec, v5 + 9, 0, 0);
}

- (void)getModifyTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 bytes];

  v6 = v5[12];
  v7 = v5[11];

  msdosfs_dos2unixtime(v6, v7, 0, a3);
}

- (void)setModifyTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  msdosfs_unix2dostime(&a3->tv_sec, v5 + 12, v5 + 11, 0);
}

- (void)getChangeTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 bytes];

  v6 = v5[12];
  v7 = v5[11];

  msdosfs_dos2unixtime(v6, v7, 0, a3);
}

- (void)setChangeTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  msdosfs_unix2dostime(&a3->tv_sec, v5 + 12, v5 + 11, 0);
}

- (void)getBirthTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 bytes];

  v6 = v5[8];
  v7 = v5[7];

  msdosfs_dos2unixtime(v6, v7, 0, a3);
}

- (void)setBirthTime:(timespec *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  msdosfs_unix2dostime(&a3->tv_sec, v5 + 8, v5 + 7, v5 + 13);
}

- (unsigned)getFirstCluster:(id)a3
{
  v4 = a3;
  v5 = [(DirEntryData *)self data];
  v6 = [v5 bytes];

  v7 = v6[13];
  v8 = [v4 type];

  if (v8 == 2)
  {
    v7 |= v6[10] << 16;
  }

  return v7;
}

- (void)setFirstCluster:(unsigned int)a3 fileSystemInfo:(id)a4
{
  v6 = a4;
  v7 = [(DirEntryData *)self data];
  v8 = [v7 mutableBytes];

  v8[13] = a3;
  LODWORD(v7) = [v6 type];

  if (v7 == 2)
  {
    v8[10] = HIWORD(a3);
  }
}

- (char)getName
{
  v2 = [(DirEntryData *)self data];
  v3 = [v2 mutableBytes];

  return v3;
}

- (void)setName:(char *)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  v6 = *a3;
  *(v5 + 7) = *(a3 + 7);
  *v5 = v6;
}

- (unint64_t)getSize
{
  v2 = [(DirEntryData *)self data];
  v3 = [v2 bytes];

  return v3[7];
}

- (void)setSize:(unint64_t)a3
{
  v3 = a3;
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  v5[7] = v3;
}

- (void)setLowerCaseFlags:(unsigned __int8)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  v5[12] = a3;
}

- (void)setAttrFlags:(unsigned __int8)a3
{
  v4 = [(DirEntryData *)self data];
  v5 = [v4 mutableBytes];

  v5[11] = a3;
}

- (unsigned)getAttrFlags
{
  v2 = [(DirEntryData *)self data];
  v3 = [v2 mutableBytes];

  return v3[11];
}

- (void)setArchiveBit
{
  v3 = [(DirEntryData *)self data];
  v4 = [v3 mutableBytes];

  if ([(MsdosDirEntryData *)self type]!= 2)
  {
    v4[11] |= 0x20u;
  }
}

@end