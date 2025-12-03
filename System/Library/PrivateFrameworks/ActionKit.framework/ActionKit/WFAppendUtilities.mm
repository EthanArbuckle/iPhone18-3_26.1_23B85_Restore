@interface WFAppendUtilities
+ (id)fileByAppendingText:(id)text toFile:(id)file options:(unint64_t)options;
@end

@implementation WFAppendUtilities

+ (id)fileByAppendingText:(id)text toFile:(id)file options:(unint64_t)options
{
  optionsCopy = options;
  fileCopy = file;
  v8 = [text dataUsingEncoding:4];
  v9 = [@"\n" dataUsingEncoding:4];
  fileURL = [fileCopy fileURL];
  if ((optionsCopy & 4) != 0)
  {
    v11 = MEMORY[0x277CFC538];
    filename = [fileCopy filename];
    v13 = [v11 createTemporaryFileWithFilename:filename];

    fileURL = v13;
  }

  v14 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:fileURL error:0];
  v15 = v14;
  if ((optionsCopy & 4) != 0)
  {
    [v14 writeData:v8];
    if ((optionsCopy & 8) != 0)
    {
      [v15 writeData:v9];
    }

    mappedData = [fileCopy mappedData];
    [v15 writeData:mappedData];

    [v15 closeFile];
    v18 = MEMORY[0x277CFC3C8];
    wfType = [fileCopy wfType];
    filename2 = [fileCopy filename];
    v16 = [v18 fileWithURL:fileURL options:1 ofType:wfType proposedFilename:filename2];
  }

  else
  {
    [v14 seekToEndOfFile];
    if ((optionsCopy & 8) != 0)
    {
      [v15 writeData:v9];
    }

    [v15 writeData:v8];
    [v15 closeFile];
    v16 = fileCopy;
  }

  return v16;
}

@end