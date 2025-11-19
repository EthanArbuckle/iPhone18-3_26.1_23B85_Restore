@interface VCFileUtil
+ (double)audioContentLengthOfFile:(id)a3;
+ (double)contentLengthOfFile:(id)a3;
+ (tagVCFileStats)statsOfFile:(SEL)a3;
+ (unint64_t)sizeOfFile:(id)a3;
@end

@implementation VCFileUtil

+ (unint64_t)sizeOfFile:(id)a3
{
  v3 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];

  return [v3 fileSize];
}

+ (double)contentLengthOfFile:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6988168] URLAssetWithURL:a3 options:0];
  memset(&v6, 170, sizeof(v6));
  if (v3)
  {
    [v3 duration];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  v5 = v6;
  return CMTimeGetSeconds(&v5);
}

+ (double)audioContentLengthOfFile:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6988168] URLAssetWithURL:a3 options:0];
  v4 = [v3 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  if (![v4 count])
  {
    return 0.0;
  }

  v5 = [v4 objectAtIndexedSubscript:0];
  if (v5)
  {
    [v5 timeRange];
    v6 = *(&v12 + 1);
    v7 = *(&v13 + 1);
    v8 = v13;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  time.value = v6;
  *&time.timescale = v8;
  time.epoch = v7;
  return CMTimeGetSeconds(&time);
}

+ (tagVCFileStats)statsOfFile:(SEL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E6988168] URLAssetWithURL:a4 options:0];
  v7 = v6;
  memset(&v19, 170, sizeof(v19));
  if (v6)
  {
    [v6 duration];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  time = v19;
  Seconds = CMTimeGetSeconds(&time);
  v9 = [objc_msgSend(v7 tracksWithMediaType:{*MEMORY[0x1E69875A0]), "firstObject"}];
  if (v9)
  {
    [v9 timeRange];
    v10 = v15;
    v11 = v17;
    v12 = v16;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0;
  }

  time.value = v10;
  *&time.timescale = v12;
  time.epoch = v11;
  v13 = CMTimeGetSeconds(&time);
  result = [VCFileUtil sizeOfFile:a4];
  retstr->var0 = result;
  retstr->var1 = Seconds;
  retstr->var2 = v13;
  return result;
}

@end