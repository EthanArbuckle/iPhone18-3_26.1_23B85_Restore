@interface ComposeButtonItem
+ (id)composeButtonItemWithTarget:(id)target;
@end

@implementation ComposeButtonItem

+ (id)composeButtonItemWithTarget:(id)target
{
  targetCopy = target;
  v5 = [UIImage systemImageNamed:MFImageGlyphCompose];
  v6 = [[self alloc] initWithImage:v5 style:0 target:targetCopy action:"composeButtonPressed:"];
  [v6 setLongPressTarget:targetCopy action:"composeButtonLongPressed:"];
  [v6 setSpringLoaded:1];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"COMPOSE_NEW_MESSAGE" value:&stru_100662A88 table:@"Main"];
  [v6 setTitle:v8];

  return v6;
}

@end