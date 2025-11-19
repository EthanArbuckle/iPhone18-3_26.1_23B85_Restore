@interface SHSonify
+ (id)audioRepresentationOfSignature:(id)a3;
@end

@implementation SHSonify

+ (id)audioRepresentationOfSignature:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CB83A8];
  v4 = a3;
  v5 = [[v3 alloc] initWithCommonFormat:3 sampleRate:1 channels:1 interleaved:48000.0];
  v6 = [v4 spectralPeaksData];

  [v5 sampleRate];
  v14 = 0;
  v8 = [SigSonify sonifySignature:v6 withSampleRate:v7 error:&v14];
  v9 = v14;

  if ([v8 length])
  {
    v10 = +[SHAudioUtilities audioBufferFromData:byteSize:inFormat:](SHAudioUtilities, "audioBufferFromData:byteSize:inFormat:", [v8 bytes], objc_msgSend(v8, "length"), v5);
  }

  else
  {
    v11 = sh_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_230F52000, v11, OS_LOG_TYPE_ERROR, "Unable to generate audio representation of signature with error %@", buf, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end