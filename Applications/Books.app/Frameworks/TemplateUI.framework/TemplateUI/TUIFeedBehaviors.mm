@interface TUIFeedBehaviors
+ (TUIFeedBehaviors)feedBehaviorsWithDictionary:(id)a3;
- (TUIFeedBehaviors)initWithDictionary:(id)a3;
@end

@implementation TUIFeedBehaviors

+ (TUIFeedBehaviors)feedBehaviorsWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [[TUIFeedBehaviors alloc] initWithDictionary:v3];

  return v4;
}

- (TUIFeedBehaviors)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIFeedBehaviors;
  v5 = [(TUIFeedBehaviors *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    behaviors = v5->_behaviors;
    v5->_behaviors = v6;
  }

  return v5;
}

@end