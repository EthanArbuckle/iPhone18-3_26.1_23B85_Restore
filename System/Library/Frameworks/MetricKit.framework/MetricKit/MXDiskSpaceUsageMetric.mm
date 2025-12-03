@interface MXDiskSpaceUsageMetric
- (MXDiskSpaceUsageMetric)initWithCoder:(id)coder;
- (MXDiskSpaceUsageMetric)initWithTotalBinaryFileSize:(id)size totalBinaryFileCount:(unint64_t)count totalDataFileSize:(id)fileSize totalDataFileCount:(unint64_t)fileCount totalCacheFolderSize:(id)folderSize totalCloneSize:(id)cloneSize totalDiskSpaceUsedSize:(id)usedSize totalDiskSpaceCapacity:(id)self0;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXDiskSpaceUsageMetric

- (MXDiskSpaceUsageMetric)initWithTotalBinaryFileSize:(id)size totalBinaryFileCount:(unint64_t)count totalDataFileSize:(id)fileSize totalDataFileCount:(unint64_t)fileCount totalCacheFolderSize:(id)folderSize totalCloneSize:(id)cloneSize totalDiskSpaceUsedSize:(id)usedSize totalDiskSpaceCapacity:(id)self0
{
  sizeCopy = size;
  fileSizeCopy = fileSize;
  folderSizeCopy = folderSize;
  cloneSizeCopy = cloneSize;
  usedSizeCopy = usedSize;
  capacityCopy = capacity;
  v27.receiver = self;
  v27.super_class = MXDiskSpaceUsageMetric;
  v18 = [(MXMetric *)&v27 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = 0;
  if (sizeCopy && fileSizeCopy && folderSizeCopy && cloneSizeCopy && usedSizeCopy && capacityCopy)
  {
    objc_storeStrong(&v18->_totalBinaryFileSize, size);
    v19->_totalBinaryFileCount = count;
    objc_storeStrong(&v19->_totalDataFileSize, fileSize);
    v19->_totalDataFileCount = fileCount;
    objc_storeStrong(&v19->_totalCacheFolderSize, folderSize);
    objc_storeStrong(&v19->_totalCloneSize, cloneSize);
    objc_storeStrong(&v19->_totalDiskSpaceUsedSize, usedSize);
    objc_storeStrong(&v19->_totalDiskSpaceCapacity, capacity);
LABEL_9:
    v20 = v19;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXDiskSpaceUsageMetric;
  coderCopy = coder;
  [(MXMetric *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_totalBinaryFileSize forKey:{@"totalBinaryFileSize", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_totalBinaryFileCount forKey:@"totalBinaryFileCount"];
  [coderCopy encodeObject:self->_totalDataFileSize forKey:@"totalDataFileSize"];
  [coderCopy encodeInteger:self->_totalDataFileCount forKey:@"totalDataFileCount"];
  [coderCopy encodeObject:self->_totalCacheFolderSize forKey:@"totalCacheFolderSize"];
  [coderCopy encodeObject:self->_totalCloneSize forKey:@"totalCloneSize"];
  [coderCopy encodeObject:self->_totalDiskSpaceUsedSize forKey:@"totalDiskSpaceUsedSize"];
  [coderCopy encodeObject:self->_totalDiskSpaceCapacity forKey:@"totalDiskSpaceCapacity"];
}

- (MXDiskSpaceUsageMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MXDiskSpaceUsageMetric;
  v5 = [(MXMetric *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBinaryFileSize"];
    totalBinaryFileSize = v5->_totalBinaryFileSize;
    v5->_totalBinaryFileSize = v6;

    v5->_totalBinaryFileCount = [coderCopy decodeIntegerForKey:@"totalBinaryFileCount"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDataFileSize"];
    totalDataFileSize = v5->_totalDataFileSize;
    v5->_totalDataFileSize = v8;

    v5->_totalDataFileCount = [coderCopy decodeIntegerForKey:@"totalDataFileCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalCacheFolderSize"];
    totalCacheFolderSize = v5->_totalCacheFolderSize;
    v5->_totalCacheFolderSize = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalCloneSize"];
    totalCloneSize = v5->_totalCloneSize;
    v5->_totalCloneSize = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDiskSpaceUsedSize"];
    totalDiskSpaceUsedSize = v5->_totalDiskSpaceUsedSize;
    v5->_totalDiskSpaceUsedSize = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDiskSpaceCapacity"];
    totalDiskSpaceCapacity = v5->_totalDiskSpaceCapacity;
    v5->_totalDiskSpaceCapacity = v16;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38.receiver = self;
  v38.super_class = MXDiskSpaceUsageMetric;
  toDictionary = [(MXMetric *)&v38 toDictionary];
  [v3 addEntriesFromDictionary:toDictionary];

  if (self->_totalBinaryFileSize)
  {
    measurementFormatter = [(MXMetric *)self measurementFormatter];
    totalBinaryFileSize = self->_totalBinaryFileSize;
    kilobytes = [MEMORY[0x277CCAE18] kilobytes];
    v8 = [(NSMeasurement *)totalBinaryFileSize measurementByConvertingToUnit:kilobytes];
    v9 = [measurementFormatter stringFromMeasurement:v8];
    [v3 setObject:v9 forKey:@"totalBinaryFileSize"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalBinaryFileCount];
  [v3 setObject:v10 forKey:@"totalBinaryFileCount"];

  if (self->_totalDataFileSize)
  {
    measurementFormatter2 = [(MXMetric *)self measurementFormatter];
    totalDataFileSize = self->_totalDataFileSize;
    kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
    v14 = [(NSMeasurement *)totalDataFileSize measurementByConvertingToUnit:kilobytes2];
    v15 = [measurementFormatter2 stringFromMeasurement:v14];
    [v3 setObject:v15 forKey:@"totalDataFileSize"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalDataFileCount];
  [v3 setObject:v16 forKey:@"totalDataFileCount"];

  if (self->_totalCacheFolderSize)
  {
    measurementFormatter3 = [(MXMetric *)self measurementFormatter];
    totalCacheFolderSize = self->_totalCacheFolderSize;
    kilobytes3 = [MEMORY[0x277CCAE18] kilobytes];
    v20 = [(NSMeasurement *)totalCacheFolderSize measurementByConvertingToUnit:kilobytes3];
    v21 = [measurementFormatter3 stringFromMeasurement:v20];
    [v3 setObject:v21 forKey:@"totalCacheFolderSize"];
  }

  if (self->_totalCloneSize)
  {
    measurementFormatter4 = [(MXMetric *)self measurementFormatter];
    totalCloneSize = self->_totalCloneSize;
    kilobytes4 = [MEMORY[0x277CCAE18] kilobytes];
    v25 = [(NSMeasurement *)totalCloneSize measurementByConvertingToUnit:kilobytes4];
    v26 = [measurementFormatter4 stringFromMeasurement:v25];
    [v3 setObject:v26 forKey:@"totalCloneSize"];
  }

  if (self->_totalDiskSpaceUsedSize)
  {
    measurementFormatter5 = [(MXMetric *)self measurementFormatter];
    totalDiskSpaceUsedSize = self->_totalDiskSpaceUsedSize;
    kilobytes5 = [MEMORY[0x277CCAE18] kilobytes];
    v30 = [(NSMeasurement *)totalDiskSpaceUsedSize measurementByConvertingToUnit:kilobytes5];
    v31 = [measurementFormatter5 stringFromMeasurement:v30];
    [v3 setObject:v31 forKey:@"totalDiskSpaceUsedSize"];
  }

  if (self->_totalDiskSpaceCapacity)
  {
    measurementFormatter6 = [(MXMetric *)self measurementFormatter];
    totalDiskSpaceCapacity = self->_totalDiskSpaceCapacity;
    kilobytes6 = [MEMORY[0x277CCAE18] kilobytes];
    v35 = [(NSMeasurement *)totalDiskSpaceCapacity measurementByConvertingToUnit:kilobytes6];
    v36 = [measurementFormatter6 stringFromMeasurement:v35];
    [v3 setObject:v36 forKey:@"totalDiskSpaceCapacity"];
  }

  return v3;
}

@end