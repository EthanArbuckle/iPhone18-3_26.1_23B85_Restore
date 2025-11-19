@interface AXUIHoverTextAlertStyleProvider
- (CGSize)alertBackgroundSizeForType:(unint64_t)a3;
- (_TtC17HoverTextUIServer31AXUIHoverTextAlertStyleProvider)init;
@end

@implementation AXUIHoverTextAlertStyleProvider

- (CGSize)alertBackgroundSizeForType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AXUIHoverTextAlertStyleProvider();
  [(AXUIHoverTextAlertStyleProvider *)&v7 alertBackgroundSizeForType:a3];
  v6 = v5 * 1.5;
  result.height = v4;
  result.width = v6;
  return result;
}

- (_TtC17HoverTextUIServer31AXUIHoverTextAlertStyleProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AXUIHoverTextAlertStyleProvider();
  return [(AXUIHoverTextAlertStyleProvider *)&v3 init];
}

@end