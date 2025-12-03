@interface AVAssetSegmentReport
- (AVAssetSegmentReport)initWithFigSegmentReportDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation AVAssetSegmentReport

- (AVAssetSegmentReport)initWithFigSegmentReportDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    selfCopy = self;
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v15, v16, v17, v18, v19, "figSegmentReportDict != nil"), 0}];
    objc_exception_throw(v20);
  }

  v25.receiver = self;
  v25.super_class = AVAssetSegmentReport;
  v5 = [(AVAssetSegmentReport *)&v25 init];
  if (v5)
  {
    v5->_segmentType = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E6971418]), "integerValue"}];
    v6 = [dictionary objectForKey:*MEMORY[0x1E6971420]];
    v5->_trackReports = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[AVAssetSegmentTrackReport alloc] initWithFigSegmentTrackReportDictionary:*(*(&v21 + 1) + 8 * v10)];
          [(NSMutableArray *)v5->_trackReports addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetSegmentReport;
  [(AVAssetSegmentReport *)&v3 dealloc];
}

@end