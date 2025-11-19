@interface BGFastPassSystemTaskRequest
- (BGFastPassSystemTaskRequest)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BGFastPassSystemTaskRequest

- (BGFastPassSystemTaskRequest)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = BGFastPassSystemTaskRequest;
  return [(BGNonRepeatingSystemTaskRequest *)&v4 initWithIdentifier:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = BGFastPassSystemTaskRequest;
  v5 = [(BGNonRepeatingSystemTaskRequest *)&v9 copyWithZone:?];
  v6 = [(BGFastPassSystemTaskRequest *)self processingTaskIdentifiers];
  v7 = [v6 copyWithZone:a3];
  [v5 setProcessingTaskIdentifiers:v7];

  [v5 setSemanticVersion:{-[BGFastPassSystemTaskRequest semanticVersion](self, "semanticVersion")}];
  [v5 setReRun:{-[BGFastPassSystemTaskRequest reRun](self, "reRun")}];
  return v5;
}

@end