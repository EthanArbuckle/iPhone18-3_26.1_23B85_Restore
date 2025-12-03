@interface VOTOutputAction
- (BOOL)hasSameOutputAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (VOTOutputAction)initWithAXAction:(id)action;
- (VOTOutputAction)initWithSoundPath:(id)path;
- (VOTOutputAction)initWithString:(id)string brailleString:(id)brailleString;
- (VOTOutputAction)initWithTextDisplay:(id)display;
- (VOTOutputRequest)outputRequest;
- (id)_initWithComponent:(int)component;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addOutputEvent:(id)event;
@end

@implementation VOTOutputAction

- (VOTOutputAction)initWithAXAction:(id)action
{
  v4.receiver = self;
  v4.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v4 initWithAXAction:action];
  if (result)
  {
    result->_component = 0;
  }

  return result;
}

- (VOTOutputAction)initWithString:(id)string brailleString:(id)brailleString
{
  v7.receiver = self;
  v7.super_class = VOTOutputAction;
  v4 = [(VOTOutputAction *)&v7 initWithString:string brailleString:brailleString];
  v5 = v4;
  if (v4)
  {
    v4->_component = 0;
    [(VOTOutputAction *)v4 setSynchronization:2];
  }

  return v5;
}

- (VOTOutputAction)initWithSoundPath:(id)path
{
  pathCopy = path;
  v5 = [(VOTOutputAction *)self _initWithComponent:1];
  if (v5)
  {
    v6 = [pathCopy copy];
    soundPath = v5->_soundPath;
    v5->_soundPath = v6;
  }

  return v5;
}

- (VOTOutputAction)initWithTextDisplay:(id)display
{
  v4.receiver = self;
  v4.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v4 initWithString:display];
  if (result)
  {
    result->_component = 2;
  }

  return result;
}

- (id)_initWithComponent:(int)component
{
  v5.receiver = self;
  v5.super_class = VOTOutputAction;
  result = [(VOTOutputAction *)&v5 init];
  if (result)
  {
    *(result + 6) = component;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = VOTOutputAction;
  v4 = [(VOTOutputAction *)&v10 copyWithZone:zone];
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

- (BOOL)hasSameOutputAs:(id)as
{
  asCopy = as;
  string = [(VOTOutputAction *)self string];
  string2 = [asCopy string];

  LOBYTE(asCopy) = [string isEqualToString:string2];
  return asCopy;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = VOTOutputAction;
  v3 = [(VOTOutputAction *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ Component: %d Sound: %@", v3, self->_component, self->_soundPath];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    outputActionID = [equalCopy outputActionID];
    v6 = outputActionID == [(VOTOutputAction *)self outputActionID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addOutputEvent:(id)event
{
  eventCopy = event;
  outputEvents = self->_outputEvents;
  v8 = eventCopy;
  if (!outputEvents)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_outputEvents;
    self->_outputEvents = v6;

    eventCopy = v8;
    outputEvents = self->_outputEvents;
  }

  [(NSMutableArray *)outputEvents addObject:eventCopy];
}

- (VOTOutputRequest)outputRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_outputRequest);

  return WeakRetained;
}

@end