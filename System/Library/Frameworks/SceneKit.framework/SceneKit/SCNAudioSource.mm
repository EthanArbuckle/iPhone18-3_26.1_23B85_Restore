@interface SCNAudioSource
+ (SCNAudioSource)audioSourceNamed:(NSString *)fileName;
+ (SCNAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer;
- (SCNAudioSource)initWithAVAudioPCMBuffer:(id)buffer;
- (SCNAudioSource)initWithCoder:(id)coder;
- (SCNAudioSource)initWithFileNamed:(NSString *)name;
- (SCNAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle;
- (SCNAudioSource)initWithURL:(NSURL *)url;
- (double)duration;
- (id)audioBufferFormat;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)renderingAlgorithm;
- (void)_customDecodingOfSCNAudioSource:(id)source;
- (void)_customEncodingOfSCNAudioSource:(id)source;
- (void)_load;
- (void)_loadURLWithBundle:(id)bundle;
- (void)dealloc;
- (void)load;
- (void)loadIfNeeded;
@end

@implementation SCNAudioSource

+ (SCNAudioSource)audioSourceWithAVAudioPCMBuffer:(id)buffer
{
  v3 = [[self alloc] initWithAVAudioPCMBuffer:buffer];

  return v3;
}

- (SCNAudioSource)initWithAVAudioPCMBuffer:(id)buffer
{
  v4 = [(SCNAudioSource *)self init];
  if (v4)
  {
    v4->_audioBuffer = buffer;
    [(SCNAudioSource *)v4 setPositional:1];
    LODWORD(v5) = 1.0;
    [(SCNAudioSource *)v4 setVolume:v5];
    LODWORD(v6) = 1.0;
    [(SCNAudioSource *)v4 setRate:v6];
  }

  return v4;
}

- (int64_t)renderingAlgorithm
{
  if ([(SCNAudioSource *)self isPositional])
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (void)_loadURLWithBundle:(id)bundle
{
  p_audioName = &self->_audioName;
  audioName = self->_audioName;
  if (audioName)
  {
    pathExtension = [(NSString *)audioName pathExtension];
    if (pathExtension && (v8 = pathExtension, [(NSString *)pathExtension length]))
    {
      stringByDeletingPathExtension = [(NSString *)*p_audioName stringByDeletingPathExtension];
      bundleCopy2 = bundle;
      v11 = v8;
    }

    else
    {
      v12 = [bundle URLForResource:*p_audioName withExtension:@"caf"];
      if (v12 || (v12 = [bundle URLForResource:*p_audioName withExtension:@"caff"]) != 0)
      {
LABEL_11:
        self->_audioURL = v12;
        return;
      }

      stringByDeletingPathExtension = *p_audioName;
      v11 = @"aiff";
      bundleCopy2 = bundle;
    }

    v12 = [bundleCopy2 URLForResource:stringByDeletingPathExtension withExtension:v11];
    if (!v12)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SCNAudioSource *)p_audioName _loadURLWithBundle:v13];
      }

      v12 = 0;
    }

    goto LABEL_11;
  }
}

- (SCNAudioSource)initWithFileNamed:(id)named inBundle:(id)bundle
{
  v6 = [(SCNAudioSource *)self init];
  if (v6)
  {
    v6->_audioName = named;
    [(SCNAudioSource *)v6 setPositional:1];
    LODWORD(v7) = 1.0;
    [(SCNAudioSource *)v6 setVolume:v7];
    LODWORD(v8) = 1.0;
    [(SCNAudioSource *)v6 setRate:v8];
    [(SCNAudioSource *)v6 _loadURLWithBundle:bundle];
  }

  return v6;
}

- (SCNAudioSource)initWithFileNamed:(NSString *)name
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];

  return [(SCNAudioSource *)self initWithFileNamed:name inBundle:mainBundle];
}

- (SCNAudioSource)initWithURL:(NSURL *)url
{
  v8.receiver = self;
  v8.super_class = SCNAudioSource;
  v4 = [(SCNAudioSource *)&v8 init];
  if (v4)
  {
    v4->_audioURL = url;
    [(SCNAudioSource *)v4 setPositional:1];
    LODWORD(v5) = 1.0;
    [(SCNAudioSource *)v4 setVolume:v5];
    LODWORD(v6) = 1.0;
    [(SCNAudioSource *)v4 setRate:v6];
  }

  return v4;
}

+ (SCNAudioSource)audioSourceNamed:(NSString *)fileName
{
  if (audioSourceNamed__onceToken != -1)
  {
    +[SCNAudioSource audioSourceNamed:];
  }

  result = [audioSourceNamed__gAudioSources objectForKey:fileName];
  if (!result)
  {
    v5 = [[SCNAudioSource alloc] initWithFileNamed:fileName];
    v6 = v5;
    if (fileName && v5)
    {
      [audioSourceNamed__gAudioSources setObject:v5 forKey:fileName];
    }

    return v6;
  }

  return result;
}

id __35__SCNAudioSource_audioSourceNamed___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  audioSourceNamed__gAudioSources = v0;

  return v0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNAudioSource;
  [(SCNAudioSource *)&v3 dealloc];
}

