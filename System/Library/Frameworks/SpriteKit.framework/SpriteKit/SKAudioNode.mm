@interface SKAudioNode
+ (id)_audioURLWithName:(id)a3 bundle:(id)a4;
- (BOOL)isEqualToNode:(id)a3;
- (SKAudioNode)initWithAVAudioNode:(AVAudioNode *)node;
- (SKAudioNode)initWithCoder:(NSCoder *)aDecoder;
- (SKAudioNode)initWithFileNamed:(NSString *)name;
- (SKAudioNode)initWithFileNamed:(id)a3 bundle:(id)a4;
- (SKAudioNode)initWithURL:(NSURL *)url;
- (void)_connectToScene:(id)a3;
- (void)_playLooped;
- (void)_setAudioName:(id)a3 bundle:(id)a4;
- (void)encodeWithCoder:(id)a3;
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

    v9 = [(SKAudioNode *)v6 audioFileName];

    if (v9)
    {
      v10 = [(SKAudioNode *)v6 audioFileName];
      v11 = SKGetResourceBundle();
      [(SKAudioNode *)v6 _setAudioName:v10 bundle:v11];
LABEL_6:

      goto LABEL_7;
    }

    v12 = [(SKAudioNode *)v6 audioURL];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CB8398]);
      v14 = [(SKAudioNode *)v6 audioURL];
      v19 = 0;
      v15 = [v13 initForReading:v14 error:&v19];
      v10 = v19;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKAudioNode;
  [(SKNode *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:-[SKAudioNode autoplayLooped](self forKey:{"autoplayLooped"), @"_autoplayLooped"}];
  v5 = [(SKAudioNode *)self audioFileName];
  [v4 encodeObject:v5 forKey:@"_audioName"];

  v6 = [(SKAudioNode *)self audioURL];
  [v4 encodeObject:v6 forKey:@"_audioURL"];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v18.receiver = self;
      v18.super_class = SKAudioNode;
      if (![(SKNode *)&v18 isEqualToNode:v5]|| self->_autoplayLooped != v5[144])
      {
        goto LABEL_16;
      }

      v6 = [(SKAudioNode *)self audioFileName];
      if (v6)
      {
      }

      else
      {
        v8 = [v5 audioFileName];

        if (!v8)
        {
LABEL_11:
          v12 = [(SKAudioNode *)self audioURL];
          if (v12)
          {
          }

          else
          {
            v13 = [v5 audioURL];

            if (!v13)
            {
LABEL_15:
              v7 = 1;
LABEL_17:

              goto LABEL_18;
            }
          }

          v14 = [(SKAudioNode *)self audioURL];
          v15 = [v5 audioURL];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            goto LABEL_15;
          }

LABEL_16:
          v7 = 0;
          goto LABEL_17;
        }
      }

      v9 = [(SKAudioNode *)self audioFileName];
      v10 = [v5 audioFileName];
      v11 = [v9 isEqualToString:v10];

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

- (SKAudioNode)initWithFileNamed:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() _audioURLWithName:v6 bundle:v7];
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
    [(SKAudioNode *)v12 setAudioFileName:v6];
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
  v4 = [(SKAudioNode *)self avAudioNode];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = objc_loadWeakRetained(&location);
    v8 = [v7 scene];

    if (v8)
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

+ (id)_audioURLWithName:(id)a3 bundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 URLForResource:v5 withExtension:0];
  if (!v7)
  {
    v7 = [v6 URLForResource:v5 withExtension:@"caf"];
    if (!v7)
    {
      v7 = [v6 URLForResource:v5 withExtension:@"wav"];
      if (!v7)
      {
        v7 = [v6 URLForResource:v5 withExtension:@"caff"];
        if (!v7)
        {
          v7 = [v6 URLForResource:v5 withExtension:@"aiff"];
          if (!v7)
          {
            v7 = [v6 URLForResource:v5 withExtension:@"mp3"];
          }
        }
      }
    }
  }

  return v7;
}

- (void)_setAudioName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SKAudioNode *)self setAudioFileName:v6];
  if (v6)
  {
    v8 = [objc_opt_class() _audioURLWithName:v6 bundle:v7];
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
    v14 = v13[73];
    if (v14 || !v13[70])
    {
      v13[73] = 0;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CB83E0]);
      v16 = self->_skcAudioNode;
      v17 = v16[73];
      v16[73] = v15;

      v18 = [(SKNode *)self parent];
      v19 = [v18 scene];

      if (!v19)
      {
        goto LABEL_7;
      }

      v14 = [(SKNode *)self parent];
      v20 = [v14 scene];
      [(SKAudioNode *)self _connectToScene:v20];
    }

LABEL_7:
  }
}

- (void)_connectToScene:(id)a3
{
  v14 = a3;
  v4 = [(SKAudioNode *)self audioFile];
  v5 = [(SKAudioNode *)self avAudioNode];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 engine];
    v8 = v7;
    if (v7)
    {
      [v7 detachNode:v6];
    }

    v9 = [v14 audioEngine];
    if (v9)
    {
      [v6 setRenderingAlgorithm:1];
      [v9 attachNode:v6];
      v10 = [v4 processingFormat];
      if ([v10 channelCount] >= 2)
      {
        v11 = objc_alloc(MEMORY[0x277CB83A8]);
        [v10 sampleRate];
        v12 = [v11 initStandardFormatWithSampleRate:1 channels:?];

        v10 = v12;
      }

      v13 = [v14 avAudioEnvironmentNode];
      [v9 connect:v6 to:v13 format:v10];

      if (self->_autoplayLooped)
      {
        [(SKAudioNode *)self _playLooped];
        if ([v9 isRunning])
        {
          [v6 play];
        }
      }
    }
  }
}

@end