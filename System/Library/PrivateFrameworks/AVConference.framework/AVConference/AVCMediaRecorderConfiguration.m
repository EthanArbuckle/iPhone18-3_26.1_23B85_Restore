@interface AVCMediaRecorderConfiguration
+ (id)newClientDictionary:(id)a3 clientPid:(int)a4;
- (id)dictionary;
@end

@implementation AVCMediaRecorderConfiguration

+ (id)newClientDictionary:(id)a3 clientPid:(int)a4
{
  v4 = *&a4;
  v6 = objc_alloc_init(VCMediaRecorderConfiguration);
  -[VCMediaRecorderConfiguration setMediaAvailability:](v6, "setMediaAvailability:", [objc_msgSend(a3 objectForKeyedSubscript:{@"vcMomentsMediaAvailability", "unsignedIntValue"}]);
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