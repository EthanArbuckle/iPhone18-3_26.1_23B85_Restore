@interface HKQAStatistics
- (HKQAStatistics)initWithCoder:(id)a3;
- (HKQAStatistics)initWithSampleCount:(id)a3 sampleCountByType:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKQAStatistics

- (HKQAStatistics)initWithSampleCount:(id)a3 sampleCountByType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKQAStatistics;
  v9 = [(HKQAStatistics *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sampleCount, a3);
    objc_storeStrong(&v10->_sampleCountByType, a4);
  }

  return v10;
}

- (HKQAStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKQAStatistics;
  v5 = [(HKQAStatistics *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_sampleCount);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    sampleCount = v5->_sampleCount;
    v5->_sampleCount = v8;

    v10 = objc_alloc(MEMORY[0x1E695DFD8]);
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 initWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = NSStringFromSelector(sel_sampleCountByType);
    v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];
    sampleCountByType = v5->_sampleCountByType;
    v5->_sampleCountByType = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sampleCount = self->_sampleCount;
  v5 = a3;
  v6 = NSStringFromSelector(sel_sampleCount);
  [v5 encodeObject:sampleCount forKey:v6];

  sampleCountByType = self->_sampleCountByType;
  v8 = NSStringFromSelector(sel_sampleCountByType);
  [v5 encodeObject:sampleCountByType forKey:v8];
}

@end