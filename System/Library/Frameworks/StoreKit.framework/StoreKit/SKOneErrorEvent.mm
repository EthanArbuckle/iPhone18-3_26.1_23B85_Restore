@interface SKOneErrorEvent
- (id)createPayload;
@end

@implementation SKOneErrorEvent

- (id)createPayload
{
  v12.receiver = self;
  v12.super_class = SKOneErrorEvent;
  createPayload = [(SKBaseErrorEvent *)&v12 createPayload];
  v4 = [createPayload mutableCopy];

  if (v4)
  {
    mappedError = [(SKBaseErrorEvent *)self mappedError];
    domain = [mappedError domain];
    v7 = [domain isEqualToString:@"SKErrorDomain"];

    if (v7)
    {
      v8 = MEMORY[0x1E696AD98];
      mappedError2 = [(SKBaseErrorEvent *)self mappedError];
      v10 = [v8 numberWithInteger:{objc_msgSend(mappedError2, "code")}];
      [v4 setObject:v10 forKeyedSubscript:0x1F29BE400];
    }
  }

  return v4;
}

@end