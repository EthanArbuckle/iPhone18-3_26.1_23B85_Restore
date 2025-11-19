@interface VOTOutputAction
- (BOOL)hasSameOutputAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (VOTOutputAction)initWithAXAction:(id)a3;
- (VOTOutputAction)initWithSoundPath:(id)a3;
- (VOTOutputAction)initWithString:(id)a3 brailleString:(id)a4;
- (VOTOutputAction)initWithTextDisplay:(id)a3;
- (VOTOutputRequest)outputRequest;
- (id)_initWithComponent:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addOutputEvent:(id)a3;
@end

@implementation VOTOutputAction

- (VOTOutputAction)initWithAXAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v4 initWithAXAction:a3];
  if (result)
  {
    result->_component = 0;
  }

  return result;
}

- (VOTOutputAction)initWithString:(id)a3 brailleString:(id)a4
{
  v7.receiver = self;
  v7.super_class = VOTOutputAction;
  v4 = [(VOTOutputAction *)&v7 initWithString:a3 brailleString:a4];
  v5 = v4;
  if (v4)
  {
    v4->_component = 0;
    [(VOTOutputAction *)v4 setSynchronization:2];
  }

  return v5;
}

- (VOTOutputAction)initWithSoundPath:(id)a3
{
  v4 = a3;
  v5 = [(VOTOutputAction *)self _initWithComponent:1];
  if (v5)
  {
    v6 = [v4 copy];
    soundPath = v5->_soundPath;
    v5->_soundPath = v6;
  }

  return v5;
}

- (VOTOutputAction)initWithTextDisplay:(id)a3
{
  v4.receiver = self;
  v4.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v4 initWithString:a3];
  if (result)
  {
    result->_component = 2;
  }

  return result;
}

- (id)_initWithComponent:(int)a3
{
  v5.receiver = self;
  v5.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v5 init];
  if (result)
  {
    *(result + 6) = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = VOTOutputAction;
  v4 = [(VOTOutputAction *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_soundPath copy];
  v6 = v4[4];
  v4[4] = v5;

  *(v4 + 5) = self->_synchronization;
  [v4 setIsVoiceOverGeneratedContent:{-[VOTOutputAction isVoiceOverGeneratedContent](self, "isVoiceOverGeneratedContent")}];
  v7 = [(NSMutableArray *)self->_outputEvents copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

- (BOOL)hasSameOutputAs:(id)a3
{
  v4 = a3;
  v5 = [(VOTOutputAction *)self string];
  v6 = [v4 string];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = VOTOutputAction;
  v3 = [(VOTOutputAction *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ Component: %d Sound: %@", v3, self->_component, self->_soundPath];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 outputActionID];
    v6 = v5 == [(VOTOutputAction *)self outputActionID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addOutputEvent:(id)a3
{
  v4 = a3;
  outputEvents = self->_outputEvents;
  v8 = v4;
  if (!outputEvents)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_outputEvents;
    self->_outputEvents = v6;

    v4 = v8;
    outputEvents = self->_outputEvents;
  }

  [(NSMutableArray *)outputEvents addObject:v4];
}

- (VOTOutputRequest)outputRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_outputRequest);

  return WeakRetained;
}

@end