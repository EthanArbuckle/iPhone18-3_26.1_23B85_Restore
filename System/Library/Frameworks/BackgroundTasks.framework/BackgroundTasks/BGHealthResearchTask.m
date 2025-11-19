@interface BGHealthResearchTask
- (id)_initWithIdentifier:(id)a3 activity:(id)a4;
- (id)description;
@end

@implementation BGHealthResearchTask

- (id)_initWithIdentifier:(id)a3 activity:(id)a4
{
  v5.receiver = self;
  v5.super_class = BGHealthResearchTask;
  return [(BGProcessingTask *)&v5 _initWithIdentifier:a3 activity:a4];
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BGTask *)self identifier];
  v4 = [v2 stringWithFormat:@"<BGHealthResearchTask: %@>", v3];

  return v4;
}

@end