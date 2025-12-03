@interface BGHealthResearchTask
- (id)_initWithIdentifier:(id)identifier activity:(id)activity;
- (id)description;
@end

@implementation BGHealthResearchTask

- (id)_initWithIdentifier:(id)identifier activity:(id)activity
{
  v5.receiver = self;
  v5.super_class = BGHealthResearchTask;
  return [(BGProcessingTask *)&v5 _initWithIdentifier:identifier activity:activity];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(BGTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGHealthResearchTask: %@>", identifier];

  return v4;
}

@end