@interface AVCMediaRecorderConfiguration
+ (id)newClientDictionary:(id)dictionary clientPid:(int)pid;
- (id)dictionary;
@end

@implementation AVCMediaRecorderConfiguration

+ (id)newClientDictionary:(id)dictionary clientPid:(int)pid
{
  v4 = *&pid;
  v6 = objc_alloc_init(VCMediaRecorderConfiguration);
  -[VCMediaRecorderConfiguration setMediaAvailability:](v6, "setMediaAvailability:", [objc_msgSend(dictionary objectForKeyedSubscript:{@"vcMomentsMediaAvailability", "unsignedIntValue"}]);
  [(VCMediaRecorderConfiguration *)v6 setClientPid:v4];
  return v6;
}

- (id)dictionary
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"vcMomentsMediaAvailability";
  v4[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_mediaAvailability];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

@end