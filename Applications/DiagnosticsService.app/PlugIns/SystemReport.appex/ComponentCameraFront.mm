@interface ComponentCameraFront
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentCameraFront

- (void)populateAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = ComponentCameraFront;
  attributesCopy = attributes;
  [(ComponentCameraBase *)&v6 populateAttributes:attributesCopy];
  v5 = [NSNumber numberWithBool:[(ComponentCameraFront *)self isSuperWide:v6.receiver]];
  [attributesCopy setObject:v5 forKeyedSubscript:@"isSuperWide"];
}

@end