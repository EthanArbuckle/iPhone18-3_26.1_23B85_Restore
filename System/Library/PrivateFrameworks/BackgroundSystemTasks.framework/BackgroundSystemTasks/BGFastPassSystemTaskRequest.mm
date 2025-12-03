@interface BGFastPassSystemTaskRequest
- (BGFastPassSystemTaskRequest)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BGFastPassSystemTaskRequest

- (BGFastPassSystemTaskRequest)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = BGFastPassSystemTaskRequest;
  return [(BGNonRepeatingSystemTaskRequest *)&v4 initWithIdentifier:identifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = BGFastPassSystemTaskRequest;
  v5 = [(BGNonRepeatingSystemTaskRequest *)&v9 copyWithZone:?];
  processingTaskIdentifiers = [(BGFastPassSystemTaskRequest *)self processingTaskIdentifiers];
  v7 = [processingTaskIdentifiers copyWithZone:zone];
  [v5 setProcessingTaskIdentifiers:v7];

  [v5 setSemanticVersion:{-[BGFastPassSystemTaskRequest semanticVersion](self, "semanticVersion")}];
  [v5 setReRun:{-[BGFastPassSystemTaskRequest reRun](self, "reRun")}];
  return v5;
}

@end