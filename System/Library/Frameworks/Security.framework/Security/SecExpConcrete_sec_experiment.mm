@interface SecExpConcrete_sec_experiment
- (SecExpConcrete_sec_experiment)initWithInnerExperiment:(id)experiment;
- (SecExpConcrete_sec_experiment)initWithName:(const char *)name;
- (const)identifier;
- (const)name;
@end

@implementation SecExpConcrete_sec_experiment

- (const)identifier
{
  identifier = [(SecExperiment *)self->innerExperiment identifier];
  uTF8String = [identifier UTF8String];

  return uTF8String;
}

- (const)name
{
  name = [(SecExperiment *)self->innerExperiment name];
  uTF8String = [name UTF8String];

  return uTF8String;
}

- (SecExpConcrete_sec_experiment)initWithInnerExperiment:(id)experiment
{
  experimentCopy = experiment;
  if (experimentCopy && (v9.receiver = self, v9.super_class = SecExpConcrete_sec_experiment, v6 = [(SecExpConcrete_sec_experiment *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->innerExperiment, experiment);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SecExpConcrete_sec_experiment)initWithName:(const char *)name
{
  selfCopy2 = name;
  if (name)
  {
    v8.receiver = self;
    v8.super_class = SecExpConcrete_sec_experiment;
    self = [(SecExpConcrete_sec_experiment *)&v8 init];
    if (self)
    {
      selfCopy = self;
      v5 = [[SecExperiment alloc] initWithName:selfCopy2];
      innerExperiment = selfCopy->innerExperiment;
      selfCopy->innerExperiment = v5;

      self = selfCopy;
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

@end