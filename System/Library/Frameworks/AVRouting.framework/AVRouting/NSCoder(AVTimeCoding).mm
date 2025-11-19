@interface NSCoder(AVTimeCoding)
- (CMTime)decodeCMTimeForKey:()AVTimeCoding;
- (CMTimeRange)decodeCMTimeRangeForKey:()AVTimeCoding;
- (double)decodeCMTimeMappingForKey:()AVTimeCoding;
- (void)encodeCMTime:()AVTimeCoding forKey:;
- (void)encodeCMTimeMapping:()AVTimeCoding forKey:;
- (void)encodeCMTimeRange:()AVTimeCoding forKey:;
@end

@implementation NSCoder(AVTimeCoding)

- (void)encodeCMTime:()AVTimeCoding forKey:
{
  v6 = *MEMORY[0x1E695E480];
  v8 = *a3;
  v7 = CMTimeCopyAsDictionary(&v8, v6);
  [a1 encodeObject:v7 forKey:a4];
  if (v7)
  {
    CFRelease(v7);
  }
}

- (CMTime)decodeCMTimeForKey:()AVTimeCoding
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [a1 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), a2}];

  return CMTimeMakeFromDictionary(a3, v9);
}

- (void)encodeCMTimeRange:()AVTimeCoding forKey:
{
  v6 = *MEMORY[0x1E695E480];
  v7 = a3[1];
  *&v9.start.value = *a3;
  *&v9.start.epoch = v7;
  *&v9.duration.timescale = a3[2];
  v8 = CMTimeRangeCopyAsDictionary(&v9, v6);
  [a1 encodeObject:v8 forKey:a4];
  if (v8)
  {
    CFRelease(v8);
  }
}

- (CMTimeRange)decodeCMTimeRangeForKey:()AVTimeCoding
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [a1 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, objc_opt_class(), 0), a2}];

  return CMTimeRangeMakeFromDictionary(a3, v9);
}

- (void)encodeCMTimeMapping:()AVTimeCoding forKey:
{
  v7 = *MEMORY[0x1E695E480];
  v8 = a3[1];
  *&range.start.value = *a3;
  *&range.start.epoch = v8;
  *&range.duration.timescale = a3[2];
  v9 = CMTimeRangeCopyAsDictionary(&range, v7);
  v10 = a3[4];
  *&range.start.value = a3[3];
  *&range.start.epoch = v10;
  *&range.duration.timescale = a3[5];
  v11 = CMTimeRangeCopyAsDictionary(&range, v7);
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v9, v11, 0}];
  [a1 encodeObject:v12 forKey:a4];

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

- (double)decodeCMTimeMappingForKey:()AVTimeCoding
{
  v6 = MEMORY[0x1E6960C98];
  v7 = *MEMORY[0x1E6960C98];
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *a3 = *MEMORY[0x1E6960C98];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *(a3 + 48) = v7;
  *(a3 + 64) = v8;
  *(a3 + 80) = v9;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [a1 decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, v12, v13, objc_opt_class(), 0), a2}];
  if ([v14 count] == 2)
  {
    CMTimeRangeMakeFromDictionary(a3, [v14 objectAtIndex:0]);
    CMTimeRangeMakeFromDictionary(&v17, [v14 objectAtIndex:1]);
    v16 = *&v17.start.epoch;
    *(a3 + 48) = *&v17.start.value;
    *(a3 + 64) = v16;
    result = *&v17.duration.timescale;
    *(a3 + 80) = *&v17.duration.timescale;
  }

  return result;
}

@end