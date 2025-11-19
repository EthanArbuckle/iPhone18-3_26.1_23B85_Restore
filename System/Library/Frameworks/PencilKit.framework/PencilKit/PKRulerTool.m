@interface PKRulerTool
- (PKRulerTool)init;
@end

@implementation PKRulerTool

- (PKRulerTool)init
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [PKInk inkWithIdentifier:@"com.apple.ink.custom" color:v3 weight:0.0];

  v5 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:@"com.apple.tool.ruler"];
  v8.receiver = self;
  v8.super_class = PKRulerTool;
  v6 = [(PKTool *)&v8 _initWithInk:v4 configuration:v5];

  return v6;
}

@end