@interface SKAudioNode
+ (id)_audioURLWithName:(id)name bundle:(id)bundle;
- (BOOL)isEqualToNode:(id)node;
- (SKAudioNode)initWithAVAudioNode:(AVAudioNode *)node;
- (SKAudioNode)initWithCoder:(NSCoder *)aDecoder;
- (SKAudioNode)initWithFileNamed:(NSString *)name;
- (SKAudioNode)initWithFileNamed:(id)named bundle:(id)bundle;
- (SKAudioNode)initWithURL:(NSURL *)url;
- (void)_connectToScene:(id)scene;
- (void)_playLooped;
- (void)_setAudioName:(id)name bundle:(id)bundle;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKAudioNode

- (SKAudioNode)initWithAVAudioNode:(AVAudioNode *)node
{
  v5 = node;
  v9.receiver = self;
  v9.super_class = SKAudioNode;
  v6 = [(SKNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(SKAudioNode *)v6 setAutoplayLooped:1];
    [(SKAudioNode *)v7 setPositional:1];
    objc_storeStrong(v7->_skcAudioNode + 73, node);
    [(SKAudioNode *)v7 commonInit];
  }

  return v7;
}

- (SKAudioNode)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v20.receiver = self;
  v20.super_class = SKAudioNode;
  v5 = [(SKNode *)&v20 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SKAudioNode *)v5 commonInit];
    [(SKAudioNode *)v6 setAutoplayLooped:[(NSCoder *)v4 decodeBoolForKey:@"_autoplayLooped"]];
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioName"];
    [(SKAudioNode *)v6 setAudioFileName:v7];

    v8 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"_audioURL"];
    [(SKAudioNode *)v6 setAudioURL:v8];

    audioFileName = [(SKAudioNode *)v6 audioFileName];

    if (audioFileName)
    {
      audioFileName2 = [(SKAudioNode *)v6 audioFileName];
      v11 = SKGetResourceBundle();
      [(SKAudioNode *)v6 _setAudioName:audioFileName2 bundle:v11];
LABEL_6:

      goto LABEL_7;
    }

    audioURL = [(SKAudioNode *)v6 audioURL];

    if (audioURL)
    {
      v13 = objc_alloc(MEMORY[0x277CB8398]);
      audioURL2 = [(SKAudioNode *)v6 audioURL];
      v19 = 0;
      v15 = [v13 initForReading:audioURL2 error:&v19];
      audioFileName2 = v19;
      skcAudioNode = v6->_skcAudioNode;
      v17 = skcAudioNode[70];
      skcAudioNode[70] = v15;

      v11 = objc_alloc_init(MEMORY[0x277CB83E0]);
      [(SKAudioNode *)v6 setAvAudioNode:v11];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKAudioNode;
  [(SKNode *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[SKAudioNode autoplayLooped](self forKey:{"autoplayLooped"), @"_autoplayLooped"}];
  audioFileName = [(SKAudioNode *)self audioFileName];
  [coderCopy encodeObject:audioFileName forKey:@"_audioName"];

  audioURL = [(SKAudioNode *)self audioURL];
  [coderCopy encodeObject:audioURL forKey:@"_audioURL"];
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  if (self == nodeCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = nodeCopy;
      v18.receiver = self;
      v18.super_class = SKAudioNode;
      if (![(SKNode *)&v18 isEqualToNode:v5]|| self->_autoplayLooped != v5[144])
      {
        goto LABEL_16;
      }

      audioFileName = [(SKAudioNode *)self audioFileName];
      if (audioFileName)
      {
      }

      else
      {
        audioFileName2 = [v5 audioFileName];

        if (!audioFileName2)
        {
LABEL_11:
          audioURL = [(SKAudioNode *)self audioURL];
          if (audioURL)
          {
          }

          else
          {
            audioURL2 = [v5 audioURL];

            if (!audioURL2)
            {
LABEL_15:
              v7 = 1;
LABEL_17:

              goto LABEL_18;
            }
          }

          audioURL3 = [(SKAudioNode *)self audioURL];
          audioURL4 = [v5 audioURL];
          v16 = [audioURL3 isEqual:audioURL4];

          if (v16)
          {
            goto LABEL_15;
          }

LABEL_16:
          v7 = 0;
          goto LABEL_17;
        }
      }

      audioFileName3 = [(SKAudioNode *)self audioFileName];
      audioFileName4 = [v5 audioFileName];
      v11 = [audioFileName3 isEqualToString:audioFileName4];

      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v7 = 0;
  }

LABEL_18:

  return v7;
}

- (SKAudioNode)initWithFileNamed:(id)named bundle:(id)bundle
{
  namedCopy = named;
  bundleCopy = bundle;
  v8 = [objc_opt_class() _audioURLWithName:namedCopy bundle:bundleCopy];
  if (v8)
  {
    v14 = 0;
    v9 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v8 error:&v14];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x277CB83E0]);
  v11 = [(SKAudioNode *)self initWithAVAudioNode:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11->_skcAudioNode + 70, v9);
    [(SKAudioNode *)v12 setAudioFileName:namedCopy];
  }

  return v12;
}

