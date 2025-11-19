@interface ENExposureDetectionHistoryCheck
- (ENExposureDetectionHistoryCheck)init;
@end

@implementation ENExposureDetectionHistoryCheck

- (ENExposureDetectionHistoryCheck)init
{
  v7.receiver = self;
  v7.super_class = ENExposureDetectionHistoryCheck;
  v2 = [(ENExposureDetectionHistoryCheck *)&v7 init];
  v3 = v2;
  if (v2)
  {
    files = v2->_files;
    v2->_files = MEMORY[0x277CBEBF8];

    v5 = v3;
  }

  return v3;
}

@end