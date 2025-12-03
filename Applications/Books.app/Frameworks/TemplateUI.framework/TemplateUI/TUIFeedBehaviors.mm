@interface TUIFeedBehaviors
+ (TUIFeedBehaviors)feedBehaviorsWithDictionary:(id)dictionary;
- (TUIFeedBehaviors)initWithDictionary:(id)dictionary;
@end

@implementation TUIFeedBehaviors

+ (TUIFeedBehaviors)feedBehaviorsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[TUIFeedBehaviors alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

- (TUIFeedBehaviors)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = TUIFeedBehaviors;
  v5 = [(TUIFeedBehaviors *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    behaviors = v5->_behaviors;
    v5->_behaviors = v6;
  }

  return v5;
}

@end