@interface NSString(AVTExtension)
- (void)avt_diffAgainst:()AVTExtension suppressCommonLines:completionHandler:;
@end

@implementation NSString(AVTExtension)

- (void)avt_diffAgainst:()AVTExtension suppressCommonLines:completionHandler:
{
  v36[5] = *MEMORY[0x1E69E9840];
  v27 = a3;
  v25 = a5;
  v28 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v9 = [uUIDString stringByAppendingString:@"-old.shader"];
  v26 = [v28 stringByAppendingPathComponent:v9];

  v10 = [uUIDString stringByAppendingString:@"-new.shader"];
  v11 = [v28 stringByAppendingPathComponent:v10];

  [self writeToFile:v26 atomically:1 encoding:4 error:0];
  [v27 writeToFile:v11 atomically:1 encoding:4 error:0];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 130;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__NSString_AVTExtension__avt_diffAgainst_suppressCommonLines_completionHandler___block_invoke;
  v30[3] = &unk_1E7F48E40;
  v30[4] = &v31;
  v12 = MEMORY[0x1BFB0EC20](v30);
  [self enumerateLinesUsingBlock:v12];
  [v27 enumerateLinesUsingBlock:v12];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--width=%llu", v32[3]];
  pipe = [MEMORY[0x1E696AE00] pipe];
  pipe2 = [MEMORY[0x1E696AE00] pipe];
  v16 = objc_alloc_init(MEMORY[0x1E696AED8]);
  [v16 setLaunchPath:@"/usr/bin/sdiff"];
  [v16 setStandardOutput:pipe];
  [v16 setStandardError:pipe2];
  if (a4)
  {
    v36[0] = @"--expand-tabs";
    v36[1] = @"--suppress-common-lines";
    v36[2] = v13;
    v36[3] = v26;
    v36[4] = v11;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
  }

  else
  {
    v35[0] = @"--expand-tabs";
    v35[1] = v13;
    v35[2] = v26;
    v35[3] = v11;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  }
  v17 = ;
  [v16 setArguments:v17];

  [v16 launch];
  [v16 waitUntilExit];
  fileHandleForReading = [pipe fileHandleForReading];
  readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:readDataToEndOfFile encoding:4];
  fileHandleForReading2 = [pipe2 fileHandleForReading];
  readDataToEndOfFile2 = [fileHandleForReading2 readDataToEndOfFile];

  if ([readDataToEndOfFile2 length])
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:readDataToEndOfFile2 encoding:4];
    NSLog(&stru_1F39A9678.isa, v23);
    v25[2](v25, 0, v23);
  }

  else
  {
    (v25)[2](v25, v20, 0);
  }

  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x1E69E9840];
}

@end