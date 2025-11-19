@interface MXHistogram
- (MXHistogram)initWithCoder:(id)a3;
- (MXHistogram)initWithHistogramBucketData:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXHistogram

- (MXHistogram)initWithHistogramBucketData:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MXHistogram;
  v6 = [(MXHistogram *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_histogramData, a3);
    v7->_totalBucketCount = [(NSArray *)v7->_histogramData count];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  histogramData = self->_histogramData;
  v5 = a3;
  [v5 encodeObject:histogramData forKey:@"histogramValue"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalBucketCount];
  [v5 encodeObject:v6 forKey:@"histogramNumBuckets"];
}

- (MXHistogram)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MXHistogram;
  v5 = [(MXHistogram *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"histogramValue"];
    histogramData = v5->_histogramData;
    v5->_histogramData = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"histogramNumBuckets"];
    v5->_totalBucketCount = [v11 unsignedIntegerValue];
  }

  return v5;
}

- (id)toDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_totalBucketCount];
  v17 = v3;
  [v3 setObject:v5 forKey:@"histogramNumBuckets"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_histogramData;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) toDictionary];
        v13 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v14 = [v13 stringValue];
        [v4 setObject:v12 forKey:v14];

        v9 = (v9 + 1);
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [v17 setObject:v4 forKey:@"histogramValue"];
  v15 = *MEMORY[0x277D85DE8];

  return v17;
}

@end