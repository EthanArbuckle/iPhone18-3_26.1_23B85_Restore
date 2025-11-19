@interface MXDiskSpaceUsageMetric
- (MXDiskSpaceUsageMetric)initWithCoder:(id)a3;
- (MXDiskSpaceUsageMetric)initWithTotalBinaryFileSize:(id)a3 totalBinaryFileCount:(unint64_t)a4 totalDataFileSize:(id)a5 totalDataFileCount:(unint64_t)a6 totalCacheFolderSize:(id)a7 totalCloneSize:(id)a8 totalDiskSpaceUsedSize:(id)a9 totalDiskSpaceCapacity:(id)a10;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXDiskSpaceUsageMetric

- (MXDiskSpaceUsageMetric)initWithTotalBinaryFileSize:(id)a3 totalBinaryFileCount:(unint64_t)a4 totalDataFileSize:(id)a5 totalDataFileCount:(unint64_t)a6 totalCacheFolderSize:(id)a7 totalCloneSize:(id)a8 totalDiskSpaceUsedSize:(id)a9 totalDiskSpaceCapacity:(id)a10
{
  v26 = a3;
  v25 = a5;
  v24 = a7;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = MXDiskSpaceUsageMetric;
  v18 = [(MXMetric *)&v27 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = 0;
  if (v26 && v25 && v24 && v15 && v16 && v17)
  {
    objc_storeStrong(&v18->_totalBinaryFileSize, a3);
    v19->_totalBinaryFileCount = a4;
    objc_storeStrong(&v19->_totalDataFileSize, a5);
    v19->_totalDataFileCount = a6;
    objc_storeStrong(&v19->_totalCacheFolderSize, a7);
    objc_storeStrong(&v19->_totalCloneSize, a8);
    objc_storeStrong(&v19->_totalDiskSpaceUsedSize, a9);
    objc_storeStrong(&v19->_totalDiskSpaceCapacity, a10);
LABEL_9:
    v20 = v19;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXDiskSpaceUsageMetric;
  v4 = a3;
  [(MXMetric *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_totalBinaryFileSize forKey:{@"totalBinaryFileSize", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_totalBinaryFileCount forKey:@"totalBinaryFileCount"];
  [v4 encodeObject:self->_totalDataFileSize forKey:@"totalDataFileSize"];
  [v4 encodeInteger:self->_totalDataFileCount forKey:@"totalDataFileCount"];
  [v4 encodeObject:self->_totalCacheFolderSize forKey:@"totalCacheFolderSize"];
  [v4 encodeObject:self->_totalCloneSize forKey:@"totalCloneSize"];
  [v4 encodeObject:self->_totalDiskSpaceUsedSize forKey:@"totalDiskSpaceUsedSize"];
  [v4 encodeObject:self->_totalDiskSpaceCapacity forKey:@"totalDiskSpaceCapacity"];
}

- (MXDiskSpaceUsageMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MXDiskSpaceUsageMetric;
  v5 = [(MXMetric *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBinaryFileSize"];
    totalBinaryFileSize = v5->_totalBinaryFileSize;
    v5->_totalBinaryFileSize = v6;

    v5->_totalBinaryFileCount = [v4 decodeIntegerForKey:@"totalBinaryFileCount"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDataFileSize"];
    totalDataFileSize = v5->_totalDataFileSize;
    v5->_totalDataFileSize = v8;

    v5->_totalDataFileCount = [v4 decodeIntegerForKey:@"totalDataFileCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalCacheFolderSize"];
    totalCacheFolderSize = v5->_totalCacheFolderSize;
    v5->_totalCacheFolderSize = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalCloneSize"];
    totalCloneSize = v5->_totalCloneSize;
    v5->_totalCloneSize = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDiskSpaceUsedSize"];
    totalDiskSpaceUsedSize = v5->_totalDiskSpaceUsedSize;
    v5->_totalDiskSpaceUsedSize = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDiskSpaceCapacity"];
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
  v4 = [(MXMetric *)&v38 toDictionary];
  [v3 addEntriesFromDictionary:v4];

  if (self->_totalBinaryFileSize)
  {
    v5 = [(MXMetric *)self measurementFormatter];
    totalBinaryFileSize = self->_totalBinaryFileSize;
    v7 = [MEMORY[0x277CCAE18] kilobytes];
    v8 = [(NSMeasurement *)totalBinaryFileSize measurementByConvertingToUnit:v7];
    v9 = [v5 stringFromMeasurement:v8];
    [v3 setObject:v9 forKey:@"totalBinaryFileSize"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalBinaryFileCount];
  [v3 setObject:v10 forKey:@"totalBinaryFileCount"];

  if (self->_totalDataFileSize)
  {
    v11 = [(MXMetric *)self measurementFormatter];
    totalDataFileSize = self->_totalDataFileSize;
    v13 = [MEMORY[0x277CCAE18] kilobytes];
    v14 = [(NSMeasurement *)totalDataFileSize measurementByConvertingToUnit:v13];
    v15 = [v11 stringFromMeasurement:v14];
    [v3 setObject:v15 forKey:@"totalDataFileSize"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalDataFileCount];
  [v3 setObject:v16 forKey:@"totalDataFileCount"];

  if (self->_totalCacheFolderSize)
  {
    v17 = [(MXMetric *)self measurementFormatter];
    totalCacheFolderSize = self->_totalCacheFolderSize;
    v19 = [MEMORY[0x277CCAE18] kilobytes];
    v20 = [(NSMeasurement *)totalCacheFolderSize measurementByConvertingToUnit:v19];
    v21 = [v17 stringFromMeasurement:v20];
    [v3 setObject:v21 forKey:@"totalCacheFolderSize"];
  }

  if (self->_totalCloneSize)
  {
    v22 = [(MXMetric *)self measurementFormatter];
    totalCloneSize = self->_totalCloneSize;
    v24 = [MEMORY[0x277CCAE18] kilobytes];
    v25 = [(NSMeasurement *)totalCloneSize measurementByConvertingToUnit:v24];
    v26 = [v22 stringFromMeasurement:v25];
    [v3 setObject:v26 forKey:@"totalCloneSize"];
  }

  if (self->_totalDiskSpaceUsedSize)
  {
    v27 = [(MXMetric *)self measurementFormatter];
    totalDiskSpaceUsedSize = self->_totalDiskSpaceUsedSize;
    v29 = [MEMORY[0x277CCAE18] kilobytes];
    v30 = [(NSMeasurement *)totalDiskSpaceUsedSize measurementByConvertingToUnit:v29];
    v31 = [v27 stringFromMeasurement:v30];
    [v3 setObject:v31 forKey:@"totalDiskSpaceUsedSize"];
  }

  if (self->_totalDiskSpaceCapacity)
  {
    v32 = [(MXMetric *)self measurementFormatter];
    totalDiskSpaceCapacity = self->_totalDiskSpaceCapacity;
    v34 = [MEMORY[0x277CCAE18] kilobytes];
    v35 = [(NSMeasurement *)totalDiskSpaceCapacity measurementByConvertingToUnit:v34];
    v36 = [v32 stringFromMeasurement:v35];
    [v3 setObject:v36 forKey:@"totalDiskSpaceCapacity"];
  }

  return v3;
}

@end