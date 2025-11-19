@interface SKOneErrorEvent
- (id)createPayload;
@end

@implementation SKOneErrorEvent

- (id)createPayload
{
  v12.receiver = self;
  v12.super_class = SKOneErrorEvent;
  v3 = [(SKBaseErrorEvent *)&v12 createPayload];
  v4 = [v3 mutableCopy];

  if (v4)
  {
    v5 = [(SKBaseErrorEvent *)self mappedError];
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:@"SKErrorDomain"];

    if (v7)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [(SKBaseErrorEvent *)self mappedError];
      v10 = [v8 numberWithInteger:{objc_msgSend(v9, "code")}];
      [v4 setObject:v10 forKeyedSubscript:0x1F29BE400];
    }
  }

  return v4;
}

@end