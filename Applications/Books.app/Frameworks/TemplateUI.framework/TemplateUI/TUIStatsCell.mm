@interface TUIStatsCell
+ (id)nib;
- (UILabel)label;
- (void)updateContent;
@end

@implementation TUIStatsCell

+ (id)nib
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UINib nibWithNibName:@"TUIStatsCell" bundle:v2];

  return v3;
}

- (void)updateContent
{
  v3 = objc_opt_new();
  v8 = v3;
  if (self->_header)
  {
    [v3 appendString:?];
    v3 = v8;
  }

  TUIStatsAppendTiming(v3, self->_timingProvider, @"\n");
  [v8 appendString:@"\n"];
  TUIStatsAppendEvents(v8, self->_eventProvider, @"\n");
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v8 stringByTrimmingCharactersInSet:v4];
  label = [(TUIStatsCell *)self label];
  [label setText:v5];

  label2 = [(TUIStatsCell *)self label];
  [label2 sizeToFit];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end