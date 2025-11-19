@interface NSURL(Audio)
- (double)audioDuration;
@end

@implementation NSURL(Audio)

- (double)audioDuration
{
  v8 = 0;
  v1 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:a1 error:&v8];
  v2 = v1;
  v3 = -1.0;
  if (!v8)
  {
    v4 = [v1 length];
    v5 = [v2 processingFormat];
    [v5 sampleRate];
    v3 = v4 / v6;
  }

  return v3;
}

@end