@interface ComponentCameraFront
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentCameraFront

- (void)populateAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = ComponentCameraFront;
  v4 = a3;
  [(ComponentCameraBase *)&v6 populateAttributes:v4];
  v5 = [NSNumber numberWithBool:[(ComponentCameraFront *)self isSuperWide:v6.receiver]];
  [v4 setObject:v5 forKeyedSubscript:@"isSuperWide"];
}

@end