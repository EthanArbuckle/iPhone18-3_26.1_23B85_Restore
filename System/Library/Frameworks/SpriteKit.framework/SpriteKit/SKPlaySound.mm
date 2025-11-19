@interface SKPlaySound
+ (id)_audioURLWithName:(id)a3 bundle:(id)a4;
+ (id)playSoundFileNamed:(id)a3 atPosition:(CGPoint)a4 waitForCompletion:(BOOL)a5;
- (SKPlaySound)init;
- (SKPlaySound)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKPlaySound

- (SKPlaySound)init
{
  v5.receiver = self;
  v5.super_class = SKPlaySound;
  v2 = [(SKAction *)&v5 init];
  if (v2)
  {
    soundSource = v2->_soundSource;
    v2->_soundSource = 0;

    operator new();
  }

  return 0;
}

- (SKPlaySound)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKPlaySound;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKPlaySound;
  [(SKAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fileName forKey:@"_fileName"];
  [v4 encodeCGPoint:@"_position" forKey:{self->_position.x, self->_position.y}];
  [v4 encodeBool:self->_mycaction->var21 forKey:@"_wait"];
}

+ (id)playSoundFileNamed:(id)a3 atPosition:(CGPoint)a4 waitForCompletion:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = objc_alloc_init(SKPlaySound);
  v9->_position.x = x;
  v9->_position.y = y;
  v10 = [v8 copy];
  fileName = v9->_fileName;
  v9->_fileName = v10;

  v12 = objc_opt_class();
  v13 = v9->_fileName;
  v14 = SKGetResourceBundle();
  v15 = [v12 _audioURLWithName:v13 bundle:v14];
  v16 = [v15 path];
  filePath = v9->_filePath;
  v9->_filePath = v16;

  v9->_mycaction->var21 = a5;
  if (v9->_filePath)
  {
    SKCRendererEnsureSoundContext();
    v18 = [SKSoundBuffer bufferWithFileNamed:v9->_filePath];
    v19 = [SKSoundSource sourceWithBuffer:v18];
    v20 = v19;
    if (v19)
    {
      [v19 setPosition:{v9->_position.x, v9->_position.y}];
      objc_storeStrong(&v9->_soundSource, v20);
      objc_storeWeak(&v9->_mycaction->var19, v20);
      v21 = 0.0;
      if (v9->_mycaction->var21)
      {
        [v18 duration];
      }

      [(SKAction *)v9 setDuration:v21];
    }

    else
    {
      NSLog(&cfstr_SkactionErrorL.isa, v8);
    }
  }

  else
  {
    NSLog(&cfstr_SkactionErrorL.isa, v8);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = SKPlaySound;
  v4 = [(SKAction *)&v11 copyWithZone:a3];
  objc_storeStrong(v4 + 3, self->_fileName);
  objc_storeStrong(v4 + 2, self->_filePath);
  *(v4 + 40) = self->_position;
  *(*(v4 + 4) + 121) = self->_mycaction->var21;
  if (*(v4 + 2))
  {
    SKCRendererEnsureSoundContext();
    v5 = [SKSoundBuffer bufferWithFileNamed:*(v4 + 2)];
    v6 = [SKSoundSource sourceWithBuffer:v5];
    v7 = v6;
    if (v6)
    {
      [v6 setPosition:{*(v4 + 5), *(v4 + 6)}];
      objc_storeStrong(v4 + 7, v7);
      objc_storeWeak((*(v4 + 4) + 112), v7);
      v8 = 0.0;
      if (*(*(v4 + 4) + 121) == 1)
      {
        [v5 duration];
      }

      [(SKAction *)self setDuration:v8];
    }

    else
    {
      v9 = [*(v4 + 2) lastPathComponent];
      NSLog(&cfstr_SkactionErrorL.isa, v9);
      v7 = v9;
    }
  }

  return v4;
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

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end