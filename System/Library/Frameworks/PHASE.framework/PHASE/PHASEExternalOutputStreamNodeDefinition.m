@interface PHASEExternalOutputStreamNodeDefinition
- (PHASEExternalOutputStreamNodeDefinition)init;
- (PHASEExternalOutputStreamNodeDefinition)initWithExternalOutputStreamUUID:(id)a3 mixerDefinition:(id)a4 channelLayoutTag:(unsigned int)a5 uid:(id)a6;
- (void)setTargetLKFS:(id)a3;
@end

@implementation PHASEExternalOutputStreamNodeDefinition

- (PHASEExternalOutputStreamNodeDefinition)init
{
  [(PHASEExternalOutputStreamNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamNodeDefinition)initWithExternalOutputStreamUUID:(id)a3 mixerDefinition:(id)a4 channelLayoutTag:(unsigned int)a5 uid:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PHASEExternalOutputStreamNodeDefinition;
  v14 = [(PHASEGeneratorNodeDefinition *)&v19 initInternal:v12];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 10, a3);
    v15->_channelLayoutTag = a5;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
    targetLKFS = v15->_targetLKFS;
    v15->_targetLKFS = v16;

    [(PHASEDefinition *)v15 setIdentifier:v13];
  }

  return v15;
}

- (void)setTargetLKFS:(id)a3
{
  v12 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v12 doubleValue];
  v9 = PHASEGetPropertyBounded<double>(v6, v7, v8, -100.0, 0.0);

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  targetLKFS = self->_targetLKFS;
  self->_targetLKFS = v10;
}

@end