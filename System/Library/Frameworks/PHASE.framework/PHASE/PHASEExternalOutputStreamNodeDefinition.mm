@interface PHASEExternalOutputStreamNodeDefinition
- (PHASEExternalOutputStreamNodeDefinition)init;
- (PHASEExternalOutputStreamNodeDefinition)initWithExternalOutputStreamUUID:(id)d mixerDefinition:(id)definition channelLayoutTag:(unsigned int)tag uid:(id)uid;
- (void)setTargetLKFS:(id)s;
@end

@implementation PHASEExternalOutputStreamNodeDefinition

- (PHASEExternalOutputStreamNodeDefinition)init
{
  [(PHASEExternalOutputStreamNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStreamNodeDefinition)initWithExternalOutputStreamUUID:(id)d mixerDefinition:(id)definition channelLayoutTag:(unsigned int)tag uid:(id)uid
{
  dCopy = d;
  definitionCopy = definition;
  uidCopy = uid;
  v19.receiver = self;
  v19.super_class = PHASEExternalOutputStreamNodeDefinition;
  v14 = [(PHASEGeneratorNodeDefinition *)&v19 initInternal:definitionCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 10, d);
    v15->_channelLayoutTag = tag;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
    targetLKFS = v15->_targetLKFS;
    v15->_targetLKFS = v16;

    [(PHASEDefinition *)v15 setIdentifier:uidCopy];
  }

  return v15;
}

- (void)setTargetLKFS:(id)s
{
  sCopy = s;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [sCopy doubleValue];
  v9 = PHASEGetPropertyBounded<double>(v6, v7, v8, -100.0, 0.0);

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  targetLKFS = self->_targetLKFS;
  self->_targetLKFS = v10;
}

@end