- (SKAudioNode)initWithFileNamed:(NSString *)name
{
  v4 = name;
  v5 = SKGetResourceBundle();
  v6 = [(SKAudioNode *)self initWithFileNamed:v4 bundle:v5];

  return v6;
}

- (SKAudioNode)initWithURL:(NSURL *)url
{
  v4 = url;
  if (v4)
  {
    v10 = 0;
    v5 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v4 error:&v10];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(MEMORY[0x277CB83E0]);
  v7 = [(SKAudioNode *)self initWithAVAudioNode:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7->_skcAudioNode + 70, v5);
    [(SKAudioNode *)v8 setAudioURL:v4];
  }

  return v8;
}

- (void)_playLooped
{
  objc_initWeak(&location, self);
  v3 = *(self->_skcAudioNode + 70);
  avAudioNode = [(SKAudioNode *)self avAudioNode];
  v5 = avAudioNode;
  if (v3)
  {
    v6 = avAudioNode == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_loadWeakRetained(&location);
    scene = [v7 scene];

    if (scene)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __26__SKAudioNode__playLooped__block_invoke;
      v9[3] = &unk_27830FC00;
      objc_copyWeak(&v10, &location);
      [v5 scheduleFile:v3 atTime:0 completionHandler:v9];
      objc_destroyWeak(&v10);
    }
  }

  objc_destroyWeak(&location);
}

void __26__SKAudioNode__playLooped__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SKAudioNode__playLooped__block_invoke_2;
  block[3] = &unk_27830FC00;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __26__SKAudioNode__playLooped__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playLooped];
}

+ (id)_audioURLWithName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = [bundleCopy URLForResource:nameCopy withExtension:0];
  if (!v7)
  {
    v7 = [bundleCopy URLForResource:nameCopy withExtension:@"caf"];
    if (!v7)
    {
      v7 = [bundleCopy URLForResource:nameCopy withExtension:@"wav"];
      if (!v7)
      {
        v7 = [bundleCopy URLForResource:nameCopy withExtension:@"caff"];
        if (!v7)
        {
          v7 = [bundleCopy URLForResource:nameCopy withExtension:@"aiff"];
          if (!v7)
          {
            v7 = [bundleCopy URLForResource:nameCopy withExtension:@"mp3"];
          }
        }
      }
    }
  }

  return v7;
}

- (void)_setAudioName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  [(SKAudioNode *)self setAudioFileName:nameCopy];
  if (nameCopy)
  {
    v8 = [objc_opt_class() _audioURLWithName:nameCopy bundle:bundleCopy];
    if (v8)
    {
      v21 = 0;
      v9 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:v8 error:&v21];
      v10 = v21;
      skcAudioNode = self->_skcAudioNode;
      v12 = skcAudioNode[70];
      skcAudioNode[70] = v9;
    }

    v13 = self->_skcAudioNode;
    parent2 = v13[73];
    if (parent2 || !v13[70])
    {
      v13[73] = 0;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CB83E0]);
      v16 = self->_skcAudioNode;
      v17 = v16[73];
      v16[73] = v15;

      parent = [(SKNode *)self parent];
      scene = [parent scene];

      if (!scene)
      {
        goto LABEL_7;
      }

      parent2 = [(SKNode *)self parent];
      scene2 = [parent2 scene];
      [(SKAudioNode *)self _connectToScene:scene2];
    }

LABEL_7:
  }
}

- (void)_connectToScene:(id)scene
{
  sceneCopy = scene;
  audioFile = [(SKAudioNode *)self audioFile];
  avAudioNode = [(SKAudioNode *)self avAudioNode];
  v6 = avAudioNode;
  if (avAudioNode)
  {
    engine = [avAudioNode engine];
    v8 = engine;
    if (engine)
    {
      [engine detachNode:v6];
    }

    audioEngine = [sceneCopy audioEngine];
    if (audioEngine)
    {
      [v6 setRenderingAlgorithm:1];
      [audioEngine attachNode:v6];
      processingFormat = [audioFile processingFormat];
      if ([processingFormat channelCount] >= 2)
      {
        v11 = objc_alloc(MEMORY[0x277CB83A8]);
        [processingFormat sampleRate];
        v12 = [v11 initStandardFormatWithSampleRate:1 channels:?];

        processingFormat = v12;
      }

      avAudioEnvironmentNode = [sceneCopy avAudioEnvironmentNode];
      [audioEngine connect:v6 to:avAudioEnvironmentNode format:processingFormat];

      if (self->_autoplayLooped)
      {
        [(SKAudioNode *)self _playLooped];
        if ([audioEngine isRunning])
        {
          [v6 play];
        }
      }
    }
  }
}

@end