- (void)load
{
  if (!self->_loaded)
  {
    [(SCNAudioSource *)self _load];
  }
}

- (void)_load
{
  v6 = *MEMORY[0x277D85DE8];
  localizedDescription = [*self localizedDescription];
  v4 = 138412290;
  v5 = localizedDescription;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Error reading file into buffer: %@", &v4, 0xCu);
}

- (void)loadIfNeeded
{
  if (!self->_loaded)
  {
    [(SCNAudioSource *)self load];
  }
}

- (id)audioBufferFormat
{
  [(SCNAudioSource *)self loadIfNeeded];
  audioBuffer = self->_audioBuffer;

  return [(AVAudioPCMBuffer *)audioBuffer format];
}

- (double)duration
{
  if ([(SCNAudioSource *)self loops])
  {
    return 1.79769313e308;
  }

  [(SCNAudioSource *)self loadIfNeeded];
  audioFile = self->_audioFile;
  if (!audioFile)
  {
    return 0.0;
  }

  if (self->_audioBuffer)
  {
    frameLength = [(AVAudioPCMBuffer *)self->_audioBuffer frameLength];
  }

  else
  {
    frameLength = [(AVAudioFile *)audioFile length];
  }

  [(AVAudioFormat *)[(AVAudioFile *)self->_audioFile fileFormat] sampleRate];
  return frameLength / v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_audioName)
  {
    v4 = [SCNAudioSource audioSourceNamed:?];
  }

  else
  {
    if (self->_audioURL)
    {
      v5 = [[SCNAudioSource alloc] initWithURL:self->_audioURL];
      goto LABEL_6;
    }

    if (!self->_audioBuffer)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v4 = [SCNAudioSource audioSourceWithAVAudioPCMBuffer:?];
  }

  v5 = v4;
LABEL_6:
  v6 = v5;
LABEL_7:
  [(SCNAudioSource *)v6 setPositional:[(SCNAudioSource *)self isPositional]];
  [(SCNAudioSource *)self volume];
  [(SCNAudioSource *)v6 setVolume:?];
  [(SCNAudioSource *)self rate];
  [(SCNAudioSource *)v6 setRate:?];
  [(SCNAudioSource *)v6 setLoops:[(SCNAudioSource *)self loops]];
  [(SCNAudioSource *)v6 setShouldStream:[(SCNAudioSource *)self shouldStream]];
  return v6;
}

- (void)_customEncodingOfSCNAudioSource:(id)source
{
  audioName = self->_audioName;
  if (audioName)
  {
    v6 = @"name";
    sourceCopy2 = source;
LABEL_5:
    [sourceCopy2 encodeObject:audioName forKey:v6];
    goto LABEL_6;
  }

  if (self->_audioURL)
  {
    v6 = @"url";
    sourceCopy2 = source;
    audioName = 0;
    goto LABEL_5;
  }

  v8 = scn_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SCNAudioSource _customEncodingOfSCNAudioSource:v8];
  }

LABEL_6:
  [(SCNAudioSource *)self volume];
  [source encodeFloat:@"volume" forKey:?];
  [(SCNAudioSource *)self rate];
  [source encodeFloat:@"rate" forKey:?];
  [(SCNAudioSource *)self reverbBlend];
  [source encodeFloat:@"reverbBlend" forKey:?];
  [source encodeBool:-[SCNAudioSource isPositional](self forKey:{"isPositional"), @"positional"}];
  [source encodeBool:-[SCNAudioSource loops](self forKey:{"loops"), @"loops"}];
  [source encodeBool:-[SCNAudioSource shouldStream](self forKey:{"shouldStream"), @"shouldStream"}];
}

- (void)_customDecodingOfSCNAudioSource:(id)source
{
  p_audioName = &self->_audioName;
  if (self->_audioName)
  {
    v6 = @"name";
  }

  else
  {
    p_audioName = &self->_audioURL;
    if (!self->_audioURL)
    {
      goto LABEL_6;
    }

    v6 = @"url";
  }

  *p_audioName = [source decodeObjectOfClass:objc_opt_class() forKey:v6];
LABEL_6:
  [source decodeFloatForKey:@"volume"];
  [(SCNAudioSource *)self setVolume:?];
  [source decodeFloatForKey:@"rate"];
  [(SCNAudioSource *)self setRate:?];
  [source decodeFloatForKey:@"reverbBlend"];
  [(SCNAudioSource *)self setReverbBlend:?];
  -[SCNAudioSource setPositional:](self, "setPositional:", [source decodeBoolForKey:@"positional"]);
  -[SCNAudioSource setLoops:](self, "setLoops:", [source decodeBoolForKey:@"loops"]);
  -[SCNAudioSource setShouldStream:](self, "setShouldStream:", [source decodeBoolForKey:@"shouldStream"]);

  [(SCNAudioSource *)self loadIfNeeded];
}

- (SCNAudioSource)initWithCoder:(id)coder
{
  v4 = [(SCNAudioSource *)self init];
  v5 = v4;
  if (v4)
  {
    [(SCNAudioSource *)v4 _customDecodingOfSCNAudioSource:coder];
  }

  return v5;
}

- (void)_loadURLWithBundle:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: failed to load audio source at %@", &v3, 0xCu);
}

@end